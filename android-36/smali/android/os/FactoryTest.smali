.class public final Landroid/os/FactoryTest;
.super Ljava/lang/Object;
.source "FactoryTest.java"


# static fields
.field public static final greylist-max-o FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final greylist-max-o FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final greylist-max-o FACTORY_TEST_OFF:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getMode()I
    .registers 1

    .line 41
    sget v0, Lcom/android/internal/os/RoSystemProperties;->FACTORYTEST:I

    return v0
.end method

.method public static greylist-max-o isLongPressOnPowerOffEnabled()Z
    .registers 2

    .line 49
    const-string v0, "factory.long_press_power_off"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method
