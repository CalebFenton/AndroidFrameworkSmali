.class public final Landroid/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private greylist-max-o strategy:I

.field private greylist-max-o xend:I

.field private greylist-max-o xstart:I

.field private greylist-max-o yend:I

.field private greylist-max-o ystart:I

.field private greylist-max-o zend:I

.field private greylist-max-o zstart:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetxend(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 1

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetxstart(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 1

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetyend(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 1

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetystart(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 1

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetzend(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 1

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetzstart(Landroid/renderscript/Script$LaunchOptions;)I
    .registers 1

    iget p0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 557
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 558
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 559
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 560
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 561
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-void
.end method


# virtual methods
.method public whitelist getXEnd()I
    .registers 2

    .line 633
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public whitelist getXStart()I
    .registers 2

    .line 625
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public whitelist getYEnd()I
    .registers 2

    .line 649
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public whitelist getYStart()I
    .registers 2

    .line 641
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public whitelist getZEnd()I
    .registers 2

    .line 665
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public whitelist getZStart()I
    .registers 2

    .line 657
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public whitelist setX(II)Landroid/renderscript/Script$LaunchOptions;
    .registers 5
    .param p1, "xstartArg"    # I
    .param p2, "xendArg"    # I

    .line 574
    if-ltz p1, :cond_9

    if-le p2, p1, :cond_9

    .line 577
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 578
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 579
    return-object p0

    .line 575
    :cond_9
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setY(II)Landroid/renderscript/Script$LaunchOptions;
    .registers 5
    .param p1, "ystartArg"    # I
    .param p2, "yendArg"    # I

    .line 592
    if-ltz p1, :cond_9

    if-le p2, p1, :cond_9

    .line 595
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 596
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 597
    return-object p0

    .line 593
    :cond_9
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .registers 5
    .param p1, "zstartArg"    # I
    .param p2, "zendArg"    # I

    .line 610
    if-ltz p1, :cond_9

    if-le p2, p1, :cond_9

    .line 613
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 614
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    .line 615
    return-object p0

    .line 611
    :cond_9
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
