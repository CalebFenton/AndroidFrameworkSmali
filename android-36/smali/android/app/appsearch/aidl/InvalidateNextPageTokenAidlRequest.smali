.class public Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinderCallStartTimeMillis:J

.field private final blacklist mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

.field private final blacklist mIsForEnterprise:Z

.field private final blacklist mNextPageToken:J

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequestCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequestCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;JLandroid/os/UserHandle;JZ)V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 8
    .line 9
    iput-wide p2, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mNextPageToken:J

    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 15
    .line 16
    iput-wide p5, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mBinderCallStartTimeMillis:J

    .line 17
    .line 18
    iput-boolean p7, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mIsForEnterprise:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public blacklist getBinderCallStartTimeMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mBinderCallStartTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getCallerAttributionSource()Landroid/app/appsearch/aidl/AppSearchAttributionSource;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getNextPageToken()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mNextPageToken:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist isForEnterprise()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->mIsForEnterprise:Z

    .line 2
    .line 3
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequestCreator;->writeToParcel(Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
