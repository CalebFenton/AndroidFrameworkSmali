.class public Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
.super Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyphraseSoundModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 389
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel$1;-><init>()V

    #@5
    .line 388
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 378
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "vendorUuid"    # Ljava/util/UUID;
    .param p3, "data"    # [B
    .param p4, "keyphrases"    # [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@0
    .prologue
    .line 384
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;I[B)V

    #@4
    .line 385
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@6
    .line 383
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@7
    move-result-object v3

    #@8
    .line 401
    .local v3, "uuid":Ljava/util/UUID;
    const/4 v4, 0x0

    #@9
    .line 402
    .local v4, "vendorUuid":Ljava/util/UUID;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v2

    #@d
    .line 403
    .local v2, "length":I
    if-ltz v2, :cond_0

    #@f
    .line 404
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@16
    move-result-object v4

    #@17
    .line 406
    .end local v4    # "vendorUuid":Ljava/util/UUID;
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    #@1a
    move-result-object v0

    #@1b
    .line 407
    .local v0, "data":[B
    sget-object v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@23
    .line 408
    .local v1, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    new-instance v5, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@25
    invoke-direct {v5, v3, v4, v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V

    #@28
    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 413
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
    .line 446
    if-ne p0, p1, :cond_0

    #@4
    .line 447
    return v4

    #@5
    .line 448
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 449
    return v3

    #@c
    .line 450
    :cond_1
    instance-of v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@e
    if-nez v1, :cond_2

    #@10
    .line 451
    return v3

    #@11
    :cond_2
    move-object v0, p1

    #@12
    .line 452
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@14
    .line 453
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@16
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@18
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_3

    #@1e
    .line 454
    return v3

    #@1f
    .line 455
    :cond_3
    return v4
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 438
    const/16 v0, 0x1f

    #@2
    .line 439
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->hashCode()I

    #@5
    move-result v1

    #@6
    .line 440
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@8
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@a
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@d
    move-result v3

    #@e
    add-int v1, v2, v3

    #@10
    .line 441
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "KeyphraseSoundModel [keyphrases="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 432
    const-string/jumbo v1, ", uuid="

    #@19
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 432
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@1f
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 432
    const-string/jumbo v1, ", vendorUuid="

    #@26
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 432
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    #@2c
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 433
    const-string/jumbo v1, ", type="

    #@33
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 433
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->type:I

    #@39
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 433
    const-string/jumbo v1, ", data="

    #@40
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 433
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->data:[B

    #@46
    if-nez v0, :cond_0

    #@48
    const/4 v0, 0x0

    #@49
    .line 431
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 433
    const-string/jumbo v1, "]"

    #@50
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    return-object v0

    #@59
    .line 433
    :cond_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->data:[B

    #@5b
    array-length v0, v0

    #@5c
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 418
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    #@2
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 419
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 420
    const/4 v0, -0x1

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 425
    :goto_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->data:[B

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    #@16
    .line 426
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@18
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1b
    .line 417
    return-void

    #@1c
    .line 422
    :cond_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    #@1e
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 423
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    #@2b
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32
    goto :goto_0
.end method
