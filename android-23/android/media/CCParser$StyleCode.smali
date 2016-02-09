.class Landroid/media/CCParser$StyleCode;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleCode"
.end annotation


# static fields
.field static final COLOR_BLUE:I = 0x2

.field static final COLOR_CYAN:I = 0x3

.field static final COLOR_GREEN:I = 0x1

.field static final COLOR_INVALID:I = 0x7

.field static final COLOR_MAGENTA:I = 0x6

.field static final COLOR_RED:I = 0x4

.field static final COLOR_WHITE:I = 0x0

.field static final COLOR_YELLOW:I = 0x5

.field static final STYLE_ITALICS:I = 0x1

.field static final STYLE_UNDERLINE:I = 0x2

.field static final mColorMap:[Ljava/lang/String;


# instance fields
.field final mColor:I

.field final mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 372
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 373
    const-string/jumbo v1, "WHITE"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "GREEN"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "BLUE"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "CYAN"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "RED"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    const-string/jumbo v1, "YELLOW"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "MAGENTA"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "INVALID"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 372
    sput-object v0, Landroid/media/CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    #@36
    .line 359
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "style"    # I
    .param p2, "color"    # I

    #@0
    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 397
    iput p1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    #@5
    .line 398
    iput p2, p0, Landroid/media/CCParser$StyleCode;->mColor:I

    #@7
    .line 396
    return-void
.end method

.method static fromByte(B)Landroid/media/CCParser$StyleCode;
    .locals 3
    .param p0, "data2"    # B

    #@0
    .prologue
    .line 380
    const/4 v1, 0x0

    #@1
    .line 381
    .local v1, "style":I
    shr-int/lit8 v2, p0, 0x1

    #@3
    and-int/lit8 v0, v2, 0x7

    #@5
    .line 383
    .local v0, "color":I
    and-int/lit8 v2, p0, 0x1

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 384
    const/4 v1, 0x2

    #@a
    .line 387
    :cond_0
    const/4 v2, 0x7

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 389
    const/4 v0, 0x0

    #@e
    .line 390
    or-int/lit8 v1, v1, 0x1

    #@10
    .line 393
    :cond_1
    new-instance v2, Landroid/media/CCParser$StyleCode;

    #@12
    invoke-direct {v2, v1, v0}, Landroid/media/CCParser$StyleCode;-><init>(II)V

    #@15
    return-object v2
.end method


# virtual methods
.method getColor()I
    .locals 1

    #@0
    .prologue
    .line 410
    iget v0, p0, Landroid/media/CCParser$StyleCode;->mColor:I

    #@2
    return v0
.end method

.method isItalics()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 402
    iget v1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method isUnderline()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 406
    iget v1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 416
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 417
    sget-object v1, Landroid/media/CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    #@d
    iget v2, p0, Landroid/media/CCParser$StyleCode;->mColor:I

    #@f
    aget-object v1, v1, v2

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 418
    iget v1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    #@16
    and-int/lit8 v1, v1, 0x1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 419
    const-string/jumbo v1, ", ITALICS"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 421
    :cond_0
    iget v1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    #@22
    and-int/lit8 v1, v1, 0x2

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 422
    const-string/jumbo v1, ", UNDERLINE"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 424
    :cond_1
    const-string/jumbo v1, "}"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    return-object v1
.end method
