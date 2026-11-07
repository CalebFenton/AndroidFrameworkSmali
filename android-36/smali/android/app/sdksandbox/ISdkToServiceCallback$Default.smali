.class public Landroid/app/sdksandbox/ISdkToServiceCallback$Default;
.super Ljava/lang/Object;
.source "ISdkToServiceCallback.java"

# interfaces
.implements Landroid/app/sdksandbox/ISdkToServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/ISdkToServiceCallback;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppOwnedSdkSandboxInterfaces(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSandboxedSdks(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;
    .registers 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
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

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadSdk(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/ILoadSdkCallback;)V
    .registers 6
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "sdkName"    # Ljava/lang/String;
    .param p3, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "callback"    # Landroid/app/sdksandbox/ILoadSdkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist logLatenciesFromSandbox(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .registers 2
    .param p1, "sandboxLatencyInfo"    # Landroid/app/sdksandbox/SandboxLatencyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist logSandboxActivityApiLatencyFromSandbox(III)V
    .registers 4
    .param p1, "method"    # I
    .param p2, "callResult"    # I
    .param p3, "latencyMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
