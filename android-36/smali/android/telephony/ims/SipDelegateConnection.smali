.class public interface abstract Landroid/telephony/ims/SipDelegateConnection;
.super Ljava/lang/Object;
.source "SipDelegateConnection.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist cleanupSession(Ljava/lang/String;)V
.end method

.method public abstract whitelist notifyMessageReceiveError(Ljava/lang/String;I)V
.end method

.method public abstract whitelist notifyMessageReceived(Ljava/lang/String;)V
.end method

.method public abstract whitelist sendMessage(Landroid/telephony/ims/SipMessage;J)V
.end method
