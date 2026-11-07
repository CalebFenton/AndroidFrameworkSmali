.class public final synthetic Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda2;->f$0:Z

    check-cast p1, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;

    invoke-static {v0, p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->lambda$setDelayRequestHeadersUntilFirstFlushEnabled$8(ZLandroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;)V

    return-void
.end method
