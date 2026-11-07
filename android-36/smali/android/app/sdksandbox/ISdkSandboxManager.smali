.class public interface abstract Landroid/app/sdksandbox/ISdkSandboxManager;
.super Ljava/lang/Object;
.source "ISdkSandboxManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/ISdkSandboxManager$_Parcel;,
        Landroid/app/sdksandbox/ISdkSandboxManager$Stub;,
        Landroid/app/sdksandbox/ISdkSandboxManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.sdksandbox.ISdkSandboxManager"

.field public static final blacklist LOAD_SDK:Ljava/lang/String; = "LOAD_SDK"

.field public static final blacklist REQUEST_SURFACE_PACKAGE:Ljava/lang/String; = "REQUEST_SURFACE_PACKAGE"


# virtual methods
.method public abstract blacklist addSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAdServicesManager()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAppOwnedSdkSandboxInterfaces(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;
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
.end method

.method public abstract blacklist getSandboxedSdks(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)Ljava/util/List;
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
.end method

.method public abstract blacklist isSdkSandboxServiceRunning(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist loadSdk(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/ILoadSdkCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist logSandboxActivityApiLatency(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist logSandboxApiLatency(Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerAppOwnedSdkSandboxInterface(Ljava/lang/String;Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeSdkSandboxProcessDeathCallback(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestSurfacePackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IIILandroid/app/sdksandbox/SandboxLatencyInfo;Landroid/os/Bundle;Landroid/app/sdksandbox/IRequestSurfacePackageCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopSdkSandbox(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist syncDataFromClient(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/SharedPreferencesUpdate;Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unloadSdk(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterAppOwnedSdkSandboxInterface(Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
