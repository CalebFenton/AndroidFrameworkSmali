.class public Landroid/media/Cea708CCParser$CaptionColor;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionColor"
.end annotation


# static fields
.field private static final COLOR_MAP:[I

.field public static final OPACITY_FLASH:I = 0x1

.field private static final OPACITY_MAP:[I

.field public static final OPACITY_SOLID:I = 0x0

.field public static final OPACITY_TRANSLUCENT:I = 0x2

.field public static final OPACITY_TRANSPARENT:I = 0x3


# instance fields
.field public final blue:I

.field public final green:I

.field public final opacity:I

.field public final red:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0xff

    #@2
    const/4 v2, 0x0

    #@3
    .line 838
    const/16 v0, 0xf

    #@5
    const/16 v1, 0xf0

    #@7
    filled-new-array {v2, v0, v1, v3}, [I

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    #@d
    .line 839
    const/16 v0, 0xfe

    #@f
    const/16 v1, 0x80

    #@11
    filled-new-array {v3, v0, v1, v2}, [I

    #@14
    move-result-object v0

    #@15
    sput-object v0, Landroid/media/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    #@17
    .line 832
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "opacity"    # I
    .param p2, "red"    # I
    .param p3, "green"    # I
    .param p4, "blue"    # I

    #@0
    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 847
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionColor;->opacity:I

    #@5
    .line 848
    iput p2, p0, Landroid/media/Cea708CCParser$CaptionColor;->red:I

    #@7
    .line 849
    iput p3, p0, Landroid/media/Cea708CCParser$CaptionColor;->green:I

    #@9
    .line 850
    iput p4, p0, Landroid/media/Cea708CCParser$CaptionColor;->blue:I

    #@b
    .line 846
    return-void
.end method


# virtual methods
.method public getArgbValue()I
    .locals 5

    #@0
    .prologue
    .line 855
    sget-object v0, Landroid/media/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    #@2
    iget v1, p0, Landroid/media/Cea708CCParser$CaptionColor;->opacity:I

    #@4
    aget v0, v0, v1

    #@6
    sget-object v1, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    #@8
    iget v2, p0, Landroid/media/Cea708CCParser$CaptionColor;->red:I

    #@a
    aget v1, v1, v2

    #@c
    sget-object v2, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    #@e
    iget v3, p0, Landroid/media/Cea708CCParser$CaptionColor;->green:I

    #@10
    aget v2, v2, v3

    #@12
    sget-object v3, Landroid/media/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    #@14
    iget v4, p0, Landroid/media/Cea708CCParser$CaptionColor;->blue:I

    #@16
    aget v3, v3, v4

    #@18
    .line 854
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    #@1b
    move-result v0

    #@1c
    return v0
.end method
