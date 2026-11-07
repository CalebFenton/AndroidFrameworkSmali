.class Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;
.super Ljava/lang/Object;
.source "VoiceCallRatTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field public final blacklist carrierId:I

.field public final blacklist rat:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->carrierId:I

    .line 172
    iput p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->rat:I

    return-void
.end method

.method static blacklist fromProto(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;
    .registers 3

    .line 176
    new-instance v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_1e

    .line 187
    :cond_e
    check-cast p1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    .line 188
    iget v1, p1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->carrierId:I

    if-ne v1, v2, :cond_1e

    iget p1, p1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->rat:I

    iget p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->rat:I

    if-ne p1, p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->carrierId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->rat:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
