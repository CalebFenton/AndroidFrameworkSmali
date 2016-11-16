.class Lcom/android/server/UiModeManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    #@0
    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 139
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    #@3
    .line 140
    const/4 v2, 0x0

    #@4
    .line 139
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 141
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    #@a
    invoke-static {v1, v0}, Lcom/android/server/UiModeManagerService;->-wrap2(Lcom/android/server/UiModeManagerService;I)V

    #@d
    .line 138
    return-void
.end method
