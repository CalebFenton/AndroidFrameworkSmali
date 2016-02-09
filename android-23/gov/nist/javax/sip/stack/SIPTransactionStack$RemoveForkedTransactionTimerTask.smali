.class Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPTransactionStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPTransactionStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoveForkedTransactionTimerTask"
.end annotation


# instance fields
.field private clientTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "sipClientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@0
    .prologue
    .line 401
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    #@5
    .line 402
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->clientTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@7
    .line 401
    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 2

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->-get0(Lgov/nist/javax/sip/stack/SIPTransactionStack;)Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->clientTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@8
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getTransactionId()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 406
    return-void
.end method
