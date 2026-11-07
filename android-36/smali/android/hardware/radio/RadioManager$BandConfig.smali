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


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$BandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1078
    new-instance v0, Landroid/hardware/radio/RadioManager$BandConfig$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$BandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(IIIII)V
    .registers 12
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "region":I
    .end local p2    # "type":I
    .end local p3    # "lowerLimit":I
    .end local p4    # "upperLimit":I
    .end local p5    # "spacing":I
    .local v1, "region":I
    .local v2, "type":I
    .local v3, "lowerLimit":I
    .local v4, "upperLimit":I
    .local v5, "spacing":I
    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1021
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V
    .registers 9
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    const-string v0, "Descriptor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1014
    new-instance v1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v3

    .line 1015
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v5

    .line 1016
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1017
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1025
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1126
    return v0

    .line 1127
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$BandConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1128
    return v2

    .line 1129
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 1130
    .local v1, "other":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandConfig;->getDescriptor()Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v3

    .line 1131
    .local v3, "otherDesc":Landroid/hardware/radio/RadioManager$BandDescriptor;
    iget-object v4, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    if-nez v4, :cond_17

    move v4, v0

    goto :goto_18

    :cond_17
    move v4, v2

    :goto_18
    if-nez v3, :cond_1c

    move v5, v0

    goto :goto_1d

    :cond_1c
    move v5, v2

    :goto_1d
    if-eq v4, v5, :cond_20

    return v2

    .line 1132
    :cond_20
    iget-object v4, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    if-eqz v4, :cond_2d

    iget-object v4, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v4, v3}, Landroid/hardware/radio/RadioManager$BandDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    return v2

    .line 1133
    :cond_2d
    return v0
.end method

.method greylist-max-o getDescriptor()Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 2

    .line 1028
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public whitelist getLowerLimit()I
    .registers 2

    .line 1056
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v0

    return v0
.end method

.method public whitelist getRegion()I
    .registers 2

    .line 1036
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v0

    return v0
.end method

.method public whitelist getSpacing()I
    .registers 2

    .line 1074
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v0

    return v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 1047
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v0

    return v0
.end method

.method public whitelist getUpperLimit()I
    .registers 2

    .line 1065
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1117
    const/16 v0, 0x1f

    .line 1118
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1119
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v3}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1120
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BandConfig [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

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

    .line 1101
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$BandConfig;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1102
    return-void
.end method
