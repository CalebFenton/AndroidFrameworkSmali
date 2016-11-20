.class Lcom/android/server/content/ContentService$1;
.super Landroid/content/BroadcastReceiver;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/ContentService;

    #@0
    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    #@2
    invoke-static {v3}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 133
    :try_start_0
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    #@a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 134
    iget-object v3, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    #@16
    invoke-static {v3}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    :cond_0
    :goto_0
    monitor-exit v4

    #@1e
    .line 131
    return-void

    #@1f
    .line 136
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@22
    move-result-object v0

    #@23
    .line 137
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    #@25
    .line 138
    const-string/jumbo v3, "android.intent.extra.user_handle"

    #@28
    .line 139
    const/16 v5, -0x2710

    #@2a
    .line 138
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2d
    move-result v2

    #@2e
    .line 140
    .local v2, "userId":I
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 141
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    #@34
    const/4 v5, 0x0

    #@35
    invoke-static {v3, v2, v1, v5}, Lcom/android/server/content/ContentService;->-wrap0(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 132
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method
