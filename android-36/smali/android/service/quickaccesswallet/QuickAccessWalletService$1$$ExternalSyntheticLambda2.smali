.class public final synthetic Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

.field public final synthetic blacklist f$1:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iput-object p2, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;->f$1:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;->f$0:Landroid/service/quickaccesswallet/QuickAccessWalletService$1;

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;->f$1:Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    invoke-static {v0, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->$r8$lambda$FPuoAi57c8J8fYPrvmRhEqCRHpk(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method
