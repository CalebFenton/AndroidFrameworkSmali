.class public Lcom/android/internal/telephony/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsHeader$PortAddrs;,
        Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
        Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;,
        Lcom/android/internal/telephony/SmsHeader$MiscElt;
    }
.end annotation


# static fields
.field public static final greylist-max-o ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final greylist-max-o ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final greylist-max-o ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final greylist-max-o ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final greylist-max-o ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final greylist-max-o ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final greylist-max-o ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final greylist-max-o ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final greylist-max-o ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final greylist-max-o ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final greylist-max-o ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final greylist-max-o ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final greylist-max-o ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final greylist-max-o ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final greylist-max-o ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final greylist-max-o ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final greylist-max-o ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final greylist-max-o ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final greylist-max-o ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final greylist-max-o ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final greylist-max-o ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final greylist-max-o ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final greylist-max-o ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final greylist-max-o ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final greylist-max-o ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final greylist-max-o ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final greylist-max-o ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final greylist-max-o ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final greylist-max-o ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final greylist-max-o ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final greylist-max-o ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final greylist-max-o PORT_WAP_PUSH:I = 0xb84

.field public static final greylist-max-o PORT_WAP_WSP:I = 0x23f0


# instance fields
.field public greylist concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public greylist languageShiftTable:I

.field public greylist languageTable:I

.field public greylist-max-o miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public greylist portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public greylist-max-o specialSmsMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 212
    return-void
.end method

.method public static greylist fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .registers 9
    .param p0, "data"    # [B

    .line 222
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 223
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 224
    .local v1, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :goto_a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_f2

    .line 233
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 234
    .local v2, "id":I
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 237
    .local v3, "length":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_f4

    .line 287
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 288
    .local v4, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v2, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 289
    new-array v6, v3, [B

    iput-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 290
    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v0, v6, v5, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 291
    iget-object v5, v1, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f0

    .line 278
    .end local v4    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_34
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 279
    goto/16 :goto_f0

    .line 275
    :sswitch_3c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 276
    goto/16 :goto_f0

    .line 250
    :sswitch_44
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 251
    .local v4, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 252
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 253
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 254
    iput-boolean v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 255
    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v5, :cond_f0

    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v5, :cond_f0

    iget v5, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v5, v6, :cond_f0

    .line 257
    iput-object v4, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto/16 :goto_f0

    .line 268
    .end local v4    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_76
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 269
    .local v4, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 270
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 271
    iput-boolean v5, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 272
    iput-object v4, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 273
    goto :goto_f0

    .line 261
    .end local v4    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_9a
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 262
    .local v5, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 263
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 264
    iput-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 265
    iput-object v5, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 266
    goto :goto_f0

    .line 281
    .end local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_b0
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;-><init>()V

    .line 282
    .local v4, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    .line 283
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    .line 284
    iget-object v5, v1, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    goto :goto_f0

    .line 239
    .end local v4    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :sswitch_c7
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 240
    .local v5, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 241
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 242
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 243
    iput-boolean v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 244
    iget v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v4, :cond_f0

    iget v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v4, :cond_f0

    iget v4, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v6, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    if-gt v4, v6, :cond_f0

    .line 246
    iput-object v5, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 293
    .end local v2    # "id":I
    .end local v3    # "length":I
    .end local v5    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_f0
    :goto_f0
    goto/16 :goto_a

    .line 294
    :cond_f2
    return-object v1

    nop

    :sswitch_data_f4
    .sparse-switch
        0x0 -> :sswitch_c7
        0x1 -> :sswitch_b0
        0x4 -> :sswitch_9a
        0x5 -> :sswitch_76
        0x8 -> :sswitch_44
        0x24 -> :sswitch_3c
        0x25 -> :sswitch_34
    .end sparse-switch
.end method

.method public static greylist toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .registers 10
    .param p0, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-nez v0, :cond_22

    iget v0, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-nez v0, :cond_22

    .line 310
    const/4 v0, 0x0

    return-object v0

    .line 313
    :cond_22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8c

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 315
    .local v0, "outStream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 316
    .local v1, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz v1, :cond_5f

    .line 317
    iget-boolean v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v5, :cond_42

    .line 318
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 319
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 320
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_55

    .line 322
    :cond_42
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 324
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 325
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    :goto_55
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 328
    iget v5, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    :cond_5f
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 331
    .local v5, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    const/4 v6, 0x2

    if-eqz v5, :cond_9a

    .line 332
    iget-boolean v7, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v7, :cond_79

    .line 333
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_9a

    .line 338
    :cond_79
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 340
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    ushr-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 341
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 342
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    ushr-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 343
    iget v3, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 346
    :cond_9a
    :goto_9a
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    const/4 v4, 0x1

    if-eqz v3, :cond_ac

    .line 347
    const/16 v3, 0x24

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 349
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    :cond_ac
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v3, :cond_bd

    .line 352
    const/16 v3, 0x25

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 353
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 354
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 356
    :cond_bd
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 357
    .local v7, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 358
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 359
    iget v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    iget v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 361
    .end local v7    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    goto :goto_c3

    .line 362
    :cond_e4
    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ea
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 363
    .local v4, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 365
    iget-object v6, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v7, v7

    invoke-virtual {v0, v6, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 366
    .end local v4    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    goto :goto_ea

    .line 367
    :cond_10a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 79
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4c

    .line 80
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/SmsHeader;

    .line 81
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v3, v4, :cond_4a

    iget v3, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    iget v4, v2, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-ne v3, v4, :cond_4a

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 83
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 84
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    .line 85
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 86
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v1

    .line 81
    :goto_4b
    return v0

    .line 79
    .end local v2    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_4c
    :goto_4c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "UserDataHeader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string/jumbo v1, "{ ConcatRef "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const-string/jumbo v2, "unset"

    const-string v3, ", msgCount="

    const-string v4, " }"

    if-nez v1, :cond_1f

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 378
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ refNumber="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", seqNumber="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isEightBits="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :goto_89
    const-string v1, ", PortAddrs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v1, :cond_96

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e8

    .line 388
    :cond_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ destPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", origPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", areEightBits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :goto_e8
    iget v1, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eqz v1, :cond_104

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", languageShiftTable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_104
    iget v1, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-eqz v1, :cond_120

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", languageTable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_120
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_126
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 400
    .local v2, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    const-string v5, ", SpecialSmsMsg "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{ msgIndType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .end local v2    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    goto :goto_126

    .line 405
    :cond_16a
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_170
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 406
    .local v2, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const-string v3, ", MiscElt "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{ id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", data="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .end local v2    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    goto :goto_170

    .line 412
    :cond_1d3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
