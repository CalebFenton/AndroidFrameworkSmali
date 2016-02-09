.class public Landroid/hardware/radio/RadioManager$BandConfig;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$BandConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$BandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 703
    new-instance v0, Landroid/hardware/radio/RadioManager$BandConfig$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$BandConfig$1;-><init>()V

    #@5
    .line 702
    sput-object v0, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 643
    return-void
.end method

.method constructor <init>(IIIII)V
    .locals 6
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I

    #@0
    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 652
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move v4, p4

    #@9
    move v5, p5

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    #@d
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@f
    .line 651
    return-void
.end method

.method constructor <init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V
    .locals 0
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@0
    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 648
    iput-object p1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@5
    .line 647
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 656
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    #@9
    iput-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@b
    .line 655
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 720
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
    .line 738
    if-ne p0, p1, :cond_0

    #@4
    .line 739
    return v4

    #@5
    .line 740
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$BandConfig;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 741
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 742
    check-cast v0, Landroid/hardware/radio/RadioManager$BandConfig;

    #@d
    .line 743
    .local v0, "other":Landroid/hardware/radio/RadioManager$BandConfig;
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@f
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandConfig;->getDescriptor()Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@12
    move-result-object v2

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 744
    return v3

    #@16
    .line 745
    :cond_2
    return v4
.end method

.method getDescriptor()Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 1

    #@0
    .prologue
    .line 660
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@2
    return-object v0
.end method

.method public getLowerLimit()I
    .locals 1

    #@0
    .prologue
    .line 684
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRegion()I
    .locals 1

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSpacing()I
    .locals 1

    #@0
    .prologue
    .line 698
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 677
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@2
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 730
    const/16 v0, 0x1f

    #@2
    .line 732
    .local v0, "prime":I
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@4
    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    #@7
    move-result v2

    #@8
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 733
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BandConfig [ "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@e
    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "]"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 715
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 714
    return-void
.end method
