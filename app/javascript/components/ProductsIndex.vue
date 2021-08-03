<template>
  <v-container class="mt-3">
    <product-create-form
      @response='getAllProducts'
    ></product-create-form>
    <v-simple-table>
      <template v-slot:default>
        <thead>
          <tr>
            <th class="text-left">
              Id
            </th>
            <th class="text-left">
              Name
            </th>
          </tr>
        </thead>
        <tbody>
          <tr
            v-for="item in products"
            :key="item.id"
          >
            <td>{{ item.id }}</td>
            <td>{{ item.name }}</td>
          </tr>
        </tbody>
      </template>
    </v-simple-table>
  </v-container>
</template>

<script>
import axios from "axios";

export default {
  name: 'ProductsIndex',
  props: {
    products: {
      type: Array,
      default: () => []
    }
  },
  methods: {
    getAllProducts () {
      axios.get('/products.json').then(response => {
        console.log(response)
      })
    }
  }
}
</script>
