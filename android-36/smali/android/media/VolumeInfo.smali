.class public final Landroid/media/VolumeInfo;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INDEX_NOT_SET:I = -0x64

.field private static final blacklist TAG:Ljava/lang/String; = "VolumeInfo"

.field private static blacklist sDefaultVolumeInfo:Landroid/media/VolumeInfo;

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mHasMuteCommand:Z

.field private final blacklist mIsMuted:Z

.field private final blacklist mMaxVolIndex:I

.field private final blacklist mMinVolIndex:I

.field private final blacklist mStreamType:I

.field private final blacklist mUsesStreamType:Z

.field private final blacklist mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

.field private final blacklist mVolIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasMuteCommand(Landroid/media/VolumeInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMuted(Landroid/media/VolumeInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxVolIndex(Landroid/media/VolumeInfo;)I
    .registers 1

    iget p0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinVolIndex(Landroid/media/VolumeInfo;)I
    .registers 1

    iget p0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamType(Landroid/media/VolumeInfo;)I
    .registers 1

    iget p0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsesStreamType(Landroid/media/VolumeInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolGroup(Landroid/media/VolumeInfo;)Landroid/media/audiopolicy/AudioVolumeGroup;
    .registers 1

    iget-object p0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolIndex(Landroid/media/VolumeInfo;)I
    .registers 1

    iget p0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 384
    new-instance v0, Landroid/media/VolumeInfo$1;

    invoke-direct {v0}, Landroid/media/VolumeInfo$1;-><init>()V

    sput-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    .line 377
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-nez v0, :cond_3c

    .line 378
    sget-object v0, Landroid/media/audiopolicy/AudioVolumeGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioVolumeGroup;

    iput-object v0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    goto :goto_3f

    .line 380
    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 382
    :goto_3f
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/VolumeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/VolumeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZZIIILandroid/media/audiopolicy/AudioVolumeGroup;I)V
    .registers 9
    .param p1, "usesStreamType"    # Z
    .param p2, "hasMuteCommand"    # Z
    .param p3, "isMuted"    # Z
    .param p4, "volIndex"    # I
    .param p5, "minVolIndex"    # I
    .param p6, "maxVolIndex"    # I
    .param p7, "volGroup"    # Landroid/media/audiopolicy/AudioVolumeGroup;
    .param p8, "streamType"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    .line 62
    iput-boolean p2, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    .line 63
    iput-boolean p3, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    .line 64
    iput p4, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    .line 65
    iput p5, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    .line 66
    iput p6, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    .line 67
    iput-object p7, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 68
    iput p8, p0, Landroid/media/VolumeInfo;->mStreamType:I

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZIIILandroid/media/audiopolicy/AudioVolumeGroup;ILandroid/media/VolumeInfo-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeInfo;-><init>(ZZZIIILandroid/media/audiopolicy/AudioVolumeGroup;I)V

    return-void
.end method

.method public static whitelist getDefaultVolumeInfo()Landroid/media/VolumeInfo;
    .registers 3

    .line 172
    sget-object v0, Landroid/media/VolumeInfo;->sService:Landroid/media/IAudioService;

    if-nez v0, :cond_10

    .line 173
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 174
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/VolumeInfo;->sService:Landroid/media/IAudioService;

    .line 176
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    sget-object v0, Landroid/media/VolumeInfo;->sDefaultVolumeInfo:Landroid/media/VolumeInfo;

    if-nez v0, :cond_30

    .line 178
    :try_start_14
    sget-object v0, Landroid/media/VolumeInfo;->sService:Landroid/media/IAudioService;

    invoke-interface {v0}, Landroid/media/IAudioService;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeInfo;->sDefaultVolumeInfo:Landroid/media/VolumeInfo;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 183
    goto :goto_30

    .line 179
    :catch_1d
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeInfo"

    const-string v2, "Error calling getDefaultVolumeInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    new-instance v1, Landroid/media/VolumeInfo$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    :goto_30
    sget-object v0, Landroid/media/VolumeInfo;->sDefaultVolumeInfo:Landroid/media/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 325
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 326
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4c

    .line 328
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/VolumeInfo;

    .line 329
    .local v2, "that":Landroid/media/VolumeInfo;
    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    iget-boolean v4, v2, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-ne v3, v4, :cond_4a

    iget v3, p0, Landroid/media/VolumeInfo;->mStreamType:I

    iget v4, v2, Landroid/media/VolumeInfo;->mStreamType:I

    if-ne v3, v4, :cond_4a

    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    iget-boolean v4, v2, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    if-ne v3, v4, :cond_4a

    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    iget-boolean v4, v2, Landroid/media/VolumeInfo;->mIsMuted:Z

    if-ne v3, v4, :cond_4a

    iget v3, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    iget v4, v2, Landroid/media/VolumeInfo;->mVolIndex:I

    if-ne v3, v4, :cond_4a

    iget v3, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    iget v4, v2, Landroid/media/VolumeInfo;->mMinVolIndex:I

    if-ne v3, v4, :cond_4a

    iget v3, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    iget v4, v2, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    if-ne v3, v4, :cond_4a

    iget-object v3, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    iget-object v4, v2, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 336
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    .line 329
    :goto_4b
    return v0

    .line 326
    .end local v2    # "that":Landroid/media/VolumeInfo;
    :cond_4c
    :goto_4c
    return v1
.end method

.method public whitelist getMaxVolumeIndex()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    return v0
.end method

.method public whitelist getMinVolumeIndex()I
    .registers 2

    .line 154
    iget v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    return v0
.end method

.method public whitelist getStreamType()I
    .registers 3

    .line 88
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-eqz v0, :cond_7

    .line 91
    iget v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    return v0

    .line 89
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VolumeInfo doesn\'t use stream types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVolumeGroup()Landroid/media/audiopolicy/AudioVolumeGroup;
    .registers 3

    .line 111
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-nez v0, :cond_7

    .line 114
    iget-object v0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    return-object v0

    .line 112
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VolumeInfo doesn\'t use AudioVolumeGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVolumeIndex()I
    .registers 2

    .line 146
    iget v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    return v0
.end method

.method public whitelist hasMuteCommand()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    return v0
.end method

.method public whitelist hasStreamType()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    return v0
.end method

.method public whitelist hasVolumeGroup()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 319
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    .line 320
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 319
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isMuted()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 341
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 342
    iget-boolean v2, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 343
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " volGroup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 344
    iget-boolean v2, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    if-eqz v2, :cond_5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " muted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    :cond_5a
    const-string v2, "[no mute cmd]"

    :goto_5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 345
    iget v2, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    const-string v3, ""

    const/16 v4, -0x64

    if-eq v2, v4, :cond_7e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " volIndex:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7f

    :cond_7e
    move-object v2, v3

    :goto_7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    iget v2, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    if-eq v2, v4, :cond_9d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " min:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9e

    :cond_9d
    move-object v2, v3

    :goto_9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    iget v2, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    if-eq v2, v4, :cond_bb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " max:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_bb
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 341
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 357
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 358
    iget v0, p0, Landroid/media/VolumeInfo;->mStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mHasMuteCommand:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 360
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mIsMuted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 361
    iget v0, p0, Landroid/media/VolumeInfo;->mVolIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget v0, p0, Landroid/media/VolumeInfo;->mMinVolIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Landroid/media/VolumeInfo;->mMaxVolIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-boolean v0, p0, Landroid/media/VolumeInfo;->mUsesStreamType:Z

    if-nez v0, :cond_2d

    .line 365
    iget-object v0, p0, Landroid/media/VolumeInfo;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 367
    :cond_2d
    return-void
.end method
