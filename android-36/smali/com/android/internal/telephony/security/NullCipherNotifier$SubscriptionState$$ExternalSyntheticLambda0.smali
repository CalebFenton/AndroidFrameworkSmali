.class public final synthetic Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;

    invoke-static {p1}, Lcom/android/internal/telephony/security/NullCipherNotifier$SubscriptionState;->$r8$lambda$Gj9E3uADpNxPsEt139E9P9W__vY(Lcom/android/internal/telephony/security/NullCipherNotifier$ConnectionState;)Z

    move-result p0

    return p0
.end method
