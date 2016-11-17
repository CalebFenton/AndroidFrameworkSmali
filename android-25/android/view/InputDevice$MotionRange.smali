.class public final Landroid/view/InputDevice$MotionRange;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionRange"
.end annotation


# instance fields
.field private mAxis:I

.field private mFlat:F

.field private mFuzz:F

.field private mMax:F

.field private mMin:F

.field private mResolution:F

.field private mSource:I


# direct methods
.method static synthetic -get0(Landroid/view/InputDevice$MotionRange;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/view/InputDevice$MotionRange;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/view/InputDevice$MotionRange;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/view/InputDevice$MotionRange;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/view/InputDevice$MotionRange;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/view/InputDevice$MotionRange;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/view/InputDevice$MotionRange;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    #@2
    return v0
.end method

.method private constructor <init>(IIFFFFF)V
    .locals 0
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    #@0
    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 811
    iput p1, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    #@5
    .line 812
    iput p2, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    #@7
    .line 813
    iput p3, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    #@9
    .line 814
    iput p4, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    #@b
    .line 815
    iput p5, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    #@d
    .line 816
    iput p6, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    #@f
    .line 817
    iput p7, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    #@11
    .line 810
    return-void
.end method

.method synthetic constructor <init>(IIFFFFFLandroid/view/InputDevice$MotionRange;)V
    .locals 0
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFF)V

    #@3
    return-void
.end method


# virtual methods
.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 825
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mAxis:I

    #@2
    return v0
.end method

.method public getFlat()F
    .locals 1

    #@0
    .prologue
    .line 882
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    #@2
    return v0
.end method

.method public getFuzz()F
    .locals 1

    #@0
    .prologue
    .line 894
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    #@2
    return v0
.end method

.method public getMax()F
    .locals 1

    #@0
    .prologue
    .line 862
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    #@2
    return v0
.end method

.method public getMin()F
    .locals 1

    #@0
    .prologue
    .line 854
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    #@2
    return v0
.end method

.method public getRange()F
    .locals 2

    #@0
    .prologue
    .line 870
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    #@2
    iget v1, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    #@4
    sub-float/2addr v0, v1

    #@5
    return v0
.end method

.method public getResolution()F
    .locals 1

    #@0
    .prologue
    .line 902
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mResolution:F

    #@2
    return v0
.end method

.method public getSource()I
    .locals 1

    #@0
    .prologue
    .line 833
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mSource:I

    #@2
    return v0
.end method

.method public isFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    #@0
    .prologue
    .line 846
    invoke-virtual {p0}, Landroid/view/InputDevice$MotionRange;->getSource()I

    #@3
    move-result v0

    #@4
    and-int/2addr v0, p1

    #@5
    if-ne v0, p1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method
