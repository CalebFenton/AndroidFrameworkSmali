.class public Landroid/app/pinner/PinnerServiceClient;
.super Ljava/lang/Object;
.source "PinnerServiceClient.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-string v0, "PinnerServiceClient"

    sput-object v0, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getPinnerStats()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/pinner/PinnedFileStat;",
            ">;"
        }
    .end annotation

    .line 58
    const-string/jumbo v0, "pinner"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_16

    .line 60
    sget-object v1, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve PinnerService. A common failure reason is due to a lack of selinux permissions."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 64
    :cond_16
    invoke-static {v0}, Landroid/app/pinner/IPinnerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/pinner/IPinnerService;

    move-result-object v1

    .line 65
    .local v1, "pinnerService":Landroid/app/pinner/IPinnerService;
    if-nez v1, :cond_29

    .line 66
    sget-object v2, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    const-string v3, "Failed to cast PinnerService."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 71
    :cond_29
    :try_start_29
    invoke-interface {v1}, Landroid/app/pinner/IPinnerService;->getPinnerStats()Ljava/util/List;

    move-result-object v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_2f

    .line 74
    .local v2, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/pinner/PinnedFileStat;>;"
    nop

    .line 75
    return-object v2

    .line 72
    .end local v2    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/pinner/PinnedFileStat;>;"
    :catch_2f
    move-exception v2

    .line 73
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to retrieve stats from PinnerService"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
