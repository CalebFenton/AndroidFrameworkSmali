.class public final Landroid/app/BackgroundInstallControlManager;
.super Ljava/lang/Object;
.source "BackgroundInstallControlManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BackgroundInstallControlManager"

.field private static blacklist sService:Landroid/content/pm/IBackgroundInstallControlService;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/app/BackgroundInstallControlManager;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private static blacklist getService()Landroid/content/pm/IBackgroundInstallControlService;
    .registers 1

    .line 64
    sget-object v0, Landroid/app/BackgroundInstallControlManager;->sService:Landroid/content/pm/IBackgroundInstallControlService;

    if-nez v0, :cond_11

    .line 65
    nop

    .line 67
    const-string v0, "background_install_control"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object v0

    sput-object v0, Landroid/app/BackgroundInstallControlManager;->sService:Landroid/content/pm/IBackgroundInstallControlService;

    .line 69
    :cond_11
    sget-object v0, Landroid/app/BackgroundInstallControlManager;->sService:Landroid/content/pm/IBackgroundInstallControlService;

    return-object v0
.end method


# virtual methods
.method public whitelist getBackgroundInstalledPackages(J)Ljava/util/List;
    .registers 5
    .param p1, "flags"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 94
    :try_start_0
    invoke-static {}, Landroid/app/BackgroundInstallControlManager;->getService()Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object v0

    iget-object v1, p0, Landroid/app/BackgroundInstallControlManager;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IBackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 94
    return-object v0

    .line 97
    :catch_13
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
