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
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPDialog;

    #@0
    .prologue
    .line 371
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 376
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@3
    .line 377
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@5
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-get1(Lgov/nist/javax/sip/stack/SIPDialog;)Ljava/util/Set;

    #@8
    move-result-object v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 378
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@d
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-get1(Lgov/nist/javax/sip/stack/SIPDialog;)Ljava/util/Set;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    #@14
    .line 380
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@16
    invoke-static {v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->-set1(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    #@19
    .line 381
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #@1b
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->-get6(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@22
    .line 375
    return-void
.end method
