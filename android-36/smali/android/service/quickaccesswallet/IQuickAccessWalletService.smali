.class public interface abstract Landroid/service/quickaccesswallet/IQuickAccessWalletService;
.super Ljava/lang/Object;
.source "IQuickAccessWalletService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;,
        Landroid/service/quickaccesswallet/IQuickAccessWalletService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.quickaccesswallet.IQuickAccessWalletService"


# virtual methods
.method public abstract blacklist onGestureTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onWalletDismissed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
