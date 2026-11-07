.class public final Landroid/adservices/ondevicepersonalization/EventLogRecord;
.super Ljava/lang/Object;
.source "EventLogRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/EventLogRecord$Builder;,
        Landroid/adservices/ondevicepersonalization/EventLogRecord$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mData:Landroid/content/ContentValues;

.field blacklist mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

.field private blacklist mRowIndex:I

.field private blacklist mTimeMillis:J

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 279
    new-instance v0, Landroid/adservices/ondevicepersonalization/EventLogRecord$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/EventLogRecord$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IIJLandroid/content/ContentValues;Landroid/adservices/ondevicepersonalization/RequestLogRecord;)V
    .registers 18
    .param p1, "rowIndex"    # I
    .param p2, "type"    # I
    .param p3, "timeMillis"    # J
    .param p5, "data"    # Landroid/content/ContentValues;
    .param p6, "requestLogRecord"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mTimeMillis:J

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    .line 83
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 122
    iput p1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    .line 123
    const-class v1, Landroid/annotation/IntRange;

    iget v3, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    const-string v4, "from"

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 126
    iput p2, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    .line 127
    const-class v2, Landroid/annotation/IntRange;

    iget v4, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    const-string v8, "to"

    const-wide/16 v9, 0x7f

    const/4 v3, 0x0

    const-string v5, "from"

    const-wide/16 v6, 0x1

    invoke-static/range {v2 .. v10}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 131
    move-wide v2, p3

    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mTimeMillis:J

    .line 132
    move-object/from16 v4, p5

    iput-object v4, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    .line 133
    move-object/from16 v5, p6

    iput-object v5, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 136
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 26
    .param p1, "in"    # Landroid/os/Parcel;

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v2, 0x0

    iput v2, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    .line 58
    const/4 v2, 0x1

    iput v2, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mTimeMillis:J

    .line 70
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    .line 83
    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 256
    .local v3, "flg":B
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 257
    .local v4, "rowIndex":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 258
    .local v5, "type":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 259
    .local v6, "timeMillis":J
    and-int/lit8 v8, v3, 0x8

    if-nez v8, :cond_2c

    move-object v8, v2

    goto :goto_34

    :cond_2c
    sget-object v8, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 260
    .local v8, "data":Landroid/content/ContentValues;
    :goto_34
    and-int/lit8 v9, v3, 0x10

    if-nez v9, :cond_39

    goto :goto_41

    :cond_39
    sget-object v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 262
    .local v2, "requestLogRecord":Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    :goto_41
    iput v4, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    .line 263
    const-class v9, Landroid/annotation/IntRange;

    iget v11, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    const-string v12, "from"

    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 266
    iput v5, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    .line 267
    const-class v15, Landroid/annotation/IntRange;

    iget v9, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    const-string v21, "to"

    const-wide/16 v22, 0x7f

    const/16 v16, 0x0

    const-string v18, "from"

    const-wide/16 v19, 0x1

    move/from16 v17, v9

    invoke-static/range {v15 .. v23}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 271
    iput-wide v6, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mTimeMillis:J

    .line 272
    iput-object v8, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    .line 273
    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 276
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 200
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 202
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 204
    .local v2, "that":Landroid/adservices/ondevicepersonalization/EventLogRecord;
    iget v3, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    if-ne v3, v4, :cond_3e

    iget v3, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    if-ne v3, v4, :cond_3e

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mTimeMillis:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    .line 208
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 209
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 204
    :goto_3f
    return v0

    .line 200
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/EventLogRecord;
    :cond_40
    :goto_40
    return v1
.end method

.method public whitelist getData()Landroid/content/ContentValues;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    return-object v0
.end method

.method public whitelist getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    return-object v0
.end method

.method public whitelist getRowIndex()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    return v0
.end method

.method public whitelist getTime()Ljava/time/Instant;
    .registers 3

    .line 90
    invoke-virtual {p0}, Landroid/adservices/ondevicepersonalization/EventLogRecord;->getTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeMillis()J
    .registers 3

    .line 166
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 218
    const/4 v0, 0x1

    .line 219
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    add-int/2addr v1, v2

    .line 220
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    add-int/2addr v0, v2

    .line 221
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 222
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 223
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 224
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 235
    :cond_8
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 236
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 237
    iget v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRowIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-wide v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mData:Landroid/content/ContentValues;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 241
    :cond_2a
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 242
    :cond_33
    return-void
.end method
