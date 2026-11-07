.class public final synthetic Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->$r8$lambda$MziTiD3VP-7hNHZ6fhf8nUJuSWs(I)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    move-result-object p0

    return-object p0
.end method
