.class public interface abstract Ljavax/sip/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract blacklist getApplicationData()Ljava/lang/Object;
.end method

.method public abstract blacklist getBranchId()Ljava/lang/String;
.end method

.method public abstract blacklist getDialog()Ljavax/sip/Dialog;
.end method

.method public abstract blacklist getHost()Ljava/lang/String;
.end method

.method public abstract blacklist getPeerAddress()Ljava/lang/String;
.end method

.method public abstract blacklist getPeerPort()I
.end method

.method public abstract blacklist getPort()I
.end method

.method public abstract blacklist getRequest()Ljavax/sip/message/Request;
.end method

.method public abstract blacklist getRetransmitTimer()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract blacklist getSipProvider()Ljavax/sip/SipProvider;
.end method

.method public abstract blacklist getState()Ljavax/sip/TransactionState;
.end method

.method public abstract blacklist getTransport()Ljava/lang/String;
.end method

.method public abstract blacklist setApplicationData(Ljava/lang/Object;)V
.end method

.method public abstract blacklist setRetransmitTimer(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract blacklist terminate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method
