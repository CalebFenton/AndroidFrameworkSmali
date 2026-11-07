.class public final synthetic Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda4;->f$0:I

    check-cast p1, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    invoke-static {v0, p1}, Landroid/net/http/UrlRequestBuilderWrapper;->lambda$setTrafficStatsTag$12(ILandroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V

    return-void
.end method
