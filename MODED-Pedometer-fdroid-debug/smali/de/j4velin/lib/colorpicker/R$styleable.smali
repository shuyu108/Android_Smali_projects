.class public final Lde/j4velin/lib/colorpicker/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/j4velin/lib/colorpicker/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ColorPreviewButton:[I

.field public static final ColorPreviewButton_borderColor:I = 0x0

.field public static final ColorPreviewButton_initColor:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/j4velin/lib/colorpicker/R$styleable;->ColorPreviewButton:[I

    .line 159
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lde/j4velin/lib/colorpicker/R$styleable;->FontFamily:[I

    .line 166
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lde/j4velin/lib/colorpicker/R$styleable;->FontFamilyFont:[I

    .line 173
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lde/j4velin/lib/colorpicker/R$styleable;->RecyclerView:[I

    return-void

    .line 156
    nop

    :array_0
    .array-data 4
        0x7f020037
        0x7f0200af
    .end array-data

    .line 159
    :array_1
    .array-data 4
        0x7f02009b
        0x7f02009c
        0x7f02009d
        0x7f02009e
        0x7f02009f
        0x7f0200a0
    .end array-data

    .line 166
    :array_2
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f020099
        0x7f0200a1
        0x7f0200a2
    .end array-data

    .line 173
    :array_3
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f020094
        0x7f020095
        0x7f020096
        0x7f020097
        0x7f020098
        0x7f0200b5
        0x7f0200e4
        0x7f0200f0
        0x7f0200f6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method