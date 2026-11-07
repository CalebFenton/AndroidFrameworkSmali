.class public final Landroid/media/midi/MidiDeviceStatus;
.super Ljava/lang/Object;
.source "MidiDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/midi/MidiDeviceStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiDeviceStatus"


# instance fields
.field private final greylist-max-o mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final greylist-max-o mInputPortOpen:[Z

.field private final greylist-max-o mOutputPortOpenCount:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/media/midi/MidiDeviceStatus$1;

    invoke-direct {v0}, Landroid/media/midi/MidiDeviceStatus$1;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 3
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 57
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    .line 58
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    .line 59
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V
    .registers 7
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "inputPortOpen"    # [Z
    .param p3, "outputPortOpenCount"    # [I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 44
    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    .line 47
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public whitelist getOutputPortOpenCount(I)I
    .registers 3
    .param p1, "portNumber"    # I

    .line 89
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist isInputPortOpen(I)Z
    .registers 3
    .param p1, "portNumber"    # I

    .line 78
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 94
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    .line 95
    .local v0, "inputPortCount":I
    iget-object v1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v1

    .line 96
    .local v1, "outputPortCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mInputPortOpen=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    const-string v4, ","

    if-ge v3, v0, :cond_29

    .line 98
    iget-object v5, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_26

    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 103
    .end local v3    # "i":I
    :cond_29
    const-string v3, "] mOutputPortOpenCount=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2f
    if-ge v3, v1, :cond_42

    .line 105
    iget-object v5, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    aget v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v5, v1, -0x1

    if-ge v3, v5, :cond_3f

    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 110
    .end local v3    # "i":I
    :cond_42
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 136
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 137
    return-void
.end method
