.class Lcom/android/server/display/NightDisplayService$CustomAutoMode;
.super Lcom/android/server/display/NightDisplayService$AutoMode;
.source "NightDisplayService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

.field private mLastActivatedTime:Ljava/util/Calendar;

.field private mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/NightDisplayService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;

    #@0
    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/display/NightDisplayService$AutoMode;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/NightDisplayService$AutoMode;)V

    #@6
    .line 377
    invoke-virtual {p1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, "alarm"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/app/AlarmManager;

    #@13
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    #@15
    .line 378
    new-instance v0, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;

    #@17
    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode$1;-><init>(Lcom/android/server/display/NightDisplayService$CustomAutoMode;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 376
    return-void
.end method

.method private updateActivated()V
    .locals 15

    #@0
    .prologue
    const/16 v14, 0xc

    #@2
    const/16 v13, 0xb

    #@4
    const/4 v12, 0x6

    #@5
    const/4 v10, 0x1

    #@6
    .line 387
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@9
    move-result-object v6

    #@a
    .line 388
    .local v6, "now":Ljava/util/Calendar;
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@c
    invoke-virtual {v11, v6}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@f
    move-result-object v8

    #@10
    .line 389
    .local v8, "startTime":Ljava/util/Calendar;
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@12
    invoke-virtual {v11, v8}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@15
    move-result-object v3

    #@16
    .line 390
    .local v3, "endTime":Ljava/util/Calendar;
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    .line 392
    .local v0, "activated":Z
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@1c
    invoke-static {v11}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    #@1f
    move-result-object v11

    #@20
    if-eqz v11, :cond_0

    #@22
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@24
    if-nez v11, :cond_4

    #@26
    :cond_0
    move v7, v10

    #@27
    .line 393
    .local v7, "setActivated":Z
    :goto_0
    if-nez v7, :cond_2

    #@29
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@2b
    invoke-static {v11}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    #@2e
    move-result-object v11

    #@2f
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    #@32
    move-result v11

    #@33
    if-eq v11, v0, :cond_2

    #@35
    .line 394
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@38
    move-result-object v1

    #@39
    .line 395
    .local v1, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@3b
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@3e
    move-result-object v11

    #@3f
    invoke-virtual {v1, v11}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v11

    #@43
    if-nez v11, :cond_1

    #@45
    .line 396
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@47
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    #@4a
    move-result v9

    #@4b
    .line 397
    .local v9, "year":I
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@4d
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    #@50
    move-result v2

    #@51
    .line 398
    .local v2, "dayOfYear":I
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@53
    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    #@56
    move-result v4

    #@57
    .line 399
    .local v4, "hourOfDay":I
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@59
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    #@5c
    move-result v5

    #@5d
    .line 401
    .local v5, "minute":I
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@5f
    invoke-virtual {v11, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@62
    .line 402
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@64
    invoke-virtual {v11, v10, v9}, Ljava/util/Calendar;->set(II)V

    #@67
    .line 403
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@69
    invoke-virtual {v10, v12, v2}, Ljava/util/Calendar;->set(II)V

    #@6c
    .line 404
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@6e
    invoke-virtual {v10, v13, v4}, Ljava/util/Calendar;->set(II)V

    #@71
    .line 405
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@73
    invoke-virtual {v10, v14, v5}, Ljava/util/Calendar;->set(II)V

    #@76
    .line 408
    .end local v2    # "dayOfYear":I
    .end local v4    # "hourOfDay":I
    .end local v5    # "minute":I
    .end local v9    # "year":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@78
    invoke-static {v10}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    #@7b
    move-result-object v10

    #@7c
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    #@7f
    move-result v10

    #@80
    if-eqz v10, :cond_6

    #@82
    .line 409
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@84
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@86
    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@89
    move-result-object v10

    #@8a
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@8d
    move-result v10

    #@8e
    if-nez v10, :cond_5

    #@90
    .line 410
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@92
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@94
    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@97
    move-result-object v10

    #@98
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@9b
    move-result v7

    #@9c
    .line 417
    .end local v1    # "currentTimeZone":Ljava/util/TimeZone;
    .end local v7    # "setActivated":Z
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    #@9e
    .line 418
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@a0
    invoke-static {v10}, Lcom/android/server/display/NightDisplayService;->-get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    #@a3
    move-result-object v10

    #@a4
    invoke-virtual {v10, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    #@a7
    .line 420
    :cond_3
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@a9
    invoke-static {v10}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    #@ac
    move-result-object v10

    #@ad
    invoke-direct {p0, v10, v6}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    #@b0
    .line 386
    return-void

    #@b1
    .line 392
    :cond_4
    const/4 v7, 0x0

    #@b2
    goto/16 :goto_0

    #@b4
    .line 409
    .restart local v1    # "currentTimeZone":Ljava/util/TimeZone;
    .restart local v7    # "setActivated":Z
    :cond_5
    const/4 v7, 0x1

    #@b5
    .local v7, "setActivated":Z
    goto :goto_1

    #@b6
    .line 412
    .local v7, "setActivated":Z
    :cond_6
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@b8
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@ba
    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@bd
    move-result-object v10

    #@be
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@c1
    move-result v10

    #@c2
    if-nez v10, :cond_7

    #@c4
    .line 413
    iget-object v10, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@c6
    iget-object v11, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@c8
    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@cb
    move-result-object v10

    #@cc
    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@cf
    move-result v7

    #@d0
    goto :goto_1

    #@d1
    .line 412
    :cond_7
    const/4 v7, 0x1

    #@d2
    .local v7, "setActivated":Z
    goto :goto_1
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V
    .locals 8
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "now"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 424
    if-eqz p1, :cond_0

    #@3
    .line 425
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@b
    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@e
    move-result-object v7

    #@f
    .line 427
    .local v7, "next":Ljava/util/Calendar;
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    #@11
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    #@14
    move-result-wide v2

    #@15
    const-string/jumbo v4, "NightDisplayService"

    #@18
    const/4 v1, 0x1

    #@19
    move-object v5, p0

    #@1a
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    #@1d
    .line 423
    .end local v7    # "next":Ljava/util/Calendar;
    :cond_0
    return-void

    #@1e
    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@20
    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    #@23
    move-result-object v7

    #@24
    .restart local v7    # "next":Ljava/util/Calendar;
    goto :goto_0
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    #@0
    .prologue
    .line 454
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 455
    .local v0, "now":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@6
    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 456
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@e
    .line 458
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@11
    move-result-object v1

    #@12
    invoke-direct {p0, v1, v0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    #@15
    .line 453
    return-void
.end method

.method public onAlarm()V
    .locals 2

    #@0
    .prologue
    .line 477
    const-string/jumbo v0, "NightDisplayService"

    #@3
    const-string/jumbo v1, "onAlarm"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 478
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    #@c
    .line 476
    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 1
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@0
    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@2
    .line 471
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@5
    .line 472
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    #@8
    .line 469
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 1
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@0
    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@2
    .line 464
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@5
    .line 465
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    #@8
    .line 462
    return-void
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 433
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    #@5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@8
    .line 434
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    #@b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@e
    .line 435
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@10
    invoke-virtual {v1}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    #@16
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@19
    .line 437
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@1b
    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@25
    .line 438
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@27
    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@31
    .line 441
    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->updateActivated()V

    #@34
    .line 432
    return-void
.end method

.method public onStop()V
    .locals 2

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    #@8
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@b
    .line 448
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    #@d
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@10
    .line 449
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@13
    .line 445
    return-void
.end method
