.class Lcom/android/server/DropBoxManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DropBoxManagerService;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

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
    .line 106
    if-eqz p2, :cond_0

    #@2
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    #@5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 107
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    #@11
    const/4 v1, 0x1

    #@12
    invoke-static {v0, v1}, Lcom/android/server/DropBoxManagerService;->-set0(Lcom/android/server/DropBoxManagerService;Z)Z

    #@15
    .line 108
    return-void

    #@16
    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    #@18
    const-wide/16 v2, 0x0

    #@1a
    invoke-static {v0, v2, v3}, Lcom/android/server/DropBoxManagerService;->-set1(Lcom/android/server/DropBoxManagerService;J)J

    #@1d
    .line 117
    new-instance v0, Lcom/android/server/DropBoxManagerService$1$1;

    #@1f
    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1$1;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    #@22
    invoke-virtual {v0}, Lcom/android/server/DropBoxManagerService$1$1;->start()V

    #@25
    .line 105
    return-void
.end method
