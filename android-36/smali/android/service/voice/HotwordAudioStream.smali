.class public final Landroid/service/voice/HotwordAudioStream;
.super Ljava/lang/Object;
.source "HotwordAudioStream.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordAudioStream$Builder;,
        Landroid/service/voice/HotwordAudioStream$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_INITIAL_EMPTY_AUDIO:[B

.field public static final whitelist KEY_AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES:Ljava/lang/String; = "android.service.voice.key.AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES"


# instance fields
.field private final blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private final blacklist mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mInitialAudio:[B

.field private final blacklist mMetadata:Landroid/os/PersistableBundle;

.field private final blacklist mTimestamp:Landroid/media/AudioTimestamp;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultInitialAudio()[B
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->defaultInitialAudio()[B

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultMetadata()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->defaultMetadata()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTimestamp()Landroid/media/AudioTimestamp;
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->defaultTimestamp()Landroid/media/AudioTimestamp;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 134
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/service/voice/HotwordAudioStream;->DEFAULT_INITIAL_EMPTY_AUDIO:[B

    .line 394
    new-instance v0, Landroid/service/voice/HotwordAudioStream$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordAudioStream$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordAudioStream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioTimestamp;Landroid/os/PersistableBundle;[B)V
    .registers 9
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "audioStreamParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "timestamp"    # Landroid/media/AudioTimestamp;
    .param p4, "metadata"    # Landroid/os/PersistableBundle;
    .param p5, "initialAudio"    # [B

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    .line 202
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 204
    iput-object p2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 205
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 207
    iput-object p3, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    .line 208
    iput-object p4, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    .line 209
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 211
    iput-object p5, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    .line 212
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 370
    .local v0, "flg":B
    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    .line 371
    .local v1, "audioFormat":Landroid/media/AudioFormat;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 372
    .local v2, "audioStreamParcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-nez v3, :cond_1e

    move-object v3, v4

    goto :goto_26

    :cond_1e
    sget-object v3, Landroid/media/AudioTimestamp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTimestamp;

    .line 373
    .local v3, "timestamp":Landroid/media/AudioTimestamp;
    :goto_26
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 374
    .local v5, "metadata":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 376
    .local v6, "initialAudio":[B
    iput-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    .line 377
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 379
    iput-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 380
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 382
    iput-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    .line 383
    iput-object v5, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    .line 384
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 386
    iput-object v6, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    .line 387
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-static {v7, v4, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 557
    return-void
.end method

.method private static blacklist defaultInitialAudio()[B
    .registers 1

    .line 136
    sget-object v0, Landroid/service/voice/HotwordAudioStream;->DEFAULT_INITIAL_EMPTY_AUDIO:[B

    return-object v0
.end method

.method private static blacklist defaultMetadata()Landroid/os/PersistableBundle;
    .registers 1

    .line 117
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    return-object v0
.end method

.method private static blacklist defaultTimestamp()Landroid/media/AudioTimestamp;
    .registers 1

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist initialAudioToString()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/HotwordAudioStream$Builder;
    .registers 4

    .line 148
    new-instance v0, Landroid/service/voice/HotwordAudioStream$Builder;

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1, v2}, Landroid/service/voice/HotwordAudioStream$Builder;-><init>(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    .line 149
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordAudioStream$Builder;->setTimestamp(Landroid/media/AudioTimestamp;)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    .line 150
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordAudioStream$Builder;->setMetadata(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    .line 151
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordAudioStream$Builder;->setInitialAudio([B)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 314
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 315
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4a

    .line 317
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/voice/HotwordAudioStream;

    .line 319
    .local v2, "that":Landroid/service/voice/HotwordAudioStream;
    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    .line 320
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 321
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    .line 322
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    .line 323
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    iget-object v4, v2, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    .line 324
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 319
    :goto_49
    return v0

    .line 315
    .end local v2    # "that":Landroid/service/voice/HotwordAudioStream;
    :cond_4a
    :goto_4a
    return v1
.end method

.method public whitelist getAudioFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getInitialAudio()[B
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    return-object v0
.end method

.method public whitelist getMetadata()Landroid/os/PersistableBundle;
    .registers 2

    .line 272
    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getTimestamp()Landroid/media/AudioTimestamp;
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 333
    const/4 v0, 0x1

    .line 334
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 335
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 336
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 337
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 338
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 339
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordAudioStream { audioFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioStreamParcelFileDescriptor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initialAudio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream;->initialAudioToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "flg":B
    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 350
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 351
    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioFormat:Landroid/media/AudioFormat;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 352
    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 353
    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 354
    :cond_1e
    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 355
    iget-object v1, p0, Landroid/service/voice/HotwordAudioStream;->mInitialAudio:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 356
    return-void
.end method
