.class public Ljavax/sip/RequestEvent;
.super Ljava/util/EventObject;
.source "RequestEvent.java"


# instance fields
.field private blacklist mDialog:Ljavax/sip/Dialog;

.field private blacklist mRequest:Ljavax/sip/message/Request;

.field private blacklist mServerTransaction:Ljavax/sip/ServerTransaction;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "serverTransaction"    # Ljavax/sip/ServerTransaction;
    .param p3, "dialog"    # Ljavax/sip/Dialog;
    .param p4, "request"    # Ljavax/sip/message/Request;

    .line 13
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p3, p0, Ljavax/sip/RequestEvent;->mDialog:Ljavax/sip/Dialog;

    .line 15
    iput-object p4, p0, Ljavax/sip/RequestEvent;->mRequest:Ljavax/sip/message/Request;

    .line 16
    iput-object p2, p0, Ljavax/sip/RequestEvent;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist getDialog()Ljavax/sip/Dialog;
    .registers 2

    .line 20
    iget-object v0, p0, Ljavax/sip/RequestEvent;->mDialog:Ljavax/sip/Dialog;

    return-object v0
.end method

.method public blacklist getRequest()Ljavax/sip/message/Request;
    .registers 2

    .line 24
    iget-object v0, p0, Ljavax/sip/RequestEvent;->mRequest:Ljavax/sip/message/Request;

    return-object v0
.end method

.method public blacklist getServerTransaction()Ljavax/sip/ServerTransaction;
    .registers 2

    .line 28
    iget-object v0, p0, Ljavax/sip/RequestEvent;->mServerTransaction:Ljavax/sip/ServerTransaction;

    return-object v0
.end method
