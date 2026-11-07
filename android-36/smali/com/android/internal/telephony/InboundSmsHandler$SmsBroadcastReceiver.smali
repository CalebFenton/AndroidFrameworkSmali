.class public final Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private blacklist mBroadcastTimeMillis:J

.field private final greylist-max-r mDeleteWhere:Ljava/lang/String;

.field private final greylist-max-r mDeleteWhereArgs:[Ljava/lang/String;

.field private final blacklist mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

.field public blacklist mWaitingForIntent:Landroid/content/Intent;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeleteWhere(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeleteWhereArgs(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInboundSmsTracker(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Lcom/android/internal/telephony/InboundSmsTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1786
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1787
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    .line 1788
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 1789
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    return-void
.end method

.method private declared-synchronized blacklist handleAction(Landroid/content/Intent;Z)V
    .registers 17

    monitor-enter p0

    .line 1820
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1821
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    if-eqz v2, :cond_16c

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_16c

    :cond_15
    if-eqz p2, :cond_6d

    .line 1829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeMillis:J

    sub-long/2addr v2, v6

    long-to-int v2, v2

    const/16 v3, 0x1388

    if-lt v2, v3, :cond_4a

    .line 1831
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slow ordered broadcast completion time for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_6d

    :catchall_47
    move-exception v0

    goto/16 :goto_19f

    .line 1834
    :cond_4a
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ordered broadcast completed for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1839
    :cond_6d
    :goto_6d
    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1841
    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_9e

    .line 1843
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1846
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1848
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v2, 0x0

    invoke-static {v0, v4, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mhandleSmsWhitelisting(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 1850
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setWaitingForIntent(Landroid/content/Intent;)V

    .line 1851
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    goto/16 :goto_16a

    .line 1854
    :cond_9e
    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x2

    if-eqz v2, :cond_f6

    .line 1856
    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1857
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1861
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mms-broadcast"

    const/16 v4, 0x13b

    .line 1860
    invoke-virtual {v2, v0, v6, v4, v3}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v9

    .line 1865
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v8

    .line 1866
    const-string v13, ""

    const/4 v11, 0x0

    const/16 v12, 0x13b

    invoke-virtual/range {v8 .. v13}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1870
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 1872
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1874
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setWaitingForIntent(Landroid/content/Intent;)V

    move-object v2, v0

    .line 1875
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    move-object v3, v2

    .line 1876
    invoke-static {v3}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1877
    invoke-static {v3}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsStringPermissionForIntent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v6}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$fgetmUserManager(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/UserManager;

    move-result-object v6

    .line 1878
    invoke-virtual {v6}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v5, p0

    move-object v1, p1

    .line 1876
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    goto :goto_16a

    .line 1886
    :cond_f6
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_124

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 1887
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_124

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 1888
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_124

    .line 1889
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected BroadcastReceiver action: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    :cond_124
    if-eqz p2, :cond_152

    .line 1893
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    if-eq v0, v3, :cond_14b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14b

    .line 1895
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a broadcast receiver set the result code to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deleting from raw table anyway!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_152

    .line 1898
    :cond_14b
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "successful broadcast, deleting from raw table."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1902
    :cond_152
    :goto_152
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mdeleteFromRawTable(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1903
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    .line 1904
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/16 v1, 0x9

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$200(Lcom/android/internal/telephony/InboundSmsHandler;I)V

    .line 1905
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V
    :try_end_16a
    .catchall {:try_start_1 .. :try_end_16a} :catchall_47

    .line 1907
    :goto_16a
    monitor-exit p0

    return-void

    .line 1822
    :cond_16c
    :goto_16c
    :try_start_16c
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    .line 1823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAction: Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when expecting "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18e

    const-string v0, "none"

    goto :goto_194

    :cond_18e
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_194
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1824
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 1822
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V
    :try_end_19d
    .catchall {:try_start_16c .. :try_end_19d} :catchall_47

    .line 1825
    monitor-exit p0

    return-void

    :goto_19f
    :try_start_19f
    monitor-exit p0
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_47

    throw v0
.end method


# virtual methods
.method public blacklist fakeNextAction()V
    .registers 5

    .line 1798
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2d

    .line 1799
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fakeNextAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1800
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 1799
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    .line 1801
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->handleAction(Landroid/content/Intent;Z)V

    return-void

    .line 1803
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1804
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v1

    .line 1803
    const-string p0, "fakeNextAction: mWaitingForIntent is null"

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_21

    .line 1811
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: received null intent, faking "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mInboundSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1812
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    .line 1811
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    return-void

    :cond_21
    const/4 p1, 0x1

    .line 1815
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->handleAction(Landroid/content/Intent;Z)V

    return-void
.end method

.method public declared-synchronized blacklist setWaitingForIntent(Landroid/content/Intent;)V
    .registers 5

    monitor-enter p0

    .line 1780
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mWaitingForIntent:Landroid/content/Intent;

    .line 1781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeMillis:J

    .line 1782
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/16 v0, 0x9

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$100(Lcom/android/internal/telephony/InboundSmsHandler;I)V

    .line 1783
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    sget v1, Lcom/android/internal/telephony/InboundSmsHandler;->sTimeoutDurationMillis:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1784
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method
