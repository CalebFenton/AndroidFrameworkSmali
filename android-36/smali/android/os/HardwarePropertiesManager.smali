.class public Landroid/os/HardwarePropertiesManager;
.super Ljava/lang/Object;
.source "HardwarePropertiesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HardwarePropertiesManager$TemperatureSource;,
        Landroid/os/HardwarePropertiesManager$DeviceTemperatureType;
    }
.end annotation


# static fields
.field public static final whitelist DEVICE_TEMPERATURE_BATTERY:I = 0x2

.field public static final whitelist DEVICE_TEMPERATURE_CPU:I = 0x0

.field public static final whitelist DEVICE_TEMPERATURE_GPU:I = 0x1

.field public static final whitelist DEVICE_TEMPERATURE_SKIN:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field public static final whitelist TEMPERATURE_CURRENT:I = 0x0

.field public static final whitelist TEMPERATURE_SHUTDOWN:I = 0x2

.field public static final whitelist TEMPERATURE_THROTTLING:I = 0x1

.field public static final whitelist TEMPERATURE_THROTTLING_BELOW_VR_MIN:I = 0x3

.field public static final whitelist UNDEFINED_TEMPERATURE:F = -3.4028235E38f


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/os/IHardwarePropertiesManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroid/os/HardwarePropertiesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/IHardwarePropertiesManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IHardwarePropertiesManager;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist getCpuUsages()[Landroid/os/CpuUsageInfo;
    .registers 3

    .line 163
    :try_start_0
    iget-object v0, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    iget-object v1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IHardwarePropertiesManager;->getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 164
    :catch_d
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDeviceTemperatures(II)[F
    .registers 6
    .param p1, "type"    # I
    .param p2, "source"    # I

    .line 125
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2e

    .line 146
    sget-object v1, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    const-string v2, "Unknown device temperature type."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-array v0, v0, [F

    return-object v0

    .line 130
    :pswitch_e
    packed-switch p2, :pswitch_data_3a

    .line 142
    sget-object v1, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    const-string v2, "Unknown device temperature source."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-array v0, v0, [F

    return-object v0

    .line 136
    :pswitch_1b
    :try_start_1b
    iget-object v0, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    iget-object v1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/os/IHardwarePropertiesManager;->getDeviceTemperatures(Ljava/lang/String;II)[F

    move-result-object v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_27} :catch_28

    return-object v0

    .line 138
    :catch_28
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public whitelist getFanSpeeds()[F
    .registers 3

    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    iget-object v1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IHardwarePropertiesManager;->getFanSpeeds(Ljava/lang/String;)[F

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 181
    :catch_d
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
