.class public interface abstract Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
.super Ljava/lang/Object;
.source "ISipDelegateMessageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;,
        Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.ISipDelegateMessageCallback"


# virtual methods
.method public abstract blacklist onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMessageSendFailure(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onMessageSent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
