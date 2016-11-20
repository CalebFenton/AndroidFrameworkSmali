.class public final Landroid/media/AudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "AudioRecordingConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecordingConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClientFormat:Landroid/media/AudioFormat;

.field private final mClientSource:I

.field private final mDeviceFormat:Landroid/media/AudioFormat;

.field private final mPatchHandle:I

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/lang/String;

    #@2
    const-string/jumbo v1, "AudioRecordingConfiguration"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    #@a
    .line 157
    new-instance v0, Landroid/media/AudioRecordingConfiguration$1;

    #@c
    invoke-direct {v0}, Landroid/media/AudioRecordingConfiguration$1;-><init>()V

    #@f
    .line 156
    sput-object v0, Landroid/media/AudioRecordingConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11
    .line 45
    return-void
.end method

.method public constructor <init>(IILandroid/media/AudioFormat;Landroid/media/AudioFormat;I)V
    .locals 0
    .param p1, "session"    # I
    .param p2, "source"    # I
    .param p3, "clientFormat"    # Landroid/media/AudioFormat;
    .param p4, "devFormat"    # Landroid/media/AudioFormat;
    .param p5, "patchHandle"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput p1, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    #@5
    .line 63
    iput p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    #@7
    .line 64
    iput-object p3, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    #@9
    .line 65
    iput-object p4, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    #@b
    .line 66
    iput p5, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    #@d
    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    #@9
    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    #@f
    .line 193
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/media/AudioFormat;

    #@17
    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    #@19
    .line 194
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/media/AudioFormat;

    #@21
    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    #@23
    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    #@29
    .line 190
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioRecordingConfiguration;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/AudioRecordingConfiguration;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 178
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 200
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 201
    :cond_0
    if-eqz p1, :cond_2

    #@7
    instance-of v2, p1, Landroid/media/AudioRecordingConfiguration;

    #@9
    if-eqz v2, :cond_2

    #@b
    move-object v0, p1

    #@c
    .line 203
    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    #@e
    .line 205
    .local v0, "that":Landroid/media/AudioRecordingConfiguration;
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    #@10
    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 206
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    #@16
    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 207
    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    #@1c
    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    #@1e
    if-ne v2, v3, :cond_1

    #@20
    .line 208
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    #@22
    iget-object v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    #@24
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    .line 205
    if-eqz v2, :cond_1

    #@2a
    .line 209
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    #@2c
    iget-object v2, v0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    #@2e
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    .line 205
    :cond_1
    return v1

    #@33
    .line 201
    .end local v0    # "that":Landroid/media/AudioRecordingConfiguration;
    :cond_2
    return v1
.end method

.method public getAudioDevice()Landroid/media/AudioDeviceInfo;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 128
    new-instance v5, Ljava/util/ArrayList;

    #@4
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 129
    .local v5, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    invoke-static {v5}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_0

    #@d
    .line 130
    sget-object v7, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    #@f
    const-string/jumbo v8, "Error retrieving list of audio patches"

    #@12
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 131
    return-object v10

    #@16
    .line 133
    :cond_0
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v7

    #@1b
    if-ge v2, v7, :cond_3

    #@1d
    .line 134
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Landroid/media/AudioPatch;

    #@23
    .line 135
    .local v4, "patch":Landroid/media/AudioPatch;
    invoke-virtual {v4}, Landroid/media/AudioPatch;->id()I

    #@26
    move-result v7

    #@27
    iget v8, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    #@29
    if-ne v7, v8, :cond_2

    #@2b
    .line 136
    invoke-virtual {v4}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    #@2e
    move-result-object v6

    #@2f
    .line 137
    .local v6, "sources":[Landroid/media/AudioPortConfig;
    if-eqz v6, :cond_3

    #@31
    array-length v7, v6

    #@32
    if-lez v7, :cond_3

    #@34
    .line 139
    aget-object v7, v6, v9

    #@36
    invoke-virtual {v7}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7}, Landroid/media/AudioPort;->id()I

    #@3d
    move-result v0

    #@3e
    .line 141
    .local v0, "devId":I
    const/4 v7, 0x1

    #@3f
    invoke-static {v7}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    #@42
    move-result-object v1

    #@43
    .line 142
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v3, 0x0

    #@44
    .local v3, "j":I
    :goto_1
    array-length v7, v1

    #@45
    if-ge v3, v7, :cond_3

    #@47
    .line 143
    aget-object v7, v1, v3

    #@49
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getId()I

    #@4c
    move-result v7

    #@4d
    if-ne v7, v0, :cond_1

    #@4f
    .line 144
    aget-object v7, v1, v3

    #@51
    return-object v7

    #@52
    .line 142
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@54
    goto :goto_1

    #@55
    .line 133
    .end local v0    # "devId":I
    .end local v1    # "devices":[Landroid/media/AudioDeviceInfo;
    .end local v3    # "j":I
    .end local v6    # "sources":[Landroid/media/AudioPortConfig;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_0

    #@58
    .line 152
    .end local v4    # "patch":Landroid/media/AudioPatch;
    :cond_3
    sget-object v7, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    #@5a
    const-string/jumbo v8, "Couldn\'t find device for recording, did recording end already?"

    #@5d
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 153
    return-object v10
.end method

.method public getClientAudioSessionId()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    #@2
    return v0
.end method

.method public getClientAudioSource()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    #@2
    return v0
.end method

.method public getClientFormat()Landroid/media/AudioFormat;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    #@2
    return-object v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 173
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 183
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 184
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 185
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    #@d
    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    #@10
    .line 186
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    #@12
    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    #@15
    .line 187
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 182
    return-void
.end method
