.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;
.super Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseCallbacks"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 553
    invoke-direct {p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onGestureTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 571
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist onGetWalletCardsFailure(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 3
    .param p1, "error"    # Landroid/service/quickaccesswallet/GetWalletCardsError;

    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist onGetWalletCardsSuccess(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 3
    .param p1, "response"    # Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist onTargetActivityPendingIntentReceived(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 567
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist onWalletServiceEvent(Landroid/service/quickaccesswallet/WalletServiceEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/service/quickaccesswallet/WalletServiceEvent;

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
