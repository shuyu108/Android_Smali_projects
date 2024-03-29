.class public Lde/j4velin/lib/colorpicker/ColorPickerPanelView;
.super Landroid/view/View;
.source "ColorPickerPanelView.java"


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f


# instance fields
.field private mAlphaPattern:Lde/j4velin/lib/colorpicker/AlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDensity:F

.field private mDrawingRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDensity:F

    .line 43
    const v0, -0x919192

    iput v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mBorderColor:I

    .line 44
    const/high16 v0, -0x1000000

    iput v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColor:I

    .line 65
    invoke-direct {p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->init()V

    .line 66
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDensity:F

    .line 72
    return-void
.end method

.method private setUpColorRect()V
    .locals 10

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 118
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 120
    .local v1, "dRect":Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v6

    .line 121
    .local v2, "left":F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v6

    .line 122
    .local v4, "top":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v6

    .line 123
    .local v0, "bottom":F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v6

    .line 125
    .local v3, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 127
    new-instance v5, Lde/j4velin/lib/colorpicker/AlphaPatternDrawable;

    const/high16 v6, 0x40a00000    # 5.0f

    iget v7, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lde/j4velin/lib/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lde/j4velin/lib/colorpicker/AlphaPatternDrawable;

    .line 129
    iget-object v5, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lde/j4velin/lib/colorpicker/AlphaPatternDrawable;

    iget-object v6, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 130
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 129
    invoke-virtual {v5, v6, v7, v8, v9}, Lde/j4velin/lib/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    .line 132
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 81
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 85
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lde/j4velin/lib/colorpicker/AlphaPatternDrawable;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mAlphaPattern:Lde/j4velin/lib/colorpicker/AlphaPatternDrawable;

    invoke-virtual {v1, p1}, Lde/j4velin/lib/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_0
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v1, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 98
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 100
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->setMeasuredDimension(II)V

    .line 101
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 108
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 109
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 110
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 111
    iget-object v0, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 113
    invoke-direct {p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->setUpColorRect()V

    .line 115
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 159
    iput p1, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mBorderColor:I

    .line 160
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->invalidate()V

    .line 161
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 140
    iput p1, p0, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->mColor:I

    .line 141
    invoke-virtual {p0}, Lde/j4velin/lib/colorpicker/ColorPickerPanelView;->invalidate()V

    .line 142
    return-void
.end method
