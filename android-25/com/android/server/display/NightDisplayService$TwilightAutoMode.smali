.class Lcom/android/server/display/NightDisplayService$TwilightAutoMode;
.super Lcom/android/server/display/NightDisplayService$AutoMode;
.source "NightDisplayService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NightDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# instance fields
.field private mLastActivatedTime:Ljava/util/Calendar;

.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field final synthetic this$0:Lcom/android/server/display/NightDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/NightDisplayService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/NightDisplayService;

    #@0
    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/server/display/NightDisplayService$AutoMode;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/NightDisplayService$AutoMode;)V

    #@6
    .line 489
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    #@8
    invoke-static {p1, v0}, Lcom/android/server/display/NightDisplayService;->-wrap1(Lcom/android/server/display/NightDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    #@e
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@10
    .line 488
    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .locals 5
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 493
    if-eqz p1, :cond_3

    #@3
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    #@6
    move-result v0

    #@7
    .line 494
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@9
    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    #@c
    move-result-object v4

    #@d
    if-eqz v4, :cond_0

    #@f
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@11
    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@18
    move-result v4

    #@19
    if-eq v4, v0, :cond_4

    #@1b
    .line 495
    .local v1, "setActivated":Z
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    #@1d
    if-eqz p1, :cond_1

    #@1f
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@21
    if-eqz v4, :cond_1

    #@23
    .line 496
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunrise()Ljava/util/Calendar;

    #@26
    move-result-object v2

    #@27
    .line 497
    .local v2, "sunrise":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunset()Ljava/util/Calendar;

    #@2a
    move-result-object v3

    #@2b
    .line 498
    .local v3, "sunset":Ljava/util/Calendar;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_6

    #@31
    .line 499
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@33
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@36
    move-result v4

    #@37
    if-nez v4, :cond_5

    #@39
    .line 500
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@3b
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    .line 507
    .end local v1    # "setActivated":Z
    .end local v2    # "sunrise":Ljava/util/Calendar;
    .end local v3    # "sunset":Ljava/util/Calendar;
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    #@41
    .line 508
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@43
    invoke-static {v4}, Lcom/android/server/display/NightDisplayService;->-get4(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    #@4a
    .line 492
    :cond_2
    return-void

    #@4b
    .line 493
    :cond_3
    const/4 v0, 0x0

    #@4c
    .local v0, "isNight":Z
    goto :goto_0

    #@4d
    .line 494
    .end local v0    # "isNight":Z
    :cond_4
    const/4 v1, 0x0

    #@4e
    goto :goto_1

    #@4f
    .line 499
    .restart local v1    # "setActivated":Z
    .restart local v2    # "sunrise":Ljava/util/Calendar;
    .restart local v3    # "sunset":Ljava/util/Calendar;
    :cond_5
    const/4 v1, 0x1

    #@50
    .local v1, "setActivated":Z
    goto :goto_2

    #@51
    .line 502
    .local v1, "setActivated":Z
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@53
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@56
    move-result v4

    #@57
    if-nez v4, :cond_7

    #@59
    .line 503
    iget-object v4, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@5b
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@5e
    move-result v1

    #@5f
    goto :goto_2

    #@60
    .line 502
    :cond_7
    const/4 v1, 0x1

    #@61
    .local v1, "setActivated":Z
    goto :goto_2
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@2
    invoke-static {v0}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 529
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@e
    .line 527
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@2
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/NightDisplayService;

    #@4
    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get6(Lcom/android/server/display/NightDisplayService;)Landroid/os/Handler;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    #@b
    .line 517
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@d
    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    #@10
    move-result-object v0

    #@11
    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    #@14
    .line 513
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    #@2
    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    #@5
    .line 523
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    #@8
    .line 521
    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 535
    const-string/jumbo v1, "NightDisplayService"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "onTwilightStateChanged: isNight="

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    .line 536
    if-nez p1, :cond_0

    #@12
    .line 535
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 537
    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    #@20
    .line 534
    return-void

    #@21
    .line 536
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    #@24
    move-result v0

    #@25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@28
    move-result-object v0

    #@29
    goto :goto_0
.end method
