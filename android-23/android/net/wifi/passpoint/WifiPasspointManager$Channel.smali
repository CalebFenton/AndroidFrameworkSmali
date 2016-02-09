.class public Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
.super Ljava/lang/Object;
.source "WifiPasspointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;
    }
.end annotation


# static fields
.field private static final INVALID_LISTENER_KEY:I


# instance fields
.field private mAnqpRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mAnqpRequestLock:Ljava/lang/Object;

.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;)I
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;I)I
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "count"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;IZ)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .param p2, "forceRemove"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->getListener(IZ)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->peekListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestFinish(Landroid/net/wifi/ScanResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointInfo;)V
    .locals 0
    .param p1, "result"    # Landroid/net/wifi/passpoint/WifiPasspointInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestFinish(Landroid/net/wifi/passpoint/WifiPasspointInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestStart(Landroid/net/wifi/ScanResult;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "l"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 187
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    #@a
    .line 188
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    #@11
    .line 189
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    #@18
    .line 190
    const/4 v0, 0x0

    #@19
    iput v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerKey:I

    #@1b
    .line 192
    new-instance v0, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    #@22
    .line 193
    new-instance v0, Ljava/lang/Object;

    #@24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@27
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    #@29
    .line 200
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@2b
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@2e
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@30
    .line 201
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    #@32
    invoke-direct {v0, p0, p2}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;-><init>(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/os/Looper;)V

    #@35
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    #@37
    .line 202
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mChannelListener:Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    #@39
    .line 203
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mContext:Landroid/content/Context;

    #@3b
    .line 199
    return-void
.end method

.method private anqpRequestFinish(Landroid/net/wifi/ScanResult;)V
    .locals 5
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 274
    const-string/jumbo v2, "PasspointManager"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "anqpRequestFinish sr.bssid="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 275
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    #@1e
    monitor-enter v3

    #@1f
    .line 276
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    #@21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "sr1$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/net/wifi/ScanResult;

    #@31
    .line 277
    .local v0, "sr1":Landroid/net/wifi/ScanResult;
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@33
    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@35
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_0

    #@3b
    .line 278
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    #@3d
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .end local v0    # "sr1":Landroid/net/wifi/ScanResult;
    :cond_1
    monitor-exit v3

    #@41
    .line 273
    return-void

    #@42
    .line 275
    .end local v1    # "sr1$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2
.end method

.method private anqpRequestFinish(Landroid/net/wifi/passpoint/WifiPasspointInfo;)V
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/passpoint/WifiPasspointInfo;

    #@0
    .prologue
    .line 260
    const-string/jumbo v2, "PasspointManager"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "anqpRequestFinish pi.bssid="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    iget-object v4, p1, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 261
    iget-object v3, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    #@1e
    monitor-enter v3

    #@1f
    .line 262
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    #@21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "sr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/net/wifi/ScanResult;

    #@31
    .line 263
    .local v0, "sr":Landroid/net/wifi/ScanResult;
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@33
    iget-object v4, p1, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    #@35
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_0

    #@3b
    .line 264
    const-string/jumbo v2, "PasspointManager"

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "find hit "

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    iget-object v5, p1, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    #@4c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 266
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    #@59
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5c
    .line 267
    const-string/jumbo v2, "PasspointManager"

    #@5f
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "mAnqpRequest.len="

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    iget-object v5, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    #@6d
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@70
    move-result v5

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7c
    .end local v0    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    monitor-exit v3

    #@7d
    .line 259
    return-void

    #@7e
    .line 261
    .end local v1    # "sr$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@7f
    monitor-exit v3

    #@80
    throw v2
.end method

.method private anqpRequestStart(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "sr"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 253
    const-string/jumbo v0, "PasspointManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "anqpRequestStart sr.bssid="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 254
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    #@1e
    monitor-enter v1

    #@1f
    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAnqpRequest:Ljava/util/List;

    #@21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v1

    #@25
    .line 252
    return-void

    #@26
    .line 254
    :catchall_0
    move-exception v0

    #@27
    monitor-exit v1

    #@28
    throw v0
.end method

.method private getListener(IZ)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I
    .param p2, "forceRemove"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 235
    const-string/jumbo v1, "PasspointManager"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "getListener() key="

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, " force="

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 236
    if-nez p1, :cond_0

    #@28
    .line 237
    return-object v5

    #@29
    .line 238
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    #@2b
    monitor-enter v2

    #@2c
    .line 239
    if-nez p2, :cond_1

    #@2e
    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    #@30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Ljava/lang/Integer;

    #@3a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3d
    move-result v0

    #@3e
    .line 241
    .local v0, "count":I
    const-string/jumbo v1, "PasspointManager"

    #@41
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v4, "count="

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 242
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    #@5a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v3

    #@5e
    add-int/lit8 v0, v0, -0x1

    #@60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    .line 243
    if-lez v0, :cond_1

    #@69
    monitor-exit v2

    #@6a
    .line 244
    return-object v5

    #@6b
    .line 246
    .end local v0    # "count":I
    :cond_1
    :try_start_1
    const-string/jumbo v1, "PasspointManager"

    #@6e
    const-string/jumbo v3, "remove key"

    #@71
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 247
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    #@76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 248
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    #@7f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@86
    move-result-object v1

    #@87
    monitor-exit v2

    #@88
    return-object v1

    #@89
    .line 238
    :catchall_0
    move-exception v1

    #@8a
    monitor-exit v2

    #@8b
    throw v1
.end method

.method private peekListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 225
    const-string/jumbo v0, "PasspointManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "peekListener() key="

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 226
    if-nez p1, :cond_0

    #@1c
    .line 227
    const/4 v0, 0x0

    #@1d
    return-object v0

    #@1e
    .line 228
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    #@20
    monitor-enter v1

    #@21
    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    #@23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result-object v0

    #@2b
    monitor-exit v1

    #@2c
    return-object v0

    #@2d
    .line 228
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v1

    #@2f
    throw v0
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 207
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private putListener(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 211
    if-eqz p1, :cond_0

    #@3
    if-gtz p2, :cond_1

    #@5
    .line 212
    :cond_0
    return v1

    #@6
    .line 214
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    #@8
    monitor-enter v2

    #@9
    .line 216
    :cond_2
    :try_start_0
    iget v0, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerKey:I

    #@b
    add-int/lit8 v1, v0, 0x1

    #@d
    iput v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerKey:I

    #@f
    .line 217
    .local v0, "key":I
    if-eqz v0, :cond_2

    #@11
    .line 218
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMap:Ljava/util/HashMap;

    #@13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 219
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    #@1c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v3

    #@20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v2

    #@28
    .line 221
    return v0

    #@29
    .line 214
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method
