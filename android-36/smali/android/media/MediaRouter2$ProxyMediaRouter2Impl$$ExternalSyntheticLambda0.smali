.class public final synthetic Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(I)I
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->lambda$stopScan$0(I)I

    move-result p1

    return p1
.end method
