.class Lcom/android/server/notification/ScheduleConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ScheduleConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ScheduleConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ScheduleConditionProvider;

    #@0
    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 243
    sget-boolean v3, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    const-string/jumbo v3, "ConditionProviders.SCP"

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "onReceive "

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 244
    :cond_0
    const-string/jumbo v3, "android.intent.action.TIMEZONE_CHANGED"

    #@25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 245
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    #@31
    invoke-static {v3}, Lcom/android/server/notification/ScheduleConditionProvider;->-get0(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v2

    #@3d
    .local v2, "conditionId$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_2

    #@43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v1

    #@47
    check-cast v1, Landroid/net/Uri;

    #@49
    .line 246
    .local v1, "conditionId":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    #@4b
    invoke-static {v3}, Lcom/android/server/notification/ScheduleConditionProvider;->-get0(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Lcom/android/server/notification/ScheduleCalendar;

    #@55
    .line 247
    .local v0, "cal":Lcom/android/server/notification/ScheduleCalendar;
    if-eqz v0, :cond_1

    #@57
    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v0, v3}, Lcom/android/server/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@62
    goto :goto_0

    #@63
    .line 252
    .end local v0    # "cal":Lcom/android/server/notification/ScheduleCalendar;
    .end local v1    # "conditionId":Landroid/net/Uri;
    .end local v2    # "conditionId$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    #@65
    invoke-static {v3}, Lcom/android/server/notification/ScheduleConditionProvider;->-wrap0(Lcom/android/server/notification/ScheduleConditionProvider;)V

    #@68
    .line 242
    return-void
.end method
