.class public abstract Landroid/os/PowerManagerInternal;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManagerInternal$LowPowerModeListener;
    }
.end annotation


# static fields
.field public static final WAKEFULNESS_ASLEEP:I = 0x0

.field public static final WAKEFULNESS_AWAKE:I = 0x1

.field public static final WAKEFULNESS_DOZING:I = 0x3

.field public static final WAKEFULNESS_DREAMING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isInteractive(I)Z
    .locals 2
    .param p0, "wakefulness"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 76
    if-eq p0, v0, :cond_0

    #@3
    const/4 v1, 0x2

    #@4
    if-ne p0, v1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public static wakefulnessToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "wakefulness"    # I

    #@0
    .prologue
    .line 57
    packed-switch p0, :pswitch_data_0

    #@3
    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 59
    :pswitch_0
    const-string/jumbo v0, "Asleep"

    #@b
    return-object v0

    #@c
    .line 61
    :pswitch_1
    const-string/jumbo v0, "Awake"

    #@f
    return-object v0

    #@10
    .line 63
    :pswitch_2
    const-string/jumbo v0, "Dreaming"

    #@13
    return-object v0

    #@14
    .line 65
    :pswitch_3
    const-string/jumbo v0, "Dozing"

    #@17
    return-object v0

    #@18
    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public abstract getLowPowerModeEnabled()Z
.end method

.method public abstract registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end method

.method public abstract setButtonBrightnessOverrideFromWindowManager(I)V
.end method

.method public abstract setDeviceIdleMode(Z)V
.end method

.method public abstract setDeviceIdleTempWhitelist([I)V
.end method

.method public abstract setDeviceIdleWhitelist([I)V
.end method

.method public abstract setDozeOverrideFromDreamManager(II)V
.end method

.method public abstract setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
.end method

.method public abstract setScreenBrightnessOverrideFromWindowManager(I)V
.end method

.method public abstract setUserActivityTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract uidGone(I)V
.end method

.method public abstract updateUidProcState(II)V
.end method
