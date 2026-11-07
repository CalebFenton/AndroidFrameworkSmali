.class public final synthetic Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda26;
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
    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataRetryManager;->$r8$lambda$tGG2lOZKLOrOa2aQt2vPKQBRbCM(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z

    move-result p0

    return p0
.end method
