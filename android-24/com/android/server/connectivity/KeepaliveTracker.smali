.class public Lcom/android/server/connectivity/KeepaliveTracker;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.PACKET_KEEPALIVE_OFFLOAD"

.field private static final TAG:Ljava/lang/String; = "KeepaliveTracker"


# instance fields
.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mKeepalives:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 68
    iput-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@a
    .line 73
    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    #@c
    .line 72
    return-void
.end method

.method private findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 231
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/HashMap;

    #@8
    .line 232
    .local v0, "networkKeepalives":Ljava/util/HashMap;
    if-nez v0, :cond_0

    #@a
    .line 233
    new-instance v0, Ljava/util/HashMap;

    #@c
    .end local v0    # "networkKeepalives":Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 234
    .restart local v0    # "networkKeepalives":Ljava/util/HashMap;
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@11
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 240
    :cond_0
    const/4 v1, 0x1

    #@15
    .local v1, "slot":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@18
    move-result v2

    #@19
    if-gt v1, v2, :cond_2

    #@1b
    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    if-nez v2, :cond_1

    #@25
    .line 242
    return v1

    #@26
    .line 240
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 245
    :cond_2
    return v1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 363
    const-string/jumbo v5, "Packet keepalives:"

    #@3
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 364
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@9
    .line 365
    iget-object v5, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@b
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@e
    move-result-object v5

    #@f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "nai$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_1

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    #@1f
    .line 366
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@26
    .line 367
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@29
    .line 368
    iget-object v5, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@2b
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    check-cast v5, Ljava/util/HashMap;

    #@31
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@34
    move-result-object v5

    #@35
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v4

    #@39
    .local v4, "slot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_0

    #@3f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Ljava/lang/Integer;

    #@45
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@48
    move-result v3

    #@49
    .line 369
    .local v3, "slot":I
    iget-object v5, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@4b
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v5

    #@4f
    check-cast v5, Ljava/util/HashMap;

    #@51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    #@5b
    .line 370
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    const-string/jumbo v6, ": "

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@7a
    goto :goto_1

    #@7b
    .line 372
    .end local v0    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local v3    # "slot":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@7e
    goto :goto_0

    #@7f
    .line 374
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v4    # "slot$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@82
    .line 362
    return-void
.end method

