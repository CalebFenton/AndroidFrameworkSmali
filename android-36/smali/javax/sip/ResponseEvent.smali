.class public Ljavax/sip/ResponseEvent;
.super Ljava/util/EventObject;
.source "ResponseEvent.java"


# instance fields
.field private blacklist mClientTransaction:Ljavax/sip/ClientTransaction;

.field private blacklist mDialog:Ljavax/sip/Dialog;

.field private blacklist mResponse:Ljavax/sip/message/Response;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "clientTransaction"    # Ljavax/sip/ClientTransaction;
    .param p3, "dialog"    # Ljavax/sip/Dialog;
    .param p4, "response"    # Ljavax/sip/message/Response;

    .line 13
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p3, p0, Ljavax/sip/ResponseEvent;->mDialog:Ljavax/sip/Dialog;

    .line 15
    iput-object p4, p0, Ljavax/sip/ResponseEvent;->mResponse:Ljavax/sip/message/Response;

    .line 16
    iput-object p2, p0, Ljavax/sip/ResponseEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist getClientTransaction()Ljavax/sip/ClientTransaction;
    .registers 2

    .line 28
    iget-object v0, p0, Ljavax/sip/ResponseEvent;->mClientTransaction:Ljavax/sip/ClientTransaction;

    return-object v0
.end method

.method public blacklist getDialog()Ljavax/sip/Dialog;
    .registers 2

    .line 20
    iget-object v0, p0, Ljavax/sip/ResponseEvent;->mDialog:Ljavax/sip/Dialog;

    return-object v0
.end method

.method public blacklist getResponse()Ljavax/sip/message/Response;
    .registers 2

    .line 24
    iget-object v0, p0, Ljavax/sip/ResponseEvent;->mResponse:Ljavax/sip/message/Response;

    return-object v0
.end method
