.class public Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinderCallStartTimeMillis:J

.field private final blacklist mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

.field private final blacklist mDatabaseName:Ljava/lang/String;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequestCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequestCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->mDatabaseName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 18
    .line 19
    iput-wide p4, p0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->mBinderCallStartTimeMillis:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getBinderCallStartTimeMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->mBinderCallStartTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getCallerAttributionSource()Landroid/app/appsearch/aidl/AppSearchAttributionSource;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getDatabaseName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->mDatabaseName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequestCreator;->writeToParcel(Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
