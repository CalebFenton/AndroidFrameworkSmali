.class public Lgov/nist/javax/sip/ResponseEventExt;
.super Ljavax/sip/ResponseEvent;
.source "ResponseEventExt.java"


# instance fields
.field private m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "clientTransaction"    # Lgov/nist/javax/sip/ClientTransactionExt;
    .param p3, "dialog"    # Ljavax/sip/Dialog;
    .param p4, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/sip/ResponseEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    #@3
    .line 18
    iput-object p2, p0, Lgov/nist/javax/sip/ResponseEventExt;->m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;

    #@5
    .line 16
    return-void
.end method


# virtual methods
.method public getOriginalTransaction()Lgov/nist/javax/sip/ClientTransactionExt;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lgov/nist/javax/sip/ResponseEventExt;->m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;

    #@2
    return-object v0
.end method

.method public isForkedResponse()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 27
    invoke-super {p0}, Ljavax/sip/ResponseEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Lgov/nist/javax/sip/ResponseEventExt;->m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V
    .locals 0
    .param p1, "originalTransaction"    # Lgov/nist/javax/sip/ClientTransactionExt;

    #@0
    .prologue
    .line 36
    iput-object p1, p0, Lgov/nist/javax/sip/ResponseEventExt;->m_originalTransaction:Lgov/nist/javax/sip/ClientTransactionExt;

    #@2
    .line 35
    return-void
.end method
