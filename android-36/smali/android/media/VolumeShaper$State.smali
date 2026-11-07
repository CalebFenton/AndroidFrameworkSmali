.class public final Landroid/media/VolumeShaper$State;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-r mVolume:F

.field private greylist-max-r mXOffset:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1556
    new-instance v0, Landroid/media/VolumeShaper$State$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$State$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-r <init>(FF)V
    .registers 3
    .param p1, "volume"    # F
    .param p2, "xOffset"    # F

    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1571
    iput p1, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    .line 1572
    iput p2, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    .line 1573
    return-void
.end method

.method public static blacklist fromParcelable(Landroid/media/VolumeShaperState;)Landroid/media/VolumeShaper$State;
    .registers 4
    .param p0, "p"    # Landroid/media/VolumeShaperState;

    .line 1553
    new-instance v0, Landroid/media/VolumeShaper$State;

    iget v1, p0, Landroid/media/VolumeShaperState;->volume:F

    iget v2, p0, Landroid/media/VolumeShaperState;->xOffset:F

    invoke-direct {v0, v1, v2}, Landroid/media/VolumeShaper$State;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1535
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1526
    instance-of v0, p1, Landroid/media/VolumeShaper$State;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1527
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 1528
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/media/VolumeShaper$State;

    .line 1529
    .local v2, "other":Landroid/media/VolumeShaper$State;
    iget v3, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    iget v4, v2, Landroid/media/VolumeShaper$State;->mVolume:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    iget v3, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    iget v4, v2, Landroid/media/VolumeShaper$State;->mXOffset:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    move v1, v0

    :cond_1e
    return v1
.end method

.method public greylist-max-o getVolume()F
    .registers 2

    .line 1580
    iget v0, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    return v0
.end method

.method public greylist-max-o getXOffset()F
    .registers 2

    .line 1589
    iget v0, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1521
    iget v0, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toParcelable()Landroid/media/VolumeShaperState;
    .registers 3

    .line 1545
    new-instance v0, Landroid/media/VolumeShaperState;

    invoke-direct {v0}, Landroid/media/VolumeShaperState;-><init>()V

    .line 1546
    .local v0, "result":Landroid/media/VolumeShaperState;
    iget v1, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    iput v1, v0, Landroid/media/VolumeShaperState;->volume:F

    .line 1547
    iget v1, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    iput v1, v0, Landroid/media/VolumeShaperState;->xOffset:F

    .line 1548
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeShaper.State{mVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$State;->mVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mXOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$State;->mXOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

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

    .line 1540
    invoke-virtual {p0}, Landroid/media/VolumeShaper$State;->toParcelable()Landroid/media/VolumeShaperState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaperState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1541
    return-void
.end method
