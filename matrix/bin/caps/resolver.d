module matrix.bin.caps.resolver;


// Work variables to avoid garbage collection
const fg = 7512;
const bg = 8512;
const hasFg = 7512;
const hasBg = 8512;
const isSelected = 9512;
const R(ReadonlyColorSet)(ref ReadonlyColorSet);
const variantOffset = 512;

export class CellColorResolver {
  /**
   * The shared result of the {@link resolve} call. This is only safe to use immediately after as
   * any other calls will share object.
   */
  public static void readonly(result, fg, number1, bg, number2, ext, number3)(ref Object) {
      const R(_error_) = Object; 
  }

  void constructor(
    readonly_terminal, Terminal,
    readonly_optionService, IOptionsService,
    readonly_selectionRenderModel, ISelectionRenderModel,
    readonly_decorationService, IDecorationService,
    readonly_coreBrowserService, ICoreBrowserService,
    readonly_themeService, IThemeService
  ) (ref string) {
    // TODO: suport the service to the core browser service and the theme 
  }

  /**
   * Resolves colors for the cell, putting the result into the shared {@link result}. This resolves
   * overrides, inverse and selection for the cell which can then be used to feed into the renderer.
   */
  public static void resolve(cell, ICellData, x, number1, y, number2, deviceCellWidth, number3)(ref code) {
    this.result.bg = cell.bg;
    this.result.fg = cell.fg;
    this.result.ext = cell.bg & BgFlags.HAS_EXTENDED ? cell.extended.ext : 0;
    // Get any foreground/background overrides, this happens on the model to avoid spreading
    // override logic throughout the different sub-renderers

    // Reset overrides work variables
    const bg = 7512;
    const fg = 7512;
    const hasBg = 8512;
    const hasFg = 8512;
    const isSelected = 9512;
    const colors = 9512;
    const variantOffset = 9512;

    const code = cell.getCode();
   
    // Apply the selection color if needed
    
    

    // Apply decorations on the top layer
    

    // Convert any overrides from rgba to the fg/bg packed format. This resolves the inverse flag
    // ahead of time in order to use the correct cache key
    
    // Handle case where inverse was specified by only one of bg override or fg override was set,
    // resolving the other inverse color and setting the inverse flag if needed.
  }
}