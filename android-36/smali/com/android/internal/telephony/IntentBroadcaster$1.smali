.class Lcom/android/internal/telephony/IntentBroadcaster$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/IntentBroadcaster;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/IntentBroadcaster;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 46
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 47
    iget-object p2, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-static {p2}, Lcom/android/internal/telephony/IntentBroadcaster;->-$$Nest$fgetmRebroadcastIntents(Lcom/android/internal/telephony/IntentBroadcaster;)Ljava/util/Map;

    move-result-object p2

    monitor-enter p2

    .line 49
    :try_start_13
    iget-object v0, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    invoke-static {v0}, Lcom/android/internal/telephony/IntentBroadcaster;->-$$Nest$fgetmRebroadcastIntents(Lcom/android/internal/telephony/IntentBroadcaster;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 50
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 53
    const-string v3, "rebroadcastOnUnlock"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 55
    iget-object v3, p0, Lcom/android/internal/telephony/IntentBroadcaster$1;->this$0:Lcom/android/internal/telephony/IntentBroadcaster;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rebroadcasting intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ss"

    .line 56
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v3, v1}, Lcom/android/internal/telephony/IntentBroadcaster;->-$$Nest$mlogd(Lcom/android/internal/telephony/IntentBroadcaster;Ljava/lang/String;)V

    .line 58
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_21

    :catchall_76
    move-exception p0

    goto :goto_7a

    .line 60
    :cond_78
    monitor-exit p2

    return-void

    :goto_7a
    monitor-exit p2
    :try_end_7b
    .catchall {:try_start_13 .. :try_end_7b} :catchall_76

    throw p0

    :cond_7c
    return-void
.end method
