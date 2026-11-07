.class public final synthetic Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

.field public final synthetic blacklist f$1:Landroid/service/quickaccesswallet/GetWalletCardsResponse;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;->f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iput-object p2, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;->f$0:Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;

    iget-object v1, p0, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl$$ExternalSyntheticLambda1;->f$1:Landroid/service/quickaccesswallet/GetWalletCardsResponse;

    invoke-static {v0, v1}, Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;->$r8$lambda$s3WRyJYa6CRlKuh4dg0r_dZHIEI(Landroid/service/quickaccesswallet/GetWalletCardsCallbackImpl;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method
