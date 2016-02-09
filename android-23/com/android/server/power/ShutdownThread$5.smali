.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$message:Ljava/lang/CharSequence;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;
    .param p2, "val$progress"    # I
    .param p3, "val$message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    #@2
    iput p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$progress:I

    #@4
    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$5;->val$message:Ljava/lang/CharSequence;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    #@2
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get1(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 484
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    #@a
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get1(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    #@d
    move-result-object v0

    #@e
    iget v1, p0, Lcom/android/server/power/ShutdownThread$5;->val$progress:I

    #@10
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    #@13
    .line 485
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->val$message:Ljava/lang/CharSequence;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 486
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    #@19
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get1(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$5;->val$message:Ljava/lang/CharSequence;

    #@1f
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@22
    .line 482
    :cond_0
    return-void
.end method
