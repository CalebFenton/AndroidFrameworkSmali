.class public final Landroid/app/appsearch/aidl/SetSchemaAidlRequest;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/SetSchemaAidlRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinderCallStartTimeMillis:J

.field private final blacklist mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

.field private final blacklist mDatabaseName:Ljava/lang/String;

.field private final blacklist mForceOverride:Z

.field private final blacklist mSchemaMigrationCallType:I

.field private final blacklist mSchemaVersion:I

.field private final blacklist mSchemas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserHandle:Landroid/os/UserHandle;

.field private final blacklist mVisibilityConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/SetSchemaAidlRequestCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/SetSchemaAidlRequestCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZILandroid/os/UserHandle;JI)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/aidl/AppSearchAttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;ZI",
            "Landroid/os/UserHandle;",
            "JI)V"
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
    iput-object p1, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mDatabaseName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mSchemas:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p4, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mVisibilityConfigs:Ljava/util/List;

    .line 23
    .line 24
    iput-boolean p5, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mForceOverride:Z

    .line 25
    .line 26
    iput p6, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mSchemaVersion:I

    .line 27
    .line 28
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iput-object p7, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 32
    .line 33
    iput-wide p8, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mBinderCallStartTimeMillis:J

    .line 34
    .line 35
    iput p10, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mSchemaMigrationCallType:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public blacklist getBinderCallStartTimeMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mBinderCallStartTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getCallerAttributionSource()Landroid/app/appsearch/aidl/AppSearchAttributionSource;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getDatabaseName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mDatabaseName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getSchemaMigrationCallType()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mSchemaMigrationCallType:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getSchemaVersion()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mSchemaVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getSchemas()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mSchemas:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mUserHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getVisibilityConfigs()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/InternalVisibilityConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mVisibilityConfigs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist isForceOverride()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->mForceOverride:Z

    .line 2
    .line 3
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/SetSchemaAidlRequestCreator;->writeToParcel(Landroid/app/appsearch/aidl/SetSchemaAidlRequest;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
