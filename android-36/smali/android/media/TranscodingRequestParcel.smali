.class public Landroid/media/TranscodingRequestParcel;
.super Ljava/lang/Object;
.source "TranscodingRequestParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/TranscodingRequestParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist clientPackageName:Ljava/lang/String;

.field public blacklist clientPid:I

.field public blacklist clientUid:I

.field public blacklist destinationFd:Landroid/os/ParcelFileDescriptor;

.field public blacklist destinationFilePath:Ljava/lang/String;

.field public blacklist enableStats:Z

.field public blacklist isForTesting:Z

.field public blacklist priority:I

.field public blacklist requestProgressUpdate:Z

.field public blacklist requestSessionEventUpdate:Z

.field public blacklist requestedVideoTrackFormat:Landroid/media/TranscodingVideoTrackFormat;

.field public blacklist sourceFd:Landroid/os/ParcelFileDescriptor;

.field public blacklist sourceFilePath:Ljava/lang/String;

.field public blacklist testConfig:Landroid/media/TranscodingTestConfig;

.field public blacklist transcodingType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Landroid/media/TranscodingRequestParcel$1;

    invoke-direct {v0}, Landroid/media/TranscodingRequestParcel$1;-><init>()V

    sput-object v0, Landroid/media/TranscodingRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Landroid/media/TranscodingRequestParcel;->clientUid:I

    .line 46
    iput v0, p0, Landroid/media/TranscodingRequestParcel;->clientPid:I

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Landroid/media/TranscodingRequestParcel;->requestProgressUpdate:Z

    .line 69
    iput-boolean v0, p0, Landroid/media/TranscodingRequestParcel;->requestSessionEventUpdate:Z

    .line 71
    iput-boolean v0, p0, Landroid/media/TranscodingRequestParcel;->isForTesting:Z

    .line 79
    iput-boolean v0, p0, Landroid/media/TranscodingRequestParcel;->enableStats:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 170
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 171
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_e
    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 162
    iget-object v0, p0, Landroid/media/TranscodingRequestParcel;->sourceFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/media/TranscodingRequestParcel;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 163
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->destinationFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/media/TranscodingRequestParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 164
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->requestedVideoTrackFormat:Landroid/media/TranscodingVideoTrackFormat;

    invoke-direct {p0, v1}, Landroid/media/TranscodingRequestParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 165
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->testConfig:Landroid/media/TranscodingTestConfig;

    invoke-direct {p0, v1}, Landroid/media/TranscodingRequestParcel;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    .line 121
    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_191

    .line 122
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 154
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/TranscodingRequestParcel;->sourceFilePath:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 154
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_3c
    :try_start_3c
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    iput-object v5, p0, Landroid/media/TranscodingRequestParcel;->sourceFd:Landroid/os/ParcelFileDescriptor;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_18f

    sub-int/2addr v5, v0

    if-lt v5, v1, :cond_57

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_51

    goto :goto_1a

    .line 154
    :cond_51
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/media/TranscodingRequestParcel;->destinationFilePath:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_18f

    sub-int/2addr v5, v0

    if-lt v5, v1, :cond_6e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_68

    goto :goto_1a

    .line 154
    :cond_68
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_6e
    :try_start_6e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/media/TranscodingRequestParcel;->destinationFd:Landroid/os/ParcelFileDescriptor;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7a
    .catchall {:try_start_6e .. :try_end_7a} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_87

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_81

    goto :goto_1a

    .line 154
    :cond_81
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_87
    :try_start_87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TranscodingRequestParcel;->clientUid:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_98

    goto :goto_1a

    .line 154
    :cond_98
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_9e
    :try_start_9e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TranscodingRequestParcel;->clientPid:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b6

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b0

    goto/16 :goto_1a

    .line 154
    :cond_b0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/TranscodingRequestParcel;->clientPackageName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b6 .. :try_end_c0} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    goto/16 :goto_1a

    .line 154
    :cond_c8
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TranscodingRequestParcel;->transcodingType:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    goto/16 :goto_1a

    .line 154
    :cond_e0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_e6
    :try_start_e6
    sget-object v2, Landroid/media/TranscodingVideoTrackFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TranscodingVideoTrackFormat;

    iput-object v2, p0, Landroid/media/TranscodingRequestParcel;->requestedVideoTrackFormat:Landroid/media/TranscodingVideoTrackFormat;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_e6 .. :try_end_f4} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_102

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fc

    goto/16 :goto_1a

    .line 154
    :cond_fc
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_102
    :try_start_102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TranscodingRequestParcel;->priority:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10c
    .catchall {:try_start_102 .. :try_end_10c} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_114

    goto/16 :goto_1a

    .line 154
    :cond_114
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_11a
    :try_start_11a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/TranscodingRequestParcel;->requestProgressUpdate:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_124
    .catchall {:try_start_11a .. :try_end_124} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_132

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12c

    goto/16 :goto_1a

    .line 154
    :cond_12c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_132
    :try_start_132
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/TranscodingRequestParcel;->requestSessionEventUpdate:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_13c
    .catchall {:try_start_132 .. :try_end_13c} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_14a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_144

    goto/16 :goto_1a

    .line 154
    :cond_144
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_14a
    :try_start_14a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/TranscodingRequestParcel;->isForTesting:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_154
    .catchall {:try_start_14a .. :try_end_154} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_162

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_15c

    goto/16 :goto_1a

    .line 154
    :cond_15c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_162
    :try_start_162
    sget-object v2, Landroid/media/TranscodingTestConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/TranscodingTestConfig;

    iput-object v2, p0, Landroid/media/TranscodingRequestParcel;->testConfig:Landroid/media/TranscodingTestConfig;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_170
    .catchall {:try_start_162 .. :try_end_170} :catchall_18f

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_178

    goto/16 :goto_1a

    .line 154
    :cond_178
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_17e
    :try_start_17e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/TranscodingRequestParcel;->enableStats:Z
    :try_end_184
    .catchall {:try_start_17e .. :try_end_184} :catchall_18f

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_189

    goto/16 :goto_1a

    .line 154
    :cond_189
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_18f
    move-exception p0

    goto :goto_199

    .line 121
    :cond_191
    :try_start_191
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_199
    .catchall {:try_start_191 .. :try_end_199} :catchall_18f

    :goto_199
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1a2

    .line 154
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a2
    add-int/2addr v0, v1

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 157
    throw p0
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->sourceFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->sourceFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 98
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->destinationFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->destinationFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 100
    iget v1, p0, Landroid/media/TranscodingRequestParcel;->clientUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v1, p0, Landroid/media/TranscodingRequestParcel;->clientPid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->clientPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget v1, p0, Landroid/media/TranscodingRequestParcel;->transcodingType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->requestedVideoTrackFormat:Landroid/media/TranscodingVideoTrackFormat;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 105
    iget v1, p0, Landroid/media/TranscodingRequestParcel;->priority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean v1, p0, Landroid/media/TranscodingRequestParcel;->requestProgressUpdate:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 107
    iget-boolean v1, p0, Landroid/media/TranscodingRequestParcel;->requestSessionEventUpdate:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget-boolean v1, p0, Landroid/media/TranscodingRequestParcel;->isForTesting:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    iget-object v1, p0, Landroid/media/TranscodingRequestParcel;->testConfig:Landroid/media/TranscodingTestConfig;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 110
    iget-boolean p0, p0, Landroid/media/TranscodingRequestParcel;->enableStats:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
