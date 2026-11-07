.class public final Landroid/net/thread/ThreadNetworkManager;
.super Ljava/lang/Object;
.source "ThreadNetworkManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist DISALLOW_THREAD_NETWORK:Ljava/lang/String; = "no_thread_network"

.field public static final blacklist FEATURE_NAME:Ljava/lang/String; = "android.hardware.thread_network"

.field public static final blacklist PERMISSION_THREAD_NETWORK_PRIVILEGED:Ljava/lang/String; = "android.permission.THREAD_NETWORK_PRIVILEGED"

.field public static final blacklist PERMISSION_THREAD_NETWORK_TESTING:Ljava/lang/String; = "android.permission.THREAD_NETWORK_TESTING"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "thread_network"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mUnmodifiableControllerServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/thread/ThreadNetworkController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "managerService"    # Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;

    .line 117
    invoke-static {p2}, Landroid/net/thread/ThreadNetworkManager;->makeControllers(Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/thread/ThreadNetworkManager;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 118
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/thread/ThreadNetworkController;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p2, "controllerServices":Ljava/util/List;, "Ljava/util/List<Landroid/net/thread/ThreadNetworkController;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Landroid/net/thread/ThreadNetworkManager;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/thread/ThreadNetworkManager;->mUnmodifiableControllerServices:Ljava/util/List;

    .line 140
    return-void
.end method

.method private static blacklist makeControllers(Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;)Ljava/util/List;
    .registers 3
    .param p0, "managerService"    # Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/thread/ThreadNetworkController;",
            ">;"
        }
    .end annotation

    .line 122
    const-string v0, "managerService cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    :try_start_5
    invoke-interface {p0}, Landroid/net/connectivity/android/net/thread/IThreadNetworkManager;->getAllThreadNetworkControllers()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_14

    .line 131
    .local v0, "controllerServices":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/android/net/thread/IThreadNetworkController;>;"
    nop

    .line 133
    new-instance v1, Landroid/net/thread/ThreadNetworkManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/thread/ThreadNetworkManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 128
    .end local v0    # "controllerServices":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/android/net/thread/IThreadNetworkController;>;"
    :catch_14
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist getAllThreadNetworkControllers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/thread/ThreadNetworkController;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkManager;->mUnmodifiableControllerServices:Ljava/util/List;

    return-object v0
.end method
