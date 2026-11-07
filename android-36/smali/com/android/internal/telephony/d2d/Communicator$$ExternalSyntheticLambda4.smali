.class public final synthetic Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

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
    check-cast p1, Lcom/android/internal/telephony/d2d/TransportProtocol;

    invoke-static {p1}, Lcom/android/internal/telephony/d2d/Communicator;->$r8$lambda$8S90CP1W4T8r4f9p2AtXawbathg(Lcom/android/internal/telephony/d2d/TransportProtocol;)V

    return-void
.end method
