.class final Landroid/net/NetworkRecommendationProvider$ServiceWrapper;
.super Landroid/net/INetworkRecommendationProvider$Stub;
.source "NetworkRecommendationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRecommendationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/net/NetworkRecommendationProvider;


# direct methods
.method constructor blacklist <init>(Landroid/net/NetworkRecommendationProvider;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->this$0:Landroid/net/NetworkRecommendationProvider;

    invoke-direct {p0}, Landroid/net/INetworkRecommendationProvider$Stub;-><init>()V

    .line 93
    iput-object p2, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mContext:Landroid/content/Context;

    .line 94
    iput-object p3, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 95
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method private greylist-max-o enforceCallingPermission()V
    .registers 4

    .line 120
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 121
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    const-string v2, "Permission denied."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_d
    return-void
.end method

.method private greylist-max-o execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 112
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_a

    .line 113
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_f

    .line 115
    :cond_a
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    :goto_f
    return-void
.end method


# virtual methods
.method public greylist-max-o requestScores([Landroid/net/NetworkKey;)V
    .registers 3
    .param p1, "networks"    # [Landroid/net/NetworkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->enforceCallingPermission()V

    .line 101
    if-eqz p1, :cond_10

    array-length v0, p1

    if-lez v0, :cond_10

    .line 102
    new-instance v0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;

    invoke-direct {v0, p0, p1}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;-><init>(Landroid/net/NetworkRecommendationProvider$ServiceWrapper;[Landroid/net/NetworkKey;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->execute(Ljava/lang/Runnable;)V

    .line 109
    :cond_10
    return-void
.end method
