.class Landroid/os/vibrator/VibrationEffectSegment$1;
.super Ljava/lang/Object;
.source "VibrationEffectSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/VibrationEffectSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/vibrator/VibrationEffectSegment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    goto :goto_38

    .line 229
    :pswitch_8
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 230
    new-instance v0, Landroid/os/vibrator/PwleSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/PwleSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 234
    :cond_14
    :pswitch_14
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 235
    new-instance v0, Landroid/os/vibrator/BasicPwleSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/BasicPwleSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 223
    :pswitch_20
    new-instance v0, Landroid/os/vibrator/RampSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/RampSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 221
    :pswitch_26
    new-instance v0, Landroid/os/vibrator/StepSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/StepSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 227
    :pswitch_2c
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/PrimitiveSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 225
    :pswitch_32
    new-instance v0, Landroid/os/vibrator/PrebakedSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/PrebakedSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 239
    :cond_38
    :goto_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected vibration event type token in parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_8
        :pswitch_14
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationEffectSegment$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/vibrator/VibrationEffectSegment;
    .registers 3
    .param p1, "size"    # I

    .line 246
    new-array v0, p1, [Landroid/os/vibrator/VibrationEffectSegment;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationEffectSegment$1;->newArray(I)[Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object p1

    return-object p1
.end method
