.class public final Landroid/app/backup/BackupRestoreEventLogger;
.super Ljava/lang/Object;
.source "BackupRestoreEventLogger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;,
        Landroid/app/backup/BackupRestoreEventLogger$BackupRestoreError;,
        Landroid/app/backup/BackupRestoreEventLogger$BackupRestoreDataType;
    }
.end annotation


# static fields
.field public static final blacklist DATA_TYPES_ALLOWED:I = 0x96

.field private static final blacklist TAG:Ljava/lang/String; = "BackupRestoreEventLogger"


# instance fields
.field private final blacklist mHashDigest:Ljava/security/MessageDigest;

.field private final blacklist mOperationType:I

.field private final blacklist mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 5
    .param p1, "operationType"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    .line 96
    iput p1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "hashDigest":Ljava/security/MessageDigest;
    :try_start_d
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_13} :catch_15

    move-object v0, v1

    .line 103
    goto :goto_1b

    .line 101
    :catch_15
    move-exception v1

    .line 102
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Couldn\'t create MessageDigest for hash computation"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1b
    iput-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mHashDigest:Ljava/security/MessageDigest;

    .line 105
    return-void
.end method

.method private blacklist getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    .registers 7
    .param p1, "operationType"    # I
    .param p2, "dataType"    # Ljava/lang/String;

    .line 297
    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    const/4 v1, 0x0

    const-string v2, "BackupRestoreEventLogger"

    if-eq p1, v0, :cond_2a

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation type mismatch: logger created for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", trying to log for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-object v1

    .line 305
    :cond_2a
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 306
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypesAllowed()I

    move-result v3

    if-ne v0, v3, :cond_48

    .line 308
    const-string v0, "Logger is full, ignoring new data type"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v1

    .line 312
    :cond_48
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    new-instance v1, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    invoke-direct {v1, p2}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_52
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    return-object v0
.end method

.method private blacklist getDataTypesAllowed()I
    .registers 2

    .line 323
    invoke-static {}, Lcom/android/server/backup/Flags;->enableIncreaseDatatypesForAgentLogging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 324
    const/16 v0, 0x96

    return v0

    .line 326
    :cond_9
    const/16 v0, 0xf

    return v0
.end method

.method private blacklist getMetaDataHash(Ljava/lang/String;)[B
    .registers 4
    .param p1, "metaData"    # Ljava/lang/String;

    .line 319
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mHashDigest:Ljava/security/MessageDigest;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private blacklist logFailure(ILjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "operationType"    # I
    .param p2, "dataType"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "error"    # Ljava/lang/String;

    .line 264
    invoke-direct {p0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object v0

    .line 265
    .local v0, "dataTypeResult":Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    if-nez v0, :cond_7

    .line 266
    return-void

    .line 269
    :cond_7
    invoke-static {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V

    .line 270
    if-eqz p4, :cond_21

    .line 271
    invoke-static {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, p4, v2, v3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 273
    :cond_21
    return-void
.end method

.method private blacklist logMetaData(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "operationType"    # I
    .param p2, "dataType"    # Ljava/lang/String;
    .param p3, "metaData"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mHashDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_5

    .line 278
    return-void

    .line 280
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object v0

    .line 281
    .local v0, "dataTypeResult":Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    if-nez v0, :cond_c

    .line 282
    return-void

    .line 285
    :cond_c
    invoke-direct {p0, p3}, Landroid/app/backup/BackupRestoreEventLogger;->getMetaDataHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;[B)V

    .line 286
    return-void
.end method

.method private blacklist logSuccess(ILjava/lang/String;I)V
    .registers 6
    .param p1, "operationType"    # I
    .param p2, "dataType"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 252
    invoke-direct {p0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object v0

    .line 253
    .local v0, "dataTypeResult":Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    if-nez v0, :cond_7

    .line 254
    return-void

    .line 257
    :cond_7
    invoke-static {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V

    .line 258
    iget-object v1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public static blacklist toString(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/lang/String;
    .registers 4
    .param p0, "result"    # Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    .line 332
    const-string/jumbo v0, "result cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmDataType(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    const-string v1, ", successCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string v1, ", failCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    .local v0, "string":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 337
    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    :cond_49
    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)[B

    move-result-object v1

    if-eqz v1, :cond_60

    .line 340
    const-string v1, ", metadataHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist clearData()V
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 248
    return-void
.end method

.method public blacklist getLoggingResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getOperationType()I
    .registers 2

    .line 237
    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    return v0
.end method

.method public whitelist logBackupMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "metaData"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logMetaData(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public whitelist logItemsBackedUp(Ljava/lang/String;I)V
    .registers 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logSuccess(ILjava/lang/String;I)V

    .line 121
    return-void
.end method

.method public whitelist logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "error"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/backup/BackupRestoreEventLogger;->logFailure(ILjava/lang/String;ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public whitelist logItemsRestoreFailed(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "error"    # Ljava/lang/String;

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/backup/BackupRestoreEventLogger;->logFailure(ILjava/lang/String;ILjava/lang/String;)V

    .line 196
    return-void
.end method

.method public whitelist logItemsRestored(Ljava/lang/String;I)V
    .registers 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logSuccess(ILjava/lang/String;I)V

    .line 176
    return-void
.end method

.method public whitelist logRestoreMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "metadata"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logMetaData(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method
