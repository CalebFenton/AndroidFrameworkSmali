.class public interface abstract Ljavax/sip/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract blacklist createAck(J)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist createPrack(Ljavax/sip/message/Response;)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/DialogDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist createReliableProvisionalResponse(I)Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist delete()V
.end method

.method public abstract blacklist getApplicationData()Ljava/lang/Object;
.end method

.method public abstract blacklist getCallId()Ljavax/sip/header/CallIdHeader;
.end method

.method public abstract blacklist getDialogId()Ljava/lang/String;
.end method

.method public abstract blacklist getFirstTransaction()Ljavax/sip/Transaction;
.end method

.method public abstract blacklist getLocalParty()Ljavax/sip/address/Address;
.end method

.method public abstract blacklist getLocalSeqNumber()J
.end method

.method public abstract blacklist getLocalSequenceNumber()I
.end method

.method public abstract blacklist getLocalTag()Ljava/lang/String;
.end method

.method public abstract blacklist getRemoteParty()Ljavax/sip/address/Address;
.end method

.method public abstract blacklist getRemoteSeqNumber()J
.end method

.method public abstract blacklist getRemoteSequenceNumber()I
.end method

.method public abstract blacklist getRemoteTag()Ljava/lang/String;
.end method

.method public abstract blacklist getRemoteTarget()Ljavax/sip/address/Address;
.end method

.method public abstract blacklist getRouteSet()Ljava/util/Iterator;
.end method

.method public abstract blacklist getSipProvider()Ljavax/sip/SipProvider;
.end method

.method public abstract blacklist getState()Ljavax/sip/DialogState;
.end method

.method public abstract blacklist incrementLocalSequenceNumber()V
.end method

.method public abstract blacklist isSecure()Z
.end method

.method public abstract blacklist isServer()Z
.end method

.method public abstract blacklist sendAck(Ljavax/sip/message/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist sendRequest(Ljavax/sip/ClientTransaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist setApplicationData(Ljava/lang/Object;)V
.end method

.method public abstract blacklist setBackToBackUserAgent()V
.end method

.method public abstract blacklist terminateOnBye(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation
.end method
