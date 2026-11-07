.class Landroid/app/appsearch/aidl/AppSearchResultParcel$1;
.super Landroid/app/appsearch/aidl/AppSearchResultParcelCreator;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/AppSearchResultParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchResultParcelCreator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel;
    .registers 5

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/ParcelableUtil;->readBlob(Landroid/os/Parcel;)[B

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    :try_start_b
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6
    invoke-super {p0, v0}, Landroid/app/appsearch/aidl/AppSearchResultParcelCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/AppSearchResultParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    move-result-object p0

    return-object p0
.end method
