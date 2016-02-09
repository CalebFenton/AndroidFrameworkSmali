.class Lcom/android/server/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 284
    iget-object v0, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    #@5
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    #@8
    .line 287
    iget-object v0, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    #@a
    const/4 v2, -0x1

    #@b
    const/4 v3, -0x2

    #@c
    .line 288
    const/4 v10, 0x0

    #@d
    move-object v4, v1

    #@e
    move-object v5, v1

    #@f
    move-wide v8, v6

    #@10
    .line 287
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    #@13
    .line 283
    return-void
.end method
