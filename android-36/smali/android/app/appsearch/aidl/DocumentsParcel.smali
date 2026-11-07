.class public final Landroid/app/appsearch/aidl/DocumentsParcel;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/DocumentsParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mDocumentParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTakenActionGenericDocumentParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/DocumentsParcel$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/DocumentsParcel$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/DocumentsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/aidl/DocumentsParcel;->mDocumentParcels:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/appsearch/aidl/DocumentsParcel;->mTakenActionGenericDocumentParcels:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method private blacklist serializeToByteArray(I)[B
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    invoke-static {p0, v0, p1}, Landroid/app/appsearch/aidl/DocumentsParcelCreator;->writeToParcel(Landroid/app/appsearch/aidl/DocumentsParcel;Landroid/os/Parcel;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :catchall_f
    move-exception p0

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public blacklist getDocumentParcels()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/DocumentsParcel;->mDocumentParcels:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getTakenActionGenericDocumentParcels()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/DocumentsParcel;->mTakenActionGenericDocumentParcels:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getTotalDocumentCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/aidl/DocumentsParcel;->mDocumentParcels:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Landroid/app/appsearch/aidl/DocumentsParcel;->mTakenActionGenericDocumentParcels:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Landroid/app/appsearch/aidl/DocumentsParcel;->serializeToByteArray(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Landroid/app/appsearch/ParcelableUtil;->writeBlob(Landroid/os/Parcel;[B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
