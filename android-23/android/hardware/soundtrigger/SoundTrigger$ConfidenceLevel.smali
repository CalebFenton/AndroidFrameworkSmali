.class public Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
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
    name = "ConfidenceLevel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final confidenceLevel:I

.field public final userId:I


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 741
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;-><init>()V

    #@5
    .line 740
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 731
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "confidenceLevel"    # I

    #@0
    .prologue
    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 736
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    #@5
    .line 737
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    #@7
    .line 735
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 752
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 753
    .local v1, "userId":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    .line 754
    .local v0, "confidenceLevel":I
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@a
    invoke-direct {v2, v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    #@d
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 765
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
    .line 779
    if-ne p0, p1, :cond_0

    #@4
    .line 780
    return v4

    #@5
    .line 781
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 782
    return v3

    #@8
    .line 783
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 784
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 785
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    #@16
    .line 786
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    #@18
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 787
    return v3

    #@1d
    .line 788
    :cond_3
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    #@1f
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    #@21
    if-eq v1, v2, :cond_4

    #@23
    .line 789
    return v3

    #@24
    .line 790
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 770
    const/16 v0, 0x1f

    #@2
    .line 772
    .local v0, "prime":I
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    #@4
    add-int/lit8 v1, v2, 0x1f

    #@6
    .line 773
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@8
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    #@a
    add-int v1, v2, v3

    #@c
    .line 774
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ConfidenceLevel [userId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 796
    const-string/jumbo v1, ", confidenceLevel="

    #@15
    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 796
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    #@1b
    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 796
    const-string/jumbo v1, "]"

    #@22
    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 759
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 760
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 758
    return-void
.end method
