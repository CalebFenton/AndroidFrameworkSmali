.class public final Landroid/telephony/satellite/AntennaDirection;
.super Ljava/lang/Object;
.source "AntennaDirection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/AntennaDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mX:F

.field private blacklist mY:F

.field private blacklist mZ:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Landroid/telephony/satellite/AntennaDirection$1;

    invoke-direct {v0}, Landroid/telephony/satellite/AntennaDirection$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/AntennaDirection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    .line 56
    iput p2, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    .line 57
    iput p3, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-direct {p0, p1}, Landroid/telephony/satellite/AntennaDirection;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/AntennaDirection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/AntennaDirection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    .line 137
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 109
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 110
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/AntennaDirection;

    .line 111
    .local v2, "that":Landroid/telephony/satellite/AntennaDirection;
    iget v3, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    iget v4, v2, Landroid/telephony/satellite/AntennaDirection;->mX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2e

    iget v3, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    iget v4, v2, Landroid/telephony/satellite/AntennaDirection;->mY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2e

    iget v3, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    iget v4, v2, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 109
    .end local v2    # "that":Landroid/telephony/satellite/AntennaDirection;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist getX()F
    .registers 2

    .line 122
    iget v0, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    return v0
.end method

.method public whitelist getY()F
    .registers 2

    .line 126
    iget v0, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    return v0
.end method

.method public whitelist getZ()F
    .registers 2

    .line 130
    iget v0, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 118
    iget v0, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "X:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v1, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, "Y:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v2, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "Z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget v0, p0, Landroid/telephony/satellite/AntennaDirection;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 72
    iget v0, p0, Landroid/telephony/satellite/AntennaDirection;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 73
    iget v0, p0, Landroid/telephony/satellite/AntennaDirection;->mZ:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    return-void
.end method
