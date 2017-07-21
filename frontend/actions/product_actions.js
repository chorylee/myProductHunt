import * as APIUtil from '../util/product_api_util';

export const RECEIVE_PRODUCTS = "RECEIVE_PRODUCTS";
export const RECEIVE_PRODUCT = "RECEIVE_PRODUCT";
export const RECEIVE_PRODUCT_ERRORS = "RECEIVE_PRODUCT_ERRORS";
export const CREATE_PRODUCT = "CREATE_PRODUCT";

export const receiveProducts = (products) => ({
  type: RECEIVE_PRODUCTS,
  products
});

export const receiveProduct = (product) => ({
  type: RECEIVE_PRODUCT,
  product
});

export const createProduct = (product) => ({
  type: CREATE_PRODUCT,
  product
});

export const receiveProductErrors = (errors) => ({
  type: RECEIVE_PRODUCT_ERRORS,
  errors
});


export const requestProducts = () => dispatch => {
  return APIUtil.fetchProducts().then( products => {
      dispatch(receiveProducts(products));
    },
    errors => dispatch(receiveProductErrors(errors))
  );
};

export const requestProduct = (id) => dispatch => {
  return APIUtil.fetchProduct(id).then( product => {
      dispatch(receiveProduct(product));
    },
    errors => dispatch(receiveProductErrors(errors))
  );
};

export const requestCreateProduct = (product) => dispatch => {
  return APIUtil.createProduct(product).then( prod => {
        dispatch(receiveProduct(prod));
      },
    errors => dispatch(receiveProductErrors(errors))
  );
};


export const requestUpdateProduct = (product) => dispatch => {
  return APIUtil.updateProduct(product).then( prod => {
        dispatch(receiveProduct(prod));
      },
    errors => dispatch(receiveProductErrors(errors))
  );
};