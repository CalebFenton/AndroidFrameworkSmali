.class Lcom/android/server/twilight/TwilightService$2;
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
    .line 426
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 429
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    #@3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 430
    const-string/jumbo v0, "state"

    #@10
    const/4 v1, 0x0

    #@11
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@19
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@1b
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->requestTwilightUpdate()V

    #@1e
    .line 428
    return-void

    #@1f
    .line 432
    :cond_1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    #@21
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@23
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->requestLocationUpdate()V

    #@26
    .line 433
    return-void
.end method
