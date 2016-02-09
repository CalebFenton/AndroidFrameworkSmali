.class public Landroid/hardware/radio/RadioManager$AmBandDescriptor;
.super Landroid/hardware/radio/RadioManager$BandDescriptor;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmBandDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$AmBandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStereo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 592
    new-instance v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;-><init>()V

    #@5
    .line 591
    sput-object v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 569
    return-void
.end method

.method constructor <init>(IIIIIZ)V
    .locals 0
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I
    .param p6, "stereo"    # Z

    #@0
    .prologue
    .line 575
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    #@3
    .line 576
    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    #@5
    .line 574
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 587
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    #@5
    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@8
    move-result v1

    #@9
    if-ne v1, v0, :cond_0

    #@b
    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    #@d
    .line 586
    return-void

    #@e
    .line 588
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 610
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
    .line 628
    if-ne p0, p1, :cond_0

    #@4
    .line 629
    return v4

    #@5
    .line 630
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    .line 631
    return v3

    #@c
    .line 632
    :cond_1
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    #@e
    if-nez v1, :cond_2

    #@10
    .line 633
    return v3

    #@11
    :cond_2
    move-object v0, p1

    #@12
    .line 634
    check-cast v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    #@14
    .line 635
    .local v0, "other":Landroid/hardware/radio/RadioManager$AmBandDescriptor;
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    #@16
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    #@19
    move-result v2

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 636
    return v3

    #@1d
    .line 637
    :cond_3
    return v4
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 620
    const/16 v0, 0x1f

    #@2
    .line 621
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    #@5
    move-result v1

    #@6
    .line 622
    .local v1, "result":I
    mul-int/lit8 v3, v1, 0x1f

    #@8
    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    #@a
    if-eqz v2, :cond_0

    #@c
    const/4 v2, 0x1

    #@d
    :goto_0
    add-int v1, v3, v2

    #@f
    .line 623
    return v1

    #@10
    .line 622
    :cond_0
    const/4 v2, 0x0

    #@11
    goto :goto_0
.end method

.method public isStereoSupported()Z
    .locals 1

    #@0
    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "AmBandDescriptor [ "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " mStereo="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, "]"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 604
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 605
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    int-to-byte v0, v0

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@c
    .line 603
    return-void

    #@d
    .line 605
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method
