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
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method static synthetic -get0(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    #@2
    return v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 496
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    #@6
    .line 497
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    #@8
    .line 498
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    #@a
    .line 499
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    #@c
    .line 500
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    #@e
    .line 501
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    #@10
    .line 495
    return-void
.end method


# virtual methods
.method public getXEnd()I
    .locals 1

    #@0
    .prologue
    .line 573
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    #@2
    return v0
.end method

.method public getXStart()I
    .locals 1

    #@0
    .prologue
    .line 565
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    #@2
    return v0
.end method

.method public getYEnd()I
    .locals 1

    #@0
    .prologue
    .line 589
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    #@2
    return v0
.end method

.method public getYStart()I
    .locals 1

    #@0
    .prologue
    .line 581
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    #@2
    return v0
.end method

.method public getZEnd()I
    .locals 1

    #@0
    .prologue
    .line 605
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    #@2
    return v0
.end method

.method public getZStart()I
    .locals 1

    #@0
    .prologue
    .line 597
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    #@2
    return v0
.end method

.method public setX(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "xstartArg"    # I
    .param p2, "xendArg"    # I

    #@0
    .prologue
    .line 514
    if-ltz p1, :cond_0

    #@2
    if-gt p2, p1, :cond_1

    #@4
    .line 515
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v1, "Invalid dimensions"

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 517
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    #@f
    .line 518
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    #@11
    .line 519
    return-object p0
.end method

.method public setY(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "ystartArg"    # I
    .param p2, "yendArg"    # I

    #@0
    .prologue
    .line 532
    if-ltz p1, :cond_0

    #@2
    if-gt p2, p1, :cond_1

    #@4
    .line 533
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v1, "Invalid dimensions"

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 535
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    #@f
    .line 536
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    #@11
    .line 537
    return-object p0
.end method

.method public setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "zstartArg"    # I
    .param p2, "zendArg"    # I

    #@0
    .prologue
    .line 550
    if-ltz p1, :cond_0

    #@2
    if-gt p2, p1, :cond_1

    #@4
    .line 551
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@6
    const-string/jumbo v1, "Invalid dimensions"

    #@9
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 553
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    #@f
    .line 554
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    #@11
    .line 555
    return-object p0
.end method
