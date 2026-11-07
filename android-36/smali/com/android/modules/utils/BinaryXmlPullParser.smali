.class public Lcom/android/modules/utils/BinaryXmlPullParser;
.super Ljava/lang/Object;
.source "BinaryXmlPullParser.java"

# interfaces
.implements Lcom/android/modules/utils/TypedXmlPullParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;
    }
.end annotation


# static fields
.field private static final blacklist HEX_DIGITS:[C


# instance fields
.field private blacklist mAttributeCount:I

.field private blacklist mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

.field private blacklist mCurrentDepth:I

.field private blacklist mCurrentName:Ljava/lang/String;

.field private blacklist mCurrentText:Ljava/lang/String;

.field private blacklist mCurrentToken:I

.field private blacklist mIn:Lcom/android/modules/utils/FastDataInput;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 908
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/modules/utils/BinaryXmlPullParser;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    .line 77
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    .line 86
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    return-void
.end method

.method static blacklist bytesToHexString([B)Ljava/lang/String;
    .registers 9
    .param p0, "value"    # [B

    .line 919
    array-length v0, p0

    .line 920
    .local v0, "length":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    .line 921
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 922
    .local v2, "bufIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_24

    .line 923
    aget-byte v4, p0, v3

    .line 924
    .local v4, "b":B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "bufIndex":I
    .local v5, "bufIndex":I
    sget-object v6, Lcom/android/modules/utils/BinaryXmlPullParser;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v2

    .line 925
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "bufIndex":I
    .restart local v2    # "bufIndex":I
    sget-object v6, Lcom/android/modules/utils/BinaryXmlPullParser;->HEX_DIGITS:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    .line 922
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 927
    .end local v3    # "i":I
    :cond_24
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private blacklist consumeAdditionalText()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 321
    .local v0, "combinedText":Ljava/lang/String;
    :goto_2
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v1

    .line 322
    .local v1, "token":I
    packed-switch v1, :pswitch_data_2e

    .line 337
    :pswitch_9
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    .line 338
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 339
    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 340
    return-void

    .line 326
    :pswitch_12
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    .line 327
    goto :goto_2d

    .line 332
    :pswitch_16
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    nop

    .line 342
    .end local v1    # "token":I
    :goto_2d
    goto :goto_2

    :pswitch_data_2e
    .packed-switch 0x4
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_9
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private blacklist consumeToken()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->readByte()B

    move-result v0

    .line 221
    .local v0, "event":I
    and-int/lit8 v1, v0, 0xf

    .line 222
    .local v1, "token":I
    and-int/lit16 v2, v0, 0xf0

    .line 223
    .local v2, "type":I
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_10e

    .line 308
    :pswitch_e
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :pswitch_31
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->obtainAttribute()Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    move-result-object v3

    .line 226
    .local v3, "attr":Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    .line 227
    iput v2, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    .line 228
    sparse-switch v2, :sswitch_data_132

    .line 262
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected data type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    :sswitch_5b
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueDouble:D

    .line 260
    goto/16 :goto_10d

    .line 256
    :sswitch_65
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readFloat()F

    move-result v4

    iput v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueFloat:F

    .line 257
    goto/16 :goto_10d

    .line 253
    :sswitch_6f
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueLong:J

    .line 254
    goto/16 :goto_10d

    .line 249
    :sswitch_79
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueInt:I

    .line 250
    goto/16 :goto_10d

    .line 242
    :sswitch_83
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readUnsignedShort()I

    move-result v4

    .line 243
    .local v4, "len":I
    new-array v5, v4, [B

    .line 244
    .local v5, "res":[B
    iget-object v6, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v6, v5}, Lcom/android/modules/utils/FastDataInput;->readFully([B)V

    .line 245
    iput-object v5, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueBytes:[B

    .line 246
    goto/16 :goto_10d

    .line 238
    .end local v4    # "len":I
    .end local v5    # "res":[B
    :sswitch_94
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    .line 239
    goto/16 :goto_10d

    .line 235
    :sswitch_9e
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    .line 236
    goto :goto_10d

    .line 233
    :sswitch_a7
    goto :goto_10d

    .line 302
    .end local v3    # "attr":Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;
    :pswitch_a8
    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v3}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 303
    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/modules/utils/BinaryXmlPullParser;->resolveEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 304
    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 296
    :pswitch_c0
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 297
    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v3}, Lcom/android/modules/utils/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 298
    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 285
    :pswitch_d2
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 286
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 287
    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 279
    :pswitch_e4
    iget-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v4}, Lcom/android/modules/utils/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 280
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 281
    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 273
    :pswitch_f6
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 274
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 275
    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10d

    .line 267
    :pswitch_102
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 268
    iput-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 269
    iget v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10d

    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->resetAttributes()V

    .line 311
    :cond_10d
    :goto_10d
    return-void

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_102
        :pswitch_f6
        :pswitch_e4
        :pswitch_d2
        :pswitch_c0
        :pswitch_c0
        :pswitch_a8
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_31
    .end packed-switch

    :sswitch_data_132
    .sparse-switch
        0x10 -> :sswitch_a7
        0x20 -> :sswitch_9e
        0x30 -> :sswitch_94
        0x40 -> :sswitch_83
        0x50 -> :sswitch_83
        0x60 -> :sswitch_79
        0x70 -> :sswitch_79
        0x80 -> :sswitch_6f
        0x90 -> :sswitch_6f
        0xa0 -> :sswitch_65
        0xb0 -> :sswitch_5b
        0xc0 -> :sswitch_a7
        0xd0 -> :sswitch_a7
    .end sparse-switch
.end method

.method static blacklist hexStringToBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .line 931
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 932
    .local v0, "length":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2d

    .line 935
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 936
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_2c

    .line 937
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/modules/utils/BinaryXmlPullParser;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 938
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/modules/utils/BinaryXmlPullParser;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 936
    add-int/lit8 v2, v2, 0x2

    goto :goto_d

    .line 940
    .end local v2    # "i":I
    :cond_2c
    return-object v1

    .line 933
    .end local v1    # "buffer":[B
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hex length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist illegalNamespace()Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespaces are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist obtainAttribute()Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;
    .registers 7

    .line 408
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    array-length v1, v1

    if-ne v0, v1, :cond_27

    .line 409
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    array-length v0, v0

    .line 410
    .local v0, "before":I
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    .line 411
    .local v1, "after":I
    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    iput-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    .line 412
    move v2, v0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_27

    .line 413
    iget-object v3, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    new-instance v4, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;-><init>(Lcom/android/modules/utils/BinaryXmlPullParser-IA;)V

    aput-object v4, v3, v2

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 416
    .end local v0    # "before":I
    .end local v1    # "after":I
    .end local v2    # "i":I
    :cond_27
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist peekNextExternalToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 198
    nop

    :goto_1
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextToken()I

    move-result v0

    .line 199
    .local v0, "token":I
    packed-switch v0, :pswitch_data_e

    .line 204
    return v0

    .line 201
    :pswitch_9
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    .line 202
    goto :goto_1

    nop

    :pswitch_data_e
    .packed-switch 0xf
        :pswitch_9
    .end packed-switch
.end method

.method private blacklist peekNextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->peekByte()B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private blacklist resetAttributes()V
    .registers 3

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-ge v0, v1, :cond_f

    .line 425
    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->reset()V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    .line 428
    return-void
.end method

.method static blacklist resolveEntity(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "entity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_8a

    :cond_9
    goto :goto_3d

    :sswitch_a
    const-string/jumbo v0, "quot"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_3e

    :sswitch_15
    const-string v0, "apos"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_3e

    :sswitch_1f
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_3e

    :sswitch_29
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_3e

    :sswitch_33
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_3e

    :goto_3d
    const/4 v0, -0x1

    :goto_3e
    packed-switch v0, :pswitch_data_a0

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_71

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_71

    .line 355
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    .line 356
    .local v0, "c":C
    new-instance v3, Ljava/lang/String;

    new-array v2, v2, [C

    aput-char v0, v2, v1

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 352
    .end local v0    # "c":C
    :pswitch_62
    const-string v0, "\""

    return-object v0

    .line 351
    :pswitch_65
    const-string v0, "\'"

    return-object v0

    .line 350
    :pswitch_68
    const-string v0, "&"

    return-object v0

    .line 349
    :pswitch_6b
    const-string v0, ">"

    return-object v0

    .line 348
    :pswitch_6e
    const-string v0, "<"

    return-object v0

    .line 358
    :cond_71
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_8a
    .sparse-switch
        0xced -> :sswitch_33
        0xd88 -> :sswitch_29
        0x179c4 -> :sswitch_1f
        0x2dca53 -> :sswitch_15
        0x352309 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private static blacklist toByte(C)I
    .registers 4
    .param p0, "c"    # C

    .line 912
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 913
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 914
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 915
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 657
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getAttributeBoolean(I)Z
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist getAttributeBytesBase64(I)[B
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueBytesBase64()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttributeBytesHex(I)[B
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueBytesHex()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeCount()I
    .registers 2

    .line 592
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    return v0
.end method

.method public blacklist getAttributeDouble(I)D
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeFloat(I)F
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueFloat()F

    move-result v0

    return v0
.end method

.method public blacklist getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 432
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlPullParser;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 433
    :cond_e
    :goto_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    if-ge v0, v1, :cond_23

    .line 434
    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 435
    return v0

    .line 433
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 438
    .end local v0    # "i":I
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAttributeInt(I)I
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueInt()I

    move-result v0

    return v0
.end method

.method public blacklist getAttributeIntHex(I)I
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueIntHex()I

    move-result v0

    return v0
.end method

.method public blacklist getAttributeLong(I)J
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeLongHex(I)J
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueLongHex()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getAttributeName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 603
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 598
    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api getAttributePrefix(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getAttributeType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 615
    const-string v0, "CDATA"

    return-object v0
.end method

.method public whitelist test-api getAttributeValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 453
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 445
    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;->getValueString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 447
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 537
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 521
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    return v0
.end method

.method public whitelist test-api getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 626
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 669
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 516
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 532
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .registers 2

    .line 555
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    packed-switch v0, :pswitch_data_a

    .line 561
    const/4 v0, 0x0

    return-object v0

    .line 559
    :pswitch_7
    const-string v0, ""

    return-object v0

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 650
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNamespaceCount(I)I
    .registers 3
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getPositionDescription()Ljava/lang/String;
    .registers 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at depth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 681
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getTextCharacters([I)[C
    .registers 5
    .param p1, "holderForStartAndLength"    # [I

    .line 508
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 509
    .local v0, "chars":[C
    const/4 v1, 0x0

    aput v1, p1, v1

    .line 510
    const/4 v1, 0x1

    array-length v2, v0

    aput v2, p1, v1

    .line 511
    return-object v0
.end method

.method public whitelist test-api isAttributeDefault(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmptyElementTag()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 578
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    packed-switch v0, :pswitch_data_24

    .line 586
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Not at START_TAG"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :pswitch_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0

    .line 582
    :catch_18
    move-exception v0

    .line 583
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist test-api isWhitespace()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 542
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2a

    .line 549
    :pswitch_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not applicable for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :pswitch_21
    return v1

    .line 547
    :pswitch_22
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_22
        :pswitch_22
        :pswitch_6
        :pswitch_21
    .end packed-switch
.end method

.method public whitelist test-api next()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    nop

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->nextToken()I

    move-result v0

    .line 144
    .local v0, "token":I
    packed-switch v0, :pswitch_data_1c

    .line 158
    .end local v0    # "token":I
    goto :goto_1

    .line 150
    .restart local v0    # "token":I
    :pswitch_9
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeAdditionalText()V

    .line 152
    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    .line 153
    goto :goto_1

    .line 155
    :cond_19
    const/4 v1, 0x4

    return v1

    .line 148
    :pswitch_1b
    return v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist test-api nextTag()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    .line 393
    .local v0, "eventType":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 394
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    .line 396
    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    goto :goto_22

    .line 397
    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_22
    :goto_22
    return v0
.end method

.method public whitelist test-api nextText()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 375
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    .line 376
    .local v0, "eventType":I
    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne v0, v1, :cond_24

    .line 377
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    .line 379
    if-ne v0, v2, :cond_1a

    .line 382
    return-object v1

    .line 380
    :cond_1a
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    .end local v1    # "result":Ljava/lang/String;
    :cond_24
    if-ne v0, v2, :cond_29

    .line 384
    const-string v1, ""

    return-object v1

    .line 386
    :cond_29
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    .end local v0    # "eventType":I
    :cond_33
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api nextToken()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 164
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    .line 169
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v0

    .line 170
    .local v0, "token":I
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V
    :try_end_12
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_12} :catch_13

    .line 173
    goto :goto_16

    .line 171
    .end local v0    # "token":I
    :catch_13
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x1

    move v0, v1

    .line 174
    .local v0, "token":I
    :goto_16
    packed-switch v0, :pswitch_data_26

    goto :goto_23

    .line 178
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    .line 179
    iget v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    .line 182
    :goto_23
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    .line 183
    return v0

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_1a
    .end packed-switch
.end method

.method protected blacklist obtainFastDataInput(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .line 132
    invoke-static {p1}, Lcom/android/modules/utils/FastDataInput;->obtain(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/modules/utils/BinaryXmlPullParser;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 365
    :cond_e
    :goto_e
    iget v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    if-ne v0, p1, :cond_1b

    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 368
    return-void

    .line 366
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 663
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 91
    if-eqz p2, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    .line 92
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 95
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 96
    iget-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v0}, Lcom/android/modules/utils/FastDataInput;->release()V

    .line 97
    iput-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    .line 100
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->obtainFastDataInput(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentToken:I

    .line 103
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentDepth:I

    .line 104
    iput-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    .line 107
    iput v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributeCount:I

    .line 108
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    iput-object v0, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    .line 110
    iget-object v2, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mAttributes:[Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    new-instance v3, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;

    invoke-direct {v3, v1}, Lcom/android/modules/utils/BinaryXmlPullParser$Attribute;-><init>(Lcom/android/modules/utils/BinaryXmlPullParser-IA;)V

    aput-object v3, v2, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 114
    .end local v0    # "i":I
    :cond_4a
    const/4 v0, 0x4

    :try_start_4b
    new-array v0, v0, [B

    .line 115
    .local v0, "magic":[B
    iget-object v1, p0, Lcom/android/modules/utils/BinaryXmlPullParser;->mIn:Lcom/android/modules/utils/FastDataInput;

    invoke-virtual {v1, v0}, Lcom/android/modules/utils/FastDataInput;->readFully([B)V

    .line 116
    sget-object v1, Lcom/android/modules/utils/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 122
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v1

    if-nez v1, :cond_63

    .line 123
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;->consumeToken()V

    .line 127
    .end local v0    # "magic":[B
    :cond_63
    nop

    .line 128
    return-void

    .line 117
    .restart local v0    # "magic":[B
    :cond_65
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected magic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/modules/utils/BinaryXmlPullParser;
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "encoding":Ljava/lang/String;
    throw v1
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_82} :catch_82

    .line 125
    .end local v0    # "magic":[B
    .restart local p0    # "this":Lcom/android/modules/utils/BinaryXmlPullParser;
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "encoding":Ljava/lang/String;
    :catch_82
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setInput(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
