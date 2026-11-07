.class public final synthetic Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/d2d/Communicator;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/d2d/Communicator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/d2d/Communicator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/d2d/Communicator;

    check-cast p1, Lcom/android/internal/telephony/d2d/TransportProtocol;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/d2d/Communicator;->$r8$lambda$4iy68DF4EIlA2JPboj5-s7Et6TM(Lcom/android/internal/telephony/d2d/Communicator;Lcom/android/internal/telephony/d2d/TransportProtocol;)V

    return-void
.end method
