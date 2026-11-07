.class public final synthetic Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/Network;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/Network;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda6;->f$0:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda6;->f$0:Landroid/net/Network;

    check-cast p1, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    invoke-static {v0, p1}, Landroid/net/http/UrlRequestBuilderWrapper;->lambda$bindToNetwork$9(Landroid/net/Network;Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V

    return-void
.end method
