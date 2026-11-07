.class public Lgov/nist/javax/sip/ResponseEventExt;
.super Ljavax/sip/ResponseEvent;
.source "ResponseEventExt.java"


# instance fields
.field private greylist m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;


# direct methods
.method public constructor greylist <init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "clientTransaction"    # Lgov/nist/javax/sip/ClientTransactionExt;
    .param p3, "dialog"    # Ljavax/sip/Dialog;
    .param p4, "response"    # Ljavax/sip/message/Response;

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/sip/ResponseEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 18
    iput-object p2, p0, Lgov/nist/javax/sip/ResponseEventExt;->m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;

    .line 19
    return-void
.end method


# virtual methods
.method public greylist getOriginalTransaction()Lgov/nist/javax/sip/ClientTransactionExt;
    .registers 2

    .line 46
    iget-object v0, p0, Lgov/nist/javax/sip/ResponseEventExt;->m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;

    return-object v0
.end method

.method public greylist isForkedResponse()Z
    .registers 2

    .line 27
    invoke-super {p0}, Ljavax/sip/ResponseEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lgov/nist/javax/sip/ResponseEventExt;->m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V
    .registers 2
    .param p1, "originalTransaction"    # Lgov/nist/javax/sip/ClientTransactionExt;

    .line 36
    iput-object p1, p0, Lgov/nist/javax/sip/ResponseEventExt;->m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;

    .line 37
    return-void
.end method
