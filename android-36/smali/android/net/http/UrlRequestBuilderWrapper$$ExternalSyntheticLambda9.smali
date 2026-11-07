.class public final synthetic Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    invoke-static {p1}, Landroid/net/http/UrlRequestBuilderWrapper;->lambda$new$0(Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;)V

    return-void
.end method
