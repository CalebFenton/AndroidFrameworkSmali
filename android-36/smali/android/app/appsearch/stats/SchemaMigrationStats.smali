.class public final Landroid/app/appsearch/stats/SchemaMigrationStats;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;,
        Landroid/app/appsearch/stats/SchemaMigrationStats$SchemaMigrationCallType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/stats/SchemaMigrationStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FIRST_CALL_GET_INCOMPATIBLE:I = 0x1

.field public static final blacklist NO_MIGRATION:I = 0x0

.field public static final blacklist SECOND_CALL_APPLY_NEW_SCHEMA:I = 0x2


# instance fields
.field private final blacklist mDatabase:Ljava/lang/String;

.field private final blacklist mEnabledFeatures:J

.field private final blacklist mExecutorAcquisitionLatencyMillis:I

.field private final blacklist mFirstSetSchemaLatencyMillis:I

.field private final blacklist mGetSchemaLatencyMillis:I

.field private final blacklist mIsFirstSetSchemaSuccess:Z

.field private final blacklist mMigrationFailureCount:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mQueryAndTransformLatencyMillis:I

.field private final blacklist mSaveDocumentLatencyMillis:I

.field private final blacklist mSecondSetSchemaLatencyMillis:I

.field private final blacklist mStatusCode:I

.field private final blacklist mTotalLatencyMillis:I

.field private final blacklist mTotalNeedMigratedDocumentCount:I

.field private final blacklist mTotalSuccessMigratedDocumentCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDatabase(Landroid/app/appsearch/stats/SchemaMigrationStats;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mDatabase:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabledFeatures(Landroid/app/appsearch/stats/SchemaMigrationStats;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mEnabledFeatures:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutorAcquisitionLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mExecutorAcquisitionLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstSetSchemaLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mFirstSetSchemaLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGetSchemaLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mGetSchemaLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsFirstSetSchemaSuccess(Landroid/app/appsearch/stats/SchemaMigrationStats;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mIsFirstSetSchemaSuccess:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMigrationFailureCount(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mMigrationFailureCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/app/appsearch/stats/SchemaMigrationStats;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueryAndTransformLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mQueryAndTransformLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSaveDocumentLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mSaveDocumentLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondSetSchemaLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mSecondSetSchemaLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusCode(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mStatusCode:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mTotalLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalNeedMigratedDocumentCount(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mTotalNeedMigratedDocumentCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalSuccessMigratedDocumentCount(Landroid/app/appsearch/stats/SchemaMigrationStats;)I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mTotalSuccessMigratedDocumentCount:I

    .line 2
    .line 3
    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/stats/SchemaMigrationStatsCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/stats/SchemaMigrationStatsCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/stats/SchemaMigrationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZIIIIIJ)V
    .registers 17

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mPackageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mDatabase:Ljava/lang/String;

    .line 4
    iput p3, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mStatusCode:I

    .line 5
    iput p4, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mExecutorAcquisitionLatencyMillis:I

    .line 6
    iput p5, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mTotalLatencyMillis:I

    .line 7
    iput p6, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mGetSchemaLatencyMillis:I

    .line 8
    iput p7, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mQueryAndTransformLatencyMillis:I

    .line 9
    iput p8, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mFirstSetSchemaLatencyMillis:I

    .line 10
    iput-boolean p9, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mIsFirstSetSchemaSuccess:Z

    .line 11
    iput p10, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mSecondSetSchemaLatencyMillis:I

    .line 12
    iput p11, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mSaveDocumentLatencyMillis:I

    .line 13
    iput p12, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mTotalNeedMigratedDocumentCount:I

    .line 14
    iput p13, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mMigrationFailureCount:I

    .line 15
    iput p14, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mTotalSuccessMigratedDocumentCount:I

    move-wide p1, p15

    .line 16
    iput-wide p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mEnabledFeatures:J

    return-void
.end method


# virtual methods
.method public blacklist getDatabase()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mDatabase:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getEnabledFeatures()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mEnabledFeatures:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getExecutorAcquisitionLatencyMillis()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mExecutorAcquisitionLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getFirstSetSchemaLatencyMillis()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mFirstSetSchemaLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getGetSchemaLatencyMillis()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mGetSchemaLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getMigrationFailureCount()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mMigrationFailureCount:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getQueryAndTransformLatencyMillis()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mQueryAndTransformLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getSaveDocumentLatencyMillis()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mSaveDocumentLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getSecondSetSchemaLatencyMillis()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mSecondSetSchemaLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getStatusCode()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mStatusCode:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getTotalLatencyMillis()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mTotalLatencyMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getTotalNeedMigratedDocumentCount()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mTotalNeedMigratedDocumentCount:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getTotalSuccessMigratedDocumentCount()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mTotalSuccessMigratedDocumentCount:I

    .line 2
    .line 3
    return p0
.end method

.method public blacklist isFirstSetSchemaSuccess()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats;->mIsFirstSetSchemaSuccess:Z

    .line 2
    .line 3
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/stats/SchemaMigrationStatsCreator;->writeToParcel(Landroid/app/appsearch/stats/SchemaMigrationStats;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
