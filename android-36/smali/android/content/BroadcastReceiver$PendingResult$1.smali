.class Landroid/content/BroadcastReceiver$PendingResult$1;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/BroadcastReceiver$PendingResult;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic blacklist val$mgr:Landroid/app/IActivityManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/app/IActivityManager;)V
    .registers 3
    .param p1, "this$0"    # Landroid/content/BroadcastReceiver$PendingResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 286
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    .line 287
    return-void
.end method
