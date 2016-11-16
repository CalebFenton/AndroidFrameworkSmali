.class public final Landroid/media/midi/MidiDeviceStatus;
.super Ljava/lang/Object;
.source "MidiDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/midi/MidiDeviceStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MidiDeviceStatus"


# instance fields
.field private final mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private final mInputPortOpen:[Z

.field private final mOutputPortOpenCount:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 115
    new-instance v0, Landroid/media/midi/MidiDeviceStatus$1;

    #@2
    invoke-direct {v0}, Landroid/media/midi/MidiDeviceStatus$1;-><init>()V

    #@5
    .line 114
    sput-object v0, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@5
    .line 57
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    #@8
    move-result v0

    #@9
    new-array v0, v0, [Z

    #@b
    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    #@d
    .line 58
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    #@10
    move-result v0

    #@11
    new-array v0, v0, [I

    #@13
    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    #@15
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/media/midi/MidiDeviceInfo;[Z[I)V
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "inputPortOpen"    # [Z
    .param p3, "outputPortOpenCount"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 41
    iput-object p1, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@6
    .line 44
    array-length v0, p2

    #@7
    new-array v0, v0, [Z

    #@9
    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    #@b
    .line 45
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    #@d
    array-length v1, p2

    #@e
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@11
    .line 46
    array-length v0, p3

    #@12
    new-array v0, v0, [I

    #@14
    iput-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    #@16
    .line 47
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    #@18
    .line 48
    array-length v1, p3

    #@19
    .line 47
    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@1c
    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@2
    return-object v0
.end method

.method public getOutputPortOpenCount(I)I
    .locals 1
    .param p1, "portNumber"    # I

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public isInputPortOpen(I)Z
    .locals 1
    .param p1, "portNumber"    # I

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    #@2
    aget-boolean v0, v0, p1

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 94
    iget-object v4, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@2
    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    #@5
    move-result v2

    #@6
    .line 95
    .local v2, "inputPortCount":I
    iget-object v4, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@8
    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    #@b
    move-result v3

    #@c
    .line 96
    .local v3, "outputPortCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    const-string/jumbo v4, "mInputPortOpen=["

    #@11
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    .line 97
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@17
    .line 98
    iget-object v4, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    #@19
    aget-boolean v4, v4, v1

    #@1b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    .line 99
    add-int/lit8 v4, v2, -0x1

    #@20
    if-ge v1, v4, :cond_0

    #@22
    .line 100
    const-string/jumbo v4, ","

    #@25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 103
    :cond_1
    const-string/jumbo v4, "] mOutputPortOpenCount=["

    #@2e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 104
    const/4 v1, 0x0

    #@32
    :goto_1
    if-ge v1, v3, :cond_3

    #@34
    .line 105
    iget-object v4, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    #@36
    aget v4, v4, v1

    #@38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 106
    add-int/lit8 v4, v3, -0x1

    #@3d
    if-ge v1, v4, :cond_2

    #@3f
    .line 107
    const-string/jumbo v4, ","

    #@42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_1

    #@48
    .line 110
    :cond_3
    const-string/jumbo v4, "]"

    #@4b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 135
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mInputPortOpen:[Z

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    #@a
    .line 136
    iget-object v0, p0, Landroid/media/midi/MidiDeviceStatus;->mOutputPortOpenCount:[I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@f
    .line 133
    return-void
.end method
