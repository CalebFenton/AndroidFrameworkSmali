.class public final Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;
.super Landroid/adservices/ondevicepersonalization/RequestLogRecord$BaseBuilder;
.source "RequestLogRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/RequestLogRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mRequestId:J

.field private blacklist mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimeMillis:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 224
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RequestLogRecord$BaseBuilder;-><init>()V

    .line 222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    .line 225
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 295
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 299
    return-void

    .line 296
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addRow(Landroid/content/ContentValues;)Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;
    .registers 3
    .param p1, "value"    # Landroid/content/ContentValues;

    .line 241
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mRows:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->setRows(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;

    .line 242
    :cond_c
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-object p0
.end method

.method public whitelist build()Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .registers 11

    .line 275
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->checkNotUsed()V

    .line 276
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    .line 278
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mRows:Ljava/util/List;

    .line 281
    :cond_1b
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    .line 282
    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mRequestId:J

    .line 284
    :cond_26
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    .line 285
    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mTimeMillis:J

    .line 287
    :cond_31
    new-instance v4, Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mRows:Ljava/util/List;

    iget-wide v6, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mRequestId:J

    iget-wide v8, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mTimeMillis:J

    invoke-direct/range {v4 .. v9}, Landroid/adservices/ondevicepersonalization/RequestLogRecord;-><init>(Ljava/util/List;JJ)V

    .line 291
    .local v4, "o":Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    return-object v4
.end method

.method public blacklist setRequestId(J)Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 253
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->checkNotUsed()V

    .line 254
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    .line 255
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mRequestId:J

    .line 256
    return-object p0
.end method

.method public whitelist setRows(Ljava/util/List;)Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;"
        }
    .end annotation

    .line 232
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->checkNotUsed()V

    .line 233
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    .line 234
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mRows:Ljava/util/List;

    .line 235
    return-object p0
.end method

.method public blacklist setTimeMillis(J)Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 267
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->checkNotUsed()V

    .line 268
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mBuilderFieldsSet:J

    .line 269
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/RequestLogRecord$Builder;->mTimeMillis:J

    .line 270
    return-object p0
.end method
