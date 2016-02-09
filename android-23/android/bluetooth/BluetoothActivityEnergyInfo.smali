.class public final Landroid/bluetooth/BluetoothActivityEnergyInfo;
.super Ljava/lang/Object;
.source "BluetoothActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothActivityEnergyInfo$1;
    }
.end annotation


# static fields
.field public static final BT_STACK_STATE_INVALID:I = 0x0

.field public static final BT_STACK_STATE_STATE_ACTIVE:I = 0x1

.field public static final BT_STACK_STATE_STATE_IDLE:I = 0x3

.field public static final BT_STACK_STATE_STATE_SCANNING:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothActivityEnergyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBluetoothStackState:I

.field private final mControllerEnergyUsed:J

.field private final mControllerIdleTimeMs:J

.field private final mControllerRxTimeMs:J

.field private final mControllerTxTimeMs:J

.field private final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo$1;-><init>()V

    #@5
    .line 63
    sput-object v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(JIJJJJ)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "stackState"    # I
    .param p4, "txTime"    # J
    .param p6, "rxTime"    # J
    .param p8, "idleTime"    # J
    .param p10, "energyUsed"    # J

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-wide p1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    #@5
    .line 44
    iput p3, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    #@7
    .line 45
    iput-wide p4, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    #@9
    .line 46
    iput-wide p6, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    #@b
    .line 47
    iput-wide p8, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@d
    .line 48
    iput-wide p10, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    #@f
    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBluetoothStackState()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    #@2
    return v0
.end method

.method public getControllerEnergyUsed()J
    .locals 2

    #@0
    .prologue
    .line 126
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    #@2
    return-wide v0
.end method

.method public getControllerIdleTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 118
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@2
    return-wide v0
.end method

.method public getControllerRxTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 111
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    #@2
    return-wide v0
.end method

.method public getControllerTxTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 104
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    #@2
    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 133
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    #@2
    return-wide v0
.end method

.method public isValid()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 140
    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    #@5
    cmp-long v1, v2, v4

    #@7
    if-nez v1, :cond_0

    #@9
    .line 141
    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    #@b
    cmp-long v1, v2, v4

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 140
    :cond_0
    :goto_0
    return v0

    #@10
    .line 142
    :cond_1
    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@12
    cmp-long v1, v2, v4

    #@14
    if-nez v1, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BluetoothActivityEnergyInfo{ mTimestamp="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 54
    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    #@e
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 55
    const-string/jumbo v1, " mBluetoothStackState="

    #@15
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 55
    iget v1, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    #@1b
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 56
    const-string/jumbo v1, " mControllerTxTimeMs="

    #@22
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 56
    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    #@28
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 57
    const-string/jumbo v1, " mControllerRxTimeMs="

    #@2f
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 57
    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    #@35
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 58
    const-string/jumbo v1, " mControllerIdleTimeMs="

    #@3c
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 58
    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@42
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 59
    const-string/jumbo v1, " mControllerEnergyUsed="

    #@49
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 59
    iget-wide v2, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    #@4f
    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 60
    const-string/jumbo v1, " }"

    #@56
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 81
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mTimestamp:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 82
    iget v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mBluetoothStackState:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 83
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerTxTimeMs:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 84
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerRxTimeMs:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 85
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerIdleTimeMs:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 86
    iget-wide v0, p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->mControllerEnergyUsed:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 80
    return-void
.end method
