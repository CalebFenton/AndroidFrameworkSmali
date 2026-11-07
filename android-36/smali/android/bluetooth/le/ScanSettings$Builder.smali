.class public final Landroid/bluetooth/le/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallbackType:I

.field private blacklist mLegacy:Z

.field private blacklist mMatchMode:I

.field private blacklist mNumOfMatchesPerFilter:I

.field private blacklist mPhy:I

.field private blacklist mReportDelayMillis:J

.field private blacklist mScanMode:I

.field private blacklist mScanResultType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 5

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 303
    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 304
    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 305
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 306
    iput v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    .line 307
    const/4 v0, 0x3

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 308
    iput-boolean v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    .line 309
    iput v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    .line 313
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->changeDefaultTrackableAdvNumber()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 314
    const-wide/32 v0, 0x170cff29

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 315
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 317
    :cond_2a
    return-void
.end method

.method private static blacklist isValidCallbackType(I)Z
    .registers 3
    .param p0, "callbackType"    # I

    .line 361
    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/16 v1, 0x8

    if-eq p0, v1, :cond_14

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    const/4 v1, 0x4

    if-ne p0, v1, :cond_e

    goto :goto_14

    .line 367
    :cond_e
    const/4 v1, 0x6

    if-ne p0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 365
    :cond_14
    :goto_14
    return v0
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/ScanSettings;
    .registers 14

    .line 473
    iget v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_18

    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_10

    goto :goto_18

    .line 475
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "report delay for auto batch must be >= 600000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_18
    :goto_18
    new-instance v2, Landroid/bluetooth/le/ScanSettings;

    iget v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    iget v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    iget v5, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    iget-wide v6, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    iget v8, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    iget v9, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iget-boolean v10, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    iget v11, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIIZILandroid/bluetooth/le/ScanSettings-IA;)V

    return-object v2
.end method

.method public whitelist setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 5
    .param p1, "callbackType"    # I

    .line 352
    invoke-static {p1}, Landroid/bluetooth/le/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 355
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 356
    return-object p0

    .line 353
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid callback type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLegacy(Z)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 2
    .param p1, "legacy"    # Z

    .line 447
    iput-boolean p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mLegacy:Z

    .line 448
    return-object p0
.end method

.method public whitelist setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 5
    .param p1, "matchMode"    # I

    .line 432
    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x2

    if-gt p1, v0, :cond_9

    .line 435
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    .line 436
    return-object p0

    .line 433
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid matchMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 5
    .param p1, "numOfMatches"    # I

    .line 416
    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x3

    if-gt p1, v0, :cond_9

    .line 420
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 421
    return-object p0

    .line 418
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numOfMatches "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPhy(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 2
    .param p1, "phy"    # I

    .line 463
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mPhy:I

    .line 464
    return-object p0
.end method

.method public whitelist setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 5
    .param p1, "reportDelayMillis"    # J

    .line 399
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 402
    iput-wide p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 403
    return-object p0

    .line 400
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reportDelay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 5
    .param p1, "scanMode"    # I

    .line 328
    packed-switch p1, :pswitch_data_20

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scan mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :pswitch_1c
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 337
    nop

    .line 341
    return-object p0

    :pswitch_data_20
    .packed-switch -0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .registers 5
    .param p1, "scanResultType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 381
    if-ltz p1, :cond_8

    const/4 v0, 0x1

    if-gt p1, v0, :cond_8

    .line 385
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 386
    return-object p0

    .line 383
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scanResultType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
