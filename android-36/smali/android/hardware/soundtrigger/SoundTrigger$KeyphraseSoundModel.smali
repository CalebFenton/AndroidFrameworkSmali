.class public final Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
.super Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyphraseSoundModel"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 789
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V
    .registers 11
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "vendorUuid"    # Ljava/util/UUID;
    .param p3, "data"    # [B
    .param p4, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 780
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "uuid":Ljava/util/UUID;
    .end local p2    # "vendorUuid":Ljava/util/UUID;
    .end local p3    # "data":[B
    .end local p4    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .local v1, "uuid":Ljava/util/UUID;
    .local v2, "vendorUuid":Ljava/util/UUID;
    .local v3, "data":[B
    .local v4, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;I)V

    .line 781
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;I)V
    .registers 12
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "vendorUuid"    # Ljava/util/UUID;
    .param p3, "data"    # [B
    .param p4, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .param p5, "version"    # I

    .line 774
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p5

    .end local p1    # "uuid":Ljava/util/UUID;
    .end local p2    # "vendorUuid":Ljava/util/UUID;
    .end local p3    # "data":[B
    .end local p5    # "version":I
    .local v1, "uuid":Ljava/util/UUID;
    .local v2, "vendorUuid":Ljava/util/UUID;
    .local v4, "data":[B
    .local v5, "version":I
    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;I[BI)V

    .line 775
    if-eqz p4, :cond_d

    move-object p1, p4

    goto :goto_10

    :cond_d
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    :goto_10
    iput-object p1, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 776
    return-void
.end method

.method public static whitelist readFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 9
    .param p0, "in"    # Landroid/os/Parcel;

    .line 807
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 808
    .local v2, "uuid":Ljava/util/UUID;
    const/4 v0, 0x0

    .line 809
    .local v0, "vendorUuid":Ljava/util/UUID;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 810
    .local v7, "length":I
    if-ltz v7, :cond_19

    .line 811
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    move-object v3, v0

    goto :goto_1a

    .line 810
    :cond_19
    move-object v3, v0

    .line 813
    .end local v0    # "vendorUuid":Ljava/util/UUID;
    .local v3, "vendorUuid":Ljava/util/UUID;
    :goto_1a
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 814
    .local v6, "version":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v4

    .line 815
    .local v4, "data":[B
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 816
    .local v5, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-direct/range {v1 .. v6}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;I)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 858
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 859
    return v0

    .line 861
    :cond_4
    invoke-super {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 862
    return v2

    .line 864
    :cond_c
    instance-of v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v1, :cond_11

    .line 865
    return v2

    .line 867
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 868
    .local v1, "other":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 869
    return v2

    .line 871
    :cond_23
    return v0
.end method

.method public whitelist getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .registers 2

    .line 786
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 850
    const/16 v0, 0x1f

    .line 851
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->hashCode()I

    move-result v1

    .line 852
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 853
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyphraseSoundModel [keyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 842
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vendorUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 843
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 844
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getData()[B

    move-result-object v1

    if-nez v1, :cond_4f

    const/4 v1, 0x0

    goto :goto_54

    :cond_4f
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getData()[B

    move-result-object v1

    array-length v1, v1

    :goto_54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 845
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 841
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 827
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_16

    .line 829
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 831
    :cond_16
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    :goto_30
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 836
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 837
    return-void
.end method
