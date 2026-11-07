.class public final Landroid/uwb/AngleMeasurement;
.super Ljava/lang/Object;
.source "AngleMeasurement.java"

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
            "Landroid/uwb/AngleMeasurement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfidenceLevel:D

.field private final blacklist mErrorRadians:D

.field private final blacklist mRadians:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Landroid/uwb/AngleMeasurement$1;

    invoke-direct {v0}, Landroid/uwb/AngleMeasurement$1;-><init>()V

    sput-object v0, Landroid/uwb/AngleMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(DDD)V
    .registers 12
    .param p1, "radians"    # D
    .param p3, "errorRadians"    # D
    .param p5, "confidenceLevel"    # D

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_62

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_62

    .line 58
    iput-wide p1, p0, Landroid/uwb/AngleMeasurement;->mRadians:D

    .line 60
    const-wide/16 v2, 0x0

    cmpg-double v4, p3, v2

    if-ltz v4, :cond_49

    cmpl-double v0, p3, v0

    if-gtz v0, :cond_49

    .line 63
    iput-wide p3, p0, Landroid/uwb/AngleMeasurement;->mErrorRadians:D

    .line 65
    cmpg-double v0, p5, v2

    if-ltz v0, :cond_30

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p5, v0

    if-gtz v0, :cond_30

    .line 68
    iput-wide p5, p0, Landroid/uwb/AngleMeasurement;->mConfidenceLevel:D

    .line 69
    return-void

    .line 66
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid confidence level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid error radians: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radians: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 112
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 113
    return v0

    .line 116
    :cond_4
    instance-of v1, p1, Landroid/uwb/AngleMeasurement;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 117
    move-object v1, p1

    check-cast v1, Landroid/uwb/AngleMeasurement;

    .line 118
    .local v1, "other":Landroid/uwb/AngleMeasurement;
    iget-wide v3, p0, Landroid/uwb/AngleMeasurement;->mRadians:D

    invoke-virtual {v1}, Landroid/uwb/AngleMeasurement;->getRadians()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2b

    iget-wide v3, p0, Landroid/uwb/AngleMeasurement;->mErrorRadians:D

    .line 119
    invoke-virtual {v1}, Landroid/uwb/AngleMeasurement;->getErrorRadians()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2b

    iget-wide v3, p0, Landroid/uwb/AngleMeasurement;->mConfidenceLevel:D

    .line 120
    invoke-virtual {v1}, Landroid/uwb/AngleMeasurement;->getConfidenceLevel()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 118
    :goto_2c
    return v0

    .line 122
    .end local v1    # "other":Landroid/uwb/AngleMeasurement;
    :cond_2d
    return v2
.end method

.method public whitelist getConfidenceLevel()D
    .registers 3

    .line 104
    iget-wide v0, p0, Landroid/uwb/AngleMeasurement;->mConfidenceLevel:D

    return-wide v0
.end method

.method public whitelist getErrorRadians()D
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/uwb/AngleMeasurement;->mErrorRadians:D

    return-wide v0
.end method

.method public whitelist getRadians()D
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/uwb/AngleMeasurement;->mRadians:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 130
    iget-wide v0, p0, Landroid/uwb/AngleMeasurement;->mRadians:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/AngleMeasurement;->mErrorRadians:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Landroid/uwb/AngleMeasurement;->mConfidenceLevel:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AngleMeasurement[radians: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/AngleMeasurement;->mRadians:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorRadians: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/AngleMeasurement;->mErrorRadians:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidenceLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/uwb/AngleMeasurement;->mConfidenceLevel:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget-wide v0, p0, Landroid/uwb/AngleMeasurement;->mRadians:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 141
    iget-wide v0, p0, Landroid/uwb/AngleMeasurement;->mErrorRadians:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 142
    iget-wide v0, p0, Landroid/uwb/AngleMeasurement;->mConfidenceLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 143
    return-void
.end method
