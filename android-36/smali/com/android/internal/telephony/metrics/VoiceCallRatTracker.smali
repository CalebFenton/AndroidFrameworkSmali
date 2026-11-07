.class public Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;
.super Ljava/lang/Object;
.source "VoiceCallRatTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;,
        Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VoiceCallRatTracker"


# instance fields
.field private blacklist mLastKey:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

.field private blacklist mLastKeyTimestampMillis:J

.field private final blacklist mRatUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;",
            "Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$MziTiD3VP-7hNHZ6fhf8nUJuSWs(I)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 1

    .line 69
    new-array p0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$NnUVemHpT4jfFewUpe9Bgst80Rg(Ljava/util/Map$Entry;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->entryToProto(Ljava/util/Map$Entry;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$YM4oWNTpdoSmsP9aLrSBhyzFTpQ(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->addProto(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$biXVokWWHtd8c0xSE9qXgAUm2OU(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;Ljava/util/Map$Entry;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->lambda$mergeWith$2(Ljava/util/Map$Entry;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->clear()V

    return-void
.end method

.method private blacklist addProto(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)V
    .registers 3

    .line 144
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->fromProto(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;->fromProto(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist addToKey(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;JLjava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;",
            "J",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;

    if-nez v0, :cond_15

    .line 137
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;-><init>(JLjava/util/Set;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 139
    :cond_15
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;->add(JLjava/util/Set;)V

    return-void
.end method

.method private static blacklist entryToProto(Ljava/util/Map$Entry;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;",
            "Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;",
            ">;)",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;"
        }
    .end annotation

    .line 148
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    .line 149
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;

    .line 150
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;-><init>()V

    .line 151
    iget v2, v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->carrierId:I

    iput v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    .line 152
    iget v0, v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;->rat:I

    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    .line 153
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;->-$$Nest$fgetmConnectionIds(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 154
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->TAG:Ljava/lang/String;

    const-string v2, "call not concluded when converting to proto"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_26
    iget-wide v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;->durationMillis:J

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    .line 157
    iget-wide v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;->callCount:J

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    return-object v1
.end method

.method public static blacklist fromProto([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;-><init>()V

    if-nez p0, :cond_f

    .line 58
    sget-object p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->TAG:Ljava/lang/String;

    const-string v1, "fromProto: usages=null"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 60
    :cond_f
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$mergeWith$2(Ljava/util/Map$Entry;)V
    .registers 4

    .line 128
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    .line 129
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;

    new-instance v1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda5;-><init>()V

    .line 128
    invoke-interface {p0, v0, p1, v1}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist add(IIJLjava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKey:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1b

    .line 84
    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKeyTimestampMillis:J

    sub-long v3, p3, v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_16

    .line 86
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->TAG:Ljava/lang/String;

    const-string v3, "add: durationMillis<0"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v1

    .line 89
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKey:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    invoke-direct {p0, v0, v3, v4, p5}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->addToKey(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;JLjava/util/Set;)V

    .line 93
    :cond_1b
    new-instance v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;-><init>(II)V

    .line 94
    invoke-direct {p0, v0, v1, v2, p5}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->addToKey(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;JLjava/util/Set;)V

    .line 96
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKey:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    .line 97
    iput-wide p3, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKeyTimestampMillis:J

    return-void
.end method

.method public blacklist clear()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKey:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKeyTimestampMillis:J

    return-void
.end method

.method public blacklist conclude(J)V
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKey:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    if-eqz v0, :cond_41

    .line 103
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKeyTimestampMillis:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_15

    .line 105
    sget-object p1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->TAG:Ljava/lang/String;

    const-string p2, "conclude: durationMillis<0"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    .line 108
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mLastKey:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;

    if-nez v0, :cond_29

    .line 110
    sget-object p1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->TAG:Ljava/lang/String;

    const-string p2, "conclude: value=null && mLastKey!=null"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 112
    :cond_29
    iget-wide v1, v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;->durationMillis:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$Value;->durationMillis:J

    .line 114
    :goto_2e
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 116
    :cond_41
    sget-object p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->TAG:Ljava/lang/String;

    const-string p1, "conclude: mLastKey=null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist mergeWith(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;
    .registers 4

    if-nez p1, :cond_f

    .line 123
    sget-object p1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "mergeWith: attempting to merge with null"

    invoke-static {p1, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    .line 125
    :cond_f
    iget-object p1, p1, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)V

    .line 126
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public blacklist toProto()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mRatUsageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda1;-><init>()V

    .line 68
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker$$ExternalSyntheticLambda2;-><init>()V

    .line 69
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    return-object p0
.end method
