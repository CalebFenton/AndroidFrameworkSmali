.class public Lcom/android/internal/telephony/IntentBroadcaster;
.super Ljava/lang/Object;
.source "IntentBroadcaster.java"


# static fields
.field private static blacklist sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;


# instance fields
.field private blacklist mRebroadcastIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRebroadcastIntents(Lcom/android/internal/telephony/IntentBroadcaster;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mRebroadcastIntents:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/IntentBroadcaster;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IntentBroadcaster;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mRebroadcastIntents:Ljava/util/Map;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/IntentBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IntentBroadcaster$1;-><init>(Lcom/android/internal/telephony/IntentBroadcaster;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/IntentBroadcaster;
    .registers 1

    .line 81
    sget-object v0, Lcom/android/internal/telephony/IntentBroadcaster;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/IntentBroadcaster;
    .registers 2

    .line 74
    sget-object v0, Lcom/android/internal/telephony/IntentBroadcaster;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IntentBroadcaster;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/IntentBroadcaster;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    .line 77
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/IntentBroadcaster;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    return-object p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 99
    const-string p0, "IntentBroadcaster"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist broadcastStickyIntent(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 6

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting and adding intent for rebroadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ss"

    .line 90
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IntentBroadcaster;->logd(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mRebroadcastIntents:Ljava/util/Map;

    monitor-enter v0

    .line 93
    :try_start_31
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/IntentBroadcaster;->mRebroadcastIntents:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit v0

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_41

    throw p0
.end method
