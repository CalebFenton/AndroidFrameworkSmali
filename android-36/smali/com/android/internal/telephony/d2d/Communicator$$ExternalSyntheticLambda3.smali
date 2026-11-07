.class public final synthetic Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Optional;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Optional;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda3;->f$0:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda3;->f$0:Ljava/util/Optional;

    check-cast p1, Lcom/android/internal/telephony/d2d/TransportProtocol;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/d2d/Communicator;->$r8$lambda$C0Xs8w1IEVDWTr5Q1tjTNwGq3v0(Ljava/util/Optional;Lcom/android/internal/telephony/d2d/TransportProtocol;)Z

    move-result p0

    return p0
.end method
