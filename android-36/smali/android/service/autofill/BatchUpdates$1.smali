.class Landroid/service/autofill/BatchUpdates$1;
.super Ljava/lang/Object;
.source "BatchUpdates.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/BatchUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/BatchUpdates;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/BatchUpdates;
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 198
    new-instance v0, Landroid/service/autofill/BatchUpdates$Builder;

    invoke-direct {v0}, Landroid/service/autofill/BatchUpdates$Builder;-><init>()V

    .line 199
    .local v0, "builder":Landroid/service/autofill/BatchUpdates$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 200
    .local v1, "ids":[I
    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 201
    const-class v3, Landroid/service/autofill/InternalTransformation;

    .line 202
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/service/autofill/InternalTransformation;

    .line 203
    .local v3, "values":[Landroid/service/autofill/InternalTransformation;
    array-length v4, v1

    .line 204
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    if-ge v5, v4, :cond_22

    .line 205
    aget v6, v1, v5

    aget-object v7, v3, v5

    invoke-virtual {v0, v6, v7}, Landroid/service/autofill/BatchUpdates$Builder;->transformChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/BatchUpdates$Builder;

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 208
    .end local v3    # "values":[Landroid/service/autofill/InternalTransformation;
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_22
    const-class v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 209
    .local v2, "updates":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_2f

    .line 210
    invoke-virtual {v0, v2}, Landroid/service/autofill/BatchUpdates$Builder;->updateTemplate(Landroid/widget/RemoteViews;)Landroid/service/autofill/BatchUpdates$Builder;

    .line 212
    :cond_2f
    invoke-virtual {v0}, Landroid/service/autofill/BatchUpdates$Builder;->build()Landroid/service/autofill/BatchUpdates;

    move-result-object v3

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

    .line 192
    invoke-virtual {p0, p1}, Landroid/service/autofill/BatchUpdates$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/BatchUpdates;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/BatchUpdates;
    .registers 3
    .param p1, "size"    # I

    .line 217
    new-array v0, p1, [Landroid/service/autofill/BatchUpdates;

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

    .line 192
    invoke-virtual {p0, p1}, Landroid/service/autofill/BatchUpdates$1;->newArray(I)[Landroid/service/autofill/BatchUpdates;

    move-result-object p1

    return-object p1
.end method
