.class public final Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keyphrase"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mRecognitionModes:I

.field private final blacklist mText:Ljava/lang/String;

.field private final blacklist mUsers:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 652
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/util/Locale;Ljava/lang/String;[I)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "recognitionModes"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "users"    # [I

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mId:I

    .line 607
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mRecognitionModes:I

    .line 608
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mLocale:Ljava/util/Locale;

    .line 609
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mText:Ljava/lang/String;

    .line 610
    if-eqz p5, :cond_1b

    move-object v0, p5

    goto :goto_1e

    :cond_1b
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_1e
    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mUsers:[I

    .line 611
    return-void
.end method

.method public static whitelist readFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .registers 8
    .param p0, "in"    # Landroid/os/Parcel;

    .line 670
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 671
    .local v1, "id":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 672
    .local v2, "recognitionModes":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 673
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 674
    .local v4, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 675
    .local v0, "users":[I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 676
    .local v6, "numUsers":I
    if-ltz v6, :cond_22

    .line 677
    new-array v0, v6, [I

    .line 678
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readIntArray([I)V

    move-object v5, v0

    goto :goto_23

    .line 676
    :cond_22
    move-object v5, v0

    .line 680
    .end local v0    # "users":[I
    .local v5, "users":[I
    :goto_23
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/util/Locale;Ljava/lang/String;[I)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 717
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 718
    return v0

    .line 720
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 721
    return v1

    .line 723
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 724
    return v1

    .line 726
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 727
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    .line 728
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 729
    return v1

    .line 731
    :cond_23
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 732
    return v1

    .line 734
    :cond_32
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v4

    if-eq v3, v4, :cond_3d

    .line 735
    return v1

    .line 737
    :cond_3d
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 738
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 739
    return v1

    .line 741
    :cond_4a
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 742
    return v1

    .line 744
    :cond_59
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v4

    if-eq v3, v4, :cond_64

    .line 745
    return v1

    .line 747
    :cond_64
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_73

    .line 748
    return v1

    .line 750
    :cond_73
    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 615
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mId:I

    return v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .registers 2

    .line 634
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getRecognitionModes()I
    .registers 2

    .line 628
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mRecognitionModes:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .registers 2

    .line 640
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUsers()[I
    .registers 2

    .line 649
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->mUsers:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 705
    const/16 v0, 0x1f

    .line 706
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 707
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_e

    move v3, v4

    goto :goto_16

    :cond_e
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v2, v3

    .line 708
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v3

    add-int/2addr v1, v3

    .line 709
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_27

    goto :goto_2f

    :cond_27
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2f
    add-int/2addr v2, v4

    .line 710
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v3

    add-int/2addr v1, v3

    .line 711
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int/2addr v2, v3

    .line 712
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyphrase [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 756
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 757
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 685
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v0

    if-eqz v0, :cond_36

    .line 690
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_3a

    .line 693
    :cond_36
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    :goto_3a
    return-void
.end method
