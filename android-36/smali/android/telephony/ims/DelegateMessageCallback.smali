.class public interface abstract Landroid/telephony/ims/DelegateMessageCallback;
.super Ljava/lang/Object;
.source "DelegateMessageCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onMessageReceived(Landroid/telephony/ims/SipMessage;)V
.end method

.method public abstract whitelist onMessageSendFailure(Ljava/lang/String;I)V
.end method

.method public abstract whitelist onMessageSent(Ljava/lang/String;)V
.end method
