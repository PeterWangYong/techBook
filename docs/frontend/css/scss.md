

# scss

## mixin

```scss
@mixin flex-center {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.widget-wrapper {
  @include flex-center;
}
```

