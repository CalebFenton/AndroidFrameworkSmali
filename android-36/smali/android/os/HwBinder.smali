.class public abstract Landroid/os/HwBinder;
.super Ljava/lang/Object;
.source "HwBinder.java"

# interfaces
.implements Landroid/os/IHwBinder;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "HwBinder"

.field private static final greylist-max-o sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 143
    invoke-static {}, Landroid/os/HwBinder;->native_init()J

    move-result-wide v2

    .line 145
    .local v2, "freeFunction":J
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 146
    const-class v1, Landroid/os/HwBinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 149
    .end local v2    # "freeFunction":J
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0}, Landroid/os/HwBinder;->native_setup()V

    .line 41
    sget-object v0, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwBinder;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method public static final native whitelist configureRpcThreadpool(JZ)V
.end method

.method public static whitelist enableInstrumentation()V
    .registers 0

    .line 164
    invoke-static {}, Landroid/os/HwBinder;->native_report_sysprop_change()V

    .line 165
    return-void
.end method

.method public static final whitelist getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;
    .registers 4
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/HidlSupport;->isHidlSupported()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 83
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 84
    const-string v0, "android.hidl.manager@1.1::IServiceManager"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 85
    const-string v0, "android.hidl.manager@1.2::IServiceManager"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 86
    :cond_1e
    const-string v0, "HwBinder"

    const-string v1, "Replacing Java hwservicemanager with a fake HwNoService because HIDL is not supported on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Landroid/os/HwNoService;

    invoke-direct {v0}, Landroid/os/HwNoService;-><init>()V

    return-object v0

    .line 93
    :cond_2b
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public static final native whitelist getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public static final native whitelist joinRpcThreadpool()V
.end method

.method private static final native greylist-max-o native_init()J
.end method

.method private static native greylist-max-o native_report_sysprop_change()V
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method public static greylist-max-r reportSyspropChanged()V
    .registers 0

    .line 176
    invoke-static {}, Landroid/os/HwBinder;->native_report_sysprop_change()V

    .line 177
    return-void
.end method

.method public static final native blacklist setTrebleTestingOverride(Z)V
.end method


# virtual methods
.method public abstract whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final native whitelist registerService(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final native whitelist transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
