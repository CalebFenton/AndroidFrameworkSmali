.class public final Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;
.super Landroid/adservices/ondevicepersonalization/EventLogRecord$BaseBuilder;
.source "EventLogRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/EventLogRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mData:Landroid/content/ContentValues;

.field private blacklist mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

.field private blacklist mRowIndex:I

.field private blacklist mTimeMillis:J

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 307
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventLogRecord$BaseBuilder;-><init>()V

    .line 305
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    .line 308
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 410
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 414
    return-void

    .line 411
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/EventLogRecord;
    .registers 10

    .line 382
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->checkNotUsed()V

    .line 383
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    .line 385
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mRowIndex:I

    .line 388
    :cond_18
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 389
    const/4 v0, 0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mType:I

    .line 391
    :cond_24
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 392
    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mTimeMillis:J

    .line 394
    :cond_2f
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    .line 395
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mData:Landroid/content/ContentValues;

    .line 397
    :cond_3b
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_46

    .line 398
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 400
    :cond_46
    new-instance v2, Landroid/adservices/ondevicepersonalization/EventLogRecord;

    iget v3, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mRowIndex:I

    iget v4, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mType:I

    iget-wide v5, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mTimeMillis:J

    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mData:Landroid/content/ContentValues;

    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    invoke-direct/range {v2 .. v8}, Landroid/adservices/ondevicepersonalization/EventLogRecord;-><init>(IIJLandroid/content/ContentValues;Landroid/adservices/ondevicepersonalization/RequestLogRecord;)V

    .line 406
    .local v2, "o":Landroid/adservices/ondevicepersonalization/EventLogRecord;
    return-object v2
.end method

.method public whitelist setData(Landroid/content/ContentValues;)Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;
    .registers 6
    .param p1, "value"    # Landroid/content/ContentValues;

    .line 357
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->checkNotUsed()V

    .line 358
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    .line 359
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mData:Landroid/content/ContentValues;

    .line 360
    return-object p0
.end method

.method public whitelist setRequestLogRecord(Landroid/adservices/ondevicepersonalization/RequestLogRecord;)Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 374
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->checkNotUsed()V

    .line 375
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    .line 376
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 377
    return-object p0
.end method

.method public whitelist setRowIndex(I)Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 316
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->checkNotUsed()V

    .line 317
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    .line 318
    iput p1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mRowIndex:I

    .line 319
    return-object p0
.end method

.method public blacklist setTimeMillis(J)Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 345
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->checkNotUsed()V

    .line 346
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    .line 347
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mTimeMillis:J

    .line 348
    return-object p0
.end method

.method public whitelist setType(I)Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 331
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->checkNotUsed()V

    .line 332
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mBuilderFieldsSet:J

    .line 333
    iput p1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;->mType:I

    .line 334
    return-object p0
.end method
