.class public Landroid/support/v4/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;,
        Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroid/support/v4/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/content/LocalBroadcastManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    #@7
    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 84
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@a
    .line 87
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 86
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@11
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 89
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@18
    .line 109
    iput-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    #@1a
    .line 110
    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager$1;

    #@1c
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V

    #@23
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    #@25
    .line 108
    return-void
.end method

.method private executePendingBroadcasts()V
    .locals 8

    #@0
    .prologue
    .line 284
    :cond_0
    const/4 v2, 0x0

    #@1
    .line 285
    .local v2, "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@3
    monitor-enter v6

    #@4
    .line 286
    :try_start_0
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    .line 287
    .local v0, "N":I
    if-gtz v0, :cond_1

    #@c
    monitor-exit v6

    #@d
    .line 288
    return-void

    #@e
    .line 290
    :cond_1
    :try_start_1
    new-array v2, v0, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    #@10
    .line 291
    .local v2, "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@15
    .line 292
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v6

    #@1b
    .line 294
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    array-length v5, v2

    #@1d
    if-ge v3, v5, :cond_0

    #@1f
    .line 295
    aget-object v1, v2, v3

    #@21
    .line 296
    .local v1, "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    const/4 v4, 0x0

    #@22
    .local v4, "j":I
    :goto_1
    iget-object v5, v1, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v5

    #@28
    if-ge v4, v5, :cond_2

    #@2a
    .line 297
    iget-object v5, v1, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@32
    iget-object v5, v5, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    #@34
    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    #@36
    iget-object v7, v1, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    #@38
    invoke-virtual {v5, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    #@3b
    .line 296
    add-int/lit8 v4, v4, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 285
    .end local v0    # "N":I
    .end local v1    # "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .end local v2    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :catchall_0
    move-exception v5

    #@3f
    monitor-exit v6

    #@40
    throw v5

    #@41
    .line 294
    .restart local v0    # "N":I
    .restart local v1    # "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v2    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 100
    sget-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 101
    :try_start_0
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 102
    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    #@10
    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    #@12
    .line 104
    :cond_0
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    .line 100
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 134
    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@2
    monitor-enter v6

    #@3
    .line 135
    :try_start_0
    new-instance v2, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@5
    invoke-direct {v2, p2, p1}, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    #@8
    .line 136
    .local v2, "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@a
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Ljava/util/ArrayList;

    #@10
    .line 137
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v3, :cond_0

    #@12
    .line 138
    new-instance v3, Ljava/util/ArrayList;

    #@14
    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v5, 0x1

    #@15
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 139
    .restart local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 141
    :cond_0
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 142
    const/4 v4, 0x0

    #@21
    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    #@24
    move-result v5

    #@25
    if-ge v4, v5, :cond_2

    #@27
    .line 143
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 144
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Ljava/util/ArrayList;

    #@33
    .line 145
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_1

    #@35
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    #@37
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v5, 0x1

    #@38
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@3b
    .line 147
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@3d
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 149
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 142
    add-int/lit8 v4, v4, 0x1

    #@45
    goto :goto_0

    #@46
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_2
    monitor-exit v6

    #@47
    .line 133
    return-void

    #@48
    .line 134
    .end local v2    # "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    #@49
    monitor-exit v6

    #@4a
    throw v5
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 201
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@4
    monitor-enter v15

    #@5
    .line 202
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 204
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v1

    #@11
    .line 203
    move-object/from16 v0, p1

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 205
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1a
    move-result-object v5

    #@1b
    .line 206
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 207
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@22
    move-result-object v6

    #@23
    .line 210
    .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    #@26
    move-result v1

    #@27
    and-int/lit8 v1, v1, 0x8

    #@29
    if-eqz v1, :cond_4

    #@2b
    const/4 v8, 0x1

    #@2c
    .line 211
    .local v8, "debug":Z
    :goto_0
    if-eqz v8, :cond_0

    #@2e
    .line 212
    const-string/jumbo v1, "LocalBroadcastManager"

    #@31
    new-instance v7, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v16, "Resolving type "

    #@39
    move-object/from16 v0, v16

    #@3b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    const-string/jumbo v16, " scheme "

    #@46
    move-object/from16 v0, v16

    #@48
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    .line 213
    const-string/jumbo v16, " of intent "

    #@53
    .line 212
    move-object/from16 v0, v16

    #@55
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    move-object/from16 v0, p1

    #@5b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    .line 211
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 215
    :cond_0
    move-object/from16 v0, p0

    #@68
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@6a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v9

    #@72
    check-cast v9, Ljava/util/ArrayList;

    #@74
    .line 216
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v9, :cond_c

    #@76
    .line 217
    if-eqz v8, :cond_1

    #@78
    const-string/jumbo v1, "LocalBroadcastManager"

    #@7b
    new-instance v7, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v16, "Action list: "

    #@83
    move-object/from16 v0, v16

    #@85
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 219
    :cond_1
    const/4 v14, 0x0

    #@95
    .line 220
    .local v14, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v10, 0x0

    #@96
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v10, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@99
    move-result v1

    #@9a
    if-ge v10, v1, :cond_9

    #@9c
    .line 221
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9f
    move-result-object v13

    #@a0
    check-cast v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@a2
    .line 222
    .local v13, "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    if-eqz v8, :cond_2

    #@a4
    const-string/jumbo v1, "LocalBroadcastManager"

    #@a7
    new-instance v7, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v16, "Matching against filter "

    #@af
    move-object/from16 v0, v16

    #@b1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    iget-object v0, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    #@b7
    move-object/from16 v16, v0

    #@b9
    move-object/from16 v0, v16

    #@bb
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v7

    #@bf
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v7

    #@c3
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c6
    .line 224
    :cond_2
    iget-boolean v1, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    #@c8
    if-eqz v1, :cond_5

    #@ca
    .line 225
    if-eqz v8, :cond_3

    #@cc
    .line 226
    const-string/jumbo v1, "LocalBroadcastManager"

    #@cf
    const-string/jumbo v7, "  Filter\'s target already added"

    #@d2
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    .line 220
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    #@d7
    goto :goto_1

    #@d8
    .line 210
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_4
    const/4 v8, 0x0

    #@d9
    .restart local v8    # "debug":Z
    goto/16 :goto_0

    #@db
    .line 231
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_5
    iget-object v1, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    #@dd
    .line 232
    const-string/jumbo v7, "LocalBroadcastManager"

    #@e0
    .line 231
    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    #@e3
    move-result v11

    #@e4
    .line 233
    .local v11, "match":I
    if-ltz v11, :cond_8

    #@e6
    .line 234
    if-eqz v8, :cond_6

    #@e8
    const-string/jumbo v1, "LocalBroadcastManager"

    #@eb
    new-instance v7, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v16, "  Filter matched!  match=0x"

    #@f3
    move-object/from16 v0, v16

    #@f5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v7

    #@f9
    .line 235
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@fc
    move-result-object v16

    #@fd
    .line 234
    move-object/from16 v0, v16

    #@ff
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v7

    #@103
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v7

    #@107
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    .line 236
    :cond_6
    if-nez v14, :cond_7

    #@10c
    .line 237
    new-instance v14, Ljava/util/ArrayList;

    #@10e
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    #@111
    .line 239
    :cond_7
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@114
    .line 240
    const/4 v1, 0x1

    #@115
    iput-boolean v1, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@117
    goto :goto_2

    #@118
    .line 201
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "data":Landroid/net/Uri;
    .end local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v11    # "match":I
    .end local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :catchall_0
    move-exception v1

    #@119
    monitor-exit v15

    #@11a
    throw v1

    #@11b
    .line 242
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "data":Landroid/net/Uri;
    .restart local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v11    # "match":I
    .restart local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_8
    if-eqz v8, :cond_3

    #@11d
    .line 244
    packed-switch v11, :pswitch_data_0

    #@120
    .line 249
    :try_start_1
    const-string/jumbo v12, "unknown reason"

    #@123
    .line 251
    .local v12, "reason":Ljava/lang/String;
    :goto_3
    const-string/jumbo v1, "LocalBroadcastManager"

    #@126
    new-instance v7, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v16, "  Filter did not match: "

    #@12e
    move-object/from16 v0, v16

    #@130
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v7

    #@134
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v7

    #@138
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v7

    #@13c
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13f
    goto :goto_2

    #@140
    .line 245
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v12, "action"

    #@143
    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    #@144
    .line 246
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v12, "category"

    #@147
    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    #@148
    .line 247
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v12, "data"

    #@14b
    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    #@14c
    .line 248
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v12, "type"

    #@14f
    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    #@150
    .line 256
    .end local v11    # "match":I
    .end local v12    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_9
    if-eqz v14, :cond_c

    #@152
    .line 257
    const/4 v10, 0x0

    #@153
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@156
    move-result v1

    #@157
    if-ge v10, v1, :cond_a

    #@159
    .line 258
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15c
    move-result-object v1

    #@15d
    check-cast v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@15f
    const/4 v7, 0x0

    #@160
    iput-boolean v7, v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    #@162
    .line 257
    add-int/lit8 v10, v10, 0x1

    #@164
    goto :goto_4

    #@165
    .line 260
    :cond_a
    move-object/from16 v0, p0

    #@167
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@169
    new-instance v7, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    #@16b
    move-object/from16 v0, p1

    #@16d
    invoke-direct {v7, v0, v14}, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    #@170
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@173
    .line 261
    move-object/from16 v0, p0

    #@175
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    #@177
    const/4 v7, 0x1

    #@178
    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    #@17b
    move-result v1

    #@17c
    if-nez v1, :cond_b

    #@17e
    .line 262
    move-object/from16 v0, p0

    #@180
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    #@182
    const/4 v7, 0x1

    #@183
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@186
    .line 264
    :cond_b
    const/4 v1, 0x1

    #@187
    monitor-exit v15

    #@188
    return v1

    #@189
    .end local v10    # "i":I
    :cond_c
    monitor-exit v15

    #@18a
    .line 268
    const/4 v1, 0x0

    #@18b
    return v1

    #@18c
    .line 244
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 278
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    #@9
    .line 276
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    .line 164
    iget-object v8, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@2
    monitor-enter v8

    #@3
    .line 165
    :try_start_0
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@5
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 166
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v2, :cond_0

    #@d
    monitor-exit v8

    #@e
    .line 167
    return-void

    #@f
    .line 169
    :cond_0
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v7

    #@14
    if-ge v3, v7, :cond_5

    #@16
    .line 170
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/content/IntentFilter;

    #@1c
    .line 171
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    #@1d
    .local v4, "j":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    #@20
    move-result v7

    #@21
    if-ge v4, v7, :cond_4

    #@23
    .line 172
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 173
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@29
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Ljava/util/ArrayList;

    #@2f
    .line 174
    .local v6, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v6, :cond_3

    #@31
    .line 175
    const/4 v5, 0x0

    #@32
    .local v5, "k":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v7

    #@36
    if-ge v5, v7, :cond_2

    #@38
    .line 176
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v7

    #@3c
    check-cast v7, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@3e
    iget-object v7, v7, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    #@40
    if-ne v7, p1, :cond_1

    #@42
    .line 177
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@45
    .line 178
    add-int/lit8 v5, v5, -0x1

    #@47
    .line 175
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@49
    goto :goto_2

    #@4a
    .line 181
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v7

    #@4e
    if-gtz v7, :cond_3

    #@50
    .line 182
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@52
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 171
    .end local v5    # "k":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@57
    goto :goto_1

    #@58
    .line 169
    .end local v0    # "action":Ljava/lang/String;
    .end local v6    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@5a
    goto :goto_0

    #@5b
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "j":I
    :cond_5
    monitor-exit v8

    #@5c
    .line 163
    return-void

    #@5d
    .line 164
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v7

    #@5e
    monitor-exit v8

    #@5f
    throw v7
.end method
