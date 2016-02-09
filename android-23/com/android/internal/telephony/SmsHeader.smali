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
.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_NATIONAL_LANGUAGE_LOCKING_SHIFT:I = 0x25

.field public static final ELT_ID_NATIONAL_LANGUAGE_SINGLE_SHIFT:I = 0x24

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0


# instance fields
.field public concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

.field public languageShiftTable:I

.field public languageTable:I

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

.field public specialSmsMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    #@a
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    #@11
    .line 112
    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;
    .locals 12
    .param p0, "data"    # [B

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 121
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@4
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    .line 122
    .local v2, "inStream":Ljava/io/ByteArrayInputStream;
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    #@9
    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    #@c
    .line 123
    .local v6, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    #@f
    move-result v8

    #@10
    if-lez v8, :cond_1

    #@12
    .line 132
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@15
    move-result v1

    #@16
    .line 133
    .local v1, "id":I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@19
    move-result v3

    #@1a
    .line 136
    .local v3, "length":I
    sparse-switch v1, :sswitch_data_0

    #@1d
    .line 186
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    #@1f
    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    #@22
    .line 187
    .local v4, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iput v1, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    #@24
    .line 188
    new-array v8, v3, [B

    #@26
    iput-object v8, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    #@28
    .line 189
    iget-object v8, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    #@2a
    invoke-virtual {v2, v8, v10, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    #@2d
    .line 190
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    goto :goto_0

    #@33
    .line 138
    .end local v4    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :sswitch_0
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@35
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    #@38
    .line 139
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@3b
    move-result v8

    #@3c
    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@3e
    .line 140
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@41
    move-result v8

    #@42
    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@44
    .line 141
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@47
    move-result v8

    #@48
    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@4a
    .line 142
    iput-boolean v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    #@4c
    .line 143
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@4e
    if-eqz v8, :cond_0

    #@50
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@52
    if-eqz v8, :cond_0

    #@54
    .line 144
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@56
    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@58
    if-gt v8, v9, :cond_0

    #@5a
    .line 145
    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@5c
    goto :goto_0

    #@5d
    .line 149
    .end local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_1
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@5f
    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    #@62
    .line 150
    .restart local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@65
    move-result v8

    #@66
    shl-int/lit8 v8, v8, 0x8

    #@68
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@6b
    move-result v9

    #@6c
    or-int/2addr v8, v9

    #@6d
    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@6f
    .line 151
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@72
    move-result v8

    #@73
    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@75
    .line 152
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@78
    move-result v8

    #@79
    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@7b
    .line 153
    iput-boolean v10, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    #@7d
    .line 154
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@7f
    if-eqz v8, :cond_0

    #@81
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@83
    if-eqz v8, :cond_0

    #@85
    .line 155
    iget v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@87
    iget v9, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@89
    if-gt v8, v9, :cond_0

    #@8b
    .line 156
    iput-object v0, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@8d
    goto/16 :goto_0

    #@8f
    .line 160
    .end local v0    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :sswitch_2
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@91
    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    #@94
    .line 161
    .local v5, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@97
    move-result v8

    #@98
    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@9a
    .line 162
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@9d
    move-result v8

    #@9e
    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    #@a0
    .line 163
    iput-boolean v11, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    #@a2
    .line 164
    iput-object v5, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@a4
    goto/16 :goto_0

    #@a6
    .line 167
    .end local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_3
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@a8
    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    #@ab
    .line 168
    .restart local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@ae
    move-result v8

    #@af
    shl-int/lit8 v8, v8, 0x8

    #@b1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@b4
    move-result v9

    #@b5
    or-int/2addr v8, v9

    #@b6
    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@b8
    .line 169
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@bb
    move-result v8

    #@bc
    shl-int/lit8 v8, v8, 0x8

    #@be
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@c1
    move-result v9

    #@c2
    or-int/2addr v8, v9

    #@c3
    iput v8, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    #@c5
    .line 170
    iput-boolean v10, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    #@c7
    .line 171
    iput-object v5, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@c9
    goto/16 :goto_0

    #@cb
    .line 174
    .end local v5    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :sswitch_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@ce
    move-result v8

    #@cf
    iput v8, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@d1
    goto/16 :goto_0

    #@d3
    .line 177
    :sswitch_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@d6
    move-result v8

    #@d7
    iput v8, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@d9
    goto/16 :goto_0

    #@db
    .line 180
    :sswitch_6
    new-instance v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    #@dd
    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;-><init>()V

    #@e0
    .line 181
    .local v7, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@e3
    move-result v8

    #@e4
    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    #@e6
    .line 182
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    #@e9
    move-result v8

    #@ea
    iput v8, v7, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    #@ec
    .line 183
    iget-object v8, v6, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    #@ee
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f1
    goto/16 :goto_0

    #@f3
    .line 193
    .end local v1    # "id":I
    .end local v3    # "length":I
    .end local v7    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    :cond_1
    return-object v6

    #@f4
    .line 136
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_1
        0x24 -> :sswitch_4
        0x25 -> :sswitch_5
    .end sparse-switch
.end method

.method public static toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B
    .locals 13
    .param p0, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x4

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    const/4 v9, 0x0

    #@5
    .line 202
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@7
    if-nez v7, :cond_0

    #@9
    .line 203
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@b
    if-nez v7, :cond_0

    #@d
    .line 204
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@12
    move-result v7

    #@13
    .line 202
    if-eqz v7, :cond_0

    #@15
    .line 205
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@1a
    move-result v7

    #@1b
    .line 202
    if-eqz v7, :cond_0

    #@1d
    .line 206
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@1f
    if-nez v7, :cond_0

    #@21
    .line 207
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@23
    if-nez v7, :cond_0

    #@25
    .line 208
    return-object v8

    #@26
    .line 212
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@28
    const/16 v7, 0x8c

    #@2a
    invoke-direct {v3, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@2d
    .line 213
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@2f
    .line 214
    .local v0, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    if-eqz v0, :cond_1

    #@31
    .line 215
    iget-boolean v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    #@33
    if-eqz v7, :cond_5

    #@35
    .line 216
    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@38
    .line 217
    const/4 v7, 0x3

    #@39
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@3c
    .line 218
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@3e
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@41
    .line 225
    :goto_0
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@43
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@46
    .line 226
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@48
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4b
    .line 228
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@4d
    .line 229
    .local v4, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v4, :cond_2

    #@4f
    .line 230
    iget-boolean v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    #@51
    if-eqz v7, :cond_6

    #@53
    .line 231
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@56
    .line 232
    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@59
    .line 233
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@5b
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5e
    .line 234
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    #@60
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@63
    .line 244
    :cond_2
    :goto_1
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@65
    if-eqz v7, :cond_3

    #@67
    .line 245
    const/16 v7, 0x24

    #@69
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6c
    .line 246
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@6f
    .line 247
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@71
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@74
    .line 249
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@76
    if-eqz v7, :cond_4

    #@78
    .line 250
    const/16 v7, 0x25

    #@7a
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@7d
    .line 251
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@80
    .line 252
    iget v7, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@82
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@85
    .line 254
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    #@87
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8a
    move-result-object v6

    #@8b
    .local v6, "specialSmsMsg$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@8e
    move-result v7

    #@8f
    if-eqz v7, :cond_7

    #@91
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@94
    move-result-object v5

    #@95
    check-cast v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    #@97
    .line 255
    .local v5, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@9a
    .line 256
    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@9d
    .line 257
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    #@9f
    and-int/lit16 v7, v7, 0xff

    #@a1
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@a4
    .line 258
    iget v7, v5, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    #@a6
    and-int/lit16 v7, v7, 0xff

    #@a8
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@ab
    goto :goto_2

    #@ac
    .line 220
    .end local v4    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .end local v5    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v6    # "specialSmsMsg$iterator":Ljava/util/Iterator;
    :cond_5
    const/16 v7, 0x8

    #@ae
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@b1
    .line 221
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@b4
    .line 222
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@b6
    ushr-int/lit8 v7, v7, 0x8

    #@b8
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@bb
    .line 223
    iget v7, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@bd
    and-int/lit16 v7, v7, 0xff

    #@bf
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@c2
    goto/16 :goto_0

    #@c4
    .line 236
    .restart local v4    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    :cond_6
    const/4 v7, 0x5

    #@c5
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@c8
    .line 237
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@cb
    .line 238
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@cd
    ushr-int/lit8 v7, v7, 0x8

    #@cf
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@d2
    .line 239
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@d4
    and-int/lit16 v7, v7, 0xff

    #@d6
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@d9
    .line 240
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    #@db
    ushr-int/lit8 v7, v7, 0x8

    #@dd
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@e0
    .line 241
    iget v7, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    #@e2
    and-int/lit16 v7, v7, 0xff

    #@e4
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@e7
    goto/16 :goto_1

    #@e9
    .line 260
    .restart local v6    # "specialSmsMsg$iterator":Ljava/util/Iterator;
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    #@eb
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ee
    move-result-object v2

    #@ef
    .local v2, "miscElt$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f2
    move-result v7

    #@f3
    if-eqz v7, :cond_8

    #@f5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f8
    move-result-object v1

    #@f9
    check-cast v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    #@fb
    .line 261
    .local v1, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v7, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    #@fd
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@100
    .line 262
    iget-object v7, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    #@102
    array-length v7, v7

    #@103
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@106
    .line 263
    iget-object v7, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    #@108
    iget-object v8, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    #@10a
    array-length v8, v8

    #@10b
    invoke-virtual {v3, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@10e
    goto :goto_3

    #@10f
    .line 265
    .end local v1    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@112
    move-result-object v7

    #@113
    return-object v7
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 271
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "UserDataHeader "

    #@8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 272
    const-string/jumbo v5, "{ ConcatRef "

    #@e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 273
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@13
    if-nez v5, :cond_2

    #@15
    .line 274
    const-string/jumbo v5, "unset"

    #@18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 282
    :goto_0
    const-string/jumbo v5, ", PortAddrs "

    #@1e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 283
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@23
    if-nez v5, :cond_3

    #@25
    .line 284
    const-string/jumbo v5, "unset"

    #@28
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 291
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@2d
    if-eqz v5, :cond_0

    #@2f
    .line 292
    const-string/jumbo v5, ", languageShiftTable="

    #@32
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 294
    :cond_0
    iget v5, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@3d
    if-eqz v5, :cond_1

    #@3f
    .line 295
    const-string/jumbo v5, ", languageTable="

    #@42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    iget v6, p0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    .line 297
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    #@4d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v4

    #@51
    .local v4, "specialSmsMsg$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_4

    #@57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v3

    #@5b
    check-cast v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    #@5d
    .line 298
    .local v3, "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    const-string/jumbo v5, ", SpecialSmsMsg "

    #@60
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 299
    const-string/jumbo v5, "{ msgIndType="

    #@66
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    #@6c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    .line 300
    const-string/jumbo v5, ", msgCount="

    #@72
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    #@78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    .line 301
    const-string/jumbo v5, " }"

    #@7e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    goto :goto_2

    #@82
    .line 276
    .end local v3    # "specialSmsMsg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v4    # "specialSmsMsg$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v5, "{ refNumber="

    #@85
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@8b
    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@8d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    .line 277
    const-string/jumbo v5, ", msgCount="

    #@93
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@99
    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@9b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    .line 278
    const-string/jumbo v5, ", seqNumber="

    #@a1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@a7
    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    .line 279
    const-string/jumbo v5, ", isEightBits="

    #@af
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@b5
    iget-boolean v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    #@b7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ba
    .line 280
    const-string/jumbo v5, " }"

    #@bd
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    goto/16 :goto_0

    #@c2
    .line 286
    :cond_3
    const-string/jumbo v5, "{ destPort="

    #@c5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v5

    #@c9
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@cb
    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@cd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    .line 287
    const-string/jumbo v5, ", origPort="

    #@d3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v5

    #@d7
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@d9
    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    #@db
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@de
    .line 288
    const-string/jumbo v5, ", areEightBits="

    #@e1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v5

    #@e5
    iget-object v6, p0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@e7
    iget-boolean v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    #@e9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ec
    .line 289
    const-string/jumbo v5, " }"

    #@ef
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    goto/16 :goto_1

    #@f4
    .line 303
    .restart local v4    # "specialSmsMsg$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    #@f6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f9
    move-result-object v2

    #@fa
    .local v2, "miscElt$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@fd
    move-result v5

    #@fe
    if-eqz v5, :cond_5

    #@100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@103
    move-result-object v1

    #@104
    check-cast v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    #@106
    .line 304
    .local v1, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const-string/jumbo v5, ", MiscElt "

    #@109
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    .line 305
    const-string/jumbo v5, "{ id="

    #@10f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v5

    #@113
    iget v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    #@115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@118
    .line 306
    const-string/jumbo v5, ", length="

    #@11b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v5

    #@11f
    iget-object v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    #@121
    array-length v6, v6

    #@122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@125
    .line 307
    const-string/jumbo v5, ", data="

    #@128
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v5

    #@12c
    iget-object v6, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    #@12e
    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@131
    move-result-object v6

    #@132
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    .line 308
    const-string/jumbo v5, " }"

    #@138
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    goto :goto_3

    #@13c
    .line 310
    .end local v1    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_5
    const-string/jumbo v5, " }"

    #@13f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v5

    #@146
    return-object v5
.end method
