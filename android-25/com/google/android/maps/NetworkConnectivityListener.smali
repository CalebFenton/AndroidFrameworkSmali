.class Lcom/google/android/maps/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;,
        Lcom/google/android/maps/NetworkConnectivityListener$State;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

.field private mState:Lcom/google/android/maps/NetworkConnectivityListener$State;


# direct methods
.method static synthetic -get0(Lcom/google/android/maps/NetworkConnectivityListener;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/google/android/maps/NetworkConnectivityListener;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/google/android/maps/NetworkConnectivityListener;)Lcom/google/android/maps/NetworkConnectivityListener$State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/google/android/maps/NetworkConnectivityListener;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mIsFailover:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/google/android/maps/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/google/android/maps/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/google/android/maps/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$State;)Lcom/google/android/maps/NetworkConnectivityListener$State;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    #@a
    .line 155
    sget-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->UNKNOWN:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@c
    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@e
    .line 156
    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;)V

    #@14
    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReceiver:Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    #@16
    .line 154
    return-void
.end method


# virtual methods
.method public getState()Lcom/google/android/maps/NetworkConnectivityListener$State;
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;

    #@2
    return-object v0
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "target"    # Landroid/os/Handler;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 196
    return-void
.end method

.method public declared-synchronized startListening(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 164
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 165
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    #@7
    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    #@9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@c
    .line 168
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@f
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@12
    .line 169
    iget-object v1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReceiver:Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    #@14
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@17
    .line 170
    const/4 v1, 0x1

    #@18
    iput-boolean v1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    #@1b
    .line 163
    return-void

    #@1c
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 178
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 179
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    #@7
    iget-object v1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReceiver:Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@c
    .line 180
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    #@f
    .line 181
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@12
    .line 182
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    #@15
    .line 183
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mIsFailover:Z

    #@18
    .line 184
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    #@1b
    .line 185
    const/4 v0, 0x0

    #@1c
    iput-boolean v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_0
    monitor-exit p0

    #@1f
    .line 177
    return-void

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "target"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 204
    return-void
.end method
