.class public Landroid/net/wifi/usd/PublishSession;
.super Ljava/lang/Object;
.source "PublishSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mSessionId:I

.field private final blacklist mUsdManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/usd/UsdManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-class v0, Landroid/net/wifi/usd/PublishSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/usd/PublishSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/usd/UsdManager;I)V
    .registers 4
    .param p1, "usdManager"    # Landroid/net/wifi/usd/UsdManager;
    .param p2, "sessionId"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/usd/PublishSession;->mUsdManager:Ljava/lang/ref/WeakReference;

    .line 54
    iput p2, p0, Landroid/net/wifi/usd/PublishSession;->mSessionId:I

    .line 55
    return-void
.end method

.method static synthetic blacklist lambda$sendMessage$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultCallback"    # Ljava/util/function/Consumer;

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 4

    .line 69
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 72
    iget-object v0, p0, Landroid/net/wifi/usd/PublishSession;->mUsdManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/usd/UsdManager;

    .line 73
    .local v0, "usdManager":Landroid/net/wifi/usd/UsdManager;
    if-nez v0, :cond_18

    .line 74
    sget-object v1, Landroid/net/wifi/usd/PublishSession;->TAG:Ljava/lang/String;

    const-string v2, "cancel is called after the UsdManager has been garbage collected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 77
    :cond_18
    iget v1, p0, Landroid/net/wifi/usd/PublishSession;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/usd/UsdManager;->cancelPublish(I)V

    .line 78
    return-void

    .line 70
    .end local v0    # "usdManager":Landroid/net/wifi/usd/UsdManager;
    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getSessionId()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/net/wifi/usd/PublishSession;->mSessionId:I

    return v0
.end method

.method public whitelist sendMessage(I[BLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p4, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    const-string v0, "resultCallback must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string v0, "message must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 120
    iget-object v0, p0, Landroid/net/wifi/usd/PublishSession;->mUsdManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/usd/UsdManager;

    .line 121
    .local v1, "usdManager":Landroid/net/wifi/usd/UsdManager;
    if-nez v1, :cond_30

    .line 122
    sget-object v0, Landroid/net/wifi/usd/PublishSession;->TAG:Ljava/lang/String;

    const-string v2, "sendMessage is called after the UsdManager has been garbage collected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Landroid/net/wifi/usd/PublishSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Landroid/net/wifi/usd/PublishSession$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void

    .line 126
    :cond_30
    iget v2, p0, Landroid/net/wifi/usd/PublishSession;->mSessionId:I

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "peerId":I
    .end local p2    # "message":[B
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    .local v3, "peerId":I
    .local v4, "message":[B
    .local v5, "executor":Ljava/util/concurrent/Executor;
    .local v6, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/usd/UsdManager;->sendMessage(II[BLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 127
    return-void

    .line 118
    .end local v1    # "usdManager":Landroid/net/wifi/usd/UsdManager;
    .end local v3    # "peerId":I
    .end local v4    # "message":[B
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .end local v6    # "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    .restart local p1    # "peerId":I
    .restart local p2    # "message":[B
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :cond_3a
    move v3, p1

    .end local p1    # "peerId":I
    .restart local v3    # "peerId":I
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist updatePublish([B)V
    .registers 5
    .param p1, "serviceSpecificInfo"    # [B

    .line 89
    const-string v0, "serviceSpecificInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 93
    iget-object v0, p0, Landroid/net/wifi/usd/PublishSession;->mUsdManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/usd/UsdManager;

    .line 94
    .local v0, "usdManager":Landroid/net/wifi/usd/UsdManager;
    if-nez v0, :cond_1d

    .line 95
    sget-object v1, Landroid/net/wifi/usd/PublishSession;->TAG:Ljava/lang/String;

    const-string v2, "updatePublish is called after the UsdManager has been garbage collected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 98
    :cond_1d
    iget v1, p0, Landroid/net/wifi/usd/PublishSession;->mSessionId:I

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/usd/UsdManager;->updatePublish(I[B)V

    .line 99
    return-void

    .line 91
    .end local v0    # "usdManager":Landroid/net/wifi/usd/UsdManager;
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
