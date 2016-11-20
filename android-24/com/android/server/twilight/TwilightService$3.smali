.class Lcom/android/server/twilight/TwilightService$3;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    #@0
    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 580
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 581
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    #@10
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@13
    move-result v2

    #@14
    invoke-static {v1, v2}, Lcom/android/server/twilight/TwilightService;->-set0(Lcom/android/server/twilight/TwilightService;I)I

    #@17
    .line 582
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    #@19
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-wrap1(Lcom/android/server/twilight/TwilightService;)V

    #@1c
    .line 583
    return-void

    #@1d
    .line 585
    :cond_0
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    #@20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 586
    const-string/jumbo v1, "state"

    #@2d
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 592
    :cond_1
    const-string/jumbo v1, "com.android.server.action.RESET_TWILIGHT_AUTO"

    #@36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_3

    #@40
    .line 593
    const-string/jumbo v1, "user"

    #@43
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@46
    move-result v0

    #@47
    .line 594
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    #@49
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@50
    move-result-object v1

    #@51
    .line 595
    const-string/jumbo v2, "twilight_mode"

    #@54
    const/4 v3, 0x2

    #@55
    .line 594
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@58
    .line 596
    return-void

    #@59
    .line 588
    .end local v0    # "user":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    #@5b
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@5d
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->requestLocationUpdate()V

    #@60
    .line 589
    return-void

    #@61
    .line 599
    :cond_3
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    #@63
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@65
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->requestTwilightUpdate()V

    #@68
    .line 579
    return-void
.end method
