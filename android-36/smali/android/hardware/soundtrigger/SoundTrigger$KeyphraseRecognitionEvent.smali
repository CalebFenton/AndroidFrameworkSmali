.class public Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
.super Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyphraseRecognitionEvent"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcelForKeyphrase(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .registers 1

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->fromParcelForKeyphrase(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2095
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;JLandroid/os/IBinder;)V
    .registers 30
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B
    .param p10, "keyphraseExtras"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .param p11, "halEventReceivedMillis"    # J
    .param p13, "token"    # Landroid/os/IBinder;

    .line 2075
    const/4 v0, 0x3

    move/from16 v2, p1

    if-ne v2, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move v12, v0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v13, p11

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;ZJLandroid/os/IBinder;)V

    .line 2079
    return-void
.end method

.method public constructor blacklist <init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;ZJLandroid/os/IBinder;)V
    .registers 29
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B
    .param p10, "keyphraseExtras"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .param p11, "recognitionStillActive"    # Z
    .param p12, "halEventReceivedMillis"    # J
    .param p14, "token"    # Landroid/os/IBinder;

    .line 2088
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    move-wide/from16 v11, p12

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[BZJLandroid/os/IBinder;)V

    .line 2091
    nop

    .line 2092
    if-eqz p10, :cond_21

    move-object/from16 v1, p10

    goto :goto_24

    :cond_21
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    :goto_24
    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 2093
    return-void
.end method

.method private static greylist-max-o fromParcelForKeyphrase(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .registers 16
    .param p0, "in"    # Landroid/os/Parcel;

    .line 2107
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2108
    .local v1, "status":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2109
    .local v2, "soundModelHandle":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_12

    move v0, v4

    goto :goto_13

    :cond_12
    move v0, v3

    .line 2110
    .local v0, "captureAvailable":Z
    :goto_13
    move v5, v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2111
    .local v4, "captureSession":I
    move v6, v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2112
    .local v5, "captureDelayMs":I
    move v7, v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2113
    .local v6, "capturePreambleMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-ne v8, v7, :cond_29

    move v3, v7

    .line 2114
    .local v3, "triggerInData":Z
    :cond_29
    const/4 v8, 0x0

    .line 2115
    .local v8, "captureFormat":Landroid/media/AudioFormat;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-ne v9, v7, :cond_51

    .line 2116
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2117
    .local v7, "sampleRate":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2118
    .local v9, "encoding":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2119
    .local v10, "channelMask":I
    new-instance v11, Landroid/media/AudioFormat$Builder;

    invoke-direct {v11}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2120
    invoke-virtual {v11, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 2121
    invoke-virtual {v11, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 2122
    invoke-virtual {v11, v7}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 2123
    invoke-virtual {v11}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v8

    .line 2125
    .end local v7    # "sampleRate":I
    .end local v9    # "encoding":I
    .end local v10    # "channelMask":I
    :cond_51
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v9

    .line 2126
    .local v9, "data":[B
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 2127
    .local v11, "recognitionStillActive":Z
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 2128
    .local v12, "halEventReceivedMillis":J
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 2129
    .local v14, "token":Landroid/os/IBinder;
    sget-object v7, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2130
    invoke-virtual {p0, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 2131
    .local v10, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    move v7, v3

    move v3, v0

    .end local v0    # "captureAvailable":Z
    .local v3, "captureAvailable":Z
    .local v7, "triggerInData":Z
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-direct/range {v0 .. v14}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;ZJLandroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2163
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2176
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2177
    return v0

    .line 2178
    :cond_4
    invoke-super {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 2179
    return v2

    .line 2180
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 2181
    return v2

    .line 2182
    :cond_17
    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 2183
    .local v1, "other":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v4, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 2184
    return v2

    .line 2185
    :cond_25
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 2168
    const/16 v0, 0x1f

    .line 2169
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->hashCode()I

    move-result v1

    .line 2170
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2171
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyphraseRecognitionEvent [keyphraseExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soundModelHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->soundModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captureDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capturePreambleMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->capturePreambleMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerInData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2198
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    const-string v2, ""

    if-nez v1, :cond_71

    move-object v1, v2

    goto :goto_8a

    .line 2199
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", sampleRate="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2200
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_94

    move-object v1, v2

    goto :goto_ad

    .line 2201
    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", encoding="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2202
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_b6

    goto :goto_cf

    .line 2203
    :cond_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", channelMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_cf
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2204
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    if-nez v1, :cond_df

    const/4 v1, 0x0

    goto :goto_e2

    :cond_df
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    array-length v1, v1

    :goto_e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionStillActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->recognitionStillActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", halEventReceivedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->halEventReceivedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2190
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2139
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2140
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2141
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureAvailable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2142
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2143
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureDelayMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->capturePreambleMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2145
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2146
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v0, :cond_49

    .line 2147
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2148
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2149
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2150
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    .line 2152
    :cond_49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2154
    :goto_4d
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 2155
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->recognitionStillActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2156
    iget-wide v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->halEventReceivedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2157
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2158
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2159
    return-void
.end method
