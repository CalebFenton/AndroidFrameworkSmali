.class public Landroid/hardware/biometrics/SensorLocationInternal;
.super Ljava/lang/Object;
.source "SensorLocationInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;


# instance fields
.field public final blacklist displayId:Ljava/lang/String;

.field public final blacklist sensorLocationX:I

.field public final blacklist sensorLocationY:I

.field public final blacklist sensorRadius:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/hardware/biometrics/SensorLocationInternal;->DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;

    .line 93
    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/SensorLocationInternal$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/SensorLocationInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "displayId"    # Ljava/lang/String;
    .param p2, "sensorLocationX"    # I
    .param p3, "sensorLocationY"    # I
    .param p4, "sensorRadius"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p1, :cond_7

    move-object v0, p1

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    iput-object v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    .line 68
    iput p2, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    .line 69
    iput p3, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 70
    iput p4, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRect()Landroid/graphics/Rect;
    .registers 7

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    iget v2, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    iget v3, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    iget v4, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    iget v5, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget-object v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
