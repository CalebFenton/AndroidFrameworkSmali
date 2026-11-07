.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsLong(Ljava/lang/Object;)J
    .registers 2

    .line 0
    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getLastSetupTimestamp()J

    move-result-wide p0

    return-wide p0
.end method
