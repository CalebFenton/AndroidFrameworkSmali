.class Landroid/service/autofill/CustomDescription$1;
.super Ljava/lang/Object;
.source "CustomDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CustomDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CustomDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;
    .registers 12
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 440
    const-class v0, Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 441
    .local v0, "parentPresentation":Landroid/widget/RemoteViews;
    if-nez v0, :cond_c

    return-object v1

    .line 443
    :cond_c
    new-instance v2, Landroid/service/autofill/CustomDescription$Builder;

    invoke-direct {v2, v0}, Landroid/service/autofill/CustomDescription$Builder;-><init>(Landroid/widget/RemoteViews;)V

    .line 444
    .local v2, "builder":Landroid/service/autofill/CustomDescription$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 445
    .local v3, "transformationIds":[I
    if-eqz v3, :cond_2d

    .line 446
    const-class v4, Landroid/service/autofill/InternalTransformation;

    .line 447
    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/autofill/InternalTransformation;

    .line 448
    .local v4, "values":[Landroid/service/autofill/InternalTransformation;
    array-length v5, v3

    .line 449
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21
    if-ge v6, v5, :cond_2d

    .line 450
    aget v7, v3, v6

    aget-object v8, v4, v6

    invoke-virtual {v2, v7, v8}, Landroid/service/autofill/CustomDescription$Builder;->addChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/CustomDescription$Builder;

    .line 449
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 453
    .end local v4    # "values":[Landroid/service/autofill/InternalTransformation;
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_2d
    const-class v4, Landroid/service/autofill/InternalValidator;

    .line 454
    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/autofill/InternalValidator;

    .line 455
    .local v4, "conditions":[Landroid/service/autofill/InternalValidator;
    if-eqz v4, :cond_4d

    .line 456
    const-class v5, Landroid/service/autofill/BatchUpdates;

    invoke-virtual {p1, v1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/service/autofill/BatchUpdates;

    .line 457
    .local v5, "updates":[Landroid/service/autofill/BatchUpdates;
    array-length v6, v4

    .line 458
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_41
    if-ge v7, v6, :cond_4d

    .line 459
    aget-object v8, v4, v7

    aget-object v9, v5, v7

    invoke-virtual {v2, v8, v9}, Landroid/service/autofill/CustomDescription$Builder;->batchUpdate(Landroid/service/autofill/Validator;Landroid/service/autofill/BatchUpdates;)Landroid/service/autofill/CustomDescription$Builder;

    .line 458
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 462
    .end local v5    # "updates":[Landroid/service/autofill/BatchUpdates;
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 463
    .local v5, "actionIds":[I
    if-eqz v5, :cond_69

    .line 464
    const-class v6, Landroid/service/autofill/InternalOnClickAction;

    .line 465
    invoke-virtual {p1, v1, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/autofill/InternalOnClickAction;

    .line 466
    .local v1, "values":[Landroid/service/autofill/InternalOnClickAction;
    array-length v6, v5

    .line 467
    .restart local v6    # "size":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5d
    if-ge v7, v6, :cond_69

    .line 468
    aget v8, v5, v7

    aget-object v9, v1, v7

    invoke-virtual {v2, v8, v9}, Landroid/service/autofill/CustomDescription$Builder;->addOnClickAction(ILandroid/service/autofill/OnClickAction;)Landroid/service/autofill/CustomDescription$Builder;

    .line 467
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 471
    .end local v1    # "values":[Landroid/service/autofill/InternalOnClickAction;
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_69
    invoke-virtual {v2}, Landroid/service/autofill/CustomDescription$Builder;->build()Landroid/service/autofill/CustomDescription;

    move-result-object v1

    return-object v1
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

    .line 434
    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/CustomDescription;
    .registers 3
    .param p1, "size"    # I

    .line 476
    new-array v0, p1, [Landroid/service/autofill/CustomDescription;

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

    .line 434
    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->newArray(I)[Landroid/service/autofill/CustomDescription;

    move-result-object p1

    return-object p1
.end method
