.class Lcom/android/server/BatteryService$5;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->processValuesLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 428
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 429
    .local v0, "statusIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@d
    .line 430
    iget-object v1, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    #@f
    invoke-static {v1}, Lcom/android/server/BatteryService;->-get2(Lcom/android/server/BatteryService;)Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@15
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@18
    .line 427
    return-void
.end method
