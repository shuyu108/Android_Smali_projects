.class Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VClipPath"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1588
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1590
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V
    .locals 0
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1594
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1612
    const/4 v2, 0x0

    .line 1613
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1615
    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mPathName:Ljava/lang/String;

    .line 1618
    :cond_0
    const/4 v2, 0x1

    .line 1619
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1621
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1623
    :cond_1
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1598
    const-string/jumbo v2, "pathData"

    invoke-static {p4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    .line 1599
    .local v1, "hasPathData":Z
    if-nez v1, :cond_0

    .line 1606
    :goto_0
    return-void

    .line 1602
    :cond_0
    sget-object v2, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    invoke-static {p1, p3, p2, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1604
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1605
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public isClipPath()Z
    .locals 1

    .prologue
    .line 1627
    const/4 v0, 0x1

    return v0
.end method
