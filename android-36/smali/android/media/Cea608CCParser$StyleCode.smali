.class Landroid/media/Cea608CCParser$StyleCode;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleCode"
.end annotation


# static fields
.field static final greylist-max-o COLOR_BLUE:I = 0x2

.field static final greylist-max-o COLOR_CYAN:I = 0x3

.field static final greylist-max-o COLOR_GREEN:I = 0x1

.field static final greylist-max-o COLOR_INVALID:I = 0x7

.field static final greylist-max-o COLOR_MAGENTA:I = 0x6

.field static final greylist-max-o COLOR_RED:I = 0x4

.field static final greylist-max-o COLOR_WHITE:I = 0x0

.field static final greylist-max-o COLOR_YELLOW:I = 0x5

.field static final greylist-max-o STYLE_ITALICS:I = 0x1

.field static final greylist-max-o STYLE_UNDERLINE:I = 0x2

.field static final greylist-max-o mColorMap:[Ljava/lang/String;


# instance fields
.field final greylist-max-o mColor:I

.field final greylist-max-o mStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 516
    const-string v6, "MAGENTA"

    const-string v7, "INVALID"

    const-string v0, "WHITE"

    const-string v1, "GREEN"

    const-string v2, "BLUE"

    const-string v3, "CYAN"

    const-string v4, "RED"

    const-string v5, "YELLOW"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Cea608CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "style"    # I
    .param p2, "color"    # I

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput p1, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    .line 542
    iput p2, p0, Landroid/media/Cea608CCParser$StyleCode;->mColor:I

    .line 543
    return-void
.end method

.method static greylist-max-o fromByte(B)Landroid/media/Cea608CCParser$StyleCode;
    .registers 5
    .param p0, "data2"    # B

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "style":I
    shr-int/lit8 v1, p0, 0x1

    const/4 v2, 0x7

    and-int/2addr v1, v2

    .line 527
    .local v1, "color":I
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_b

    .line 528
    or-int/lit8 v0, v0, 0x2

    .line 531
    :cond_b
    if-ne v1, v2, :cond_10

    .line 533
    const/4 v1, 0x0

    .line 534
    or-int/lit8 v0, v0, 0x1

    .line 537
    :cond_10
    new-instance v2, Landroid/media/Cea608CCParser$StyleCode;

    invoke-direct {v2, v0, v1}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method greylist-max-o getColor()I
    .registers 2

    .line 554
    iget v0, p0, Landroid/media/Cea608CCParser$StyleCode;->mColor:I

    return v0
.end method

.method greylist-max-o isItalics()Z
    .registers 3

    .line 546
    iget v0, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method greylist-max-o isUnderline()Z
    .registers 2

    .line 550
    iget v0, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    sget-object v1, Landroid/media/Cea608CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    iget v2, p0, Landroid/media/Cea608CCParser$StyleCode;->mColor:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget v1, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    .line 563
    const-string v1, ", ITALICS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_1e
    iget v1, p0, Landroid/media/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_29

    .line 566
    const-string v1, ", UNDERLINE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_29
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
