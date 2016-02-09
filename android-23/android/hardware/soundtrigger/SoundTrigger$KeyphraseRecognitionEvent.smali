.class public Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
.super Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyphraseRecognitionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 916
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent$1;-><init>()V

    #@5
    .line 915
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 902
    return-void
.end method

.method public constructor <init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)V
    .locals 0
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

    #@0
    .prologue
    .line 910
    invoke-direct/range {p0 .. p9}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    #@3
    .line 912
    iput-object p10, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@5
    .line 909
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .locals 15
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v14, 0x1

    #@1
    .line 927
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 928
    .local v1, "status":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    .line 929
    .local v2, "soundModelHandle":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@c
    move-result v0

    #@d
    if-ne v0, v14, :cond_1

    #@f
    const/4 v3, 0x1

    #@10
    .line 930
    .local v3, "captureAvailable":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v4

    #@14
    .line 931
    .local v4, "captureSession":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v5

    #@18
    .line 932
    .local v5, "captureDelayMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v6

    #@1c
    .line 933
    .local v6, "capturePreambleMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@1f
    move-result v0

    #@20
    if-ne v0, v14, :cond_2

    #@22
    const/4 v7, 0x1

    #@23
    .line 934
    .local v7, "triggerInData":Z
    :goto_1
    const/4 v8, 0x0

    #@24
    .line 935
    .local v8, "captureFormat":Landroid/media/AudioFormat;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@27
    move-result v0

    #@28
    if-ne v0, v14, :cond_0

    #@2a
    .line 936
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v13

    #@2e
    .line 937
    .local v13, "sampleRate":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v12

    #@32
    .line 938
    .local v12, "encoding":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v11

    #@36
    .line 939
    .local v11, "channelMask":I
    new-instance v0, Landroid/media/AudioFormat$Builder;

    #@38
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@3b
    invoke-virtual {v0, v11}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, v12}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0, v13}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@4a
    move-result-object v8

    #@4b
    .line 945
    .end local v8    # "captureFormat":Landroid/media/AudioFormat;
    .end local v11    # "channelMask":I
    .end local v12    # "encoding":I
    .end local v13    # "sampleRate":I
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    #@4e
    move-result-object v9

    #@4f
    .line 947
    .local v9, "data":[B
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    #@51
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@54
    move-result-object v10

    #@55
    check-cast v10, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@57
    .line 948
    .local v10, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@59
    invoke-direct/range {v0 .. v10}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)V

    #@5c
    return-object v0

    #@5d
    .line 929
    .end local v3    # "captureAvailable":Z
    .end local v4    # "captureSession":I
    .end local v5    # "captureDelayMs":I
    .end local v6    # "capturePreambleMs":I
    .end local v7    # "triggerInData":Z
    .end local v9    # "data":[B
    .end local v10    # "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    :cond_1
    const/4 v3, 0x0

    #@5e
    .restart local v3    # "captureAvailable":Z
    goto :goto_0

    #@5f
    .line 933
    .restart local v4    # "captureSession":I
    .restart local v5    # "captureDelayMs":I
    .restart local v6    # "capturePreambleMs":I
    :cond_2
    const/4 v7, 0x0

    #@60
    .restart local v7    # "triggerInData":Z
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 976
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 989
    if-ne p0, p1, :cond_0

    #@4
    .line 990
    return v4

    #@5
    .line 991
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 992
    return v3

    #@c
    .line 993
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v2

    #@14
    if-eq v1, v2, :cond_2

    #@16
    .line 994
    return v3

    #@17
    :cond_2
    move-object v0, p1

    #@18
    .line 995
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    #@1a
    .line 996
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@1c
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@1e
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_3

    #@24
    .line 997
    return v3

    #@25
    .line 998
    :cond_3
    return v4
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 981
    const/16 v0, 0x1f

    #@2
    .line 982
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->hashCode()I

    #@5
    move-result v1

    #@6
    .line 983
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@8
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@a
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@d
    move-result v3

    #@e
    add-int v1, v2, v3

    #@10
    .line 984
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "KeyphraseRecognitionEvent [keyphraseExtras="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 1004
    const-string/jumbo v1, ", status="

    #@19
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 1004
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->status:I

    #@1f
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1005
    const-string/jumbo v1, ", soundModelHandle="

    #@26
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1005
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->soundModelHandle:I

    #@2c
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1005
    const-string/jumbo v1, ", captureAvailable="

    #@33
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 1006
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureAvailable:Z

    #@39
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 1006
    const-string/jumbo v1, ", captureSession="

    #@40
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 1006
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureSession:I

    #@46
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 1006
    const-string/jumbo v1, ", captureDelayMs="

    #@4d
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 1007
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureDelayMs:I

    #@53
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 1007
    const-string/jumbo v1, ", capturePreambleMs="

    #@5a
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 1007
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->capturePreambleMs:I

    #@60
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 1008
    const-string/jumbo v1, ", triggerInData="

    #@67
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 1008
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    #@6d
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    .line 1009
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@73
    if-nez v0, :cond_0

    #@75
    const-string/jumbo v0, ""

    #@78
    .line 1003
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    .line 1011
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@7e
    if-nez v0, :cond_1

    #@80
    const-string/jumbo v0, ""

    #@83
    .line 1003
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    .line 1013
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@89
    if-nez v0, :cond_2

    #@8b
    const-string/jumbo v0, ""

    #@8e
    .line 1003
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    .line 1015
    const-string/jumbo v1, ", data="

    #@95
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    .line 1015
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    #@9b
    if-nez v0, :cond_3

    #@9d
    const/4 v0, 0x0

    #@9e
    .line 1003
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    .line 1015
    const-string/jumbo v1, "]"

    #@a5
    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    return-object v0

    #@ae
    .line 1010
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v2, ", sampleRate="

    #@b6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@bc
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    #@bf
    move-result v2

    #@c0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v0

    #@c8
    goto :goto_0

    #@c9
    .line 1012
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v2, ", encoding="

    #@d1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v0

    #@d5
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@d7
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    #@da
    move-result v2

    #@db
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v0

    #@e3
    goto :goto_1

    #@e4
    .line 1014
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v2, ", channelMask="

    #@ec
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v0

    #@f0
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@f2
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    #@f5
    move-result v2

    #@f6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v0

    #@fa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v0

    #@fe
    goto :goto_2

    #@ff
    .line 1015
    :cond_3
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    #@101
    array-length v0, v0

    #@102
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 955
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->status:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 956
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->soundModelHandle:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 957
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureAvailable:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    int-to-byte v0, v0

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@15
    .line 958
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureSession:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 959
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureDelayMs:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 960
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->capturePreambleMs:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 961
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    #@26
    if-eqz v0, :cond_1

    #@28
    move v0, v1

    #@29
    :goto_1
    int-to-byte v0, v0

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@2d
    .line 962
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@2f
    if-eqz v0, :cond_2

    #@31
    .line 963
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@34
    .line 964
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@36
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    #@39
    move-result v0

    #@3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 965
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@3f
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    #@42
    move-result v0

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 966
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@48
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    #@4b
    move-result v0

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 970
    :goto_2
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    #@51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    #@54
    .line 971
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@56
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@59
    .line 954
    return-void

    #@5a
    :cond_0
    move v0, v2

    #@5b
    .line 957
    goto :goto_0

    #@5c
    :cond_1
    move v0, v2

    #@5d
    .line 961
    goto :goto_1

    #@5e
    .line 968
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@61
    goto :goto_2
.end method
