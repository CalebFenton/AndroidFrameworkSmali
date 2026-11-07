.class Landroid/location/Address$1;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "country":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 481
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 482
    :cond_14
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_19
    nop

    .line 483
    .local v2, "locale":Ljava/util/Locale;
    new-instance v3, Landroid/location/Address;

    invoke-direct {v3, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 485
    .local v3, "a":Landroid/location/Address;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 486
    .local v4, "N":I
    if-lez v4, :cond_52

    .line 487
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmAddressLines(Landroid/location/Address;Ljava/util/HashMap;)V

    .line 488
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2e
    if-ge v5, v4, :cond_51

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 490
    .local v6, "index":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, "line":Ljava/lang/String;
    invoke-static {v3}, Landroid/location/Address;->-$$Nest$fgetmAddressLines(Landroid/location/Address;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-static {v3}, Landroid/location/Address;->-$$Nest$fgetmMaxAddressLineIndex(Landroid/location/Address;)I

    move-result v8

    .line 493
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v3, v8}, Landroid/location/Address;->-$$Nest$fputmMaxAddressLineIndex(Landroid/location/Address;I)V

    .line 488
    .end local v6    # "index":I
    .end local v7    # "line":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .end local v5    # "i":I
    :cond_51
    goto :goto_5a

    .line 496
    :cond_52
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmAddressLines(Landroid/location/Address;Ljava/util/HashMap;)V

    .line 497
    const/4 v5, -0x1

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmMaxAddressLineIndex(Landroid/location/Address;I)V

    .line 499
    :goto_5a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmFeatureName(Landroid/location/Address;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmAdminArea(Landroid/location/Address;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmSubAdminArea(Landroid/location/Address;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmLocality(Landroid/location/Address;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmSubLocality(Landroid/location/Address;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmThoroughfare(Landroid/location/Address;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmSubThoroughfare(Landroid/location/Address;Ljava/lang/String;)V

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmPremises(Landroid/location/Address;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmPostalCode(Landroid/location/Address;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmCountryCode(Landroid/location/Address;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmCountryName(Landroid/location/Address;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_b1

    move v5, v6

    goto :goto_b2

    :cond_b1
    move v5, v7

    :goto_b2
    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmHasLatitude(Landroid/location/Address;Z)V

    .line 511
    invoke-static {v3}, Landroid/location/Address;->-$$Nest$fgetmHasLatitude(Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v3, v8, v9}, Landroid/location/Address;->-$$Nest$fputmLatitude(Landroid/location/Address;D)V

    .line 514
    :cond_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_c9

    goto :goto_ca

    :cond_c9
    move v6, v7

    :goto_ca
    invoke-static {v3, v6}, Landroid/location/Address;->-$$Nest$fputmHasLongitude(Landroid/location/Address;Z)V

    .line 515
    invoke-static {v3}, Landroid/location/Address;->-$$Nest$fgetmHasLongitude(Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/location/Address;->-$$Nest$fputmLongitude(Landroid/location/Address;D)V

    .line 518
    :cond_da
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmPhone(Landroid/location/Address;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmUrl(Landroid/location/Address;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->-$$Nest$fputmExtras(Landroid/location/Address;Landroid/os/Bundle;)V

    .line 521
    return-object v3
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

    .line 476
    invoke-virtual {p0, p1}, Landroid/location/Address$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/Address;
    .registers 3
    .param p1, "size"    # I

    .line 525
    new-array v0, p1, [Landroid/location/Address;

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

    .line 476
    invoke-virtual {p0, p1}, Landroid/location/Address$1;->newArray(I)[Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method
