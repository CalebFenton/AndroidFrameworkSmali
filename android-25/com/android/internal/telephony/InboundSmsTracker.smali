.class public Lcom/android/internal/telephony/InboundSmsTracker;
.super Ljava/lang/Object;
.source "InboundSmsTracker.java"


# static fields
.field private static final DEST_PORT_FLAG_3GPP:I = 0x20000

.field private static final DEST_PORT_FLAG_3GPP2:I = 0x40000

.field private static final DEST_PORT_FLAG_3GPP2_WAP_PDU:I = 0x80000

.field private static final DEST_PORT_FLAG_NO_PORT:I = 0x10000

.field private static final DEST_PORT_MASK:I = 0xffff


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mDeleteWhere:Ljava/lang/String;

.field private mDeleteWhereArgs:[Ljava/lang/String;

.field private final mDestPort:I

.field private final mIs3gpp2:Z

.field private final mIs3gpp2WapPdu:Z

.field private final mMessageBody:Ljava/lang/String;

.field private final mMessageCount:I

.field private final mPdu:[B

.field private final mReferenceNumber:I

.field private final mSequenceNumber:I

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCurrentFormat3gpp2"    # Z

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v7, -0x1

    #@2
    const/4 v10, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 132
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@f
    move-result-object v4

    #@10
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    #@12
    .line 134
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 135
    iput v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@1a
    .line 136
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@1c
    .line 137
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@1e
    .line 151
    :goto_0
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    #@21
    move-result-wide v8

    #@22
    iput-wide v8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@24
    .line 152
    const/4 v4, 0x6

    #@25
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@2b
    .line 154
    const/4 v4, 0x5

    #@2c
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_4

    #@32
    .line 156
    const/4 v4, 0x7

    #@33
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    #@36
    move-result-wide v2

    #@37
    .line 157
    .local v2, "rowId":J
    iput v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@39
    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    #@3c
    move-result v4

    #@3d
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@3f
    .line 159
    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@41
    .line 160
    const-string/jumbo v4, "_id=?"

    #@44
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@46
    .line 161
    new-array v4, v5, [Ljava/lang/String;

    #@48
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    aput-object v5, v4, v6

    #@4e
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    #@50
    .line 180
    .end local v2    # "rowId":J
    :goto_1
    const/16 v4, 0x8

    #@52
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    #@58
    .line 131
    return-void

    #@59
    .line 139
    :cond_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    #@5c
    move-result v0

    #@5d
    .line 140
    .local v0, "destPort":I
    const/high16 v4, 0x20000

    #@5f
    and-int/2addr v4, v0

    #@60
    if-eqz v4, :cond_1

    #@62
    .line 141
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@64
    .line 147
    :goto_2
    const/high16 v4, 0x80000

    #@66
    and-int/2addr v4, v0

    #@67
    if-eqz v4, :cond_3

    #@69
    move v4, v5

    #@6a
    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@6c
    .line 148
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    #@6f
    move-result v4

    #@70
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@72
    goto :goto_0

    #@73
    .line 142
    :cond_1
    const/high16 v4, 0x40000

    #@75
    and-int/2addr v4, v0

    #@76
    if-eqz v4, :cond_2

    #@78
    .line 143
    iput-boolean v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@7a
    goto :goto_2

    #@7b
    .line 145
    :cond_2
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@7d
    goto :goto_2

    #@7e
    :cond_3
    move v4, v6

    #@7f
    .line 147
    goto :goto_3

    #@80
    .line 164
    .end local v0    # "destPort":I
    :cond_4
    const/4 v4, 0x4

    #@81
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    #@84
    move-result v4

    #@85
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@87
    .line 165
    const/4 v4, 0x5

    #@88
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    #@8b
    move-result v4

    #@8c
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@8e
    .line 168
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    #@91
    move-result v4

    #@92
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@94
    .line 169
    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@96
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    #@99
    move-result v7

    #@9a
    sub-int v1, v4, v7

    #@9c
    .line 171
    .local v1, "index":I
    if-ltz v1, :cond_5

    #@9e
    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@a0
    if-lt v1, v4, :cond_6

    #@a2
    .line 172
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a4
    new-instance v5, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v6, "invalid PDU sequence "

    #@ac
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    .line 173
    const-string/jumbo v6, " of "

    #@b9
    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v5

    #@bd
    .line 173
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@bf
    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v5

    #@c7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v4

    #@cb
    .line 176
    :cond_6
    const-string/jumbo v4, "address=? AND reference_number=? AND count=? AND deleted=0"

    #@ce
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@d0
    .line 177
    new-array v4, v11, [Ljava/lang/String;

    #@d2
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@d4
    aput-object v7, v4, v6

    #@d6
    .line 178
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@d8
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@db
    move-result-object v6

    #@dc
    aput-object v6, v4, v5

    #@de
    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@e0
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e3
    move-result-object v5

    #@e4
    aput-object v5, v4, v10

    #@e6
    .line 177
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    #@e8
    goto/16 :goto_1
.end method

.method public constructor <init>([BJIZLjava/lang/String;IIIZLjava/lang/String;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "referenceNumber"    # I
    .param p8, "sequenceNumber"    # I
    .param p9, "messageCount"    # I
    .param p10, "is3gpp2WapPdu"    # Z
    .param p11, "messageBody"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    #@5
    .line 114
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@7
    .line 115
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@9
    .line 116
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@b
    .line 117
    iput-boolean p10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@d
    .line 118
    iput-object p11, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    #@f
    .line 119
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@11
    .line 121
    iput p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@13
    .line 122
    iput p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@15
    .line 123
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@17
    .line 112
    return-void
.end method

.method public constructor <init>([BJIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "is3gpp2WapPdu"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "messageBody"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    #@5
    .line 81
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@7
    .line 82
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@9
    .line 83
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@b
    .line 84
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@d
    .line 85
    iput-object p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    #@f
    .line 86
    iput-object p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@11
    .line 88
    const/4 v0, -0x1

    #@12
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@14
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@1a
    .line 90
    const/4 v0, 0x1

    #@1b
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@1d
    .line 79
    return-void
.end method

.method public static getRealDestPort(I)I
    .locals 1
    .param p0, "destPort"    # I

    #@0
    .prologue
    .line 220
    const/high16 v0, 0x10000

    #@2
    and-int/2addr v0, p0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 221
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 223
    :cond_0
    const v0, 0xffff

    #@a
    and-int/2addr v0, p0

    #@b
    return v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 6

    #@0
    .prologue
    .line 184
    new-instance v1, Landroid/content/ContentValues;

    #@2
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 185
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "pdu"

    #@8
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    #@a
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 186
    const-string/jumbo v2, "date"

    #@14
    iget-wide v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@16
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1d
    .line 190
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@1f
    const/4 v3, -0x1

    #@20
    if-ne v2, v3, :cond_2

    #@22
    .line 191
    const/high16 v0, 0x10000

    #@24
    .line 195
    .local v0, "destPort":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 196
    const/high16 v2, 0x40000

    #@2a
    or-int/2addr v0, v2

    #@2b
    .line 200
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 201
    const/high16 v2, 0x80000

    #@31
    or-int/2addr v0, v2

    #@32
    .line 203
    :cond_0
    const-string/jumbo v2, "destination_port"

    #@35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3c
    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@3e
    if-eqz v2, :cond_1

    #@40
    .line 205
    const-string/jumbo v2, "address"

    #@43
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@45
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 206
    const-string/jumbo v2, "reference_number"

    #@4b
    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@4d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@54
    .line 207
    const-string/jumbo v2, "sequence"

    #@57
    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@60
    .line 208
    const-string/jumbo v2, "count"

    #@63
    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@6c
    .line 210
    :cond_1
    const-string/jumbo v2, "message_body"

    #@6f
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    #@71
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@74
    .line 211
    return-object v1

    #@75
    .line 193
    .end local v0    # "destPort":I
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@77
    const v3, 0xffff

    #@7a
    and-int v0, v2, v3

    #@7c
    .restart local v0    # "destPort":I
    goto :goto_0

    #@7d
    .line 198
    :cond_3
    const/high16 v2, 0x20000

    #@7f
    or-int/2addr v0, v2

    #@80
    goto :goto_1
.end method

.method public getDeleteWhere()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDeleteWhereArgs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDestPort()I
    .locals 1

    #@0
    .prologue
    .line 266
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@2
    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "3gpp2"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    const-string/jumbo v0, "3gpp"

    #@b
    goto :goto_0
.end method

.method public getIndexOffset()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    #@0
    .prologue
    .line 303
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@2
    return v0
.end method

.method public getPdu()[B
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    #@2
    return-object v0
.end method

.method public getReferenceNumber()I
    .locals 1

    #@0
    .prologue
    .line 295
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@2
    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    #@0
    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@2
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 262
    iget-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@2
    return-wide v0
.end method

.method public is3gpp2()Z
    .locals 1

    #@0
    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@2
    return v0
.end method

.method public setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@2
    .line 234
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    #@4
    .line 232
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "SmsTracker{timestamp="

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 239
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    #@a
    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@c
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    .line 240
    const-string/jumbo v1, " destPort="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    .line 241
    const-string/jumbo v1, " is3gpp2="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 243
    const-string/jumbo v1, " address="

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 244
    const-string/jumbo v1, " refNumber="

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    .line 245
    const-string/jumbo v1, " seqNumber="

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    .line 246
    const-string/jumbo v1, " msgCount="

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@60
    if-eqz v1, :cond_1

    #@62
    .line 249
    const-string/jumbo v1, " deleteWhere("

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 250
    const-string/jumbo v1, ") deleteArgs=("

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    #@77
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 251
    const/16 v1, 0x29

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
    .line 253
    :cond_1
    const/16 v1, 0x7d

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@88
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    return-object v1
.end method
