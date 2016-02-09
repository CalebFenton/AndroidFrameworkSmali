.class Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextServicesBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;

    #@0
    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;->this$0:Lcom/android/server/TextServicesManagerService;

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
    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 209
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 210
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    .line 209
    if-eqz v1, :cond_1

    #@16
    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;->this$0:Lcom/android/server/TextServicesManagerService;

    #@18
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->updateCurrentProfileIds()V

    #@1b
    .line 212
    return-void

    #@1c
    .line 214
    :cond_1
    invoke-static {}, Lcom/android/server/TextServicesManagerService;->-get0()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Unexpected intent "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 207
    return-void
.end method
