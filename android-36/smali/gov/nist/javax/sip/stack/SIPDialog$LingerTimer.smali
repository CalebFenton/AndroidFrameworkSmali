.class Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LingerTimer"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .registers 2
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 373
    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 4

    .line 376
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 377
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgeteventListeners(Lgov/nist/javax/sip/stack/SIPDialog;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 378
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgeteventListeners(Lgov/nist/javax/sip/stack/SIPDialog;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 380
    :cond_13
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fputtimerTaskLock(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/util/concurrent/Semaphore;)V

    .line 381
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-$$Nest$fgetsipStack(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 382
    return-void
.end method
