.class public interface abstract Lcom/android/internal/telephony/ICallForwardingInfoCallback;
.super Ljava/lang/Object;
.source "ICallForwardingInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ICallForwardingInfoCallback$Stub;,
        Lcom/android/internal/telephony/ICallForwardingInfoCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ICallForwardingInfoCallback"


# virtual methods
.method public abstract blacklist onCallForwardingInfoAvailable(Landroid/telephony/CallForwardingInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
