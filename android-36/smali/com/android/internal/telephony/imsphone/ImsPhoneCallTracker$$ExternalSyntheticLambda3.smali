.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:J


# direct methods
.method public synthetic constructor blacklist <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$0:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$$ExternalSyntheticLambda3;->f$0:J

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->$r8$lambda$6kCo2LYXQTEfJDq5cf6UQfhanaU(JLjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
