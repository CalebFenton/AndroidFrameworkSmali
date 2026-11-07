.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

.field public final synthetic blacklist f$1:Landroid/service/quickaccesswallet/GetWalletCardsError;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1$$ExternalSyntheticLambda1;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1$$ExternalSyntheticLambda1;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsError;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1$$ExternalSyntheticLambda1;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1$$ExternalSyntheticLambda1;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsError;

    invoke-static {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$1;->lambda$onGetWalletCardsFailure$1(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method
