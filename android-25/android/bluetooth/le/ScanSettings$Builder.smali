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
.field private mCallbackType:I

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mScanResultType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 225
    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    #@7
    .line 226
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    #@9
    .line 227
    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    #@b
    .line 228
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    #@f
    .line 229
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    #@11
    .line 230
    const/4 v0, 0x3

    #@12
    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    #@14
    .line 224
    return-void
.end method

.method private isValidCallbackType(I)Z
    .locals 2
    .param p1, "callbackType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 264
    if-eq p1, v0, :cond_0

    #@3
    .line 265
    const/4 v1, 0x2

    #@4
    if-ne p1, v1, :cond_1

    #@6
    .line 267
    :cond_0
    return v0

    #@7
    .line 266
    :cond_1
    const/4 v1, 0x4

    #@8
    if-eq p1, v1, :cond_0

    #@a
    .line 269
    const/4 v1, 0x6

    #@b
    if-ne p1, v1, :cond_2

    #@d
    :goto_0
    return v0

    #@e
    :cond_2
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanSettings;
    .locals 9

    #@0
    .prologue
    .line 347
    new-instance v0, Landroid/bluetooth/le/ScanSettings;

    #@2
    iget v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    #@4
    iget v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    #@6
    iget v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    #@8
    .line 348
    iget-wide v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    #@a
    iget v6, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    #@c
    iget v7, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    #@e
    .line 347
    const/4 v8, 0x0

    #@f
    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIILandroid/bluetooth/le/ScanSettings;)V

    #@12
    return-object v0
.end method

.method public setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "callbackType"    # I

    #@0
    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->isValidCallbackType(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "invalid callback type - "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 258
    :cond_0
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    #@22
    .line 259
    return-object p0
.end method

.method public setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "matchMode"    # I

    #@0
    .prologue
    .line 335
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    .line 336
    const/4 v0, 0x2

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "invalid matchMode "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 339
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    #@22
    .line 340
    return-object p0
.end method

.method public setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "numOfMatches"    # I

    #@0
    .prologue
    .line 318
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    .line 319
    const/4 v0, 0x3

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "invalid numOfMatches "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 322
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    #@22
    .line 323
    return-object p0
.end method

.method public setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "reportDelayMillis"    # J

    #@0
    .prologue
    .line 301
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "reportDelay must be > 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 304
    :cond_0
    iput-wide p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    #@11
    .line 305
    return-object p0
.end method

.method public setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "scanMode"    # I

    #@0
    .prologue
    .line 240
    const/4 v0, -0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    const/4 v0, 0x2

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "invalid scan mode "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 243
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    #@22
    .line 244
    return-object p0
.end method

.method public setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "scanResultType"    # I

    #@0
    .prologue
    .line 283
    if-ltz p1, :cond_0

    #@2
    .line 284
    const/4 v0, 0x1

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "invalid scanResultType - "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 285
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 288
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    #@21
    .line 289
    return-object p0
.end method
