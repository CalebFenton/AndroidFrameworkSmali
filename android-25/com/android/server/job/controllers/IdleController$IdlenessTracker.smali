.class Lcom/android/server/job/controllers/IdleController$IdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/IdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdlenessTracker"
.end annotation


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field mIdle:Z

.field private mIdleTriggerIntent:Landroid/app/PendingIntent;

.field mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/IdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/IdleController;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/job/controllers/IdleController;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 112
    iput-object p1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    #@3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@6
    .line 113
    iget-object v1, p1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    #@8
    const-string/jumbo v2, "alarm"

    #@b
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/app/AlarmManager;

    #@11
    iput-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    #@13
    .line 115
    new-instance v1, Landroid/content/Intent;

    #@15
    const-string/jumbo v2, "com.android.server.ACTION_TRIGGER_IDLE"

    #@18
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1b
    .line 116
    const-string/jumbo v2, "android"

    #@1e
    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@21
    move-result-object v1

    #@22
    .line 117
    const/high16 v2, 0x40000000    # 2.0f

    #@24
    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@27
    move-result-object v0

    #@28
    .line 118
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    #@2a
    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    #@30
    .line 122
    iput-boolean v3, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    #@32
    .line 123
    const/4 v1, 0x1

    #@33
    iput-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    #@35
    .line 112
    return-void
.end method


# virtual methods
.method public isIdle()Z
    .locals 1

    #@0
    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    #@2
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v7

    #@6
    .line 151
    .local v7, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    #@9
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 152
    const-string/jumbo v0, "android.intent.action.DREAMING_STOPPED"

    #@12
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 151
    if-eqz v0, :cond_2

    #@18
    .line 156
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    #@1a
    .line 158
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    #@1c
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    #@1e
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@21
    .line 159
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 161
    iput-boolean v4, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    #@27
    .line 162
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    #@29
    iget-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    #@2b
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    #@2e
    .line 148
    :cond_1
    :goto_0
    return-void

    #@2f
    .line 164
    :cond_2
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    #@32
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_3

    #@38
    .line 165
    const-string/jumbo v0, "android.intent.action.DREAMING_STARTED"

    #@3b
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    .line 164
    if-eqz v0, :cond_4

    #@41
    .line 169
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@44
    move-result-wide v8

    #@45
    .line 170
    .local v8, "nowElapsed":J
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    #@47
    invoke-static {v0}, Lcom/android/server/job/controllers/IdleController;->-get1(Lcom/android/server/job/controllers/IdleController;)J

    #@4a
    move-result-wide v0

    #@4b
    add-long v2, v8, v0

    #@4d
    .line 175
    .local v2, "when":J
    iput-boolean v4, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    #@4f
    .line 176
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    #@51
    .line 177
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    #@53
    invoke-static {v1}, Lcom/android/server/job/controllers/IdleController;->-get0(Lcom/android/server/job/controllers/IdleController;)J

    #@56
    move-result-wide v4

    #@57
    iget-object v6, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    #@59
    .line 176
    const/4 v1, 0x2

    #@5a
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    #@5d
    goto :goto_0

    #@5e
    .line 178
    .end local v2    # "when":J
    .end local v8    # "nowElapsed":J
    :cond_4
    const-string/jumbo v0, "com.android.server.ACTION_TRIGGER_IDLE"

    #@61
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_1

    #@67
    .line 180
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    #@69
    if-nez v0, :cond_1

    #@6b
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    #@6d
    if-nez v0, :cond_1

    #@6f
    .line 184
    iput-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    #@71
    .line 185
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    #@73
    iget-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    #@75
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    #@78
    goto :goto_0
.end method

.method public startTracking()V
    .locals 2

    #@0
    .prologue
    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 135
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 138
    const-string/jumbo v1, "android.intent.action.DREAMING_STARTED"

    #@14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 139
    const-string/jumbo v1, "android.intent.action.DREAMING_STOPPED"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 142
    const-string/jumbo v1, "com.android.server.ACTION_TRIGGER_IDLE"

    #@20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@23
    .line 144
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    #@25
    iget-object v1, v1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    #@27
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2a
    .line 130
    return-void
.end method
