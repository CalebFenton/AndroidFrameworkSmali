.class public Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinderCallStartTimeMillis:J

.field private final blacklist mBlobHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

.field private final blacklist mCallingDatabaseName:Ljava/lang/String;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequestCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequestCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/aidl/AppSearchAttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            ">;",
            "Landroid/os/UserHandle;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 8
    .line 9
    iput-object p2, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mCallingDatabaseName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mBlobHandles:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object p4, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 20
    .line 21
    iput-wide p5, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mBinderCallStartTimeMillis:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public blacklist getBinderCallStartTimeMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mBinderCallStartTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getBlobHandles()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchBlobHandle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mBlobHandles:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public blacklist getCallerAttributionSource()Landroid/app/appsearch/aidl/AppSearchAttributionSource;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getCallingDatabaseName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mCallingDatabaseName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequestCreator;->writeToParcel(Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
