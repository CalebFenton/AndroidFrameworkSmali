.class public Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/stats/SchemaMigrationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist mDatabase:Ljava/lang/String;

.field blacklist mEnabledFeatures:J

.field blacklist mExecutorAcquisitionLatencyMillis:I

.field blacklist mFirstSetSchemaLatencyMillis:I

.field blacklist mGetSchemaLatencyMillis:I

.field blacklist mIsFirstSetSchemaSuccess:Z

.field blacklist mMigrationFailureCount:I

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mQueryAndTransformLatencyMillis:I

.field blacklist mSaveDocumentLatencyMillis:I

.field blacklist mSecondSetSchemaLatencyMillis:I

.field blacklist mStatusCode:I

.field blacklist mTotalLatencyMillis:I

.field blacklist mTotalNeedMigratedDocumentCount:I

.field blacklist mTotalSuccessMigratedDocumentCount:I


# direct methods
.method public constructor blacklist <init>(Landroid/app/appsearch/stats/SchemaMigrationStats;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmPackageName(Landroid/app/appsearch/stats/SchemaMigrationStats;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mPackageName:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmDatabase(Landroid/app/appsearch/stats/SchemaMigrationStats;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mDatabase:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmStatusCode(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mStatusCode:I

    .line 9
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmExecutorAcquisitionLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mExecutorAcquisitionLatencyMillis:I

    .line 10
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmTotalLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mTotalLatencyMillis:I

    .line 11
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmGetSchemaLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mGetSchemaLatencyMillis:I

    .line 12
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmQueryAndTransformLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mQueryAndTransformLatencyMillis:I

    .line 13
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmFirstSetSchemaLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mFirstSetSchemaLatencyMillis:I

    .line 14
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmIsFirstSetSchemaSuccess(Landroid/app/appsearch/stats/SchemaMigrationStats;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mIsFirstSetSchemaSuccess:Z

    .line 15
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmSecondSetSchemaLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mSecondSetSchemaLatencyMillis:I

    .line 16
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmSaveDocumentLatencyMillis(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mSaveDocumentLatencyMillis:I

    .line 17
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmTotalNeedMigratedDocumentCount(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mTotalNeedMigratedDocumentCount:I

    .line 18
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmMigrationFailureCount(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mMigrationFailureCount:I

    .line 19
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmTotalSuccessMigratedDocumentCount(Landroid/app/appsearch/stats/SchemaMigrationStats;)I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mTotalSuccessMigratedDocumentCount:I

    .line 20
    invoke-static {p1}, Landroid/app/appsearch/stats/SchemaMigrationStats;->-$$Nest$fgetmEnabledFeatures(Landroid/app/appsearch/stats/SchemaMigrationStats;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mEnabledFeatures:J

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mPackageName:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mDatabase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/appsearch/stats/SchemaMigrationStats;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/app/appsearch/stats/SchemaMigrationStats;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mDatabase:Ljava/lang/String;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget v3, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mStatusCode:I

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget v4, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mExecutorAcquisitionLatencyMillis:I

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    iget v5, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mTotalLatencyMillis:I

    .line 19
    .line 20
    move-object v7, v6

    .line 21
    iget v6, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mGetSchemaLatencyMillis:I

    .line 22
    .line 23
    move-object v8, v7

    .line 24
    iget v7, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mQueryAndTransformLatencyMillis:I

    .line 25
    .line 26
    move-object v9, v8

    .line 27
    iget v8, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mFirstSetSchemaLatencyMillis:I

    .line 28
    .line 29
    move-object v10, v9

    .line 30
    iget-boolean v9, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mIsFirstSetSchemaSuccess:Z

    .line 31
    .line 32
    move-object v11, v10

    .line 33
    iget v10, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mSecondSetSchemaLatencyMillis:I

    .line 34
    .line 35
    move-object v12, v11

    .line 36
    iget v11, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mSaveDocumentLatencyMillis:I

    .line 37
    .line 38
    move-object v13, v12

    .line 39
    iget v12, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mTotalNeedMigratedDocumentCount:I

    .line 40
    .line 41
    move-object v14, v13

    .line 42
    iget v13, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mMigrationFailureCount:I

    .line 43
    .line 44
    move-object v15, v14

    .line 45
    iget v14, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mTotalSuccessMigratedDocumentCount:I

    .line 46
    .line 47
    move-object/from16 v16, v1

    .line 48
    .line 49
    iget-wide v0, v0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mEnabledFeatures:J

    .line 50
    .line 51
    move-wide/from16 v17, v0

    .line 52
    .line 53
    move-object v0, v15

    .line 54
    move-object/from16 v1, v16

    .line 55
    .line 56
    move-wide/from16 v15, v17

    .line 57
    .line 58
    invoke-direct/range {v0 .. v16}, Landroid/app/appsearch/stats/SchemaMigrationStats;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZIIIIIJ)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public blacklist setEnabledFeatures(J)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mEnabledFeatures:J

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setExecutorAcquisitionLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mExecutorAcquisitionLatencyMillis:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setFirstSetSchemaLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mFirstSetSchemaLatencyMillis:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setGetSchemaLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mGetSchemaLatencyMillis:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setIsFirstSetSchemaSuccess(Z)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mIsFirstSetSchemaSuccess:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setMigrationFailureCount(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mMigrationFailureCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setQueryAndTransformLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mQueryAndTransformLatencyMillis:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setSaveDocumentLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mSaveDocumentLatencyMillis:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setSecondSetSchemaLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mSecondSetSchemaLatencyMillis:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setStatusCode(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mStatusCode:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setTotalLatencyMillis(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mTotalLatencyMillis:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setTotalNeedMigratedDocumentCount(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mTotalNeedMigratedDocumentCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist setTotalSuccessMigratedDocumentCount(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->mTotalSuccessMigratedDocumentCount:I

    .line 2
    .line 3
    return-object p0
.end method
