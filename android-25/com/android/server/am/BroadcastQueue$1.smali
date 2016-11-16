.class Lcom/android/server/am/BroadcastQueue$1;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BroadcastQueue;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$receivingUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$receivingUserId"    # I

    #@0
    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$1;->this$0:Lcom/android/server/am/BroadcastQueue;

    #@2
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue$1;->val$intent:Landroid/content/Intent;

    #@4
    iput p3, p0, Lcom/android/server/am/BroadcastQueue$1;->val$receivingUserId:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$1;->this$0:Lcom/android/server/am/BroadcastQueue;

    #@2
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@6
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$1;->val$intent:Landroid/content/Intent;

    #@8
    new-instance v2, Landroid/os/UserHandle;

    #@a
    iget v3, p0, Lcom/android/server/am/BroadcastQueue$1;->val$receivingUserId:I

    #@c
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@12
    .line 722
    return-void
.end method
