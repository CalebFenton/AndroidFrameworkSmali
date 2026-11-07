.class public final Landroid/media/AudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "AudioRecordingConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecordingConfiguration$AudioSource;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

.field private final greylist-max-o mClientFormat:Landroid/media/AudioFormat;

.field private final greylist-max-o mClientPackageName:Ljava/lang/String;

.field private final blacklist mClientPortId:I

.field private final blacklist mClientSessionId:I

.field private blacklist mClientSilenced:Z

.field private final greylist-max-o mClientSource:I

.field private final greylist-max-o mClientUid:I

.field private final blacklist mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

.field private final greylist-max-o mDeviceFormat:Landroid/media/AudioFormat;

.field private final blacklist mDeviceSource:I

.field private final greylist-max-o mPatchHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Ljava/lang/String;

    const-string v1, "AudioRecordingConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    .line 325
    new-instance v0, Landroid/media/AudioRecordingConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioRecordingConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;)V
    .registers 22
    .param p1, "uid"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "clientFormat"    # Landroid/media/AudioFormat;
    .param p5, "devFormat"    # Landroid/media/AudioFormat;
    .param p6, "patchHandle"    # I
    .param p7, "packageName"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    new-array v12, v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    new-array v13, v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v13}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "clientFormat"    # Landroid/media/AudioFormat;
    .param p5, "devFormat"    # Landroid/media/AudioFormat;
    .param p6, "patchHandle"    # I
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "clientPortId"    # I
    .param p9, "clientSilenced"    # Z
    .param p10, "deviceSource"    # I
    .param p11, "clientEffects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p12, "deviceEffects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    .line 89
    iput p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    .line 90
    iput p3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    .line 91
    iput-object p4, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 92
    iput-object p5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 93
    iput p6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    .line 94
    iput-object p7, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    .line 95
    iput p8, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    .line 96
    iput-boolean p9, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    .line 97
    iput p10, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    .line 98
    iput-object p11, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 99
    iput-object p12, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 100
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    .line 375
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 376
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_50
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_61

    .line 385
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    new-instance v2, Landroid/media/audiofx/AudioEffect$Descriptor;

    invoke-direct {v2, p1}, Landroid/media/audiofx/AudioEffect$Descriptor;-><init>(Landroid/os/Parcel;)V

    aput-object v2, v1, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 387
    .end local v0    # "i":I
    :cond_61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 388
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6a
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_7b

    .line 389
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    new-instance v2, Landroid/media/audiofx/AudioEffect$Descriptor;

    invoke-direct {v2, p1}, Landroid/media/audiofx/AudioEffect$Descriptor;-><init>(Landroid/os/Parcel;)V

    aput-object v2, v1, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 391
    .end local v0    # "i":I
    :cond_7b
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioRecordingConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioRecordingConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;
    .registers 14
    .param p0, "in"    # Landroid/media/AudioRecordingConfiguration;

    .line 160
    new-instance v0, Landroid/media/AudioRecordingConfiguration;

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iget-object v4, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iget v6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    iget v8, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    iget-boolean v9, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    iget v10, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    iget-object v11, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    iget-object v12, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    const/4 v1, -0x1

    const-string v7, ""

    invoke-direct/range {v0 .. v12}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    return-object v0
.end method

