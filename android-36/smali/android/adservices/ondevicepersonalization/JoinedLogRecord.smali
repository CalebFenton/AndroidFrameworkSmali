.class public Landroid/adservices/ondevicepersonalization/JoinedLogRecord;
.super Ljava/lang/Object;
.source "JoinedLogRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/JoinedLogRecord$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/JoinedLogRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEventData:Landroid/content/ContentValues;

.field private final blacklist mEventTimeMillis:J

.field private blacklist mRequestData:Landroid/content/ContentValues;

.field private final blacklist mRequestTimeMillis:J

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 213
    new-instance v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/JoinedLogRecord$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(JJILandroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 22
    .param p1, "requestTimeMillis"    # J
    .param p3, "eventTimeMillis"    # J
    .param p5, "type"    # I
    .param p6, "requestData"    # Landroid/content/ContentValues;
    .param p7, "eventData"    # Landroid/content/ContentValues;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    .line 51
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    .line 75
    move-wide v0, p1

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestTimeMillis:J

    .line 76
    move-wide/from16 v2, p3

    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventTimeMillis:J

    .line 77
    move/from16 v4, p5

    iput v4, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mType:I

    .line 78
    const-class v5, Landroid/annotation/IntRange;

    iget v7, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mType:I

    const-string v11, "to"

    const-wide/16 v12, 0x7f

    const/4 v6, 0x0

    const-string v8, "from"

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v13}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 82
    move-object/from16 v5, p6

    iput-object v5, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    .line 83
    move-object/from16 v6, p7

    iput-object v6, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    .line 86
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 21
    .param p1, "in"    # Landroid/os/Parcel;

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    .line 51
    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 193
    .local v3, "flg":B
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 194
    .local v4, "requestTimeMillis":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 195
    .local v6, "eventTimeMillis":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 196
    .local v8, "type":I
    and-int/lit8 v9, v3, 0x8

    if-nez v9, :cond_22

    move-object v9, v2

    goto :goto_2a

    :cond_22
    sget-object v9, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 197
    .local v9, "requestData":Landroid/content/ContentValues;
    :goto_2a
    and-int/lit8 v10, v3, 0x10

    if-nez v10, :cond_2f

    goto :goto_37

    :cond_2f
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 199
    .local v2, "eventData":Landroid/content/ContentValues;
    :goto_37
    iput-wide v4, v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestTimeMillis:J

    .line 200
    iput-wide v6, v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventTimeMillis:J

    .line 201
    iput v8, v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mType:I

    .line 202
    const-class v10, Landroid/annotation/IntRange;

    iget v12, v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mType:I

    const-string v16, "to"

    const-wide/16 v17, 0x7f

    const/4 v11, 0x0

    const-string v13, "from"

    const-wide/16 v14, 0x0

    invoke-static/range {v10 .. v18}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 206
    iput-object v9, v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    .line 207
    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    .line 210
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 137
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_42

    .line 139
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;

    .line 141
    .local v2, "that":Landroid/adservices/ondevicepersonalization/JoinedLogRecord;
    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestTimeMillis:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_40

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventTimeMillis:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_40

    iget v3, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mType:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mType:I

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    .line 145
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    .line 146
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    .line 141
    :goto_41
    return v0

    .line 137
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/JoinedLogRecord;
    :cond_42
    :goto_42
    return v1
.end method

.method public blacklist getEventData()Landroid/content/ContentValues;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    return-object v0
.end method

.method public blacklist getEventTimeMillis()J
    .registers 3

    .line 101
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventTimeMillis:J

    return-wide v0
.end method

.method public blacklist getRequestData()Landroid/content/ContentValues;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    return-object v0
.end method

.method public blacklist getRequestTimeMillis()J
    .registers 3

    .line 93
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestTimeMillis:J

    return-wide v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 157
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 158
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mType:I

    add-int/2addr v1, v2

    .line 159
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 160
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 172
    :cond_8
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 173
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 174
    iget-wide v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget-wide v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mRequestData:Landroid/content/ContentValues;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 178
    :cond_2a
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/JoinedLogRecord;->mEventData:Landroid/content/ContentValues;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 179
    :cond_33
    return-void
.end method
