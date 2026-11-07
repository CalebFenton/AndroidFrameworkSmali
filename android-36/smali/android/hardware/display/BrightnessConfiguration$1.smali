.class Landroid/hardware/display/BrightnessConfiguration$1;
.super Ljava/lang/Object;
.source "BrightnessConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/BrightnessConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 304
    .local v0, "lux":[F
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 305
    .local v1, "nits":[F
    new-instance v2, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v2, v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 307
    .local v2, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 308
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v3, :cond_26

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "packageName":Ljava/lang/String;
    sget-object v6, Landroid/hardware/display/BrightnessCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 311
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/BrightnessCorrection;

    .line 312
    .local v6, "correction":Landroid/hardware/display/BrightnessCorrection;
    invoke-virtual {v2, v5, v6}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByPackageName(Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 308
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "correction":Landroid/hardware/display/BrightnessCorrection;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 315
    .end local v4    # "i":I
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 316
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2b
    if-ge v4, v3, :cond_3f

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 318
    .local v5, "category":I
    sget-object v6, Landroid/hardware/display/BrightnessCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 319
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/BrightnessCorrection;

    .line 320
    .restart local v6    # "correction":Landroid/hardware/display/BrightnessCorrection;
    invoke-virtual {v2, v5, v6}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByCategory(ILandroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 316
    .end local v5    # "category":I
    .end local v6    # "correction":Landroid/hardware/display/BrightnessCorrection;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 323
    .end local v4    # "i":I
    :cond_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "description":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 326
    .local v5, "shouldCollectColorSamples":Z
    invoke-virtual {v2, v5}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShouldCollectColorSamples(Z)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 330
    invoke-virtual {v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v6

    return-object v6
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

    .line 301
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 334
    new-array v0, p1, [Landroid/hardware/display/BrightnessConfiguration;

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

    .line 301
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessConfiguration$1;->newArray(I)[Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    return-object p1
.end method
