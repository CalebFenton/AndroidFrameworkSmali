.class public interface abstract Lgov/nist/javax/sip/TransactionExt;
.super Ljava/lang/Object;
.source "TransactionExt.java"

# interfaces
.implements Ljavax/sip/Transaction;


# virtual methods
.method public abstract greylist getCipherSuite()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract greylist getHost()Ljava/lang/String;
.end method

.method public abstract greylist getLocalCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract greylist getPeerAddress()Ljava/lang/String;
.end method

.method public abstract greylist getPeerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract greylist getPeerPort()I
.end method

.method public abstract greylist getPort()I
.end method

.method public abstract greylist getSipProvider()Ljavax/sip/SipProvider;
.end method

.method public abstract greylist getTransport()Ljava/lang/String;
.end method
