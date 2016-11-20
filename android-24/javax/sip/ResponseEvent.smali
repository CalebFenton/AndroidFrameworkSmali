.class public Ljavax/sip/ResponseEvent;
.super Ljava/util/EventObject;
.source "ResponseEvent.java"


# instance fields
.field private mClientTransaction:Ljavax/sip/ClientTransaction;

.field private mDialog:Ljavax/sip/Dialog;

.field private mResponse:Ljavax/sip/message/Response;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "clientTransaction"    # Ljavax/sip/ClientTransaction;
    .param p3, "dialog"    # Ljavax/sip/Dialog;
    .param p4, "response"    # Ljavax/sip/message/Response;

    #@0
    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 14
    iput-object p3, p0, Ljavax/sip/ResponseEvent;->mDialog:Ljavax/sip/Dialog;

    #@5
    .line 15
    iput-object p4, p0, Ljavax/sip/ResponseEvent;->mResponse:Ljavax/sip/message/Response;

    #@7
    .line 16
    iput-object p2, p0, Ljavax/sip/ResponseEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@9
    .line 12
    return-void
.end method


# virtual methods
.method public getClientTransaction()Ljavax/sip/ClientTransaction;
    .locals 1

    #@0
    .prologue
    .line 28
    iget-object v0, p0, Ljavax/sip/ResponseEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    #@2
    return-object v0
.end method

.method public getDialog()Ljavax/sip/Dialog;
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Ljavax/sip/ResponseEvent;->mDialog:Ljavax/sip/Dialog;

    #@2
    return-object v0
.end method

.method public getResponse()Ljavax/sip/message/Response;
    .locals 1

    #@0
    .prologue
    .line 24
    iget-object v0, p0, Ljavax/sip/ResponseEvent;->mResponse:Ljavax/sip/message/Response;

    #@2
    return-object v0
.end method
