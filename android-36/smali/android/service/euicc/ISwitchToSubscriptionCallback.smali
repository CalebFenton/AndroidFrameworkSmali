.class public interface abstract Landroid/service/euicc/ISwitchToSubscriptionCallback;
.super Ljava/lang/Object;
.source "ISwitchToSubscriptionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/ISwitchToSubscriptionCallback$Stub;,
        Landroid/service/euicc/ISwitchToSubscriptionCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-r onComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
