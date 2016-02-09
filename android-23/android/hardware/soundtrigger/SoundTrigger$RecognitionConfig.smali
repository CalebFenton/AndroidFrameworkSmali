.class public Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allowMultipleTriggers:Z

.field public final captureRequested:Z

.field public final data:[B

.field public final keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 683
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$1;-><init>()V

    #@5
    .line 682
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 658
    return-void
.end method

.method public constructor <init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V
    .locals 0
    .param p1, "captureRequested"    # Z
    .param p2, "allowMultipleTriggers"    # Z
    .param p3, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .param p4, "data"    # [B

    #@0
    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 676
    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    #@5
    .line 677
    iput-boolean p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    #@7
    .line 678
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@9
    .line 679
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    #@b
    .line 675
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 694
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@4
    move-result v4

    #@5
    if-ne v4, v5, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    .line 695
    .local v1, "captureRequested":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@b
    move-result v4

    #@c
    if-ne v4, v5, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    .line 697
    .local v0, "allowMultipleTriggers":Z
    :goto_1
    sget-object v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@17
    .line 698
    .local v3, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    #@1a
    move-result-object v2

    #@1b
    .line 699
    .local v2, "data":[B
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@1d
    invoke-direct {v4, v1, v0, v3, v2}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    #@20
    return-object v4

    #@21
    .line 694
    .end local v0    # "allowMultipleTriggers":Z
    .end local v1    # "captureRequested":Z
    .end local v2    # "data":[B
    .end local v3    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    :cond_0
    const/4 v1, 0x0

    #@22
    .restart local v1    # "captureRequested":Z
    goto :goto_0

    #@23
    .line 695
    :cond_1
    const/4 v0, 0x0

    #@24
    .restart local v0    # "allowMultipleTriggers":Z
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 712
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RecognitionConfig [captureRequested="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 718
    const-string/jumbo v1, ", allowMultipleTriggers="

    #@15
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 718
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    #@1b
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 718
    const-string/jumbo v1, ", keyphrases="

    #@22
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 719
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@28
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 719
    const-string/jumbo v1, ", data="

    #@33
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 719
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    #@39
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 719
    const-string/jumbo v1, "]"

    #@44
    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
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
    .line 704
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    int-to-byte v0, v0

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@b
    .line 705
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    :goto_1
    int-to-byte v0, v1

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@13
    .line 706
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@15
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@18
    .line 707
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    #@1d
    .line 703
    return-void

    #@1e
    :cond_0
    move v0, v2

    #@1f
    .line 704
    goto :goto_0

    #@20
    :cond_1
    move v1, v2

    #@21
    .line 705
    goto :goto_1
.end method