.method public static greylist-max-o toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;
    .registers 11
    .param p0, "arc"    # Landroid/media/AudioRecordingConfiguration;

    .line 129
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 130
    .local v0, "clientEffects":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    const-string v5, "\' "

    const-string v6, "\'"

    if-ge v4, v2, :cond_30

    aget-object v7, v1, v4

    .line 131
    .local v7, "desc":Landroid/media/audiofx/AudioEffect$Descriptor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v7, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .end local v7    # "desc":Landroid/media/audiofx/AudioEffect$Descriptor;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 133
    :cond_30
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 134
    .local v1, "deviceEffects":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v4, v2

    :goto_38
    if-ge v3, v4, :cond_5a

    aget-object v7, v2, v3

    .line 135
    .restart local v7    # "desc":Landroid/media/audiofx/AudioEffect$Descriptor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .end local v7    # "desc":Landroid/media/audiofx/AudioEffect$Descriptor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 138
    :cond_5a
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- source client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    .line 139
    invoke-static {v4}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 140
    invoke-virtual {v5}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- uid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- patch:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- pack:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- format client="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 144
    invoke-virtual {v5}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 145
    invoke-virtual {v5}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- silenced:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -- effects client="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 138
    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioRecordingConfiguration;->toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 395
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 396
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6e

    instance-of v2, p1, Landroid/media/AudioRecordingConfiguration;

    if-nez v2, :cond_c

    goto :goto_6e

    .line 398
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    .line 400
    .local v2, "that":Landroid/media/AudioRecordingConfiguration;
    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    iget v4, v2, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    iget v4, v2, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iget v4, v2, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    iget v4, v2, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v3, v4, :cond_6c

    iget-object v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iget-object v4, v2, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    .line 404
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iget-object v4, v2, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    .line 405
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    iget v4, v2, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    if-ne v3, v4, :cond_6c

    iget-boolean v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    iget-boolean v4, v2, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    iget v4, v2, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    if-ne v3, v4, :cond_6c

    iget-object v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    iget-object v4, v2, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 410
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    iget-object v4, v2, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 411
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    goto :goto_6d

    :cond_6c
    move v0, v1

    .line 400
    :goto_6d
    return v0

    .line 396
    .end local v2    # "that":Landroid/media/AudioRecordingConfiguration;
    :cond_6e
    :goto_6e
    return v1
.end method

.method public whitelist getAudioDevice()Landroid/media/AudioDeviceInfo;
    .registers 7

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 256
    sget-object v1, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string v3, "Error retrieving list of audio patches"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v2

    .line 259
    :cond_14
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPatch;

    .line 261
    .local v3, "patch":Landroid/media/AudioPatch;
    invoke-virtual {v3}, Landroid/media/AudioPatch;->id()I

    move-result v4

    iget v5, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v4, v5, :cond_43

    .line 262
    invoke-virtual {v3}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v4

    .line 263
    .local v4, "sources":[Landroid/media/AudioPortConfig;
    if-eqz v4, :cond_46

    array-length v5, v4

    if-lez v5, :cond_46

    .line 265
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioPort;->id()I

    move-result v2

    .line 266
    .local v2, "devId":I
    const/4 v5, 0x1

    invoke-static {v2, v5}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v5

    return-object v5

    .line 259
    .end local v2    # "devId":I
    .end local v3    # "patch":Landroid/media/AudioPatch;
    .end local v4    # "sources":[Landroid/media/AudioPortConfig;
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 272
    .end local v1    # "i":I
    :cond_46
    sget-object v1, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t find device for recording, did recording end already?"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v2
.end method

.method public whitelist getAudioSource()I
    .registers 2

    .line 302
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    return v0
.end method

.method public whitelist getClientAudioSessionId()I
    .registers 2

    .line 197
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    return v0
.end method

.method public whitelist getClientAudioSource()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    return v0
.end method

.method public whitelist getClientEffects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiofx/AudioEffect$Descriptor;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getClientFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 213
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public greylist-max-r getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getClientPortId()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    return v0
.end method

.method public whitelist getClientUid()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 242
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 245
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    return v0

    .line 243
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MODIFY_AUDIO_ROUTING permission is missing"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getEffects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiofx/AudioEffect$Descriptor;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 342
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isClientSilenced()Z
    .registers 2

    .line 293
    iget-boolean v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 352
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 355
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 356
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-boolean v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSilenced:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 361
    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_49

    .line 364
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/AudioEffect$Descriptor;->writeToParcel(Landroid/os/Parcel;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 366
    .end local v0    # "i":I
    :cond_49
    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_50
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_5f

    .line 368
    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceEffects:[Landroid/media/audiofx/AudioEffect$Descriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/audiofx/AudioEffect$Descriptor;->writeToParcel(Landroid/os/Parcel;)V

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 370
    .end local v0    # "i":I
    :cond_5f
    return-void
.end method
