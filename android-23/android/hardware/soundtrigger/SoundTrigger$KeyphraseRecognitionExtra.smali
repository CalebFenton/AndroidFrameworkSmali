.class public Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
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
    name = "KeyphraseRecognitionExtra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final coarseConfidenceLevel:I

.field public final confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

.field public final id:I

.field public final recognitionModes:I


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 828
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra$1;-><init>()V

    #@5
    .line 827
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 804
    return-void
.end method

.method public constructor <init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "recognitionModes"    # I
    .param p3, "coarseConfidenceLevel"    # I
    .param p4, "confidenceLevels"    # [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@0
    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 821
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    #@5
    .line 822
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    #@7
    .line 823
    iput p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    #@9
    .line 824
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@b
    .line 820
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 839
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 840
    .local v2, "id":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v3

    #@8
    .line 841
    .local v3, "recognitionModes":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v0

    #@c
    .line 842
    .local v0, "coarseConfidenceLevel":I
    sget-object v4, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@14
    .line 843
    .local v1, "confidenceLevels":[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@16
    invoke-direct {v4, v2, v3, v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    #@19
    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 857
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
    .line 873
    if-ne p0, p1, :cond_0

    #@4
    .line 874
    return v4

    #@5
    .line 875
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 876
    return v3

    #@8
    .line 877
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 878
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 879
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    #@16
    .line 880
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@18
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@1a
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 881
    return v3

    #@21
    .line 882
    :cond_3
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    #@23
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    #@25
    if-eq v1, v2, :cond_4

    #@27
    .line 883
    return v3

    #@28
    .line 884
    :cond_4
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    #@2a
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    #@2c
    if-eq v1, v2, :cond_5

    #@2e
    .line 885
    return v3

    #@2f
    .line 886
    :cond_5
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    #@31
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    #@33
    if-eq v1, v2, :cond_6

    #@35
    .line 887
    return v3

    #@36
    .line 888
    :cond_6
    return v4
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 862
    const/16 v0, 0x1f

    #@2
    .line 864
    .local v0, "prime":I
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@4
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@7
    move-result v2

    #@8
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 865
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@c
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    #@e
    add-int v1, v2, v3

    #@10
    .line 866
    mul-int/lit8 v2, v1, 0x1f

    #@12
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    #@14
    add-int v1, v2, v3

    #@16
    .line 867
    mul-int/lit8 v2, v1, 0x1f

    #@18
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    #@1a
    add-int v1, v2, v3

    #@1c
    .line 868
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "KeyphraseRecognitionExtra [id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", recognitionModes="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 894
    const-string/jumbo v1, ", coarseConfidenceLevel="

    #@22
    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 894
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    #@28
    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 895
    const-string/jumbo v1, ", confidenceLevels="

    #@2f
    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 895
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@35
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 895
    const-string/jumbo v1, "]"

    #@40
    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 849
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 850
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 851
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 852
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@14
    .line 848
    return-void
.end method
