.class Lcom/android/server/content/SyncManager$13;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;

.field final synthetic val$startServiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "val$startServiceIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    iput-object p2, p0, Lcom/android/server/content/SyncManager$13;->val$startServiceIntent:Landroid/content/Intent;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get3(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/content/SyncManager$13;->val$startServiceIntent:Landroid/content/Intent;

    #@8
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@b
    .line 657
    return-void
.end method
