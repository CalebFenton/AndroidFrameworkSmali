.class public final Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;
.super Ljava/lang/Object;
.source "NitzStateMachineImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/NitzStateMachine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;,
        Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;
    }
.end annotation


# instance fields
.field private blacklist mCountryIsoCode:Ljava/lang/String;

.field private final blacklist mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

.field private blacklist mLastNitzSignalCleared:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Lcom/android/internal/telephony/NitzSignal;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

.field private final blacklist mNitzSignalInputFilter:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

.field private final blacklist mSlotIndex:I

.field private final blacklist mTimeServiceHelper:Lcom/android/internal/telephony/nitz/TimeServiceHelper;

.field private final blacklist mTimeZoneSuggester:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;


# direct methods
.method public constructor blacklist <init>(ILcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;Lcom/android/internal/telephony/nitz/TimeServiceHelper;)V
    .registers 6

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mSlotIndex:I

    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 169
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mTimeZoneSuggester:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;

    .line 170
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mTimeServiceHelper:Lcom/android/internal/telephony/nitz/TimeServiceHelper;

    .line 171
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mNitzSignalInputFilter:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    return-void
.end method

.method private blacklist clearNetworkState(Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 303
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    goto :goto_15

    .line 305
    :cond_6
    new-instance p1, Landroid/os/TimestampedValue;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 306
    invoke-interface {v1}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->elapsedRealtimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-direct {p1, v1, v2, v3}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 309
    :goto_15
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 310
    :goto_1c
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    return p1
.end method

.method public static blacklist createInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;
    .registers 7

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 146
    new-instance v2, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 147
    new-instance v0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-direct {v0}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;-><init>()V

    .line 148
    new-instance v4, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;

    invoke-direct {v4, v2, v0}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;-><init>(Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;)V

    .line 150
    new-instance v5, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/internal/telephony/nitz/NitzSignalInputFilterPredicateFactory;->create(Landroid/content/Context;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;)Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    move-result-object v3

    .line 153
    new-instance v0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;-><init>(ILcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;Lcom/android/internal/telephony/nitz/TimeServiceHelper;)V

    return-object v0
.end method

.method private blacklist doTimeDetection(Lcom/android/internal/telephony/NitzSignal;Ljava/lang/String;)V
    .registers 7

    .line 368
    const-string v0, ", reason="

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    new-instance v1, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    iget v2, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mSlotIndex:I

    invoke-direct {v1, v2}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;-><init>(I)V

    if-nez p1, :cond_25

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing time suggestion reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    goto :goto_46

    :catch_23
    move-exception v1

    goto :goto_50

    .line 376
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzSignal;->createTimeSignal()Landroid/app/time/UnixEpochTime;

    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->setUnixEpochTime(Landroid/app/time/UnixEpochTime;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending new time suggestion nitzSignal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    .line 382
    :goto_46
    iget-object v2, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mTimeServiceHelper:Lcom/android/internal/telephony/nitz/TimeServiceHelper;

    invoke-virtual {v1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->build()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/nitz/TimeServiceHelper;->suggestDeviceTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_4f} :catch_23

    return-void

    .line 384
    :goto_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doTimeDetection: Exception thrown mSlotIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mSlotIndex:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", nitzSignal="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ex="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NitzStateMachineImpl"

    invoke-static {p1, p0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist doTimeZoneDetection(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;Ljava/lang/String;)V
    .registers 10

    .line 340
    const-string v0, ", reason="

    const-string v1, ", nitzSignal="

    const-string v2, "NitzStateMachineImpl"

    :try_start_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    iget-object v3, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mTimeZoneSuggester:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;

    iget v4, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mSlotIndex:I

    invoke-interface {v3, v4, p1, p2}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;->getTimeZoneSuggestion(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v3

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detection reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->addDebugInfo(Ljava/lang/String;)V

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doTimeZoneDetection: countryIsoCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", suggestion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mTimeServiceHelper:Lcom/android/internal/telephony/nitz/TimeServiceHelper;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/nitz/TimeServiceHelper;->maybeSuggestDeviceTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v3

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doTimeZoneDetection: Exception thrown mSlotIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mSlotIndex:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", countryIsoCode="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ex="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist restoreNetworkStateAndRerunDetection(Ljava/lang/String;)V
    .registers 8

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    const-string v1, "NitzStateMachineImpl"

    if-nez v0, :cond_1b

    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mLastNitzSignalCleared is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->elapsedRealtimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 280
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 282
    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzNetworkDisconnectRetentionMillis()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_5e

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mLatestNitzSignal restored from mLastNitzSignalCleared="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 285
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NitzSignal;

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 291
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->runDetection(Ljava/lang/String;)V

    return-void

    .line 294
    :cond_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mLastNitzSignalCleared is too old."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist runDetection(Ljava/lang/String;)V
    .registers 6

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runDetection: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", countryIsoCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nitzSignal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NitzStateMachineImpl"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->doTimeZoneDetection(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->doTimeDetection(Lcom/android/internal/telephony/NitzSignal;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/telephony/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 402
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mTimeServiceHelper:Lcom/android/internal/telephony/nitz/TimeServiceHelper;

    invoke-interface {p0, p2}, Lcom/android/internal/telephony/nitz/TimeServiceHelper;->dumpLogs(Lcom/android/internal/telephony/IndentingPrintWriter;)V

    return-void
.end method

.method public blacklist dumpState(Ljava/io/PrintWriter;)V
    .registers 4

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " NitzStateMachineImpl.mLatestNitzSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " NitzStateMachineImpl.mCountryIsoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mTimeServiceHelper:Lcom/android/internal/telephony/nitz/TimeServiceHelper;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/nitz/TimeServiceHelper;->dumpState(Ljava/io/PrintWriter;)V

    .line 397
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getLastNitzDataCleared()Lcom/android/internal/telephony/NitzData;
    .registers 1

    .line 414
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    if-eqz p0, :cond_f

    .line 415
    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/NitzSignal;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getLatestNitzData()Lcom/android/internal/telephony/NitzData;
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist handleAirplaneModeChanged(Z)V
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v2, 0x0

    .line 259
    iput-object v2, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 261
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->clearNetworkState(Z)Z

    move-result v1

    if-nez v0, :cond_15

    if-eqz v1, :cond_14

    goto :goto_15

    :cond_14
    return-void

    .line 264
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAirplaneModeChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->runDetection(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist handleCountryDetected(Ljava/lang/String;)V
    .registers 5

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCountryDetected: countryIsoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLatestNitzSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NitzStateMachineImpl"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 198
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCountryDetected(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->doTimeZoneDetection(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public blacklist handleCountryUnavailable()V
    .registers 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCountryUnavailable: mLatestNitzSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NitzStateMachineImpl"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mCountryIsoCode:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const-string v2, "handleCountryUnavailable"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->doTimeZoneDetection(Ljava/lang/String;Lcom/android/internal/telephony/NitzSignal;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist handleNetworkAvailable()V
    .registers 2

    .line 176
    const-string v0, "handleNetworkAvailable"

    .line 177
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->restoreNetworkStateAndRerunDetection(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist handleNetworkUnavailable()V
    .registers 2

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->clearNetworkState(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 184
    const-string v0, "handleNetworkUnavailable"

    .line 185
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->runDetection(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public blacklist handleNitzReceived(Lcom/android/internal/telephony/NitzSignal;)V
    .registers 4

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    .line 224
    iget-object v1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mNitzSignalInputFilter:Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;->mustProcessNitzSignal(Lcom/android/internal/telephony/NitzSignal;Lcom/android/internal/telephony/NitzSignal;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNitzReceived: previousNitzSignal="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nitzSignal="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": NITZ filtered"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NitzStateMachineImpl"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_31
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLatestNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->mLastNitzSignalCleared:Landroid/os/TimestampedValue;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNitzReceived("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->runDetection(Ljava/lang/String;)V

    return-void
.end method
