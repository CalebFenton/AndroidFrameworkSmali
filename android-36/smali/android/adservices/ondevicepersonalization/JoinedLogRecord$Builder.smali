.class public Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;
.super Ljava/lang/Object;
.source "JoinedLogRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/JoinedLogRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEventData:Landroid/content/ContentValues;

.field private blacklist mEventTimeMillis:J

.field private blacklist mRequestData:Landroid/content/ContentValues;

.field private blacklist mRequestTimeMillis:J

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    .line 243
    return-void
.end method

.method public constructor blacklist <init>(JJI)V
    .registers 20
    .param p1, "requestTimeMillis"    # J
    .param p3, "eventTimeMillis"    # J
    .param p5, "type"    # I

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    .line 260
    move-wide v0, p1

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mRequestTimeMillis:J

    .line 261
    move-wide/from16 v2, p3

    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mEventTimeMillis:J

    .line 262
    move/from16 v4, p5

    iput v4, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mType:I

    .line 263
    const-class v5, Landroid/annotation/IntRange;

    iget v7, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mType:I

    const-string v11, "to"

    const-wide/16 v12, 0x7f

    const/4 v6, 0x0

    const-string v8, "from"

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v13}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 267
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 346
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 350
    return-void

    .line 347
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/JoinedLogRecord;
    .registers 11

    .line 327
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->checkNotUsed()V

    .line 328
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    .line 330
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 331
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mRequestData:Landroid/content/ContentValues;

    .line 333
    :cond_18
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_23

    .line 334
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mEventData:Landroid/content/ContentValues;

    .line 336
    :cond_23
    new-instance v2, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mRequestTimeMillis:J

    iget-wide v5, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mEventTimeMillis:J

    iget v7, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mType:I

    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mRequestData:Landroid/content/ContentValues;

    iget-object v9, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mEventData:Landroid/content/ContentValues;

    invoke-direct/range {v2 .. v9}, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;-><init>(JJILandroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 342
    .local v2, "o":Landroid/adservices/ondevicepersonalization/JoinedLogRecord;
    return-object v2
.end method

.method public blacklist setEventData(Landroid/content/ContentValues;)Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;
    .registers 6
    .param p1, "value"    # Landroid/content/ContentValues;

    .line 319
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->checkNotUsed()V

    .line 320
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    .line 321
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mEventData:Landroid/content/ContentValues;

    .line 322
    return-object p0
.end method

.method public blacklist setEventTimeMillis(J)Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 285
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->checkNotUsed()V

    .line 286
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    .line 287
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mEventTimeMillis:J

    .line 288
    return-object p0
.end method

.method public blacklist setRequestData(Landroid/content/ContentValues;)Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;
    .registers 6
    .param p1, "value"    # Landroid/content/ContentValues;

    .line 308
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->checkNotUsed()V

    .line 309
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    .line 310
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mRequestData:Landroid/content/ContentValues;

    .line 311
    return-object p0
.end method

.method public blacklist setRequestTimeMillis(J)Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 274
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->checkNotUsed()V

    .line 275
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    .line 276
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mRequestTimeMillis:J

    .line 277
    return-object p0
.end method

.method public blacklist setType(I)Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 297
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->checkNotUsed()V

    .line 298
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mBuilderFieldsSet:J

    .line 299
    iput p1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;->mType:I

    .line 300
    return-object p0
.end method
