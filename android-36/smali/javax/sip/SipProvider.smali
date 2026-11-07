.class public interface abstract Ljavax/sip/SipProvider;
.super Ljava/lang/Object;
.source "SipProvider.java"


# virtual methods
.method public abstract blacklist addListeningPoint(Ljavax/sip/ListeningPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract blacklist addSipListener(Ljavax/sip/SipListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation
.end method

.method public abstract blacklist getListeningPoint()Ljavax/sip/ListeningPoint;
.end method

.method public abstract blacklist getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;
.end method

.method public abstract blacklist getListeningPoints()[Ljavax/sip/ListeningPoint;
.end method

.method public abstract blacklist getNewCallId()Ljavax/sip/header/CallIdHeader;
.end method

.method public abstract blacklist getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation
.end method

.method public abstract blacklist getNewDialog(Ljavax/sip/Transaction;)Ljavax/sip/Dialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionAlreadyExistsException;,
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation
.end method

.method public abstract blacklist getSipStack()Ljavax/sip/SipStack;
.end method

.method public abstract blacklist isAutomaticDialogSupportEnabled()Z
.end method

.method public abstract blacklist removeListeningPoint(Ljavax/sip/ListeningPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract blacklist removeListeningPoints()V
.end method

.method public abstract blacklist removeSipListener(Ljavax/sip/SipListener;)V
.end method

.method public abstract blacklist sendRequest(Ljavax/sip/message/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist sendResponse(Ljavax/sip/message/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist setAutomaticDialogSupportEnabled(Z)V
.end method

.method public abstract blacklist setListeningPoint(Ljavax/sip/ListeningPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method
