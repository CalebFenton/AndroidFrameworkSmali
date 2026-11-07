.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->$r8$lambda$D_tz1UDB94fY5UBCEc9noYsbYaU(Lcom/android/internal/telephony/imsphone/ImsCallInfo;)Z

    move-result p0

    return p0
.end method
