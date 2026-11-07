.class public final Landroid/os/connectivity/WifiActivityEnergyInfo;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/connectivity/WifiActivityEnergyInfo$StackState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/WifiActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFERRED_ENERGY_ESTIMATE:J = -0x1L

.field public static final whitelist STACK_STATE_INVALID:I = 0x0

.field public static final whitelist STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final whitelist STACK_STATE_STATE_IDLE:I = 0x3

.field public static final whitelist STACK_STATE_STATE_SCANNING:I = 0x2


# instance fields
.field private blacklist mControllerEnergyUsedMicroJoules:J

.field private final blacklist mControllerIdleDurationMillis:J

.field private final blacklist mControllerRxDurationMillis:J

.field private final blacklist mControllerScanDurationMillis:J

.field private final blacklist mControllerTxDurationMillis:J

.field private final blacklist mStackState:I

.field private final blacklist mTimeSinceBootMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Landroid/os/connectivity/WifiActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JIJJJJ)V
    .registers 26
    .param p1, "timeSinceBootMillis"    # J
    .param p3, "stackState"    # I
    .param p4, "txDurationMillis"    # J
    .param p6, "rxDurationMillis"    # J
    .param p8, "scanDurationMillis"    # J
    .param p10, "idleDurationMillis"    # J

    .line 98
    const-wide/16 v12, -0x1

    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    .line 105
    return-void
.end method

.method public constructor blacklist <init>(JIJJJJJ)V
    .registers 14
    .param p1, "timeSinceBootMillis"    # J
    .param p3, "stackState"    # I
    .param p4, "txDurationMillis"    # J
    .param p6, "rxDurationMillis"    # J
    .param p8, "scanDurationMillis"    # J
    .param p10, "idleDurationMillis"    # J
    .param p12, "energyUsedMicroJoules"    # J

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-wide p1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    .line 146
    iput p3, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    .line 147
    iput-wide p4, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    .line 148
    iput-wide p6, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    .line 149
    iput-wide p8, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    .line 150
    iput-wide p10, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    .line 151
    iput-wide p12, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    .line 152
    return-void
.end method

.method private static blacklist calculateEnergyMicroJoules(JJJ)J
    .registers 26
    .param p0, "txDurationMillis"    # J
    .param p2, "rxDurationMillis"    # J
    .param p4, "idleDurationMillis"    # J

    .line 110
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 111
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_d

    .line 112
    const-wide/16 v1, 0x0

    return-wide v1

    .line 115
    :cond_d
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, "powerProfile":Lcom/android/internal/os/PowerProfile;
    const-string/jumbo v2, "wifi.controller.idle"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    .line 118
    .local v2, "idleCurrent":D
    const-string/jumbo v4, "wifi.controller.rx"

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 120
    .local v4, "rxCurrent":D
    const-string/jumbo v6, "wifi.controller.tx"

    invoke-virtual {v1, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 122
    .local v6, "txCurrent":D
    const-string/jumbo v8, "wifi.controller.voltage"

    invoke-virtual {v1, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    .line 125
    .local v8, "voltage":D
    move-wide/from16 v10, p0

    long-to-double v12, v10

    mul-double/2addr v12, v6

    move-wide/from16 v14, p2

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "powerProfile":Lcom/android/internal/os/PowerProfile;
    .local v16, "context":Landroid/content/Context;
    .local v17, "powerProfile":Lcom/android/internal/os/PowerProfile;
    long-to-double v0, v14

    mul-double/2addr v0, v4

    add-double/2addr v12, v0

    move-wide/from16 v0, p4

    move-wide/from16 v18, v2

    .end local v2    # "idleCurrent":D
    .local v18, "idleCurrent":D
    long-to-double v2, v0

    mul-double v2, v2, v18

    add-double/2addr v12, v2

    mul-double/2addr v12, v8

    double-to-long v2, v12

    return-wide v2
.end method

.method private static blacklist calculateEnergyMicroJoules$ravenwood(JJJ)J
    .registers 8
    .param p0, "txDurationMillis"    # J
    .param p2, "rxDurationMillis"    # J
    .param p4, "idleDurationMillis"    # J

    .line 133
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getControllerEnergyUsedMicroJoules()J
    .registers 8

    .line 242
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 243
    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    iget-wide v3, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    iget-wide v5, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-static/range {v1 .. v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->calculateEnergyMicroJoules(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    .line 247
    :cond_14
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerEnergyUsedMicroJoules:J

    return-wide v0
.end method

.method public whitelist getControllerIdleDurationMillis()J
    .registers 3

    .line 236
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    return-wide v0
.end method

.method public whitelist getControllerRxDurationMillis()J
    .registers 3

    .line 224
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    return-wide v0
.end method

.method public whitelist getControllerScanDurationMillis()J
    .registers 3

    .line 230
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    return-wide v0
.end method

.method public whitelist getControllerTxDurationMillis()J
    .registers 3

    .line 218
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    return-wide v0
.end method

.method public whitelist getStackState()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    return v0
.end method

.method public whitelist getTimeSinceBootMillis()J
    .registers 3

    .line 202
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    return-wide v0
.end method

.method public blacklist isValid()Z
    .registers 5

    .line 255
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiActivityEnergyInfo{ mTimeSinceBootMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerTxDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerRxDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerScanDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerIdleDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerEnergyUsedMicroJoules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 186
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mStackState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerTxDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerRxDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 190
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerScanDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 191
    iget-wide v0, p0, Landroid/os/connectivity/WifiActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 192
    return-void
.end method
