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


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist confidenceLevel:I

.field public final greylist userId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .registers 1

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1813
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(II)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "confidenceLevel"    # I

    .line 1808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1809
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    .line 1810
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    .line 1811
    return-void
.end method

.method private static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1825
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1826
    .local v0, "userId":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1827
    .local v1, "confidenceLevel":I
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v2, v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1838
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1852
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1853
    return v0

    .line 1854
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1855
    return v1

    .line 1856
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1857
    return v1

    .line 1858
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    .line 1859
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    if-eq v3, v4, :cond_1d

    .line 1860
    return v1

    .line 1861
    :cond_1d
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    if-eq v3, v4, :cond_24

    .line 1862
    return v1

    .line 1863
    :cond_24
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1843
    const/16 v0, 0x1f

    .line 1844
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1845
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    add-int/2addr v2, v3

    .line 1846
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    add-int/2addr v1, v3

    .line 1847
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfidenceLevel [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidenceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1832
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1833
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1834
    return-void
.end method
