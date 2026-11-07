.class Landroid/graphics/ParcelableColorSpace$1;
.super Ljava/lang/Object;
.source "ParcelableColorSpace.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ParcelableColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/ParcelableColorSpace;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/ParcelableColorSpace;
    .registers 24
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_43

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 121
    .local v2, "primaries":[F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 122
    .local v3, "whitePoint":[F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 123
    .local v5, "a":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 124
    .local v7, "b":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    .line 125
    .local v9, "c":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    .line 126
    .local v11, "d":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v13

    .line 127
    .local v13, "e":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    .line 128
    .local v15, "f":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 129
    .local v17, "g":D
    new-instance v4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-direct/range {v4 .. v18}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    .line 131
    .local v4, "function":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    move/from16 v19, v0

    .end local v0    # "id":I
    .local v19, "id":I
    new-instance v0, Landroid/graphics/ParcelableColorSpace;

    move-wide/from16 v20, v5

    .end local v5    # "a":D
    .local v20, "a":D
    new-instance v5, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    invoke-direct {v0, v5}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    return-object v0

    .line 134
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "primaries":[F
    .end local v3    # "whitePoint":[F
    .end local v4    # "function":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .end local v7    # "b":D
    .end local v9    # "c":D
    .end local v11    # "d":D
    .end local v13    # "e":D
    .end local v15    # "f":D
    .end local v17    # "g":D
    .end local v19    # "id":I
    .end local v20    # "a":D
    .restart local v0    # "id":I
    :cond_43
    move/from16 v19, v0

    .end local v0    # "id":I
    .restart local v19    # "id":I
    new-instance v0, Landroid/graphics/ParcelableColorSpace;

    invoke-static/range {v19 .. v19}, Landroid/graphics/ColorSpace;->get(I)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Landroid/graphics/ParcelableColorSpace$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/ParcelableColorSpace;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/ParcelableColorSpace;
    .registers 3
    .param p1, "size"    # I

    .line 139
    new-array v0, p1, [Landroid/graphics/ParcelableColorSpace;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Landroid/graphics/ParcelableColorSpace$1;->newArray(I)[Landroid/graphics/ParcelableColorSpace;

    move-result-object p1

    return-object p1
.end method