.method public handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 9
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    #@0
    .prologue
    .line 287
    iget-object v7, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@2
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/util/HashMap;

    #@8
    .line 288
    .local v2, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v2, :cond_2

    #@a
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    #@c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 290
    .local v1, "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@12
    move-result-object v7

    #@13
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v4

    #@17
    .local v4, "slot$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_1

    #@1d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v7

    #@21
    check-cast v7, Ljava/lang/Integer;

    #@23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v3

    #@27
    .line 291
    .local v3, "slot":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v7

    #@2f
    check-cast v7, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    #@31
    invoke-static {v7}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->-wrap0(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    #@34
    move-result v0

    #@35
    .line 292
    .local v0, "error":I
    if-eqz v0, :cond_0

    #@37
    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v7

    #@3b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v8

    #@3f
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    goto :goto_0

    #@47
    .line 296
    .end local v0    # "error":I
    .end local v3    # "slot":I
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v6

    #@4b
    .local v6, "slotAndError$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_2

    #@51
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v5

    #@55
    check-cast v5, Landroid/util/Pair;

    #@57
    .line 297
    .local v5, "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@59
    check-cast v7, Ljava/lang/Integer;

    #@5b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@5e
    move-result v8

    #@5f
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@61
    check-cast v7, Ljava/lang/Integer;

    #@63
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@66
    move-result v7

    #@67
    invoke-virtual {p0, p1, v8, v7}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@6a
    goto :goto_1

    #@6b
    .line 286
    .end local v1    # "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v4    # "slot$iterator":Ljava/util/Iterator;
    .end local v5    # "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "slotAndError$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 303
    iget v4, p2, Landroid/os/Message;->arg1:I

    #@3
    .line 304
    .local v4, "slot":I
    iget v3, p2, Landroid/os/Message;->arg2:I

    #@5
    .line 306
    .local v3, "reason":I
    const/4 v2, 0x0

    #@6
    .line 308
    .local v2, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@8
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v5

    #@c
    check-cast v5, Ljava/util/HashMap;

    #@e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    move-object v0, v5

    #@17
    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    #@19
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 310
    .end local v2    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :goto_0
    if-nez v2, :cond_0

    #@1c
    .line 311
    const-string/jumbo v5, "KeepaliveTracker"

    #@1f
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "Event for unknown keepalive "

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    const-string/jumbo v7, " on "

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 312
    return-void

    #@46
    .line 315
    :cond_0
    if-nez v3, :cond_1

    #@48
    iget-boolean v5, v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    #@4a
    if-eqz v5, :cond_3

    #@4c
    .line 322
    :cond_1
    iput-boolean v7, v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    #@4e
    .line 323
    if-nez v3, :cond_2

    #@50
    .line 328
    :cond_2
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    #@53
    .line 302
    :goto_1
    return-void

    #@54
    .line 318
    :cond_3
    const/4 v5, 0x1

    #@55
    iput-boolean v5, v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    #@57
    .line 319
    invoke-virtual {v2, v4, v3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->notifyMessenger(II)V

    #@5a
    goto :goto_1

    #@5b
    .line 309
    .restart local v2    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :catch_0
    move-exception v1

    #@5c
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public handleStartKeepalive(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    #@4
    .line 250
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->getNai()Lcom/android/server/connectivity/NetworkAgentInfo;

    #@7
    move-result-object v1

    #@8
    .line 251
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KeepaliveTracker;->findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    #@b
    move-result v2

    #@c
    .line 252
    .local v2, "slot":I
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/util/HashMap;

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 253
    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->start(I)V

    #@1e
    .line 248
    return-void
.end method

.method public handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 257
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@2
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/util/HashMap;

    #@8
    .line 258
    .local v2, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v2, :cond_1

    #@a
    .line 259
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "ki$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    #@1e
    .line 260
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    #@21
    goto :goto_0

    #@22
    .line 262
    .end local v0    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@25
    .line 263
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@27
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 256
    .end local v1    # "ki$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .locals 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "slot"    # I
    .param p3, "reason"    # I

    #@0
    .prologue
    .line 268
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v2, "(null)"

    #@5
    .line 269
    .local v2, "networkName":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@7
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/util/HashMap;

    #@d
    .line 270
    .local v1, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-nez v1, :cond_1

    #@f
    .line 271
    const-string/jumbo v3, "KeepaliveTracker"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "Attempt to stop keepalive on nonexistent network "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 272
    return-void

    #@2a
    .line 268
    .end local v1    # "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    .end local v2    # "networkName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .restart local v2    # "networkName":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 274
    .restart local v1    # "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    #@39
    .line 275
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    if-nez v0, :cond_2

    #@3b
    .line 276
    const-string/jumbo v3, "KeepaliveTracker"

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "Attempt to stop nonexistent keepalive "

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    const-string/jumbo v5, " on "

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 277
    return-void

    #@61
    .line 279
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    #@64
    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    .line 281
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    #@6e
    move-result v3

    #@6f
    if-eqz v3, :cond_3

    #@71
    .line 282
    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;

    #@73
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 267
    :cond_3
    return-void
.end method

.method notifyMessenger(Landroid/os/Messenger;II)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "slot"    # I
    .param p3, "err"    # I

    #@0
    .prologue
    .line 218
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v1

    #@4
    .line 219
    .local v1, "message":Landroid/os/Message;
    const v2, 0x8100d

    #@7
    iput v2, v1, Landroid/os/Message;->what:I

    #@9
    .line 220
    iput p2, v1, Landroid/os/Message;->arg1:I

    #@b
    .line 221
    iput p3, v1, Landroid/os/Message;->arg2:I

    #@d
    .line 222
    const/4 v2, 0x0

    #@e
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    .line 224
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 217
    :goto_0
    return-void

    #@14
    .line 225
    :catch_0
    move-exception v0

    #@15
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 12
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "intervalSeconds"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "srcAddrString"    # Ljava/lang/String;
    .param p6, "srcPort"    # I
    .param p7, "dstAddrString"    # Ljava/lang/String;
    .param p8, "dstPort"    # I

    #@0
    .prologue
    .line 334
    if-nez p1, :cond_0

    #@2
    .line 335
    const/4 v2, -0x1

    #@3
    const/16 v3, -0x14

    #@5
    invoke-virtual {p0, p3, v2, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    #@8
    .line 336
    return-void

    #@9
    .line 341
    :cond_0
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@c
    move-result-object v11

    #@d
    .line 342
    .local v11, "srcAddress":Ljava/net/InetAddress;
    invoke-static/range {p7 .. p7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v8

    #@11
    .line 351
    .local v8, "dstAddress":Ljava/net/InetAddress;
    const/16 v2, 0x1194

    #@13
    .line 350
    :try_start_1
    move/from16 v0, p6

    #@15
    invoke-static {v11, v0, v8, v2}, Lcom/android/server/connectivity/KeepalivePacketData;->nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Lcom/android/server/connectivity/KeepalivePacketData;
    :try_end_1
    .catch Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    move-result-object v6

    #@19
    .line 356
    .local v6, "packet":Lcom/android/server/connectivity/KeepalivePacketData;
    new-instance v1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    #@1b
    move-object v2, p0

    #@1c
    move-object v3, p3

    #@1d
    move-object/from16 v4, p4

    #@1f
    move-object v5, p1

    #@20
    move v7, p2

    #@21
    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;-><init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/os/Messenger;Landroid/os/IBinder;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/KeepalivePacketData;I)V

    #@24
    .line 357
    .local v1, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    const-string/jumbo v2, "KeepaliveTracker"

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "Created keepalive: "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 358
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker;->mConnectivityServiceHandler:Landroid/os/Handler;

    #@44
    .line 359
    const v3, 0x8100b

    #@47
    .line 358
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@4e
    .line 333
    return-void

    #@4f
    .line 343
    .end local v1    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local v6    # "packet":Lcom/android/server/connectivity/KeepalivePacketData;
    .end local v8    # "dstAddress":Ljava/net/InetAddress;
    .end local v11    # "srcAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v10

    #@50
    .line 344
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    #@51
    const/16 v3, -0x15

    #@53
    invoke-virtual {p0, p3, v2, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    #@56
    .line 345
    return-void

    #@57
    .line 352
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "dstAddress":Ljava/net/InetAddress;
    .restart local v11    # "srcAddress":Ljava/net/InetAddress;
    :catch_1
    move-exception v9

    #@58
    .line 353
    .local v9, "e":Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
    iget v2, v9, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;->error:I

    #@5a
    const/4 v3, -0x1

    #@5b
    invoke-virtual {p0, p3, v3, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyMessenger(Landroid/os/Messenger;II)V

    #@5e
    .line 354
    return-void
.end method
