.class final Lcom/android/server/notification/CountdownConditionProvider$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "CountdownConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/CountdownConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/CountdownConditionProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/CountdownConditionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/CountdownConditionProvider;

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;->this$0:Lcom/android/server/notification/CountdownConditionProvider;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/CountdownConditionProvider;Lcom/android/server/notification/CountdownConditionProvider$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/CountdownConditionProvider;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/CountdownConditionProvider$Receiver;-><init>(Lcom/android/server/notification/CountdownConditionProvider;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 151
    invoke-static {}, Lcom/android/server/notification/CountdownConditionProvider;->-get0()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 152
    const-string/jumbo v1, "condition_id"

    #@11
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/net/Uri;

    #@17
    .line 153
    .local v0, "conditionId":Landroid/net/Uri;
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    #@1a
    move-result-wide v2

    #@1b
    .line 154
    .local v2, "time":J
    invoke-static {}, Lcom/android/server/notification/CountdownConditionProvider;->-get1()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    const-string/jumbo v1, "ConditionProviders.CCP"

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "Countdown condition fired: "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 155
    :cond_0
    const-wide/16 v4, 0x0

    #@3d
    cmp-long v1, v2, v4

    #@3f
    if-lez v1, :cond_1

    #@41
    .line 156
    iget-object v1, p0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;->this$0:Lcom/android/server/notification/CountdownConditionProvider;

    #@43
    const/4 v4, 0x0

    #@44
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/CountdownConditionProvider;->-wrap0(JI)Landroid/service/notification/Condition;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v1, v4}, Lcom/android/server/notification/CountdownConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    #@4b
    .line 150
    .end local v0    # "conditionId":Landroid/net/Uri;
    .end local v2    # "time":J
    :cond_1
    return-void
.end method
