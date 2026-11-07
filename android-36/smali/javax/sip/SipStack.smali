.class public interface abstract Ljavax/sip/SipStack;
.super Ljava/lang/Object;
.source "SipStack.java"


# virtual methods
.method public abstract blacklist createListeningPoint(ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteListeningPoint(Ljavax/sip/ListeningPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteSipProvider(Ljavax/sip/SipProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation
.end method

.method public abstract blacklist getDialogs()Ljava/util/Collection;
.end method

.method public abstract blacklist getIPAddress()Ljava/lang/String;
.end method

.method public abstract blacklist getListeningPoints()Ljava/util/Iterator;
.end method

.method public abstract blacklist getRouter()Ljavax/sip/address/Router;
.end method

.method public abstract blacklist getSipProviders()Ljava/util/Iterator;
.end method

.method public abstract blacklist getStackName()Ljava/lang/String;
.end method

.method public abstract blacklist isRetransmissionFilterActive()Z
.end method

.method public abstract blacklist start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ProviderDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation
.end method

.method public abstract blacklist stop()V
.end method
