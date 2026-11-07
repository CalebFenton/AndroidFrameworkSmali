.class Landroid/app/appsearch/aidl/AppSearchBatchResultParcel$1;
.super Landroid/app/appsearch/aidl/AppSearchBatchResultParcelCreator;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelCreator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;
    .registers 5

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/ParcelableUtil;->readBlob(Landroid/os/Parcel;)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 4
    :try_start_b
    array-length v0, p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    :goto_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_33

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p1}, Landroid/app/appsearch/aidl/AppSearchResultParcel;->directlyReadFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1c

    :catchall_31
    move-exception p0

    goto :goto_3c

    .line 12
    :cond_33
    new-instance p0, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;

    invoke-direct {p0, v0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;-><init>(Landroid/os/Bundle;)V
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_31

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :goto_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 14
    throw p0
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

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcel;

    move-result-object p0

    return-object p0
.end method
