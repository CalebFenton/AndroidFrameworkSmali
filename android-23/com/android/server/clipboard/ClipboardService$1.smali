.class Lcom/android/server/clipboard/ClipboardService$1;
.super Landroid/content/BroadcastReceiver;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/clipboard/ClipboardService;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

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
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 118
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 119
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$1;->this$0:Lcom/android/server/clipboard/ClipboardService;

    #@f
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@12
    const/4 v3, 0x0

    #@13
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v2

    #@17
    invoke-static {v1, v2}, Lcom/android/server/clipboard/ClipboardService;->-wrap0(Lcom/android/server/clipboard/ClipboardService;I)V

    #@1a
    .line 116
    :cond_0
    return-void
.end method
