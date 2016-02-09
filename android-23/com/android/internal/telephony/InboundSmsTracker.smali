.class public final Lcom/android/internal/telephony/InboundSmsTracker;
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

.field private final mMessageCount:I

.field private final mPdu:[B

.field private final mReferenceNumber:I

.field private final mSequenceNumber:I

.field private final mTimestamp:J


# direct methods
.method constructor <init>(Landroid/database/Cursor;Z)V
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
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 126
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
    .line 128
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 129
    iput v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@1a
    .line 130
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@1c
    .line 131
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@1e
    .line 145
    :goto_0
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    #@21
    move-result-wide v8

    #@22
    iput-wide v8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@24
    .line 147
    const/4 v4, 0x5

    #@25
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_4

    #@2b
    .line 149
    const/4 v4, 0x7

    #@2c
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    #@2f
    move-result-wide v2

    #@30
    .line 150
    .local v2, "rowId":J
    const/4 v4, 0x0

    #@31
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@33
    .line 151
    iput v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@35
    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    #@38
    move-result v4

    #@39
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@3b
    .line 153
    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@3d
    .line 154
    const-string/jumbo v4, "_id=?"

    #@40
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@42
    .line 155
    new-array v4, v5, [Ljava/lang/String;

    #@44
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    aput-object v5, v4, v6

    #@4a
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    #@4c
    .line 125
    .end local v2    # "rowId":J
    :goto_1
    return-void

    #@4d
    .line 133
    :cond_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    #@50
    move-result v0

    #@51
    .line 134
    .local v0, "destPort":I
    const/high16 v4, 0x20000

    #@53
    and-int/2addr v4, v0

    #@54
    if-eqz v4, :cond_1

    #@56
    .line 135
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@58
    .line 141
    :goto_2
    const/high16 v4, 0x80000

    #@5a
    and-int/2addr v4, v0

    #@5b
    if-eqz v4, :cond_3

    #@5d
    move v4, v5

    #@5e
    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@60
    .line 142
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    #@63
    move-result v4

    #@64
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@66
    goto :goto_0

    #@67
    .line 136
    :cond_1
    const/high16 v4, 0x40000

    #@69
    and-int/2addr v4, v0

    #@6a
    if-eqz v4, :cond_2

    #@6c
    .line 137
    iput-boolean v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@6e
    goto :goto_2

    #@6f
    .line 139
    :cond_2
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@71
    goto :goto_2

    #@72
    :cond_3
    move v4, v6

    #@73
    .line 141
    goto :goto_3

    #@74
    .line 158
    .end local v0    # "destPort":I
    :cond_4
    const/4 v4, 0x6

    #@75
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@7b
    .line 159
    const/4 v4, 0x4

    #@7c
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    #@7f
    move-result v4

    #@80
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@82
    .line 160
    const/4 v4, 0x5

    #@83
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    #@86
    move-result v4

    #@87
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@89
    .line 163
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    #@8c
    move-result v4

    #@8d
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@8f
    .line 164
    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@91
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    #@94
    move-result v7

    #@95
    sub-int v1, v4, v7

    #@97
    .line 166
    .local v1, "index":I
    if-ltz v1, :cond_5

    #@99
    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@9b
    if-lt v1, v4, :cond_6

    #@9d
    .line 167
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@9f
    new-instance v5, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v6, "invalid PDU sequence "

    #@a7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@ad
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v5

    #@b1
    .line 168
    const-string/jumbo v6, " of "

    #@b4
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    .line 168
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@ba
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v4

    #@c6
    .line 171
    :cond_6
    const-string/jumbo v4, "address=? AND reference_number=? AND count=?"

    #@c9
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@cb
    .line 172
    new-array v4, v11, [Ljava/lang/String;

    #@cd
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@cf
    aput-object v7, v4, v6

    #@d1
    .line 173
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@d3
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d6
    move-result-object v6

    #@d7
    aput-object v6, v4, v5

    #@d9
    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@db
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@de
    move-result-object v5

    #@df
    aput-object v5, v4, v10

    #@e1
    .line 172
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    #@e3
    goto/16 :goto_1
.end method

.method public constructor <init>([BJIZLjava/lang/String;IIIZ)V
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

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    #@5
    .line 109
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@7
    .line 110
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@9
    .line 111
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@b
    .line 112
    iput-boolean p10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@d
    .line 114
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@f
    .line 115
    iput p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@11
    .line 116
    iput p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@13
    .line 117
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@15
    .line 107
    return-void
.end method

.method constructor <init>([BJIZZ)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "is3gpp2WapPdu"    # Z

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    #@5
    .line 77
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@7
    .line 78
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@9
    .line 79
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@b
    .line 80
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@d
    .line 82
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@10
    .line 83
    const/4 v0, -0x1

    #@11
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@13
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@19
    .line 85
    const/4 v0, 0x1

    #@1a
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@1c
    .line 75
    return-void
.end method

.method static getRealDestPort(I)I
    .locals 1
    .param p0, "destPort"    # I

    #@0
    .prologue
    .line 213
    const/high16 v0, 0x10000

    #@2
    and-int/2addr v0, p0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 214
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 216
    :cond_0
    const v0, 0xffff

    #@a
    and-int/2addr v0, p0

    #@b
    return v0
.end method


# virtual methods
.method getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getContentValues()Landroid/content/ContentValues;
    .locals 6

    #@0
    .prologue
    .line 178
    new-instance v1, Landroid/content/ContentValues;

    #@2
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 179
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
    .line 180
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
    .line 184
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@1f
    const/4 v3, -0x1

    #@20
    if-ne v2, v3, :cond_2

    #@22
    .line 185
    const/high16 v0, 0x10000

    #@24
    .line 189
    .local v0, "destPort":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 190
    const/high16 v2, 0x40000

    #@2a
    or-int/2addr v0, v2

    #@2b
    .line 194
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 195
    const/high16 v2, 0x80000

    #@31
    or-int/2addr v0, v2

    #@32
    .line 197
    :cond_0
    const-string/jumbo v2, "destination_port"

    #@35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3c
    .line 198
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@3e
    if-eqz v2, :cond_1

    #@40
    .line 199
    const-string/jumbo v2, "address"

    #@43
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@45
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 200
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
    .line 201
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
    .line 202
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
    .line 204
    :cond_1
    return-object v1

    #@6d
    .line 187
    .end local v0    # "destPort":I
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@6f
    const v3, 0xffff

    #@72
    and-int v0, v2, v3

    #@74
    .restart local v0    # "destPort":I
    goto :goto_0

    #@75
    .line 192
    :cond_3
    const/high16 v2, 0x20000

    #@77
    or-int/2addr v0, v2

    #@78
    goto :goto_1
.end method

.method getDeleteWhere()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getDeleteWhereArgs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getDestPort()I
    .locals 1

    #@0
    .prologue
    .line 259
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    #@2
    return v0
.end method

.method getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 267
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

.method getIndexOffset()I
    .locals 1

    #@0
    .prologue
    .line 276
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

.method getMessageCount()I
    .locals 1

    #@0
    .prologue
    .line 292
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    #@2
    return v0
.end method

.method getPdu()[B
    .locals 1

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    #@2
    return-object v0
.end method

.method getReferenceNumber()I
    .locals 1

    #@0
    .prologue
    .line 284
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    #@2
    return v0
.end method

.method getSequenceNumber()I
    .locals 1

    #@0
    .prologue
    .line 288
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    #@2
    return v0
.end method

.method getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 255
    iget-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@2
    return-wide v0
.end method

.method is3gpp2()Z
    .locals 1

    #@0
    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    #@2
    return v0
.end method

.method setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@2
    .line 227
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    #@4
    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "SmsTracker{timestamp="

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 232
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    #@a
    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    #@c
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    .line 233
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
    .line 234
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
    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 236
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
    .line 237
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
    .line 238
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
    .line 239
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
    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    #@60
    if-eqz v1, :cond_1

    #@62
    .line 242
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
    .line 243
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
    .line 244
    const/16 v1, 0x29

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
    .line 246
    :cond_1
    const/16 v1, 0x7d

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@88
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    return-object v1
.end method
