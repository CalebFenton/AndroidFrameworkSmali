.class public final Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;
.super Ljava/lang/Object;
.source "ExecuteOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/ExecuteOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBestValue:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEventLogRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutputData:[B

.field private blacklist mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

.field private blacklist mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBestValue:I

    .line 229
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    .line 232
    return-void
.end method


# virtual methods
.method public whitelist addEventLogRecord(Landroid/adservices/ondevicepersonalization/EventLogRecord;)Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;
    .registers 3
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 275
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mEventLogRecords:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->setEventLogRecords(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;

    .line 276
    :cond_c
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mEventLogRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-object p0
.end method

.method public whitelist build()Landroid/adservices/ondevicepersonalization/ExecuteOutput;
    .registers 9

    .line 316
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    .line 318
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 319
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 321
    :cond_15
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_20

    .line 322
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 324
    :cond_20
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_2f

    .line 325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mEventLogRecords:Ljava/util/List;

    .line 327
    :cond_2f
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_3a

    .line 328
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mOutputData:[B

    .line 330
    :cond_3a
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBestValue:I

    .line 333
    :cond_46
    new-instance v1, Landroid/adservices/ondevicepersonalization/ExecuteOutput;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mEventLogRecords:Ljava/util/List;

    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mOutputData:[B

    iget v6, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBestValue:I

    invoke-direct/range {v1 .. v6}, Landroid/adservices/ondevicepersonalization/ExecuteOutput;-><init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Landroid/adservices/ondevicepersonalization/RenderingConfig;Ljava/util/List;[BI)V

    .line 339
    .local v1, "o":Landroid/adservices/ondevicepersonalization/ExecuteOutput;
    return-object v1
.end method

.method public whitelist setBestValue(I)Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;
    .registers 8
    .param p1, "value"    # I

    .line 308
    const-class v0, Landroid/annotation/IntRange;

    const-string v3, "from"

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move v2, p1

    .end local p1    # "value":I
    .local v2, "value":I
    invoke-static/range {v0 .. v5}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 309
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v3, 0x10

    or-long/2addr v0, v3

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    .line 310
    iput v2, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBestValue:I

    .line 311
    return-object p0
.end method

.method public whitelist setEventLogRecords(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;)",
            "Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;"
        }
    .end annotation

    .line 267
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    .line 268
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mEventLogRecords:Ljava/util/List;

    .line 269
    return-object p0
.end method

.method public varargs whitelist setOutputData([B)Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 290
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    .line 291
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mOutputData:[B

    .line 292
    return-object p0
.end method

.method public whitelist setRenderingConfig(Landroid/adservices/ondevicepersonalization/RenderingConfig;)Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 252
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    .line 253
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mRenderingConfig:Landroid/adservices/ondevicepersonalization/RenderingConfig;

    .line 254
    return-object p0
.end method

.method public whitelist setRequestLogRecord(Landroid/adservices/ondevicepersonalization/RequestLogRecord;)Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;
    .registers 6
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 241
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mBuilderFieldsSet:J

    .line 242
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ExecuteOutput$Builder;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 243
    return-object p0
.end method
