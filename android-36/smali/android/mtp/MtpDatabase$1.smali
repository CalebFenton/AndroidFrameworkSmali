.class Landroid/mtp/MtpDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpDatabase;)V
    .registers 2
    .param p1, "this$0"    # Landroid/mtp/MtpDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 272
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 274
    iget-object v1, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    const-string/jumbo v2, "scale"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/MtpDatabase;->-$$Nest$fputmBatteryScale(Landroid/mtp/MtpDatabase;I)V

    .line 275
    const-string/jumbo v1, "level"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 276
    .local v1, "newLevel":I
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmBatteryLevel(Landroid/mtp/MtpDatabase;)I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 277
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2, v1}, Landroid/mtp/MtpDatabase;->-$$Nest$fputmBatteryLevel(Landroid/mtp/MtpDatabase;I)V

    .line 278
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 280
    iget-object v2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->-$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v2

    const/16 v3, 0x5001

    invoke-virtual {v2, v3}, Landroid/mtp/MtpServer;->sendDevicePropertyChanged(I)V

    .line 285
    .end local v1    # "newLevel":I
    :cond_40
    return-void
.end method
