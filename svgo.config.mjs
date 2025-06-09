export default {
  js2svg: {
    eol: "lf",
    indent: 2,
    // Pretty-printing makes it slightly easier to review iconography work at
    // the expense of icons taking up slightly more storage space
    pretty: true,
  },
  // For the optimization process to be idempotent, which is necessary for
  // verifying optimized versions of SVGs in CI, it is necessary to run the
  // process multiple times
  multipass: true,
  plugins: [
    {
      name: "preset-default",
      params: {
        overrides: {
          // SVGs should be able to automatically scale to their container,
          // especially when used in composite components. Hence viewbox
          // definitions are mandatory
          removeViewBox: false,
        },
      },
    },
    { name: "removeAttrs", params: { attrs: ["svg:height", "svg:width"] } },
    "convertStyleToAttrs",
  ],
  recursive: true,
};
