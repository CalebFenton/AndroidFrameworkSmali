.class public final Landroid/location/Geofence;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Geofence$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_HORIZONTAL_CIRCLE:I = 0x1


# instance fields
.field private final mLatitude:D

.field private final mLongitude:D

.field private final mRadius:F

.field private final mType:I


# direct methods
.method static synthetic -wrap0(I)V
    .locals 0
    .param p0, "type"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/location/Geofence$1;

    #@2
    invoke-direct {v0}, Landroid/location/Geofence$1;-><init>()V

    #@5
    sput-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method private constructor <init>(DDF)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    invoke-static {p5}, Landroid/location/Geofence;->checkRadius(F)V

    #@6
    .line 53
    invoke-static {p1, p2, p3, p4}, Landroid/location/Geofence;->checkLatLong(DD)V

    #@9
    .line 54
    const/4 v0, 0x1

    #@a
    iput v0, p0, Landroid/location/Geofence;->mType:I

    #@c
    .line 55
    iput-wide p1, p0, Landroid/location/Geofence;->mLatitude:D

    #@e
    .line 56
    iput-wide p3, p0, Landroid/location/Geofence;->mLongitude:D

    #@10
    .line 57
    iput p5, p0, Landroid/location/Geofence;->mRadius:F

    #@12
    .line 51
    return-void
.end method

.method private static checkLatLong(DD)V
    .locals 4
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    #@0
    .prologue
    .line 87
    const-wide v0, 0x4056800000000000L    # 90.0

    #@5
    cmpl-double v0, p0, v0

    #@7
    if-gtz v0, :cond_0

    #@9
    const-wide v0, -0x3fa9800000000000L    # -90.0

    #@e
    cmpg-double v0, p0, v0

    #@10
    if-gez v0, :cond_1

    #@12
    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "invalid latitude: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 90
    :cond_1
    const-wide v0, 0x4066800000000000L    # 180.0

    #@31
    cmpl-double v0, p2, v0

    #@33
    if-gtz v0, :cond_2

    #@35
    const-wide v0, -0x3f99800000000000L    # -180.0

    #@3a
    cmpg-double v0, p2, v0

    #@3c
    if-gez v0, :cond_3

    #@3e
    .line 91
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "invalid longitude: "

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    .line 86
    :cond_3
    return-void
.end method

.method private static checkRadius(F)V
    .locals 3
    .param p0, "radius"    # F

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p0, v0

    #@3
    if-gtz v0, :cond_0

    #@5
    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "invalid radius: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 80
    :cond_0
    return-void
.end method

.method private static checkType(I)V
    .locals 3
    .param p0, "type"    # I

    #@0
    .prologue
    .line 96
    const/4 v0, 0x1

    #@1
    if-eq p0, v0, :cond_0

    #@3
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "invalid type: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 95
    :cond_0
    return-void
.end method

