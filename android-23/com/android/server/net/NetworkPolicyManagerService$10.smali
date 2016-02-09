.class Lcom/android/server/net/NetworkPolicyManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    #@0
    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

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
    .line 682
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    #@3
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/net/NetworkTemplate;

    #@9
    .line 683
    .local v0, "template":Landroid/net/NetworkTemplate;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v1, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    #@f
    .line 678
    return-void
.end method
