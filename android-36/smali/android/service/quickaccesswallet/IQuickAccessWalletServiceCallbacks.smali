.class public interface abstract Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;
.super Ljava/lang/Object;
.source "IQuickAccessWalletServiceCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;,
        Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.quickaccesswallet.IQuickAccessWalletServiceCallbacks"


# virtual methods
.method public abstract blacklist onGestureTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
