.class public Landroid/app/sdksandbox/ISdkSandboxManager$Default;
.super Ljava/lang/Object;
.source "ISdkSandboxManager.java"

# interfaces
.implements Landroid/app/sdksandbox/ISdkSandboxManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/ISdkSandboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V
    .registers 4
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p3, "callback"    # Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAdServicesManager()Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppOwnedSdkSandboxInterfaces(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;
    .registers 4
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/sdksandbox/SandboxLatencyInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSandboxedSdks(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;
    .registers 4
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/sdksandbox/SandboxLatencyInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isSdkSandboxServiceRunning(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadSdk(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/ILoadSdkCallback;)V
    .registers 7
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "appProcessToken"    # Landroid/os/IBinder;
    .param p3, "sdkName"    # Ljava/lang/String;
    .param p4, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "callback"    # Landroid/app/sdksandbox/ILoadSdkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist logSandboxActivityApiLatency(III)V
    .registers 4
    .param p1, "method"    # I
    .param p2, "callResult"    # I
    .param p3, "latencyMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 2
    .param p1, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist registerAppOwnedSdkSandboxInterface(Ljava/lang/String;Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 4
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "appOwnedSdkSandboxInterface"    # Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;
    .param p3, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist removeSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V
    .registers 4
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p3, "callback"    # Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist requestSurfacePackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IIILandroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/IRequestSurfacePackageCallback;)V
    .registers 10
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sdkName"    # Ljava/lang/String;
    .param p3, "hostToken"    # Landroid/os/IBinder;
    .param p4, "displayId"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p8, "params"    # Landroid/os/Bundle;
    .param p9, "callback"    # Landroid/app/sdksandbox/IRequestSurfacePackageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist stopSdkSandbox(Ljava/lang/String;)V
    .registers 2
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist syncDataFromClient(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/SharedPreferencesUpdate;Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;)V
    .registers 5
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p3, "update"    # Landroid/app/sdksandbox/SharedPreferencesUpdate;
    .param p4, "callback"    # Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist unloadSdk(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 4
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sdkName"    # Ljava/lang/String;
    .param p3, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist unregisterAppOwnedSdkSandboxInterface(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 4
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method
