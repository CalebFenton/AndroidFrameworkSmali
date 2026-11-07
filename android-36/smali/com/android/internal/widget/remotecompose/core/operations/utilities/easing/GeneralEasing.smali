.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "GeneralEasing.java"


# instance fields
.field blacklist mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

.field blacklist mEasingData:[F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    .line 23
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    return-void
.end method


# virtual methods
.method blacklist createEngine()V
    .registers 8

    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 46
    .local v0, "type":I
    packed-switch v0, :pswitch_data_3a

    :pswitch_c
    goto :goto_39

    .line 61
    :pswitch_d
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_39

    .line 56
    :pswitch_15
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 59
    goto :goto_39

    .line 53
    :pswitch_31
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 54
    nop

    .line 64
    :goto_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_15
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist get(F)F
    .registers 3
    .param p1, "x"    # F

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->get(F)F

    move-result v0

    return v0
.end method

.method public blacklist getCurveSpecification()[F
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    return-object v0
.end method

.method public blacklist getDiff(F)F
    .registers 3
    .param p1, "x"    # F

    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getDiff(F)F

    move-result v0

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getType()I

    move-result v0

    return v0
.end method

.method public blacklist setCurveSpecification([F)V
    .registers 2
    .param p1, "data"    # [F

    .line 31
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->mEasingData:[F

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/GeneralEasing;->createEngine()V

    .line 33
    return-void
.end method
