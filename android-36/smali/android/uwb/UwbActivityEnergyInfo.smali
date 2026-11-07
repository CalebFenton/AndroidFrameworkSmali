.class public final Landroid/uwb/UwbActivityEnergyInfo;
.super Ljava/lang/Object;
.source "UwbActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/UwbActivityEnergyInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/UwbActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mControllerIdleDurationMillis:J

.field private final blacklist mControllerRxDurationMillis:J

.field private final blacklist mControllerTxDurationMillis:J

.field private final blacklist mControllerWakeCount:J

.field private final blacklist mStackState:I

.field private final blacklist mTimeSinceBootMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Landroid/uwb/UwbActivityEnergyInfo$1;

    invoke-direct {v0}, Landroid/uwb/UwbActivityEnergyInfo$1;-><init>()V

    sput-object v0, Landroid/uwb/UwbActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JIJJJJ)V
    .registers 12
    .param p1, "timeSinceBootMillis"    # J
    .param p3, "stackState"    # I
    .param p4, "txDurationMillis"    # J
    .param p6, "rxDurationMillis"    # J
    .param p8, "idleDurationMillis"    # J
    .param p10, "wakeCount"    # J

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Landroid/uwb/UwbActivityEnergyInfo;->mTimeSinceBootMillis:J

    .line 53
    iput p3, p0, Landroid/uwb/UwbActivityEnergyInfo;->mStackState:I

    .line 54
    iput-wide p4, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerTxDurationMillis:J

    .line 55
    iput-wide p6, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerRxDurationMillis:J

    .line 56
    iput-wide p8, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerIdleDurationMillis:J

    .line 57
    iput-wide p10, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerWakeCount:J

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(JIJJJJLandroid/uwb/UwbActivityEnergyInfo-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/uwb/UwbActivityEnergyInfo;-><init>(JIJJJJ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 65
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 66
    return v0

    .line 69
    :cond_4
    instance-of v1, p1, Landroid/uwb/UwbActivityEnergyInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 70
    move-object v1, p1

    check-cast v1, Landroid/uwb/UwbActivityEnergyInfo;

    .line 71
    .local v1, "other":Landroid/uwb/UwbActivityEnergyInfo;
    iget-wide v3, p0, Landroid/uwb/UwbActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-virtual {v1}, Landroid/uwb/UwbActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_47

    iget v3, p0, Landroid/uwb/UwbActivityEnergyInfo;->mStackState:I

    .line 72
    invoke-virtual {v1}, Landroid/uwb/UwbActivityEnergyInfo;->getStackState()I

    move-result v4

    if-ne v3, v4, :cond_47

    iget-wide v3, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerTxDurationMillis:J

    .line 73
    invoke-virtual {v1}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_47

    iget-wide v3, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerRxDurationMillis:J

    .line 74
    invoke-virtual {v1}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_47

    iget-wide v3, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerIdleDurationMillis:J

    .line 75
    invoke-virtual {v1}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_47

    iget-wide v3, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerWakeCount:J

    .line 76
    invoke-virtual {v1}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerWakeCount()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_47

    goto :goto_48

    :cond_47
    move v0, v2

    .line 71
    :goto_48
    return v0

    .line 78
    .end local v1    # "other":Landroid/uwb/UwbActivityEnergyInfo;
    :cond_49
    return v2
.end method

.method public whitelist getControllerIdleDurationMillis()J
    .registers 3

    .line 163
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerIdleDurationMillis:J

    return-wide v0
.end method

.method public whitelist getControllerRxDurationMillis()J
    .registers 3

    .line 157
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerRxDurationMillis:J

    return-wide v0
.end method

.method public whitelist getControllerTxDurationMillis()J
    .registers 3

    .line 151
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerTxDurationMillis:J

    return-wide v0
.end method

.method public whitelist getControllerWakeCount()J
    .registers 3

    .line 169
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerWakeCount:J

    return-wide v0
.end method

.method public whitelist getStackState()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mStackState:I

    return v0
.end method

.method public whitelist getTimeSinceBootMillis()J
    .registers 3

    .line 139
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mTimeSinceBootMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 86
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mStackState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerTxDurationMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerRxDurationMillis:J

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerWakeCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbActivityEnergyInfo{ mTimeSinceBootMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/UwbActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/UwbActivityEnergyInfo;->mStackState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerTxDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerTxDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerRxDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerRxDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerIdleDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mControllerWakeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerWakeCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mTimeSinceBootMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mStackState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerTxDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerRxDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerIdleDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-wide v0, p0, Landroid/uwb/UwbActivityEnergyInfo;->mControllerWakeCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    return-void
.end method
