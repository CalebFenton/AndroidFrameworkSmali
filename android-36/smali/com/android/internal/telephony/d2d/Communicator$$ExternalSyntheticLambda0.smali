.class public final synthetic Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/android/internal/telephony/d2d/TransportProtocol;

    invoke-static {p1}, Lcom/android/internal/telephony/d2d/Communicator;->$r8$lambda$T0-cJ_fyBN8u2MgGO6ozc5-Nixo(Lcom/android/internal/telephony/d2d/TransportProtocol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
