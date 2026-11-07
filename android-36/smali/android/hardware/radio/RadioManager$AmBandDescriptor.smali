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


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$AmBandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mStereo:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 955
    new-instance v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIIZ)V
    .registers 8
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I
    .param p6, "stereo"    # Z

    .line 938
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    .line 939
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "region":I
    .local v0, "spacing":I
    .local p2, "region":I
    .local p3, "type":I
    .local p4, "lowerLimit":I
    .local p5, "upperLimit":I
    iput-boolean p6, p1, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    .line 940
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 951
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    .line 953
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 974
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 993
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 994
    return v0

    .line 995
    :cond_4
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 996
    return v2

    .line 997
    :cond_c
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    if-nez v1, :cond_11

    .line 998
    return v2

    .line 999
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    .line 1000
    .local v1, "other":Landroid/hardware/radio/RadioManager$AmBandDescriptor;
    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    move-result v4

    if-eq v3, v4, :cond_1d

    .line 1001
    return v2

    .line 1002
    :cond_1d
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 985
    const/16 v0, 0x1f

    .line 986
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    move-result v1

    .line 987
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    add-int/2addr v2, v3

    .line 988
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public whitelist isStereoSupported()Z
    .registers 2

    .line 947
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmBandDescriptor [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 968
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 969
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 970
    return-void
.end method
