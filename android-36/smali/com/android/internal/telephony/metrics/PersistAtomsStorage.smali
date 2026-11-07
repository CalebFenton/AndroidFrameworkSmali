.class public Lcom/android/internal/telephony/metrics/PersistAtomsStorage;
.super Ljava/lang/Object;
.source "PersistAtomsStorage.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PersistAtomsStorage"

.field private static final blacklist sRandom:Ljava/security/SecureRandom;


# instance fields
.field protected blacklist mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mMaxNumCarrierIdMismatches:I

.field private final blacklist mMaxNumCarrierRoamingSatelliteSessionStats:I

.field private final blacklist mMaxNumCellularDataSwitches:I

.field private final blacklist mMaxNumCellularServiceStates:I

.field private final blacklist mMaxNumDataCallSessions:I

.field private final blacklist mMaxNumDataNetworkValidation:I

.field private final blacklist mMaxNumDedicatedBearerEventStats:I

.field private final blacklist mMaxNumDedicatedBearerListenerEventStats:I

.field private final blacklist mMaxNumGbaEventStats:I

.field private final blacklist mMaxNumImsRegistrationFeatureStats:I

.field private final blacklist mMaxNumImsRegistrationServiceDescStats:I

.field private final blacklist mMaxNumImsRegistrationStats:I

.field private final blacklist mMaxNumImsRegistrationTerminations:I

.field private final blacklist mMaxNumPresenceNotifyEventStats:I

.field private final blacklist mMaxNumRcsAcsProvisioningStats:I

.field private final blacklist mMaxNumRcsClientProvisioningStats:I

.field private final blacklist mMaxNumSatelliteStats:I

.field private final blacklist mMaxNumSipDelegateStats:I

.field private final blacklist mMaxNumSipMessageResponseStats:I

.field private final blacklist mMaxNumSipTransportFeatureTagStats:I

.field private final blacklist mMaxNumSipTransportSessionStats:I

.field private final blacklist mMaxNumSms:I

.field private final blacklist mMaxNumUceEventStats:I

.field private final blacklist mMaxNumVoiceCallSessions:I

.field private final blacklist mMaxOutgoingShortCodeSms:I

.field protected blacklist mSaveImmediately:Z

.field private blacklist mSaveRunnable:Ljava/lang/Runnable;

