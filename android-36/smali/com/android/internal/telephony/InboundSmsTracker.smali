.class public Lcom/android/internal/telephony/InboundSmsTracker;
.super Ljava/lang/Object;
.source "InboundSmsTracker.java"


# static fields
.field public static final blacklist DEST_PORT_FLAG_3GPP2:I = 0x40000

.field public static final blacklist DEST_PORT_FLAG_3GPP2_WAP_PDU:I = 0x80000

.field public static final blacklist DEST_PORT_FLAG_NO_PORT:I = 0x10000

.field public static final blacklist SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND (destination_port & 524288=0) AND deleted=0"

.field public static final blacklist SELECT_BY_REFERENCE_3GPP2WAP:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND (destination_port & 524288=524288) AND deleted=0"


# instance fields
.field private final blacklist mAddress:Ljava/lang/String;

.field private blacklist mDeleteWhere:Ljava/lang/String;

.field private blacklist mDeleteWhereArgs:[Ljava/lang/String;

.field private final blacklist mDestPort:I

.field private final blacklist mDisplayAddress:Ljava/lang/String;

.field private final blacklist mIs3gpp2:Z

.field private final blacklist mIs3gpp2WapPdu:Z

.field private final blacklist mIsClass0:Z

.field private final blacklist mMessageBody:Ljava/lang/String;

.field private final blacklist mMessageCount:I

.field private final blacklist mMessageId:J

.field private final blacklist mPdu:[B

.field private final blacklist mReferenceNumber:I

.field private final blacklist mSequenceNumber:I

.field private blacklist mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

.field private final blacklist mSmsSource:I

.field private final blacklist mSubId:I

.field private final blacklist mTimestamp:J


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 12

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 196
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 199
    iput-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIsClass0:Z

    const/4 v1, 0x2

    .line 201
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_20

    .line 202
    iput v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 203
    iput-boolean p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 204
    iput-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    goto :goto_46

    .line 206
    :cond_20
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2c

    .line 208
    iput-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_36

    :cond_2c
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-eqz v2, :cond_34

    .line 210
    iput-boolean v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_36

    .line 212
    :cond_34
    iput-boolean p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    :goto_36
    const/high16 p3, 0x80000

    and-int/2addr p3, v1

    if-eqz p3, :cond_3d

    move p3, v4

    goto :goto_3e

    :cond_3d
    move p3, v0

    .line 214
    :goto_3e
    iput-boolean p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 215
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    :goto_46
    const/4 p3, 0x3

    .line 218
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    const/4 p3, 0x6

    .line 219
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    const/16 v5, 0x9

    .line 220
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    .line 221
    sget-object v5, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/16 v6, 0xb

    .line 222
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 221
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    const/4 v6, 0x5

    .line 224
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v4, :cond_99

    const/4 p3, 0x7

    .line 226
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 227
    iput v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 229
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 230
    const-string p3, "_id=?"

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 231
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    goto :goto_ca

    :cond_99
    const/4 v3, 0x4

    .line 234
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 235
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 238
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v7

    sub-int v7, v4, v7

    if-ltz v7, :cond_db

    if-ge v7, v6, :cond_db

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 248
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p3, v3, v4}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    :goto_ca
    const/16 p3, 0x8

    .line 250
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    .line 251
    invoke-static {p1, v1, v2, v5}, Lcom/android/internal/telephony/InboundSmsTracker;->createMessageId(Landroid/content/Context;JI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageId:J

    .line 253
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSmsSource:I

    return-void

    .line 242
    :cond_db
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid PDU sequence "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)V
    .registers 18

    move/from16 v0, p15

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 172
    iput-wide p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 173
    iput p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 174
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 175
    iput-boolean p12, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 176
    iput-object p13, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    .line 177
    iput-boolean p14, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIsClass0:Z

    .line 179
    iput-object p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    .line 181
    iput-object p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 182
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 183
    iput p10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 184
    iput p11, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 185
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    .line 186
    invoke-static {p1, p3, p4, v0}, Lcom/android/internal/telephony/InboundSmsTracker;->createMessageId(Landroid/content/Context;JI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageId:J

    move/from16 p1, p16

    .line 187
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSmsSource:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 14

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 130
    iput-wide p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 131
    iput p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 132
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 133
    iput-boolean p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 134
    iput-object p10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    .line 135
    iput-object p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 136
    iput-object p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    .line 137
    iput-boolean p11, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIsClass0:Z

    const/4 p2, -0x1

    .line 139
    iput p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    const/4 p2, 0x1

    .line 141
    iput p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 142
    iput p12, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    .line 143
    invoke-static {p1, p3, p4, p12}, Lcom/android/internal/telephony/InboundSmsTracker;->createMessageId(Landroid/content/Context;JI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageId:J

    .line 144
    iput p13, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSmsSource:I

    return-void
.end method

.method private blacklist addDestPortQuery(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 419
    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz p0, :cond_7

    .line 420
    const-string p0, "destination_port & 524288=524288"

    goto :goto_9

    .line 423
    :cond_7
    const-string p0, "destination_port & 524288=0"

    .line 425
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createMessageId(Landroid/content/Context;JI)J
    .registers 5

    .line 429
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p3

    .line 430
    const-string v0, "phone"

    .line 431
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 432
    invoke-virtual {p0, p3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    .line 433
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_19

    const-wide/16 p0, 0x0

    return-wide p0

    .line 436
    :cond_19
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 437
    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getShaValue(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist getRealDestPort(I)I
    .registers 2

    .line 0
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 p0, -0x1

    return p0

    :cond_7
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static blacklist getShaBytes(Ljava/lang/String;I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 453
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 455
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 456
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 457
    array-length v0, p0

    if-lt v0, p1, :cond_20

    .line 458
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 459
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_20
    return-object p0
.end method

.method private static blacklist getShaValue(Ljava/lang/String;)J
    .registers 3

    const/16 v0, 0x8

    .line 442
    :try_start_2
    invoke-static {p0, v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getShaBytes(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 443
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_e} :catch_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_e} :catch_f

    return-wide v0

    :catch_f
    move-exception p0

    .line 445
    const-string v0, "InboundSmsTracker"

    const-string v1, "Exception while getting SHA value for message"

    invoke-static {v0, v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public blacklist getAddress()Ljava/lang/String;
    .registers 1

    .line 476
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getContentValues()Landroid/content/ContentValues;
    .registers 4

    .line 257
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    invoke-static {v1}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pdu"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-wide v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    const/high16 v1, 0x10000

    goto :goto_27

    :cond_23
    const v2, 0xffff

    and-int/2addr v1, v2

    .line 268
    :goto_27
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v2, :cond_2f

    const/high16 v2, 0x40000

    :goto_2d
    or-int/2addr v1, v2

    goto :goto_32

    :cond_2f
    const/high16 v2, 0x20000

    goto :goto_2d

    .line 273
    :goto_32
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v2, :cond_39

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    .line 276
    :cond_39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "destination_port"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_68

    .line 278
    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "display_originating_addr"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reference_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sequence"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    :cond_68
    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v1, "message_body"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "sub_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public blacklist getDeleteWhere()Ljava/lang/String;
    .registers 1

    .line 500
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDeleteWhereArgs()[Ljava/lang/String;
    .registers 1

    .line 504
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDestPort()I
    .registers 1

    .line 346
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    return p0
.end method

.method public blacklist getDisplayAddress()Ljava/lang/String;
    .registers 1

    .line 480
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getExactMatchDupDetectQuery()Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    .line 383
    const-string v6, "address=? AND reference_number=? AND count=? AND sequence=? AND date=? AND message_body=?"

    .line 385
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/InboundSmsTracker;->addDestPortQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 386
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public greylist-max-r getFormat()Ljava/lang/String;
    .registers 1

    .line 363
    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz p0, :cond_7

    const-string p0, "3gpp2"

    return-object p0

    :cond_7
    const-string p0, "3gpp"

    return-object p0
.end method

.method public greylist-max-r getIndexOffset()I
    .registers 2

    .line 472
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getInexactMatchDupDetectQuery()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 404
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    const-string v4, "address=? AND reference_number=? AND count=? AND sequence=? AND deleted=0"

    .line 411
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/InboundSmsTracker;->addDestPortQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 412
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public blacklist getMessageBody()Ljava/lang/String;
    .registers 1

    .line 484
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMessageCount()I
    .registers 1

    .line 496
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    return p0
.end method

.method public blacklist getMessageId()J
    .registers 3

    .line 508
    iget-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageId:J

    return-wide v0
.end method

.method public blacklist getPdu()[B
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    return-object p0
.end method

.method public blacklist getQueryForSegments()Ljava/lang/String;
    .registers 1

    .line 367
    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz p0, :cond_7

    const-string p0, "address=? AND reference_number=? AND count=? AND (destination_port & 524288=524288) AND deleted=0"

    return-object p0

    :cond_7
    const-string p0, "address=? AND reference_number=? AND count=? AND (destination_port & 524288=0) AND deleted=0"

    return-object p0
.end method

.method public blacklist getReferenceNumber()I
    .registers 1

    .line 488
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    return p0
.end method

.method public blacklist getSequenceNumber()I
    .registers 1

    .line 492
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    return p0
.end method

.method public blacklist getSmsBroadcastReceiver(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .registers 3

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    if-nez v0, :cond_e

    .line 522
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 524
    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    return-object p0
.end method

.method public blacklist getSource()I
    .registers 1

    .line 512
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSmsSource:I

    return p0
.end method

.method public blacklist getSubId()I
    .registers 1

    .line 358
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    return p0
.end method

.method public blacklist getTimestamp()J
    .registers 3

    .line 342
    iget-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    return-wide v0
.end method

.method public blacklist is3gpp2()Z
    .registers 1

    .line 350
    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    return p0
.end method

.method public blacklist isClass0()Z
    .registers 1

    .line 354
    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIsClass0:Z

    return p0
.end method

.method public blacklist setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 308
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 309
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsTracker{timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, " destPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, " is3gpp2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, " display_originating_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, " refNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, " seqNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, " msgCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    if-eqz v1, :cond_6e

    .line 327
    const-string v1, " deleteWhere("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, ") deleteArgs=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_6e
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-wide v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageId:J

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
