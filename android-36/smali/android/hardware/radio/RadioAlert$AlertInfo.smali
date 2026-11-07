.class public final Landroid/hardware/radio/RadioAlert$AlertInfo;
.super Ljava/lang/Object;
.source "RadioAlert.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioAlert$AlertInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertArea;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCategories:[I

.field private final blacklist mCertainty:I

.field private final blacklist mLanguage:Ljava/lang/String;

.field private final blacklist mSeverity:I

.field private final blacklist mTextualMessage:Ljava/lang/String;

.field private final blacklist mUrgency:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 813
    new-instance v0, Landroid/hardware/radio/RadioAlert$AlertInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioAlert$AlertInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioAlert$AlertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    .line 720
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    .line 726
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    sget-object v1, Landroid/hardware/radio/RadioAlert$AlertArea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 728
    .local v0, "hasLanguage":Z
    if-eqz v0, :cond_43

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    goto :goto_46

    .line 731
    :cond_43
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    .line 733
    :goto_46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioAlert-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioAlert$AlertInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>([IIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .param p1, "categories"    # [I
    .param p2, "urgency"    # I
    .param p3, "severity"    # I
    .param p4, "certainty"    # I
    .param p5, "textualMessage"    # Ljava/lang/String;
    .param p7, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertArea;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 706
    .local p6, "areaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$AlertArea;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    const-string v0, "Categories can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 708
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 709
    iput-object p1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    .line 710
    iput p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    .line 711
    iput p3, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    .line 712
    iput p4, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    .line 713
    iput-object p5, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    .line 714
    const-string v0, "Area list can not be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    .line 715
    iput-object p7, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    .line 716
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 864
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 865
    return v0

    .line 867
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioAlert$AlertInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioAlert$AlertInfo;

    .line 871
    .local v1, "other":Landroid/hardware/radio/RadioAlert$AlertInfo;
    iget-object v3, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    iget-object v4, v1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_47

    iget v3, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    iget v4, v1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    if-ne v3, v4, :cond_47

    iget v3, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    iget v4, v1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    if-ne v3, v4, :cond_47

    iget v3, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    iget v4, v1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    if-ne v3, v4, :cond_47

    iget-object v3, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    .line 874
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    iget-object v4, v1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    .line 875
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    .line 876
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    goto :goto_48

    :cond_47
    move v0, v2

    .line 871
    :goto_48
    return v0

    .line 868
    .end local v1    # "other":Landroid/hardware/radio/RadioAlert$AlertInfo;
    :cond_49
    return v2
.end method

.method public whitelist getAreas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertArea;",
            ">;"
        }
    .end annotation

    .line 800
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCategories()[I
    .registers 2

    .line 744
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    return-object v0
.end method

.method public whitelist getCertainty()I
    .registers 2

    .line 779
    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 789
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .registers 2

    .line 810
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSeverity()I
    .registers 2

    .line 767
    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    return v0
.end method

.method public whitelist getUrgency()I
    .registers 2

    .line 756
    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 858
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    iget-object v7, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlertInfo [categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urgency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certainty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textualMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 832
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 834
    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 839
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 840
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_36

    .line 842
    :cond_2d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 843
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 845
    :goto_36
    return-void
.end method
