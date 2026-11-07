.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.super Ljava/lang/Object;
.source "Easing.java"


# static fields
.field public static final blacklist CUBIC_ACCELERATE:I = 0x2

.field public static final blacklist CUBIC_ANTICIPATE:I = 0x5

.field public static final blacklist CUBIC_CUSTOM:I = 0xb

.field public static final blacklist CUBIC_DECELERATE:I = 0x3

.field public static final blacklist CUBIC_LINEAR:I = 0x4

.field public static final blacklist CUBIC_OVERSHOOT:I = 0x6

.field public static final blacklist CUBIC_STANDARD:I = 0x1

.field public static final blacklist EASE_OUT_BOUNCE:I = 0xd

.field public static final blacklist EASE_OUT_ELASTIC:I = 0xe

.field public static final blacklist SPLINE_CUSTOM:I = 0xc


# instance fields
.field blacklist mType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getString(I)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # I

    .line 84
    packed-switch p0, :pswitch_data_3c

    .line 106
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_CURVE_TYPE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_1d
    const-string v0, "EASE_OUT_ELASTIC"

    return-object v0

    .line 102
    :pswitch_20
    const-string v0, "EASE_OUT_BOUNCE"

    return-object v0

    .line 100
    :pswitch_23
    const-string v0, "SPLINE_CUSTOM"

    return-object v0

    .line 98
    :pswitch_26
    const-string v0, "CUBIC_CUSTOM"

    return-object v0

    .line 96
    :pswitch_29
    const-string v0, "CUBIC_OVERSHOOT"

    return-object v0

    .line 94
    :pswitch_2c
    const-string v0, "CUBIC_ANTICIPATE"

    return-object v0

    .line 92
    :pswitch_2f
    const-string v0, "CUBIC_LINEAR"

    return-object v0

    .line 90
    :pswitch_32
    const-string v0, "CUBIC_DECELERATE"

    return-object v0

    .line 88
    :pswitch_35
    const-string v0, "CUBIC_ACCELERATE"

    return-object v0

    .line 86
    :pswitch_38
    const-string v0, "CUBIC_STANDARD"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public abstract blacklist get(F)F
.end method

.method public abstract blacklist getDiff(F)F
.end method

.method public blacklist getType()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->mType:I

    return v0
.end method
