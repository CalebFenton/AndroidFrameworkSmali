.class public final synthetic Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda27;
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
    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->$r8$lambda$Kc1E0MS-HQKkj-mGUQNEzhtsr6w(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)J

    move-result-wide p0

    return-wide p0
.end method
