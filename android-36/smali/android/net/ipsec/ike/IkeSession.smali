.class public final Landroid/net/ipsec/ike/IkeSession;
.super Ljava/lang/Object;
.source "IkeSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/IkeSession$IkeThreadHolder;
    }
.end annotation


# static fields
.field public static final blacklist CONTEXT_ATTRIBUTION_TAG_IWLAN:Ljava/lang/String; = "IWLAN"

.field public static final blacklist CONTEXT_ATTRIBUTION_TAG_VCN:Ljava/lang/String; = "VCN"

.field public static final blacklist CONTEXT_ATTRIBUTION_TAG_VPN:Ljava/lang/String; = "VPN_MANAGER"


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mContext:Landroid/content/Context;

.field final blacklist mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/net/IpSecManager;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ipSecManager"    # Landroid/net/IpSecManager;
    .param p3, "ikeSessionParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p4, "firstChildSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p5, "userCbExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "ikeSessionCallback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p7, "firstChildSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 142
    sget-object v0, Landroid/net/ipsec/ike/IkeSession$IkeThreadHolder;->IKE_WORKER_THREAD:Landroid/os/HandlerThread;

    .line 143
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 142
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Landroid/net/ipsec/ike/IkeSession;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/IpSecManager;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    .line 151
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ikeSessionParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p3, "firstChildSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p4, "userCbExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "ikeSessionCallback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p6, "firstChildSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 122
    nop

    .line 124
    const-string v0, "ipsec"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/IpSecManager;

    .line 122
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    .end local p3    # "firstChildSessionParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .end local p4    # "userCbExecutor":Ljava/util/concurrent/Executor;
    .end local p5    # "ikeSessionCallback":Landroid/net/ipsec/ike/IkeSessionCallback;
    .end local p6    # "firstChildSessionCallback":Landroid/net/ipsec/ike/ChildSessionCallback;
    .local v2, "context":Landroid/content/Context;
    .local v4, "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    .local v5, "firstChildSessionParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .local v6, "userCbExecutor":Ljava/util/concurrent/Executor;
    .local v7, "ikeSessionCallback":Landroid/net/ipsec/ike/IkeSessionCallback;
    .local v8, "firstChildSessionCallback":Landroid/net/ipsec/ike/ChildSessionCallback;
    invoke-direct/range {v1 .. v8}, Landroid/net/ipsec/ike/IkeSession;-><init>(Landroid/content/Context;Landroid/net/IpSecManager;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    .line 130
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/IpSecManager;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V
    .registers 19
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ipSecManager"    # Landroid/net/IpSecManager;
    .param p4, "ikeSessionParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p5, "firstChildSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p6, "userCbExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "ikeSessionCallback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p8, "firstChildSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mCloseGuard:Landroid/util/CloseGuard;

    .line 164
    iput-object p2, p0, Landroid/net/ipsec/ike/IkeSession;->mContext:Landroid/content/Context;

    .line 166
    instance-of v0, p5, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    if-eqz v0, :cond_15

    .line 167
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeSession;->checkTunnelFeatureOrThrow(Landroid/content/Context;)V

    .line 170
    :cond_15
    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/IpSecManager;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    iput-object v1, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 180
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->openSession()V

    .line 182
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "open"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private blacklist checkTunnelFeatureOrThrow(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.ipsec_tunnels"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 199
    return-void

    .line 196
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set up tunnel mode Child SA due to FEATURE_IPSEC_TUNNELS missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 281
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->closeSession()V

    .line 282
    return-void
.end method

.method public whitelist closeChildSession(Landroid/net/ipsec/ike/ChildSessionCallback;)V
    .registers 3
    .param p1, "childSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 257
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->closeChildSession(Landroid/net/ipsec/ike/ChildSessionCallback;)V

    .line 258
    return-void
.end method

.method public whitelist dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 475
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 476
    const-string v0, "IkeSession:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    if-eqz v1, :cond_19

    .line 480
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 481
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 483
    :cond_19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public whitelist test-api finalize()V
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 191
    :cond_9
    return-void
.end method

.method public whitelist kill()V
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 299
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->killSession()V

    .line 300
    return-void
.end method

.method public whitelist openChildSession(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;)V
    .registers 4
    .param p1, "childSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p2, "childSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 237
    instance-of v0, p1, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeSession;->checkTunnelFeatureOrThrow(Landroid/content/Context;)V

    .line 241
    :cond_9
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->openChildSession(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    .line 242
    return-void
.end method

.method public whitelist requestLivenessCheck()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 463
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->requestLivenessCheck()V

    .line 464
    return-void
.end method

.method public whitelist setNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 310
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/net/ipsec/ike/IkeSession;->setNetwork(Landroid/net/Network;III)V

    .line 313
    return-void
.end method

.method public blacklist setNetwork(Landroid/net/Network;III)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "ipVersion"    # I
    .param p3, "encapType"    # I
    .param p4, "keepaliveDelaySeconds"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 371
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    const/4 v0, -0x1

    if-eq p3, v0, :cond_e

    :cond_6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_16

    const/16 v0, 0x11

    if-eq p3, v0, :cond_e

    goto :goto_16

    .line 373
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Sending packets with IPv4 ESP or IPv6 UDP are not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->setNetwork(Landroid/net/Network;III)V

    .line 379
    return-void
.end method

.method public blacklist setUnderpinnedNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "underpinnedNetwork"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 394
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSession;->mIkeSessionStateMachine:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->setUnderpinnedNetwork(Landroid/net/Network;)V

    .line 395
    return-void
.end method
