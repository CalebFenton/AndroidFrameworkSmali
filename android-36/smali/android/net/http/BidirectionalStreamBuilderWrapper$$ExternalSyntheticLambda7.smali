.class public final synthetic Landroid/net/http/BidirectionalStreamBuilderWrapper$$ExternalSyntheticLambda7;
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
    check-cast p1, Landroid/net/http/BidirectionalStreamWrapper;

    invoke-static {p1}, Landroid/net/http/BidirectionalStreamBuilderWrapper;->lambda$new$1(Landroid/net/http/BidirectionalStreamWrapper;)V

    return-void
.end method
