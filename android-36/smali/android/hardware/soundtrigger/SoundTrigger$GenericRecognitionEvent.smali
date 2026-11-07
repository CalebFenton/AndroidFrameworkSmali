.class public Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
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
    name = "GenericRecognitionEvent"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcelForGeneric(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .registers 1

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->fromParcelForGeneric(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2242
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>(IIZIIIZLandroid/media/AudioFormat;[BJLandroid/os/IBinder;)V
    .registers 28
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B
    .param p10, "halEventReceivedMillis"    # J
    .param p12, "token"    # Landroid/os/IBinder;

    .line 2225
    const/4 v0, 0x3

    move/from16 v2, p1

    if-ne v2, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move v11, v0

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[BZJLandroid/os/IBinder;)V

    .line 2230
    return-void
.end method

.method public constructor blacklist <init>(IIZIIIZLandroid/media/AudioFormat;[BZJLandroid/os/IBinder;)V
    .registers 14
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B
    .param p10, "recognitionStillActive"    # Z
    .param p11, "halEventReceivedMillis"    # J
    .param p13, "token"    # Landroid/os/IBinder;

    .line 2237
    invoke-direct/range {p0 .. p13}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[BZJLandroid/os/IBinder;)V

    .line 2240
    return-void
.end method

.method private static greylist-max-o fromParcelForGeneric(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .registers 16
    .param p0, "in"    # Landroid/os/Parcel;

    .line 2254
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    move-result-object v0

    .line 2255
    .local v0, "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v3, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget-boolean v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget v5, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v6, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v7, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget-boolean v8, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-object v9, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iget-object v10, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    iget-boolean v11, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->recognitionStillActive:Z

    iget-wide v12, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->halEventReceivedMillis:J

    iget-object v14, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->token:Landroid/os/IBinder;

    invoke-direct/range {v1 .. v14}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[BZJLandroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2263
    if-ne p0, p1, :cond_4

    .line 2264
    const/4 v0, 0x1

    return v0

    .line 2265
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 2266
    return v0

    .line 2267
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 2268
    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 2269
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-super {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenericRecognitionEvent ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
