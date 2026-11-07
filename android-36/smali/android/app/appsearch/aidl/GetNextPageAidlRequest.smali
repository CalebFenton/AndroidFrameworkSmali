.class public Landroid/app/appsearch/aidl/GetNextPageAidlRequest;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/GetNextPageAidlRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinderCallStartTimeMillis:J

.field private final blacklist mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

.field private final blacklist mDatabaseName:Ljava/lang/String;

.field private final blacklist mIsForEnterprise:Z

.field private final blacklist mJoinType:I

.field private final blacklist mNextPageToken:J

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/GetNextPageAidlRequestCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/GetNextPageAidlRequestCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;JILandroid/os/UserHandle;JZ)V
    .registers 10

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 8
    .line 9
    iput-object p2, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mDatabaseName:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p3, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mNextPageToken:J

    .line 12
    .line 13
    iput p5, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mJoinType:I

    .line 14
    .line 15
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iput-object p6, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 19
    .line 20
    iput-wide p7, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mBinderCallStartTimeMillis:J

    .line 21
    .line 22
    iput-boolean p9, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mIsForEnterprise:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public blacklist getBinderCallStartTimeMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mBinderCallStartTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getCallerAttributionSource()Landroid/app/appsearch/aidl/AppSearchAttributionSource;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getDatabaseName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mDatabaseName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getJoinType()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mJoinType:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getNextPageToken()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mNextPageToken:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist isForEnterprise()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->mIsForEnterprise:Z

    .line 2
    .line 3
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/GetNextPageAidlRequestCreator;->writeToParcel(Landroid/app/appsearch/aidl/GetNextPageAidlRequest;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
