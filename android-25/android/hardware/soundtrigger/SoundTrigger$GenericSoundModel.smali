.class public Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
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
    name = "GenericSoundModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 475
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel$1;-><init>()V

    #@5
    .line 474
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 472
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "vendorUuid"    # Ljava/util/UUID;
    .param p3, "data"    # [B

    #@0
    .prologue
    .line 486
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;I[B)V

    #@4
    .line 485
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@7
    move-result-object v2

    #@8
    .line 496
    .local v2, "uuid":Ljava/util/UUID;
    const/4 v3, 0x0

    #@9
    .line 497
    .local v3, "vendorUuid":Ljava/util/UUID;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v1

    #@d
    .line 498
    .local v1, "length":I
    if-ltz v1, :cond_0

    #@f
    .line 499
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@16
    move-result-object v3

    #@17
    .line 501
    .end local v3    # "vendorUuid":Ljava/util/UUID;
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    #@1a
    move-result-object v0

    #@1b
    .line 502
    .local v0, "data":[B
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    #@1d
    invoke-direct {v4, v2, v3, v0}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B)V

    #@20
    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 491
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "GenericSoundModel [uuid="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", vendorUuid="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->vendorUuid:Ljava/util/UUID;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 520
    const-string/jumbo v1, ", type="

    #@22
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 520
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->type:I

    #@28
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 520
    const-string/jumbo v1, ", data="

    #@2f
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 520
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->data:[B

    #@35
    if-nez v0, :cond_0

    #@37
    const/4 v0, 0x0

    #@38
    .line 519
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 520
    const-string/jumbo v1, "]"

    #@3f
    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0

    #@48
    .line 520
    :cond_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->data:[B

    #@4a
    array-length v0, v0

    #@4b
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->uuid:Ljava/util/UUID;

    #@2
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 508
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->vendorUuid:Ljava/util/UUID;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 509
    const/4 v0, -0x1

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 514
    :goto_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->data:[B

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    #@16
    .line 506
    return-void

    #@17
    .line 511
    :cond_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->vendorUuid:Ljava/util/UUID;

    #@19
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@20
    move-result v0

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 512
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->vendorUuid:Ljava/util/UUID;

    #@26
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method
