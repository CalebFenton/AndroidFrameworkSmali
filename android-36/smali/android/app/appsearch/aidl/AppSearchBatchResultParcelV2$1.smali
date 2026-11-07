.class Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2$1;
.super Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2Creator;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2Creator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;
    .registers 4

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    .line 3
    invoke-static {p1}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->directlyReadFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    move-result-object p0

    return-object p0

    .line 4
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot write AppSearchBatchResultParcelV2 to Parcel with unknown model: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_23
    invoke-static {p1}, Landroid/app/appsearch/ParcelableUtil;->readBlob(Landroid/os/Parcel;)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 7
    :try_start_2e
    array-length v0, p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9
    invoke-static {p1}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;->directlyReadFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_3e

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_3e
    move-exception p0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 11
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/AppSearchBatchResultParcelV2;

    move-result-object p0

    return-object p0
.end method
