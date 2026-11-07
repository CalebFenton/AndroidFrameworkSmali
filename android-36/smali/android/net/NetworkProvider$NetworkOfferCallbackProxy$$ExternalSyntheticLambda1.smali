.class public final synthetic Landroid/net/NetworkProvider$NetworkOfferCallbackProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/NetworkRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;Landroid/net/NetworkRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;

    iput-object p2, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/NetworkRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;

    iget-object v1, p0, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/NetworkRequest;

    invoke-static {v0, v1}, Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;->$r8$lambda$OlpKyUb98IHz4hrliK2COKjZzok(Landroid/net/NetworkProvider$NetworkOfferCallbackProxy;Landroid/net/NetworkRequest;)V

    return-void
.end method