.field private final blacklist mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$0q1c0VYlD9POfXQWoHm9dilJiyg(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1065
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2qnY12lnIoX3FfG4XXjeDpYlg-U([ILjava/lang/Integer;)I
    .registers 2

    .line 1043
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget p0, p0, p1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$AV_lvdN4FsYJexsY8XiGl4qyntw(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1127
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Abri6yTaNmX7pL6GV-riIOvx7FY(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1086
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LlF6PwMVMVbP5z3hjc-Gx_MuLDs([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;II)I
    .registers 7

    .line 2618
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_d

    return p1

    :cond_d
    return p2
.end method

.method public static synthetic blacklist $r8$lambda$Xd9TxjJmDaorXzGK3oYPLO457ec([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;II)I
    .registers 7

    .line 2610
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_d

    return p1

    :cond_d
    return p2
.end method

.method public static synthetic blacklist $r8$lambda$YYULgCK7v1Ue8N6Zo2f8i9mlv3Y([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;II)I
    .registers 7

    .line 2602
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_d

    return p1

    :cond_d
    return p2
.end method

.method public static synthetic blacklist $r8$lambda$_ME4zZZlAvNaU3eYCz_QMaWHul0(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1106
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_QJP0IsaxGzABYiOoFGvXoOzl_8([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;II)I
    .registers 7

    .line 2626
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_d

    return p1

    :cond_d
    return p2
.end method

.method public static synthetic blacklist $r8$lambda$jIVIyR5_QDCyu1vz6MGFBTezZuU([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)Z
    .registers 2

    .line 2634
    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msaveAtomsToFileNow(Lcom/android/internal/telephony/metrics/PersistAtomsStorage;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFileNow()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 199
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 6

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 182
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierRoamingSatelliteSessionStats:I

    .line 201
    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$1;-><init>(Lcom/android/internal/telephony/metrics/PersistAtomsStorage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    .line 210
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.ram.low"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0xf

    const/16 v1, 0xa

    if-eqz p1, :cond_5a

    .line 213
    sget-object p1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v2, "Low RAM device"

    invoke-static {p1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    const/4 p1, 0x5

    .line 215
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    const/16 v2, 0x8

    .line 216
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    .line 217
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 218
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 219
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 220
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 221
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 222
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 223
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 224
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 225
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    .line 226
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 227
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    .line 228
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 229
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 230
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 231
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 232
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 233
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 234
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 235
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxOutgoingShortCodeSms:I

    .line 236
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 237
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataNetworkValidation:I

    goto :goto_90

    :cond_5a
    const/16 p1, 0x32

    .line 239
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    const/16 v2, 0x19

    .line 240
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    const/16 v3, 0x28

    .line 241
    iput v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    .line 242
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 243
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 244
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 245
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 246
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 247
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 248
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 249
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 250
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    .line 251
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 252
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    .line 253
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 254
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 255
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 256
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 257
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 258
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 259
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 260
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxOutgoingShortCodeSms:I

    .line 261
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 262
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataNetworkValidation:I

    .line 265
    :goto_90
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->loadAtomsFromFile()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    .line 266
    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->fromProto([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    .line 273
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "PersistAtomsThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandlerThread:Landroid/os/HandlerThread;

    .line 274
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 275
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveImmediately:Z

    return-void
.end method

.method private static blacklist areSmsMergeable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .line 2577
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSmsHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSmsHashCode(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;
    .registers 7

    .line 2047
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_36

    aget-object v2, p0, v1

    .line 2048
    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    .line 2049
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    .line 2050
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    .line 2051
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return-object v2

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
    .registers 7

    .line 2448
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    .line 2449
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    if-ne v3, v4, :cond_11

    return-object v2

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 7

    .line 2029
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_32

    aget-object v2, p0, v1

    .line 2030
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    if-ne v3, v4, :cond_2f

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    if-ne v3, v4, :cond_2f

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isOpportunistic:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isOpportunistic:Z

    if-ne v3, v4, :cond_2f

    return-object v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 7

    .line 2000
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_74

    aget-object v2, p0, v1

    .line 2001
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    if-ne v3, v4, :cond_71

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    if-ne v3, v4, :cond_71

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    if-ne v3, v4, :cond_71

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    if-ne v3, v4, :cond_71

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    if-ne v3, v4, :cond_71

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    if-ne v3, v4, :cond_71

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    if-ne v3, v4, :cond_71

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isOpportunistic:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isOpportunistic:Z

    if-ne v3, v4, :cond_71

    return-object v2

    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_74
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .registers 7

    .line 2414
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 2415
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    if-ne v3, v4, :cond_29

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 7

    .line 2298
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 2299
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    if-ne v3, v4, :cond_23

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    if-ne v3, v4, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .registers 7

    .line 2142
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_3e

    aget-object v2, p0, v1

    .line 2143
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    if-ne v3, v4, :cond_3b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    if-ne v3, v4, :cond_3b

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    if-ne v3, v4, :cond_3b

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    if-ne v3, v4, :cond_3b

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    if-ne v3, v4, :cond_3b

    return-object v2

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .registers 7

    .line 2124
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 2125
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    if-ne v3, v4, :cond_29

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;
    .registers 7

    .line 2163
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 2164
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    if-ne v3, v4, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 7

    .line 2247
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2e

    aget-object v2, p0, v1

    .line 2248
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-ne v3, v4, :cond_2b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    if-ne v3, v4, :cond_2b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    if-ne v3, v4, :cond_2b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    if-ne v3, v4, :cond_2b

    return-object v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 7

    .line 2063
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 2064
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    if-ne v3, v4, :cond_23

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    if-ne v3, v4, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .registers 7

    .line 2079
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_42

    aget-object v2, p0, v1

    .line 2080
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    if-ne v3, v4, :cond_3f

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    if-ne v3, v4, :cond_3f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    if-ne v3, v4, :cond_3f

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isIwlanCrossSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isIwlanCrossSim:Z

    if-ne v3, v4, :cond_3f

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    if-ne v3, v4, :cond_3f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    if-ne v3, v4, :cond_3f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    if-ne v3, v4, :cond_3f

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    .line 2087
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    return-object v2

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_42
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 7

    .line 2099
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 2100
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    if-ne v3, v4, :cond_17

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    if-ne v3, v4, :cond_17

    return-object v2

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
    .registers 7

    .line 2342
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 2343
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    if-ne v3, v4, :cond_17

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    if-ne v3, v4, :cond_17

    return-object v2

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .registers 7

    .line 2282
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 2283
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    if-ne v3, v4, :cond_23

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    if-ne v3, v4, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .registers 7

    .line 2194
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 2195
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    if-ne v3, v4, :cond_29

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .registers 7

    .line 2179
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 2180
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    if-ne v3, v4, :cond_1d

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    if-ne v3, v4, :cond_1d

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    if-ne v3, v4, :cond_1d

    return-object v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
    .registers 7

    .line 2476
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 2477
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    if-ne v3, v4, :cond_1d

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    if-ne v3, v4, :cond_1d

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    if-ne v3, v4, :cond_1d

    return-object v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
    .registers 7

    .line 2431
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 2432
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    if-ne v3, v4, :cond_1d

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    if-ne v3, v4, :cond_1d

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    if-ne v3, v4, :cond_1d

    return-object v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .registers 7

    .line 2460
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 2461
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    if-ne v3, v4, :cond_23

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    if-ne v3, v4, :cond_23

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    if-ne v3, v4, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
    .registers 9

    .line 2357
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_7e

    aget-object v2, p0, v1

    .line 2358
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    if-ne v3, v4, :cond_7b

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    iget-wide v5, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7b

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    iget-wide v5, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    if-ne v3, v4, :cond_7b

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    if-ne v3, v4, :cond_7b

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    if-ne v3, v4, :cond_7b

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    if-ne v3, v4, :cond_7b

    return-object v2

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7e
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .registers 7

    .line 2392
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_44

    aget-object v2, p0, v1

    .line 2393
    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    if-ne v3, v4, :cond_41

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    if-ne v3, v4, :cond_41

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    if-ne v3, v4, :cond_41

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    if-ne v3, v4, :cond_41

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    if-ne v3, v4, :cond_41

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    if-ne v3, v4, :cond_41

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    if-ne v3, v4, :cond_41

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    if-ne v3, v4, :cond_41

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    if-ne v3, v4, :cond_41

    return-object v2

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_44
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .registers 7

    .line 2211
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_32

    aget-object v2, p0, v1

    .line 2212
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    if-ne v3, v4, :cond_2f

    return-object v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;
    .registers 7

    .line 2315
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 2316
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .registers 7

    .line 2229
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 2230
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    if-ne v3, v4, :cond_29

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    if-ne v3, v4, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .registers 7

    .line 2264
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_32

    aget-object v2, p0, v1

    .line 2265
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    if-ne v3, v4, :cond_2f

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    if-ne v3, v4, :cond_2f

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    if-ne v3, v4, :cond_2f

    return-object v2

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist findIndex(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)I
    .registers 5

    const/4 v0, 0x0

    .line 2112
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 2113
    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    if-ne v1, v2, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist findItemToEvict([Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .line 2598
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2600
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 2601
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda5;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V

    .line 2602
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 2603
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 2606
    :cond_1a
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-eqz v0, :cond_33

    .line 2608
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 2609
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda6;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    .line 2610
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 2611
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 2614
    :cond_33
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-eqz v0, :cond_4c

    .line 2616
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 2617
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda7;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V

    .line 2618
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 2619
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 2622
    :cond_4c
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    if-eqz v0, :cond_65

    .line 2624
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 2625
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda8;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V

    .line 2626
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 2627
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 2630
    :cond_65
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-eqz v0, :cond_8b

    .line 2632
    move-object v0, p0

    check-cast v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 2633
    array-length v2, v0

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda9;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    .line 2634
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 2635
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 2636
    array-length v1, v0

    if-lez v1, :cond_8b

    .line 2637
    sget-object p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    aget p0, v0, p0

    return p0

    .line 2643
    :cond_8b
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    return p0
.end method

.method private blacklist findUnmeteredNetworks(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .registers 6

    .line 2329
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    .line 2330
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    if-ne v3, p1, :cond_f

    return-object v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getSmsCount(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .line 2571
    instance-of v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-eqz v0, :cond_9

    .line 2572
    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    return p0

    :cond_9
    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    return p0
.end method

.method private static blacklist getSmsHashCode(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .line 2566
    instance-of v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-eqz v0, :cond_9

    .line 2567
    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    return p0

    :cond_9
    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    return p0
.end method

.method private static blacklist insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;I)[TT;"
        }
    .end annotation

    .line 2492
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, p2, :cond_9

    move v4, v3

    goto :goto_a

    :cond_9
    move v4, v2

    :goto_a
    if-eqz v4, :cond_d

    goto :goto_e

    :cond_d
    move p2, v1

    .line 2494
    :goto_e
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    if-ne v1, v3, :cond_17

    .line 2496
    aput-object p1, p2, v2

    return-object p2

    :cond_17
    if-eqz v4, :cond_2d

    .line 2498
    instance-of v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-nez v0, :cond_29

    instance-of v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-eqz v0, :cond_22

    goto :goto_29

    .line 2501
    :cond_22
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findItemToEvict([Ljava/lang/Object;)I

    move-result p0

    aput-object p1, p2, p0

    return-object p2

    .line 2499
    :cond_29
    :goto_29
    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mergeSmsOrEvictInFullStorage([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 2505
    :cond_2d
    sget-object p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    .line 2506
    aget-object v1, p2, p0

    aput-object v1, p2, v0

    .line 2507
    aput-object p1, p2, p0

    return-object p2
.end method

.method private blacklist loadAtomsFromFile()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 5

    .line 1731
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mContext:Landroid/content/Context;

    const-string v1, "persist_atoms.pb"

    .line 1733
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 1732
    invoke-static {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object v0

    .line 1736
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1737
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v1, "Build changed"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p0

    return-object p0

    :catch_2a
    move-exception v0

    goto/16 :goto_35c

    .line 1741
    :cond_2d
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 1742
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 1743
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    .line 1744
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 1748
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 1749
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 1750
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    .line 1751
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    .line 1755
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 1756
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    .line 1760
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 1761
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 1765
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 1766
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 1770
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 1771
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 1775
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 1776
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 1780
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 1781
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 1782
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 1783
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 1787
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 1788
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    .line 1792
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 1793
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1797
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    .line 1798
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 1802
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 1803
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    .line 1807
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    .line 1808
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    .line 1812
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 1813
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    .line 1817
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 1818
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 1822
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 1823
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    .line 1827
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 1828
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1832
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 1833
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    .line 1837
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 1838
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    .line 1842
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 1843
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    .line 1847
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    .line 1848
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    .line 1852
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxOutgoingShortCodeSms:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    .line 1854
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    .line 1856
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    .line 1858
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    .line 1860
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    .line 1862
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    .line 1864
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    .line 1867
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataNetworkValidation:I

    .line 1868
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    .line 1873
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    .line 1876
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    .line 1879
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    .line 1881
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    .line 1883
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    .line 1888
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 1889
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 1890
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 1891
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 1892
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 1893
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 1894
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 1895
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 1896
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 1897
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 1898
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 1899
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 1900
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 1901
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 1902
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 1903
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 1904
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 1905
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 1906
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 1907
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 1908
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 1909
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 1910
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 1911
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 1912
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 1913
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 1914
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 1915
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 1916
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 1917
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 1918
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 1919
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 1920
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 1921
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 1922
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 1923
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 1924
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 1925
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 1926
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 1927
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 1928
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1929
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1930
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1931
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1932
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 1933
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 1934
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    .line 1935
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    .line 1936
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    .line 1937
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    .line 1938
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    .line 1939
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    .line 1940
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    .line 1941
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    .line 1942
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    .line 1943
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    .line 1944
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    .line 1945
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    .line 1946
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    .line 1947
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    .line 1948
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    .line 1949
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    .line 1950
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    .line 1952
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    .line 1954
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    .line 1955
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    .line 1956
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    .line 1957
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    .line 1958
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J

    .line 1959
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J
    :try_end_35b
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_35b} :catch_364
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_35b} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_35b} :catch_2a

    return-object v0

    .line 1964
    :goto_35c
    sget-object v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v2, "cannot load/parse PersistAtoms"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36b

    .line 1962
    :catch_364
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v1, "PersistAtoms file not found"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :goto_36b
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p0

    return-object p0
.end method

.method private blacklist makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 4

    .line 2706
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;-><init>()V

    .line 2708
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    .line 2709
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    .line 2710
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 2711
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 2712
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 2713
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    const/4 p0, -0x1

    .line 2714
    iput p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    .line 2715
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 2716
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 2717
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 2718
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 2719
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 2720
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsPullTimestampMillis:J

    .line 2721
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 2722
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 2723
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 2724
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 2725
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 2726
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 2727
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 2728
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 2729
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 2730
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 2731
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 2732
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 2733
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 2734
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 2735
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    .line 2736
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    .line 2737
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    .line 2738
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    .line 2739
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    .line 2740
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    .line 2741
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    .line 2742
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    .line 2743
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    .line 2744
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    .line 2745
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    .line 2746
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    .line 2747
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J

    .line 2749
    sget-object p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v1, "created new PersistAtoms"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static blacklist mergeSms(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 2582
    instance-of v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-eqz v0, :cond_20

    .line 2583
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 2584
    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 2585
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    int-to-long v4, v3

    mul-long/2addr v1, v4

    iget-wide v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    int-to-long v6, p1

    mul-long/2addr v4, v6

    add-long/2addr v1, v4

    add-int v4, v3, p1

    int-to-long v4, v4

    div-long/2addr v1, v4

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    add-int/2addr v3, p1

    .line 2587
    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    return-object p0

    .line 2588
    :cond_20
    instance-of v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-eqz v0, :cond_30

    .line 2589
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 2590
    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 2591
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    :cond_30
    return-object p0
.end method

.method private static blacklist mergeSmsOrEvictInFullStorage([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)V"
        }
    .end annotation

    .line 2521
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, -0x1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 2527
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_2b

    .line 2529
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->areSmsMergeable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2530
    aget-object v0, p0, v2

    invoke-static {v0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mergeSms(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v2

    return-void

    .line 2535
    :cond_1e
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSmsCount(Ljava/lang/Object;)I

    move-result v3

    if-ge v3, v1, :cond_28

    move v0, v2

    move v1, v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2561
    :cond_2b
    aput-object p1, p0, v0

    return-void
.end method

.method private blacklist normalizeData([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 8

    const/4 v0, 0x0

    .line 2671
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_75

    .line 2672
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 2673
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 2674
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 2675
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 2676
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 2677
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 2678
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 2679
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 2680
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 2681
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 2682
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 2683
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 2684
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 2685
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 2686
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 2687
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 2688
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 2689
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 2690
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    .line 2691
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    .line 2692
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    .line 2693
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_75
    return-object p1
.end method

.method private blacklist normalizeDurationTo24H(JJ)J
    .registers 9

    const-wide/16 v0, 0x3e8

    cmp-long p0, p3, v0

    if-gez p0, :cond_9

    const-wide/16 p3, 0x1

    goto :goto_a

    .line 2700
    :cond_9
    div-long/2addr p3, v0

    .line 2701
    :goto_a
    div-long/2addr p1, v0

    const-wide/32 v2, 0x15180

    mul-long/2addr p1, v2

    div-long/2addr p1, p3

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method private blacklist sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 2648
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 2653
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .line 2654
    array-length p1, p0

    if-le p1, p3, :cond_b

    .line 2655
    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :cond_b
    return-object p0
.end method

.method private blacklist sanitizeTimestamp(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b

    .line 2662
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p0

    return-wide p0

    :cond_b
    return-wide p1
.end method

.method private declared-synchronized blacklist saveAtomsToFile(I)V
    .registers 6

    monitor-enter p0

    .line 1976
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-lez p1, :cond_1d

    .line 1977
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveImmediately:Z

    if-nez v0, :cond_1d

    .line 1978
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    if-eqz p1, :cond_1d

    .line 1979
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    goto :goto_22

    .line 1983
    :cond_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFileNow()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1b

    .line 1984
    monitor-exit p0

    return-void

    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1b

    throw p1
.end method

.method private declared-synchronized blacklist saveAtomsToFileNow()V
    .registers 4

    monitor-enter p0

    .line 1988
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mContext:Landroid/content/Context;

    const-string v1, "persist_atoms.pb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_19
    .catchall {:try_start_1 .. :try_end_a} :catchall_17

    .line 1989
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_1b

    .line 1990
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_19
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_2e

    :catchall_17
    move-exception v0

    goto :goto_30

    :catch_19
    move-exception v0

    goto :goto_27

    :catchall_1b
    move-exception v1

    if-eqz v0, :cond_26

    .line 1988
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v0

    :try_start_23
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_19
    .catchall {:try_start_23 .. :try_end_27} :catchall_17

    .line 1991
    :goto_27
    :try_start_27
    sget-object v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v2, "cannot save PersistAtoms"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_17

    .line 1993
    :goto_2e
    monitor-exit p0

    return-void

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_17

    throw v0
.end method

.method private blacklist sortBaseOnArray([I[I)V
    .registers 7

    .line 1041
    array-length p0, p2

    array-length v0, p1

    if-eq p0, v0, :cond_5

    goto :goto_45

    .line 1042
    :cond_5
    array-length p0, p1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda3;-><init>([I)V

    .line 1043
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 1044
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1045
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    .line 1046
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 1047
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 1048
    :goto_33
    array-length v3, p0

    if-ge v0, v3, :cond_45

    .line 1049
    aget v3, p0, v0

    aget v3, v1, v3

    aput v3, p1, v0

    .line 1050
    aget v3, p0, v0

    aget v3, v2, v3

    aput v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_45
    :goto_45
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addCarrierIdMismatch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Z
    .registers 8

    monitor-enter p0

    .line 391
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_22

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 392
    monitor-exit p0

    return v1

    .line 396
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    array-length v3, v2

    iget v4, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_24

    sub-int/2addr v4, v5

    .line 397
    invoke-static {v2, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iget v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    sub-int/2addr v1, v5

    aput-object p1, v0, v1

    goto :goto_2e

    :catchall_22
    move-exception p1

    goto :goto_35

    .line 405
    :cond_24
    const-class v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    .line 406
    invoke-static {v1, v2, p1, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    :goto_2e
    const/16 p1, 0x7530

    .line 412
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_22

    .line 413
    monitor-exit p0

    return v5

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_22

    throw p1
.end method

.method public declared-synchronized blacklist addCarrierRoamingSatelliteControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)V
    .registers 5

    monitor-enter p0

    .line 886
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 888
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    .line 890
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    .line 892
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    .line 894
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    .line 895
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    .line 896
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    .line 899
    iget-boolean v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    .line 900
    iget-boolean v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    .line 901
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    .line 902
    iget-boolean p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    goto :goto_4c

    :catchall_3c
    move-exception p1

    goto :goto_53

    .line 904
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    :goto_4c
    const/16 p1, 0x7530

    .line 908
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_3c

    .line 909
    monitor-exit p0

    return-void

    :goto_53
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_3c

    throw p1
.end method

.method public declared-synchronized blacklist addCarrierRoamingSatelliteSessionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;)V
    .registers 5

    monitor-enter p0

    .line 877
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const/16 p1, 0x7530

    .line 880
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 881
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public declared-synchronized blacklist addCellularServiceStateAndCellularDataServiceSwitch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .registers 8

    monitor-enter p0

    .line 328
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 330
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    goto :goto_2b

    :catchall_15
    move-exception p1

    goto :goto_5c

    .line 333
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 335
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    :goto_2b
    if-eqz p2, :cond_55

    .line 340
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 342
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    iget p2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    goto :goto_55

    .line 345
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    .line 346
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iget v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 347
    invoke-static {v0, p2, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iput-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    :cond_55
    :goto_55
    const/16 p1, 0x7530

    .line 354
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_15

    .line 355
    monitor-exit p0

    return-void

    :goto_5c
    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_15

    throw p1
.end method

.method public declared-synchronized blacklist addCompleteSipTransportSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)V
    .registers 5

    monitor-enter p0

    .line 576
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 578
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    .line 579
    iget-boolean p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->isEndedGracefully:Z

    if-eqz p1, :cond_28

    .line 580
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    goto :goto_28

    :catchall_18
    move-exception p1

    goto :goto_2f

    .line 583
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 584
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    :cond_28
    :goto_28
    const/16 p1, 0x7530

    .line 587
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_18

    .line 588
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_18

    throw p1
.end method

.method public declared-synchronized blacklist addDataCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)V
    .registers 8

    monitor-enter p0

    .line 359
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findIndex(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)I

    move-result v0

    if-ltz v0, :cond_5a

    .line 361
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    aget-object v1, v1, v0

    .line 362
    iget-wide v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    iget-wide v4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    .line 363
    iget-wide v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    iget-wide v4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    .line 365
    iget-object v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    invoke-static {v2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 367
    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    .line 365
    invoke-static {v2, v3}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v2

    const-wide/16 v3, 0xf

    .line 368
    invoke-interface {v2, v3, v4}, Ljava/util/stream/IntStream;->limit(J)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 369
    iget-object v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    invoke-static {v2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 371
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 369
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 372
    invoke-interface {v1, v3, v4}, Ljava/util/stream/IntStream;->limit(J)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 374
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    aput-object p1, v1, v0

    goto :goto_68

    :catchall_58
    move-exception p1

    goto :goto_6f

    .line 376
    :cond_5a
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 377
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    :goto_68
    const/16 p1, 0x7530

    .line 380
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_58

    .line 381
    monitor-exit p0

    return-void

    :goto_6f
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_58

    throw p1
.end method

.method public declared-synchronized blacklist addDataNetworkValidation(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)V
    .registers 10

    monitor-enter p0

    .line 857
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 859
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    add-int v3, v1, v2

    .line 861
    iget-wide v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    int-to-long v6, v2

    mul-long/2addr v4, v6

    iget-wide v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    int-to-long v1, v1

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    int-to-long v1, v3

    div-long/2addr v4, v1

    .line 865
    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    .line 866
    iput-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    goto :goto_2d

    :catchall_1d
    move-exception p1

    goto :goto_34

    .line 868
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    :goto_2d
    const/16 p1, 0x7530

    .line 871
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_1d

    .line 872
    monitor-exit p0

    return-void

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_1d

    throw p1
.end method

.method public declared-synchronized blacklist addGbaEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)V
    .registers 5

    monitor-enter p0

    .line 661
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 663
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 665
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 666
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    :goto_1e
    const/16 p1, 0x7530

    .line 668
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 669
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addImsDedicatedBearerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)V
    .registers 5

    monitor-enter p0

    .line 606
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 608
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 610
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 611
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    :goto_1e
    const/16 p1, 0x7530

    .line 614
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 615
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addImsDedicatedBearerListenerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)V
    .registers 5

    monitor-enter p0

    .line 593
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 595
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 597
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 598
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    :goto_1e
    const/16 p1, 0x7530

    .line 601
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 602
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V
    .registers 7

    monitor-enter p0

    .line 502
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 504
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    goto :goto_1f

    :catchall_f
    move-exception p1

    goto :goto_26

    .line 506
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 507
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    :goto_1f
    const/16 p1, 0x7530

    .line 510
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_f

    .line 511
    monitor-exit p0

    return-void

    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V
    .registers 7

    monitor-enter p0

    .line 620
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 622
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_1f

    :catchall_f
    move-exception p1

    goto :goto_26

    .line 624
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 625
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    :goto_1f
    const/16 p1, 0x7530

    .line 628
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_f

    .line 629
    monitor-exit p0

    return-void

    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V
    .registers 7

    monitor-enter p0

    .line 418
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 420
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 421
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 422
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 423
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 424
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 425
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 426
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 427
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 428
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 429
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    .line 430
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    .line 431
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    goto :goto_78

    :catchall_62
    move-exception p1

    goto :goto_7f

    .line 434
    :cond_64
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 436
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    :goto_78
    const/16 p1, 0x7530

    .line 439
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_62

    .line 440
    monitor-exit p0

    return-void

    :goto_7f
    :try_start_7f
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_62

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationTermination(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V
    .registers 5

    monitor-enter p0

    .line 444
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 446
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    goto :goto_2b

    :catchall_15
    move-exception p1

    goto :goto_32

    .line 449
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 451
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    :goto_2b
    const/16 p1, 0x7530

    .line 456
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_15

    .line 457
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_15

    throw p1
.end method

.method public declared-synchronized blacklist addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V
    .registers 5

    monitor-enter p0

    .line 298
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsHashCode(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)I

    move-result v0

    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const/16 v0, 0x7530

    .line 300
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V

    .line 303
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add new incoming SMS atom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 304
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public declared-synchronized blacklist addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V
    .registers 6

    monitor-enter p0

    .line 484
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 486
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    goto :goto_31

    :catchall_f
    move-exception p1

    goto :goto_38

    .line 488
    :cond_11
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    .line 489
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 490
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    .line 491
    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    .line 492
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const-class v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iget-object v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const/4 v3, 0x1

    .line 493
    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    :goto_31
    const/16 p1, 0x7530

    .line 496
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_f

    .line 497
    monitor-exit p0

    return-void

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist addOutgoingShortCodeSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)V
    .registers 5

    monitor-enter p0

    .line 708
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 710
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 712
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxOutgoingShortCodeSms:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    :goto_1e
    const/16 p1, 0x7530

    .line 715
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 716
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addOutgoingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)V
    .registers 10

    monitor-enter p0

    .line 308
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsHashCode(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)I

    move-result v0

    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 313
    iget-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    iget-wide v6, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_26

    iget v3, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    if-lt v3, v4, :cond_26

    add-int/lit8 v3, v3, 0x1

    .line 314
    iput v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_58

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 318
    :cond_29
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const/16 v0, 0x7530

    .line 319
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V

    .line 322
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add new outgoing SMS atom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_24

    .line 323
    monitor-exit p0

    return-void

    :goto_58
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist addPresenceNotifyEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)V
    .registers 5

    monitor-enter p0

    .line 645
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 647
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    .line 648
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    .line 649
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    .line 650
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    goto :goto_34

    :catchall_24
    move-exception p1

    goto :goto_3b

    .line 652
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 653
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    :goto_34
    const/16 p1, 0x7530

    .line 656
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_24

    .line 657
    monitor-exit p0

    return-void

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist addRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V
    .registers 7

    monitor-enter p0

    .line 528
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 530
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 531
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    goto :goto_27

    :catchall_15
    move-exception p1

    goto :goto_2e

    .line 534
    :cond_17
    iput v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 536
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    :goto_27
    const/16 p1, 0x7530

    .line 539
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_15

    .line 540
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_15

    throw p1
.end method

.method public declared-synchronized blacklist addRcsClientProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)V
    .registers 5

    monitor-enter p0

    .line 515
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 517
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 519
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 520
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    :goto_1e
    const/16 p1, 0x7530

    .line 523
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 524
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteAccessControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;)V
    .registers 5

    monitor-enter p0

    .line 937
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 938
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    const/16 p1, 0x7530

    .line 940
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 941
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteConfigUpdaterStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)V
    .registers 5

    monitor-enter p0

    .line 925
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 927
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 929
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    :goto_1e
    const/16 p1, 0x7530

    .line 932
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 933
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)V
    .registers 5

    monitor-enter p0

    .line 721
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    move-result-object v0

    if-eqz v0, :cond_11f

    .line 723
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    .line 725
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    .line 727
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    .line 729
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    .line 731
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    .line 733
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    .line 735
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    .line 737
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    .line 739
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    .line 741
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    .line 743
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    .line 745
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    .line 747
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    .line 749
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    .line 751
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    .line 753
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    .line 755
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    .line 757
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    .line 759
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    .line 761
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    .line 763
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    .line 765
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    .line 767
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    .line 769
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    .line 771
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    .line 773
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    .line 774
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    .line 776
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    .line 778
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    .line 780
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    .line 782
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    .line 783
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    .line 785
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    .line 788
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    .line 789
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    .line 791
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    .line 793
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    .line 795
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    .line 797
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    .line 799
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    goto :goto_12d

    :catchall_11d
    move-exception p1

    goto :goto_134

    .line 802
    :cond_11f
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    :goto_12d
    const/16 p1, 0x7530

    .line 805
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_132
    .catchall {:try_start_1 .. :try_end_132} :catchall_11d

    .line 806
    monitor-exit p0

    return-void

    :goto_134
    :try_start_134
    monitor-exit p0
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_11d

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteEntitlementStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)V
    .registers 5

    monitor-enter p0

    .line 913
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 915
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 917
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    :goto_1e
    const/16 p1, 0x7530

    .line 920
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 921
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteIncomingDatagramStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;)V
    .registers 5

    monitor-enter p0

    .line 822
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 823
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    const/16 p1, 0x7530

    .line 824
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 825
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteOutgoingDatagramStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;)V
    .registers 5

    monitor-enter p0

    .line 829
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 830
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    const/16 p1, 0x7530

    .line 831
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 832
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteProvisionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;)V
    .registers 5

    monitor-enter p0

    .line 836
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 837
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    const/16 p1, 0x7530

    .line 838
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 839
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteSessionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)V
    .registers 5

    monitor-enter p0

    .line 810
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 812
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 814
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 815
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    :goto_1e
    const/16 p1, 0x7530

    .line 817
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 818
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteSosMessageRecommenderStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)V
    .registers 5

    monitor-enter p0

    .line 844
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 846
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 848
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 849
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    :goto_1e
    const/16 p1, 0x7530

    .line 852
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 853
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addSipDelegateStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)V
    .registers 5

    monitor-enter p0

    .line 544
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const/16 p1, 0x7530

    .line 546
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 547
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist addSipMessageResponse(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)V
    .registers 5

    monitor-enter p0

    .line 564
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 566
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 568
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    :goto_1e
    const/16 p1, 0x7530

    .line 571
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 572
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addSipTransportFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)V
    .registers 7

    monitor-enter p0

    .line 551
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 553
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    goto :goto_1f

    :catchall_f
    move-exception p1

    goto :goto_26

    .line 555
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 556
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    :goto_1f
    const/16 p1, 0x7530

    .line 559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_f

    .line 560
    monitor-exit p0

    return-void

    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist addUceEventStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)V
    .registers 5

    monitor-enter p0

    .line 633
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 635
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    goto :goto_1e

    :catchall_e
    move-exception p1

    goto :goto_25

    .line 637
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 638
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    :goto_1e
    const/16 p1, 0x7530

    .line 640
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e

    .line 641
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_e

    throw p1
.end method

.method public declared-synchronized blacklist addUnmeteredNetworks(IIJ)V
    .registers 8

    monitor-enter p0

    .line 678
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findUnmeteredNetworks(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    move-result-object v0

    if-nez v0, :cond_24

    .line 681
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;-><init>()V

    .line 682
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    .line 683
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    .line 684
    iput-wide p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    .line 685
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const-class p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iget-object p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    const/4 p4, 0x1

    .line 686
    invoke-static {p2, p3, v0, p4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iput-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    goto :goto_39

    :catchall_22
    move-exception p1

    goto :goto_40

    .line 690
    :cond_24
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    if-eq p1, p2, :cond_2e

    .line 691
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    const-wide/16 p1, 0x0

    .line 692
    iput-wide p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    .line 694
    :cond_2e
    iget-wide p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    or-long v1, p1, p3

    cmp-long v1, v1, p1

    if-eqz v1, :cond_3e

    or-long/2addr p1, p3

    .line 695
    iput-wide p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    :goto_39
    const/16 p1, 0x7530

    .line 702
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_22

    .line 704
    :cond_3e
    monitor-exit p0

    return-void

    :goto_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_22

    throw p1
.end method

.method public declared-synchronized blacklist addVoiceCallRatUsage(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)V
    .registers 3

    monitor-enter p0

    .line 291
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mergeWith(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    .line 292
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->toProto()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const/16 p1, 0x7530

    .line 293
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 294
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public declared-synchronized blacklist addVoiceCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V
    .registers 5

    monitor-enter p0

    .line 282
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    .line 283
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/16 v0, 0x7530

    .line 284
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V

    .line 286
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add new voice call session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 287
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public declared-synchronized blacklist clearAtoms()V
    .registers 2

    monitor-enter p0

    .line 1724
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    .line 1725
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1726
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized blacklist flushAtoms()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1719
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1720
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized blacklist getAutoDataSwitchToggleCount()I
    .registers 4

    monitor-enter p0

    .line 1155
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->autoDataSwitchToggleCount:I

    if-lez v1, :cond_12

    const/4 v2, 0x0

    .line 1157
    iput v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->autoDataSwitchToggleCount:I

    const/16 v0, 0x1f4

    .line 1158
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_14

    .line 1160
    :cond_12
    :goto_12
    monitor-exit p0

    return v1

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_10

    throw v0
.end method

.method public declared-synchronized blacklist getCarrierRoamingSatelliteControllerStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
    .registers 8

    monitor-enter p0

    .line 1645
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_2d

    .line 1647
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    .line 1648
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    const/4 v0, 0x0

    .line 1650
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    .line 1652
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->resetCarrierRoamingSatelliteControllerStats()V

    const/16 p1, 0x1f4

    .line 1653
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 1654
    monitor-exit p0

    return-object p2

    :catchall_2b
    move-exception p1

    goto :goto_30

    .line 1656
    :cond_2d
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2b

    throw p1
.end method

.method public declared-synchronized blacklist getCarrierRoamingSatelliteSessionStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .registers 8

    monitor-enter p0

    .line 1626
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1628
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    .line 1629
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const/4 v0, 0x0

    .line 1630
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const/16 p1, 0x1f4

    .line 1631
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1632
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1634
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getCellularDataServiceSwitches(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .registers 8

    monitor-enter p0

    .line 1081
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_34

    .line 1083
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 1084
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 1085
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda4;-><init>()V

    .line 1086
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1087
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    const/16 p2, 0x1f4

    .line 1088
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 1089
    monitor-exit p0

    return-object p1

    :catchall_32
    move-exception p1

    goto :goto_37

    .line 1091
    :cond_34
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_32

    throw p1
.end method

.method public declared-synchronized blacklist getCellularServiceStates(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .registers 8

    monitor-enter p0

    .line 1061
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_34

    .line 1063
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 1064
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 1065
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1066
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    const/16 p2, 0x1f4

    .line 1067
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 1068
    monitor-exit p0

    return-object p1

    :catchall_32
    move-exception p1

    goto :goto_37

    .line 1070
    :cond_34
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_32

    throw p1
.end method

.method public declared-synchronized blacklist getDataCallSessions(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .registers 8

    monitor-enter p0

    .line 1018
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_35

    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 1020
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const/4 v0, 0x0

    .line 1021
    new-array v1, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iput-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const/16 p1, 0x1f4

    .line 1022
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V

    .line 1023
    array-length p1, p2

    :goto_23
    if-ge v0, p1, :cond_33

    aget-object v1, p2, v0

    .line 1025
    iget-object v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sortBaseOnArray([I[I)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_31

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :catchall_31
    move-exception p1

    goto :goto_38

    .line 1028
    :cond_33
    monitor-exit p0

    return-object p2

    .line 1030
    :cond_35
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_38
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_31

    throw p1
.end method

.method public declared-synchronized blacklist getDataNetworkValidation(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .registers 8

    monitor-enter p0

    .line 1607
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    .line 1608
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    sub-long v3, v0, v3

    cmp-long p1, v3, p1

    if-lez p1, :cond_21

    .line 1609
    iput-wide v0, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    .line 1610
    iget-object p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    const/4 p2, 0x0

    .line 1611
    new-array p2, p2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iput-object p2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    const/16 p2, 0x1f4

    .line 1612
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1613
    monitor-exit p0

    return-object p1

    :catchall_1f
    move-exception p1

    goto :goto_24

    .line 1615
    :cond_21
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1f

    throw p1
.end method

.method public declared-synchronized blacklist getGbaEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .registers 8

    monitor-enter p0

    .line 1437
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1438
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 1439
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    const/4 v0, 0x0

    .line 1440
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    const/16 p1, 0x1f4

    .line 1441
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1442
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1444
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getImsDedicatedBearerEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .registers 8

    monitor-enter p0

    .line 1353
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1355
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 1356
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    const/4 v0, 0x0

    .line 1358
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    const/16 p1, 0x1f4

    .line 1359
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1360
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1362
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getImsDedicatedBearerListenerEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .registers 8

    monitor-enter p0

    .line 1333
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1335
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 1336
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    const/4 v0, 0x0

    .line 1338
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    const/16 p1, 0x1f4

    .line 1339
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1340
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1342
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationFeatureTagStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;
    .registers 8

    monitor-enter p0

    .line 1171
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1173
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 1174
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    const/4 v0, 0x0

    .line 1176
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    const/16 p1, 0x1f4

    .line 1177
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1178
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1180
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationServiceDescStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 10

    monitor-enter p0

    .line 1374
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_41

    .line 1376
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 1377
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1380
    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, p2, :cond_34

    aget-object v4, p1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v0, v5

    if-lez v5, :cond_31

    .line 1383
    iget-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_31

    :catchall_2f
    move-exception p1

    goto :goto_44

    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1388
    :cond_34
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    new-array v0, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    const/16 p2, 0x1f4

    .line 1389
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_2f

    .line 1390
    monitor-exit p0

    return-object p1

    .line 1392
    :cond_41
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_2f

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .registers 8

    monitor-enter p0

    .line 1102
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_38

    .line 1104
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 1105
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 1106
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1107
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput-object v2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    const/16 p2, 0x1f4

    .line 1108
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V

    .line 1109
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeData([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-object p1

    :catchall_36
    move-exception p1

    goto :goto_3b

    .line 1111
    :cond_38
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_36

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationTerminations(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .registers 8

    monitor-enter p0

    .line 1122
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_34

    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 1125
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 1126
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda2;-><init>()V

    .line 1127
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1128
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    const/16 p2, 0x1f4

    .line 1129
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 1130
    monitor-exit p0

    return-object p1

    :catchall_32
    move-exception p1

    goto :goto_37

    .line 1132
    :cond_34
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_32

    throw p1
.end method

.method public declared-synchronized blacklist getIncomingSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .registers 8

    monitor-enter p0

    .line 984
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 985
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 986
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const/4 v0, 0x0

    .line 987
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const/16 p1, 0x1f4

    .line 988
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 989
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 991
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getNetworkRequestsV2(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .registers 8

    monitor-enter p0

    .line 1142
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1143
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 1144
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const/4 v0, 0x0

    .line 1145
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const/16 p1, 0x1f4

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1147
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1149
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getOutgoingShortCodeSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
    .registers 8

    monitor-enter p0

    .line 1478
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1480
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    .line 1481
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    const/4 v0, 0x0

    .line 1482
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    const/16 p1, 0x1f4

    .line 1483
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1484
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1486
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getOutgoingSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .registers 8

    monitor-enter p0

    .line 1001
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1002
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 1003
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const/4 v0, 0x0

    .line 1004
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const/16 p1, 0x1f4

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1006
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1008
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getPresenceNotifyEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .registers 8

    monitor-enter p0

    .line 1419
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1421
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1422
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    const/4 v0, 0x0

    .line 1423
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    const/16 p1, 0x1f4

    .line 1424
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1425
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1427
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getRcsAcsProvisioningStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .registers 10

    monitor-enter p0

    .line 1211
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_41

    .line 1213
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 1214
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1216
    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, p2, :cond_34

    aget-object v4, p1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v0, v5

    if-lez v5, :cond_31

    .line 1219
    iget-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    goto :goto_31

    :catchall_2f
    move-exception p1

    goto :goto_44

    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1224
    :cond_34
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    new-array v0, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    const/16 p2, 0x1f4

    .line 1225
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_2f

    .line 1226
    monitor-exit p0

    return-object p1

    .line 1228
    :cond_41
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_2f

    throw p1
.end method

.method public declared-synchronized blacklist getRcsClientProvisioningStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .registers 8

    monitor-enter p0

    .line 1191
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 1194
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    const/4 v0, 0x0

    .line 1195
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    const/16 p1, 0x1f4

    .line 1196
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1197
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1199
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteAccessControllerStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .registers 8

    monitor-enter p0

    .line 1705
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1707
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J

    .line 1708
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    const/4 v0, 0x0

    .line 1709
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    const/16 p1, 0x1f4

    .line 1710
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1711
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1713
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteConfigUpdaterStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
    .registers 8

    monitor-enter p0

    .line 1686
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1688
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    .line 1689
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    const/4 v0, 0x0

    .line 1690
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    const/16 p1, 0x1f4

    .line 1691
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1692
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1694
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteControllerStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
    .registers 8

    monitor-enter p0

    .line 1496
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1498
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    .line 1499
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    const/4 v0, 0x0

    .line 1500
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    const/16 p1, 0x1f4

    .line 1501
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1502
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1504
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteEntitlementStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .registers 8

    monitor-enter p0

    .line 1667
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1669
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    .line 1670
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    const/4 v0, 0x0

    .line 1671
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    const/16 p1, 0x1f4

    .line 1672
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1673
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1675
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteIncomingDatagramStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .registers 8

    monitor-enter p0

    .line 1533
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1535
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    .line 1536
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    const/4 v0, 0x0

    .line 1537
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    const/16 p1, 0x1f4

    .line 1538
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1539
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1541
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteOutgoingDatagramStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .registers 8

    monitor-enter p0

    .line 1552
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1554
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    .line 1555
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    const/4 v0, 0x0

    .line 1556
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    const/16 p1, 0x1f4

    .line 1557
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1558
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1560
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteProvisionStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;
    .registers 8

    monitor-enter p0

    .line 1570
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1572
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    .line 1573
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    const/4 v0, 0x0

    .line 1574
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    const/16 p1, 0x1f4

    .line 1575
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1576
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1578
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteSessionStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
    .registers 8

    monitor-enter p0

    .line 1514
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1516
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    .line 1517
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    const/4 v0, 0x0

    .line 1518
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    const/16 p1, 0x1f4

    .line 1519
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1520
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1522
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteSosMessageRecommenderStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .registers 8

    monitor-enter p0

    .line 1589
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1591
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    .line 1592
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    const/4 v0, 0x0

    .line 1593
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    const/16 p1, 0x1f4

    .line 1594
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1595
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1597
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSipDelegateStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 10

    monitor-enter p0

    .line 1238
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_41

    .line 1240
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 1241
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 1243
    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, p2, :cond_34

    aget-object v4, p1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v0, v5

    if-lez v5, :cond_31

    .line 1246
    iget-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    goto :goto_31

    :catchall_2f
    move-exception p1

    goto :goto_44

    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1251
    :cond_34
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    new-array v0, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const/16 p2, 0x1f4

    .line 1252
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_2f

    .line 1253
    monitor-exit p0

    return-object p1

    .line 1255
    :cond_41
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_2f

    throw p1
.end method

.method public declared-synchronized blacklist getSipMessageResponse(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .registers 8

    monitor-enter p0

    .line 1294
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1296
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 1297
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    const/4 v0, 0x0

    .line 1299
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    const/16 p1, 0x1f4

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1301
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1303
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getSipTransportFeatureTagStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;
    .registers 10

    monitor-enter p0

    .line 1267
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_41

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 1270
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    .line 1272
    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, p2, :cond_34

    aget-object v4, p1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v0, v5

    if-lez v5, :cond_31

    .line 1275
    iget-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    goto :goto_31

    :catchall_2f
    move-exception p1

    goto :goto_44

    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1280
    :cond_34
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    new-array v0, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    const/16 p2, 0x1f4

    .line 1281
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_2f

    .line 1282
    monitor-exit p0

    return-object p1

    .line 1284
    :cond_41
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_2f

    throw p1
.end method

.method public declared-synchronized blacklist getSipTransportSession(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .registers 8

    monitor-enter p0

    .line 1313
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1315
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 1316
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    const/4 v0, 0x0

    .line 1318
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    const/16 p1, 0x1f4

    .line 1319
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1320
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1322
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getUceEventStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .registers 8

    monitor-enter p0

    .line 1402
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 1403
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1404
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    const/4 v0, 0x0

    .line 1405
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    const/16 p1, 0x1f4

    .line 1406
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 1407
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 1409
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist getUnmeteredNetworks(II)J
    .registers 7

    monitor-enter p0

    .line 1454
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findUnmeteredNetworks(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2f

    const-wide/16 v0, 0x0

    if-nez p1, :cond_b

    .line 1456
    monitor-exit p0

    return-wide v0

    .line 1460
    :cond_b
    :try_start_b
    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    if-eq v2, p2, :cond_10

    goto :goto_12

    :cond_10
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    .line 1461
    :goto_12
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iget-object v3, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    .line 1463
    invoke-static {v2, v3, p1}, Lcom/android/internal/util/ArrayUtils;->removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    .line 1462
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iput-object p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    const/16 p1, 0x1f4

    .line 1468
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_2f

    .line 1469
    monitor-exit p0

    return-wide v0

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public declared-synchronized blacklist getVoiceCallRatUsages(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .registers 8

    monitor-enter p0

    .line 966
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_2d

    .line 967
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 968
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 969
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->clear()V

    .line 970
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const/16 p2, 0x1f4

    .line 971
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 972
    monitor-exit p0

    return-object p1

    :catchall_2b
    move-exception p1

    goto :goto_30

    .line 974
    :cond_2d
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2b

    throw p1
.end method

.method public declared-synchronized blacklist getVoiceCallSessions(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .registers 8

    monitor-enter p0

    .line 949
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_26

    .line 950
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 951
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/4 v0, 0x0

    .line 952
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/16 p1, 0x1f4

    .line 953
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 954
    monitor-exit p0

    return-object p2

    :catchall_24
    move-exception p1

    goto :goto_29

    .line 956
    :cond_26
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_24

    throw p1
.end method

.method protected blacklist getWallTimeMillis()J
    .registers 3

    .line 2756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist recordToggledAutoDataSwitch()V
    .registers 3

    monitor-enter p0

    .line 478
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->autoDataSwitchToggleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->autoDataSwitchToggleCount:I

    const/16 v0, 0x7530

    .line 479
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 480
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized blacklist setCarrierIdTableVersion(I)Z
    .registers 4

    monitor-enter p0

    .line 465
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    if-ge v1, p1, :cond_13

    .line 466
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    const/16 p1, 0x7530

    .line 467
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    .line 468
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_11
    move-exception p1

    goto :goto_16

    .line 470
    :cond_13
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_11

    throw p1
.end method
