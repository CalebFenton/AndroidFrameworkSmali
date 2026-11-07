.class Landroid/service/autofill/UserData$1;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/UserData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/UserData;
    .registers 15
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "categoryIds":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "defaultAlgorithm":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 455
    .local v4, "defaultArgs":Landroid/os/Bundle;
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 456
    .local v5, "categoryAlgorithms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 457
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 458
    .local v6, "categoryArgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    const-class v7, Landroid/os/Bundle;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 460
    new-instance v7, Landroid/service/autofill/UserData$Builder;

    const/4 v8, 0x0

    aget-object v9, v2, v8

    aget-object v8, v1, v8

    invoke-direct {v7, v0, v9, v8}, Landroid/service/autofill/UserData$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v7, v3, v4}, Landroid/service/autofill/UserData$Builder;->setFieldClassificationAlgorithm(Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;

    move-result-object v7

    .line 463
    .local v7, "builder":Landroid/service/autofill/UserData$Builder;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_3f
    array-length v9, v1

    if-ge v8, v9, :cond_4c

    .line 464
    aget-object v9, v1, v8

    .line 465
    .local v9, "categoryId":Ljava/lang/String;
    aget-object v10, v2, v8

    invoke-virtual {v7, v10, v9}, Landroid/service/autofill/UserData$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/service/autofill/UserData$Builder;

    .line 463
    .end local v9    # "categoryId":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    .line 468
    .end local v8    # "i":I
    :cond_4c
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 469
    .local v8, "size":I
    if-lez v8, :cond_6e

    .line 470
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_53
    if-ge v9, v8, :cond_6e

    .line 471
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 472
    .local v10, "categoryId":Ljava/lang/String;
    nop

    .line 473
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 472
    invoke-virtual {v7, v10, v11, v12}, Landroid/service/autofill/UserData$Builder;->setFieldClassificationAlgorithmForCategory(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;

    .line 470
    .end local v10    # "categoryId":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_53

    .line 476
    .end local v9    # "i":I
    :cond_6e
    invoke-virtual {v7}, Landroid/service/autofill/UserData$Builder;->build()Landroid/service/autofill/UserData;

    move-result-object v9

    return-object v9
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

    .line 444
    invoke-virtual {p0, p1}, Landroid/service/autofill/UserData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/UserData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/UserData;
    .registers 3
    .param p1, "size"    # I

    .line 481
    new-array v0, p1, [Landroid/service/autofill/UserData;

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

    .line 444
    invoke-virtual {p0, p1}, Landroid/service/autofill/UserData$1;->newArray(I)[Landroid/service/autofill/UserData;

    move-result-object p1

    return-object p1
.end method
