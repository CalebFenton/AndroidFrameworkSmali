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
.field private greylist clientTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .registers 3
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "sipClientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 402
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->clientTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 403
    return-void
.end method


# virtual methods
.method protected greylist runTask()V
    .registers 3

    .line 407
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->-$$Nest$fgetforkedClientTransactionTable(Lgov/nist/javax/sip/stack/SIPTransactionStack;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;->clientTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-void
.end method
