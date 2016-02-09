.class final Lcom/android/server/search/SearchManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/search/SearchManagerService;

    #@0
    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$UserReceiver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$UserReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/search/SearchManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService$UserReceiver;-><init>(Lcom/android/server/search/SearchManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$UserReceiver;->this$0:Lcom/android/server/search/SearchManagerService;

    #@2
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@9
    move-result v1

    #@a
    invoke-static {v0, v1}, Lcom/android/server/search/SearchManagerService;->-wrap1(Lcom/android/server/search/SearchManagerService;I)V

    #@d
    .line 135
    return-void
.end method
