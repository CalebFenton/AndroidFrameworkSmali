.class Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$1;
.super Ljava/lang/Object;
.source "NitzSignalInputFilterPredicateFactory.java"

# interfaces
.implements Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory;->createRateLimitCheck(Lcom/android/internal/telephony/NitzStateMachine$DeviceState;)Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$TrivalentPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$deviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NitzStateMachine$DeviceState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$1;->val$deviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist offsetInfoIsTheSame(Lcom/android/internal/telephony/NitzData;Lcom/android/internal/telephony/NitzData;)Z
    .registers 4

    .line 243
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getDstAdjustmentMillis()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getDstAdjustmentMillis()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 245
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 244
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 246
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result p1

    if-ne p0, p1, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist mustProcessNitzSignal(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Ljava/lang/Boolean;
    .registers 10

    .line 184
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v1

    .line 195
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$1;->offsetInfoIsTheSame(Lcom/android/internal/telephony/NitzData;Lcom/android/internal/telephony/NitzData;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 196
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 203
    :cond_25
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$1;->val$deviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-interface {v2}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzUpdateSpacingMillis()I

    move-result v2

    .line 204
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzSignal;->getReceiptElapsedRealtimeMillis()J

    move-result-wide v3

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzSignal;->getReceiptElapsedRealtimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    int-to-long v5, v2

    cmp-long v3, v3, v5

    if-lez v3, :cond_3c

    .line 207
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 212
    :cond_3c
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory$1;->val$deviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-interface {p0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzUpdateDiffMillis()I

    move-result p0

    .line 216
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v3

    .line 217
    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v3, v0

    .line 219
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzSignal;->getAgeAdjustedElapsedRealtimeMillis()J

    move-result-wide v0

    .line 220
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzSignal;->getAgeAdjustedElapsedRealtimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    sub-long/2addr v3, v0

    .line 226
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    int-to-long v3, p0

    cmp-long v0, v0, v3

    if-lez v0, :cond_61

    .line 229
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 233
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mustProcessNitzSignal: NITZ signal filtered previousSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newSignal="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", nitzUpdateSpacing="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", nitzUpdateDiff="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NitzStateMachineImpl"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
