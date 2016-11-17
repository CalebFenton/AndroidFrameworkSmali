.class Lcom/android/server/twilight/TwilightService$2;
.super Landroid/database/ContentObserver;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 557
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    #@8
    .line 558
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@a
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v1

    #@12
    .line 559
    const-string/jumbo v2, "twilight_mode"

    #@15
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@17
    invoke-static {v3}, Lcom/android/server/twilight/TwilightService;->-get0(Lcom/android/server/twilight/TwilightService;)I

    #@1a
    move-result v3

    #@1b
    .line 558
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@1e
    move-result v0

    #@1f
    .line 560
    .local v0, "value":I
    if-nez v0, :cond_0

    #@21
    .line 561
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@23
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    #@25
    invoke-direct {v2, v4, v6}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    #@28
    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    #@2b
    .line 556
    :goto_0
    return-void

    #@2c
    .line 562
    :cond_0
    if-ne v0, v5, :cond_1

    #@2e
    .line 563
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@30
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    #@32
    invoke-direct {v2, v5, v7}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    #@35
    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    #@38
    goto :goto_0

    #@39
    .line 564
    :cond_1
    const/4 v1, 0x3

    #@3a
    if-ne v0, v1, :cond_2

    #@3c
    .line 565
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@3e
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    #@40
    invoke-direct {v2, v4, v6}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    #@43
    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    #@46
    .line 566
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@48
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-wrap2(Lcom/android/server/twilight/TwilightService;)V

    #@4b
    goto :goto_0

    #@4c
    .line 567
    :cond_2
    const/4 v1, 0x4

    #@4d
    if-ne v0, v1, :cond_3

    #@4f
    .line 568
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@51
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    #@53
    invoke-direct {v2, v5, v7}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    #@56
    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-wrap3(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    #@59
    .line 569
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@5b
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-wrap2(Lcom/android/server/twilight/TwilightService;)V

    #@5e
    goto :goto_0

    #@5f
    .line 571
    :cond_3
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@61
    invoke-static {v1, v4}, Lcom/android/server/twilight/TwilightService;->-set1(Lcom/android/server/twilight/TwilightService;Z)Z

    #@64
    .line 572
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@66
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@68
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->requestTwilightUpdate()V

    #@6b
    goto :goto_0
.end method
