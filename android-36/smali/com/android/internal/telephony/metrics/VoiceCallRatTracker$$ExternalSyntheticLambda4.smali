.class public final synthetic Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->$r8$lambda$biXVokWWHtd8c0xSE9qXgAUm2OU(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;Ljava/util/Map$Entry;)V

    return-void
.end method