.method public static createCircle(DDF)Landroid/location/Geofence;
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "radius"    # F

    #@0
    .prologue
    .line 48
    new-instance v1, Landroid/location/Geofence;

    #@2
    move-wide v2, p0

    #@3
    move-wide v4, p2

    #@4
    move v6, p4

    #@5
    invoke-direct/range {v1 .. v6}, Landroid/location/Geofence;-><init>(DDF)V

    #@8
    return-object v1
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 131
    packed-switch p0, :pswitch_data_0

    #@3
    .line 135
    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    #@6
    .line 136
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 133
    :pswitch_0
    const-string/jumbo v0, "CIRCLE"

    #@b
    return-object v0

    #@c
    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 165
    if-ne p0, p1, :cond_0

    #@4
    .line 166
    return v7

    #@5
    .line 167
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 168
    return v6

    #@8
    .line 169
    :cond_1
    instance-of v1, p1, Landroid/location/Geofence;

    #@a
    if-nez v1, :cond_2

    #@c
    .line 170
    return v6

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 171
    check-cast v0, Landroid/location/Geofence;

    #@10
    .line 172
    .local v0, "other":Landroid/location/Geofence;
    iget v1, p0, Landroid/location/Geofence;->mRadius:F

    #@12
    iget v2, v0, Landroid/location/Geofence;->mRadius:F

    #@14
    cmpl-float v1, v1, v2

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 173
    return v6

    #@19
    .line 174
    :cond_3
    iget-wide v2, p0, Landroid/location/Geofence;->mLatitude:D

    #@1b
    iget-wide v4, v0, Landroid/location/Geofence;->mLatitude:D

    #@1d
    cmpl-double v1, v2, v4

    #@1f
    if-eqz v1, :cond_4

    #@21
    .line 175
    return v6

    #@22
    .line 176
    :cond_4
    iget-wide v2, p0, Landroid/location/Geofence;->mLongitude:D

    #@24
    iget-wide v4, v0, Landroid/location/Geofence;->mLongitude:D

    #@26
    cmpl-double v1, v2, v4

    #@28
    if-eqz v1, :cond_5

    #@2a
    .line 177
    return v6

    #@2b
    .line 178
    :cond_5
    iget v1, p0, Landroid/location/Geofence;->mType:I

    #@2d
    iget v2, v0, Landroid/location/Geofence;->mType:I

    #@2f
    if-eq v1, v2, :cond_6

    #@31
    .line 179
    return v6

    #@32
    .line 180
    :cond_6
    return v7
.end method

.method public getLatitude()D
    .locals 2

    #@0
    .prologue
    .line 67
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    #@2
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    #@0
    .prologue
    .line 72
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    #@2
    return-wide v0
.end method

.method public getRadius()F
    .locals 1

    #@0
    .prologue
    .line 77
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 62
    iget v0, p0, Landroid/location/Geofence;->mType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    .line 148
    const/16 v0, 0x1f

    #@4
    .line 151
    .local v0, "prime":I
    iget-wide v4, p0, Landroid/location/Geofence;->mLatitude:D

    #@6
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@9
    move-result-wide v2

    #@a
    .line 152
    .local v2, "temp":J
    ushr-long v4, v2, v6

    #@c
    xor-long/2addr v4, v2

    #@d
    long-to-int v4, v4

    #@e
    add-int/lit8 v1, v4, 0x1f

    #@10
    .line 153
    .local v1, "result":I
    iget-wide v4, p0, Landroid/location/Geofence;->mLongitude:D

    #@12
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@15
    move-result-wide v2

    #@16
    .line 154
    mul-int/lit8 v4, v1, 0x1f

    #@18
    ushr-long v6, v2, v6

    #@1a
    xor-long/2addr v6, v2

    #@1b
    long-to-int v5, v6

    #@1c
    add-int v1, v4, v5

    #@1e
    .line 155
    mul-int/lit8 v4, v1, 0x1f

    #@20
    iget v5, p0, Landroid/location/Geofence;->mRadius:F

    #@22
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    #@25
    move-result v5

    #@26
    add-int v1, v4, v5

    #@28
    .line 156
    mul-int/lit8 v4, v1, 0x1f

    #@2a
    iget v5, p0, Landroid/location/Geofence;->mType:I

    #@2c
    add-int v1, v4, v5

    #@2e
    .line 157
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 142
    const-string/jumbo v0, "Geofence[%s %.6f, %.6f %.0fm]"

    #@3
    const/4 v1, 0x4

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 143
    iget v2, p0, Landroid/location/Geofence;->mType:I

    #@8
    invoke-static {v2}, Landroid/location/Geofence;->typeToString(I)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget-wide v2, p0, Landroid/location/Geofence;->mLatitude:D

    #@11
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget-wide v2, p0, Landroid/location/Geofence;->mLongitude:D

    #@1a
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    iget v2, p0, Landroid/location/Geofence;->mRadius:F

    #@23
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x3

    #@28
    aput-object v2, v1, v3

    #@2a
    .line 142
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 124
    iget v0, p0, Landroid/location/Geofence;->mType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 125
    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@a
    .line 126
    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@f
    .line 127
    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 123
    return-void
.end method
