.class public interface abstract Lgov/nist/javax/sip/ClientTransactionExt;
.super Ljava/lang/Object;
.source "ClientTransactionExt.java"

# interfaces
.implements Ljavax/sip/ClientTransaction;
.implements Lgov/nist/javax/sip/TransactionExt;


# virtual methods
.method public abstract greylist alertIfStillInCallingStateBy(I)V
.end method

.method public abstract greylist getNextHop()Ljavax/sip/address/Hop;
.end method

.method public abstract greylist isSecure()Z
.end method

.method public abstract greylist setNotifyOnRetransmit(Z)V
.end method
