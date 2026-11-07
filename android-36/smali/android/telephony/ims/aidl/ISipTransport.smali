.class public interface abstract Landroid/telephony/ims/aidl/ISipTransport;
.super Ljava/lang/Object;
.source "ISipTransport.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISipTransport$Stub;,
        Landroid/telephony/ims/aidl/ISipTransport$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.ISipTransport"


# virtual methods
.method public abstract blacklist createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist destroySipDelegate(Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
