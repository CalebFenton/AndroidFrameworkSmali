.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static synthetic -get0(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->-assertionsDisabled:Z

    #@b
    .line 118
    const/4 v1, 0x0

    #@c
    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    #@e
    .line 121
    new-instance v1, Ljava/util/HashMap;

    #@10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@13
    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    #@15
    .line 124
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@18
    array-length v1, v1

    #@19
    if-ge v0, v1, :cond_1

    #@1b
    .line 125
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    #@1d
    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@1f
    aget-object v2, v2, v0

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 124
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_1

    #@2b
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 32
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 88
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@7
    .line 93
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    #@9
    .line 98
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@b
    .line 103
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@d
    .line 113
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@f
    .line 136
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    #@11
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    #@17
    .line 138
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@1d
    .line 139
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@1f
    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$BufferStack;)V

    #@22
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@24
    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@26
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@29
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@2b
    .line 141
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@2d
    .line 135
    return-void
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .param p1, "address"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 456
    const/4 v2, 0x0

    #@1
    .line 459
    .local v2, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 460
    .local v0, "addressType":I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@c
    move-result-object v2

    #@d
    .line 461
    .local v2, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x1

    #@e
    if-ne v3, v0, :cond_1

    #@10
    .line 463
    const-string/jumbo v3, "/TYPE=PLMN"

    #@13
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    #@1a
    .line 475
    :cond_0
    :goto_0
    return-object v2

    #@1b
    .line 464
    :cond_1
    const/4 v3, 0x3

    #@1c
    if-ne v3, v0, :cond_2

    #@1e
    .line 466
    const-string/jumbo v3, "/TYPE=IPV4"

    #@21
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    #@28
    goto :goto_0

    #@29
    .line 471
    .end local v0    # "addressType":I
    .end local v2    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v1

    #@2a
    .line 472
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    #@2b
    return-object v3

    #@2c
    .line 467
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "addressType":I
    .restart local v2    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const/4 v3, 0x4

    #@2d
    if-ne v3, v0, :cond_0

    #@2f
    .line 469
    const-string/jumbo v3, "/TYPE=IPV6"

    #@32
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 24
    .param p1, "field"    # I

    #@0
    .prologue
    .line 482
    packed-switch p1, :pswitch_data_0

    #@3
    .line 642
    :pswitch_0
    const/16 v21, 0x3

    #@5
    return v21

    #@6
    .line 484
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@9
    .line 486
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@d
    move-object/from16 v21, v0

    #@f
    move-object/from16 v0, v21

    #@11
    move/from16 v1, p1

    #@13
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@16
    move-result v20

    #@17
    .line 487
    .local v20, "version":I
    if-nez v20, :cond_1

    #@19
    .line 488
    const/16 v21, 0x12

    #@1b
    move-object/from16 v0, p0

    #@1d
    move/from16 v1, v21

    #@1f
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    #@22
    .line 645
    .end local v20    # "version":I
    :cond_0
    :goto_0
    const/16 v21, 0x0

    #@24
    return v21

    #@25
    .line 490
    .restart local v20    # "version":I
    :cond_1
    move-object/from16 v0, p0

    #@27
    move/from16 v1, v20

    #@29
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    #@2c
    goto :goto_0

    #@2d
    .line 497
    .end local v20    # "version":I
    :pswitch_2
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@31
    move-object/from16 v21, v0

    #@33
    move-object/from16 v0, v21

    #@35
    move/from16 v1, p1

    #@37
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@3a
    move-result-object v19

    #@3b
    .line 498
    .local v19, "textString":[B
    if-nez v19, :cond_2

    #@3d
    .line 499
    const/16 v21, 0x2

    #@3f
    return v21

    #@40
    .line 502
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@43
    .line 503
    move-object/from16 v0, p0

    #@45
    move-object/from16 v1, v19

    #@47
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    #@4a
    goto :goto_0

    #@4b
    .line 509
    .end local v19    # "textString":[B
    :pswitch_3
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@4f
    move-object/from16 v21, v0

    #@51
    move-object/from16 v0, v21

    #@53
    move/from16 v1, p1

    #@55
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@58
    move-result-object v4

    #@59
    .line 511
    .local v4, "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_3

    #@5b
    .line 512
    const/16 v21, 0x2

    #@5d
    return v21

    #@5e
    .line 516
    :cond_3
    const/4 v15, 0x0

    #@5f
    .local v15, "i":I
    :goto_1
    array-length v0, v4

    #@60
    move/from16 v21, v0

    #@62
    move/from16 v0, v21

    #@64
    if-ge v15, v0, :cond_0

    #@66
    .line 517
    aget-object v21, v4, v15

    #@68
    move-object/from16 v0, p0

    #@6a
    move-object/from16 v1, v21

    #@6c
    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@6f
    move-result-object v18

    #@70
    .line 518
    .local v18, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_4

    #@72
    .line 519
    const/16 v21, 0x1

    #@74
    return v21

    #@75
    .line 522
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@78
    .line 523
    move-object/from16 v0, p0

    #@7a
    move-object/from16 v1, v18

    #@7c
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@7f
    .line 516
    add-int/lit8 v15, v15, 0x1

    #@81
    goto :goto_1

    #@82
    .line 529
    .end local v4    # "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "i":I
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@85
    .line 531
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@89
    move-object/from16 v21, v0

    #@8b
    move-object/from16 v0, v21

    #@8d
    move/from16 v1, p1

    #@8f
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@92
    move-result-object v13

    #@93
    .line 532
    .local v13, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_5

    #@95
    .line 533
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    #@98
    move-result-object v21

    #@99
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9c
    move-result v21

    #@9d
    .line 532
    if-nez v21, :cond_5

    #@9f
    .line 534
    new-instance v21, Ljava/lang/String;

    #@a1
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    #@a4
    move-result-object v22

    #@a5
    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    #@a8
    .line 535
    const-string/jumbo v22, "insert-address-token"

    #@ab
    .line 534
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v21

    #@af
    .line 532
    if-eqz v21, :cond_6

    #@b1
    .line 537
    :cond_5
    const/16 v21, 0x1

    #@b3
    move-object/from16 v0, p0

    #@b5
    move/from16 v1, v21

    #@b7
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@ba
    .line 539
    const/16 v21, 0x81

    #@bc
    move-object/from16 v0, p0

    #@be
    move/from16 v1, v21

    #@c0
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@c3
    goto/16 :goto_0

    #@c5
    .line 541
    :cond_6
    move-object/from16 v0, p0

    #@c7
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@c9
    move-object/from16 v21, v0

    #@cb
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    #@ce
    .line 542
    move-object/from16 v0, p0

    #@d0
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@d2
    move-object/from16 v21, v0

    #@d4
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    #@d7
    move-result-object v14

    #@d8
    .line 545
    .local v14, "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x80

    #@da
    move-object/from16 v0, p0

    #@dc
    move/from16 v1, v21

    #@de
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@e1
    .line 547
    move-object/from16 v0, p0

    #@e3
    invoke-direct {v0, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@e6
    move-result-object v18

    #@e7
    .line 548
    .restart local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v18, :cond_7

    #@e9
    .line 549
    const/16 v21, 0x1

    #@eb
    return v21

    #@ec
    .line 552
    :cond_7
    move-object/from16 v0, p0

    #@ee
    move-object/from16 v1, v18

    #@f0
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@f3
    .line 554
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    #@f6
    move-result v12

    #@f7
    .line 555
    .local v12, "flen":I
    move-object/from16 v0, p0

    #@f9
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@fb
    move-object/from16 v21, v0

    #@fd
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    #@100
    .line 556
    int-to-long v0, v12

    #@101
    move-wide/from16 v22, v0

    #@103
    move-object/from16 v0, p0

    #@105
    move-wide/from16 v1, v22

    #@107
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    #@10a
    .line 557
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@10e
    move-object/from16 v21, v0

    #@110
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    #@113
    goto/16 :goto_0

    #@115
    .line 567
    .end local v12    # "flen":I
    .end local v13    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14    # "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v18    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@119
    move-object/from16 v21, v0

    #@11b
    move-object/from16 v0, v21

    #@11d
    move/from16 v1, p1

    #@11f
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@122
    move-result v17

    #@123
    .line 568
    .local v17, "octet":I
    if-nez v17, :cond_8

    #@125
    .line 569
    const/16 v21, 0x2

    #@127
    return v21

    #@128
    .line 572
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@12b
    .line 573
    move-object/from16 v0, p0

    #@12d
    move/from16 v1, v17

    #@12f
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@132
    goto/16 :goto_0

    #@134
    .line 577
    .end local v17    # "octet":I
    :pswitch_6
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@138
    move-object/from16 v21, v0

    #@13a
    move-object/from16 v0, v21

    #@13c
    move/from16 v1, p1

    #@13e
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@141
    move-result-wide v6

    #@142
    .line 578
    .local v6, "date":J
    const-wide/16 v22, -0x1

    #@144
    cmp-long v21, v22, v6

    #@146
    if-nez v21, :cond_9

    #@148
    .line 579
    const/16 v21, 0x2

    #@14a
    return v21

    #@14b
    .line 582
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@14e
    .line 583
    move-object/from16 v0, p0

    #@150
    invoke-virtual {v0, v6, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    #@153
    goto/16 :goto_0

    #@155
    .line 588
    .end local v6    # "date":J
    :pswitch_7
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@159
    move-object/from16 v21, v0

    #@15b
    move-object/from16 v0, v21

    #@15d
    move/from16 v1, p1

    #@15f
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@162
    move-result-object v5

    #@163
    .line 589
    .local v5, "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_a

    #@165
    .line 590
    const/16 v21, 0x2

    #@167
    return v21

    #@168
    .line 593
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@16b
    .line 594
    move-object/from16 v0, p0

    #@16d
    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@170
    goto/16 :goto_0

    #@172
    .line 598
    .end local v5    # "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    #@174
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@176
    move-object/from16 v21, v0

    #@178
    move-object/from16 v0, v21

    #@17a
    move/from16 v1, p1

    #@17c
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@17f
    move-result-object v16

    #@180
    .line 599
    .local v16, "messageClass":[B
    if-nez v16, :cond_b

    #@182
    .line 600
    const/16 v21, 0x2

    #@184
    return v21

    #@185
    .line 603
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@188
    .line 605
    const-string/jumbo v21, "advertisement"

    #@18b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    #@18e
    move-result-object v21

    #@18f
    .line 604
    move-object/from16 v0, v16

    #@191
    move-object/from16 v1, v21

    #@193
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@196
    move-result v21

    #@197
    if-eqz v21, :cond_c

    #@199
    .line 606
    const/16 v21, 0x81

    #@19b
    move-object/from16 v0, p0

    #@19d
    move/from16 v1, v21

    #@19f
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@1a2
    goto/16 :goto_0

    #@1a4
    .line 608
    :cond_c
    const-string/jumbo v21, "auto"

    #@1a7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    #@1aa
    move-result-object v21

    #@1ab
    .line 607
    move-object/from16 v0, v16

    #@1ad
    move-object/from16 v1, v21

    #@1af
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@1b2
    move-result v21

    #@1b3
    if-eqz v21, :cond_d

    #@1b5
    .line 609
    const/16 v21, 0x83

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    move/from16 v1, v21

    #@1bb
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 611
    :cond_d
    const-string/jumbo v21, "personal"

    #@1c3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    #@1c6
    move-result-object v21

    #@1c7
    .line 610
    move-object/from16 v0, v16

    #@1c9
    move-object/from16 v1, v21

    #@1cb
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@1ce
    move-result v21

    #@1cf
    if-eqz v21, :cond_e

    #@1d1
    .line 612
    const/16 v21, 0x80

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    move/from16 v1, v21

    #@1d7
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@1da
    goto/16 :goto_0

    #@1dc
    .line 614
    :cond_e
    const-string/jumbo v21, "informational"

    #@1df
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    #@1e2
    move-result-object v21

    #@1e3
    .line 613
    move-object/from16 v0, v16

    #@1e5
    move-object/from16 v1, v21

    #@1e7
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@1ea
    move-result v21

    #@1eb
    if-eqz v21, :cond_f

    #@1ed
    .line 615
    const/16 v21, 0x82

    #@1ef
    move-object/from16 v0, p0

    #@1f1
    move/from16 v1, v21

    #@1f3
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@1f6
    goto/16 :goto_0

    #@1f8
    .line 617
    :cond_f
    move-object/from16 v0, p0

    #@1fa
    move-object/from16 v1, v16

    #@1fc
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    #@1ff
    goto/16 :goto_0

    #@201
    .line 622
    .end local v16    # "messageClass":[B
    :pswitch_9
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@205
    move-object/from16 v21, v0

    #@207
    move-object/from16 v0, v21

    #@209
    move/from16 v1, p1

    #@20b
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@20e
    move-result-wide v8

    #@20f
    .line 623
    .local v8, "expiry":J
    const-wide/16 v22, -0x1

    #@211
    cmp-long v21, v22, v8

    #@213
    if-nez v21, :cond_10

    #@215
    .line 624
    const/16 v21, 0x2

    #@217
    return v21

    #@218
    .line 627
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@21b
    .line 629
    move-object/from16 v0, p0

    #@21d
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@21f
    move-object/from16 v21, v0

    #@221
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    #@224
    .line 630
    move-object/from16 v0, p0

    #@226
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@228
    move-object/from16 v21, v0

    #@22a
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    #@22d
    move-result-object v11

    #@22e
    .line 632
    .local v11, "expiryStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v21, 0x81

    #@230
    move-object/from16 v0, p0

    #@232
    move/from16 v1, v21

    #@234
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@237
    .line 633
    move-object/from16 v0, p0

    #@239
    invoke-virtual {v0, v8, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    #@23c
    .line 635
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    #@23f
    move-result v10

    #@240
    .line 636
    .local v10, "expiryLength":I
    move-object/from16 v0, p0

    #@242
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@244
    move-object/from16 v21, v0

    #@246
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    #@249
    .line 637
    int-to-long v0, v10

    #@24a
    move-wide/from16 v22, v0

    #@24c
    move-object/from16 v0, p0

    #@24e
    move-wide/from16 v1, v22

    #@250
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    #@253
    .line 638
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@257
    move-object/from16 v21, v0

    #@259
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    #@25c
    goto/16 :goto_0

    #@25e
    .line 482
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x5

    #@1
    .line 1165
    if-nez p0, :cond_0

    #@3
    .line 1166
    return v1

    #@4
    .line 1169
    :cond_0
    const-string/jumbo v0, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1171
    const/4 v0, 0x3

    #@e
    return v0

    #@f
    .line 1172
    :cond_1
    const-string/jumbo v0, "\\+?[0-9|\\.|\\-]+"

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 1174
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    .line 1175
    :cond_2
    const-string/jumbo v0, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 1177
    const/4 v0, 0x2

    #@24
    return v0

    #@25
    .line 1178
    :cond_3
    const-string/jumbo v0, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    #@28
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_4

    #@2e
    .line 1180
    const/4 v0, 0x4

    #@2f
    return v0

    #@30
    .line 1183
    :cond_4
    return v1
.end method

.method private makeAckInd()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 732
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 733
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@d
    .line 734
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@f
    .line 738
    :cond_0
    const/16 v0, 0x8c

    #@11
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@14
    .line 739
    const/16 v0, 0x85

    #@16
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@19
    .line 742
    const/16 v0, 0x98

    #@1b
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 743
    return v2

    #@22
    .line 747
    :cond_1
    const/16 v0, 0x8d

    #@24
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 748
    return v2

    #@2b
    .line 752
    :cond_2
    const/16 v0, 0x91

    #@2d
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@30
    .line 754
    return v1
.end method

.method private makeMessageBody()I
    .locals 34

    #@0
    .prologue
    .line 846
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@4
    move-object/from16 v32, v0

    #@6
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    #@9
    .line 848
    move-object/from16 v0, p0

    #@b
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@d
    move-object/from16 v32, v0

    #@f
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    #@12
    move-result-object v16

    #@13
    .line 851
    .local v16, "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@19
    move-object/from16 v32, v0

    #@1b
    const/16 v33, 0x84

    #@1d
    invoke-virtual/range {v32 .. v33}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@20
    move-result-object v32

    #@21
    move-object/from16 v0, v32

    #@23
    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    #@26
    .line 852
    .local v10, "contentType":Ljava/lang/String;
    sget-object v32, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    #@28
    move-object/from16 v0, v32

    #@2a
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v12

    #@2e
    check-cast v12, Ljava/lang/Integer;

    #@30
    .line 853
    .local v12, "contentTypeIdentifier":Ljava/lang/Integer;
    if-nez v12, :cond_0

    #@32
    .line 855
    const/16 v32, 0x1

    #@34
    return v32

    #@35
    .line 858
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@38
    move-result v32

    #@39
    move-object/from16 v0, p0

    #@3b
    move/from16 v1, v32

    #@3d
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    #@40
    .line 861
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    #@44
    move-object/from16 v32, v0

    #@46
    check-cast v32, Lcom/google/android/mms/pdu/SendReq;

    #@48
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    #@4b
    move-result-object v5

    #@4c
    .line 862
    .local v5, "body":Lcom/google/android/mms/pdu/PduBody;
    if-eqz v5, :cond_1

    #@4e
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    #@51
    move-result v32

    #@52
    if-nez v32, :cond_2

    #@54
    .line 864
    :cond_1
    const-wide/16 v32, 0x0

    #@56
    move-object/from16 v0, p0

    #@58
    move-wide/from16 v1, v32

    #@5a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    #@5d
    .line 865
    move-object/from16 v0, p0

    #@5f
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@61
    move-object/from16 v32, v0

    #@63
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    #@66
    .line 866
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@6a
    move-object/from16 v32, v0

    #@6c
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    #@6f
    .line 867
    const/16 v32, 0x0

    #@71
    return v32

    #@72
    .line 872
    :cond_2
    const/16 v32, 0x0

    #@74
    :try_start_0
    move/from16 v0, v32

    #@76
    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    #@79
    move-result-object v26

    #@7a
    .line 874
    .local v26, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    #@7d
    move-result-object v31

    #@7e
    .line 875
    .local v31, "start":[B
    if-eqz v31, :cond_3

    #@80
    .line 876
    const/16 v32, 0x8a

    #@82
    move-object/from16 v0, p0

    #@84
    move/from16 v1, v32

    #@86
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@89
    .line 877
    const/16 v32, 0x0

    #@8b
    aget-byte v32, v31, v32

    #@8d
    const/16 v33, 0x3c

    #@8f
    move/from16 v0, v33

    #@91
    move/from16 v1, v32

    #@93
    if-ne v0, v1, :cond_4

    #@95
    move-object/from16 v0, v31

    #@97
    array-length v0, v0

    #@98
    move/from16 v32, v0

    #@9a
    add-int/lit8 v32, v32, -0x1

    #@9c
    aget-byte v32, v31, v32

    #@9e
    const/16 v33, 0x3e

    #@a0
    move/from16 v0, v33

    #@a2
    move/from16 v1, v32

    #@a4
    if-ne v0, v1, :cond_4

    #@a6
    .line 878
    move-object/from16 v0, p0

    #@a8
    move-object/from16 v1, v31

    #@aa
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    #@ad
    .line 885
    :cond_3
    :goto_0
    const/16 v32, 0x89

    #@af
    move-object/from16 v0, p0

    #@b1
    move/from16 v1, v32

    #@b3
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@b6
    .line 886
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    #@b9
    move-result-object v32

    #@ba
    move-object/from16 v0, p0

    #@bc
    move-object/from16 v1, v32

    #@be
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@c1
    .line 892
    .end local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v31    # "start":[B
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    #@c4
    move-result v15

    #@c5
    .line 893
    .local v15, "ctLength":I
    move-object/from16 v0, p0

    #@c7
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@c9
    move-object/from16 v32, v0

    #@cb
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    #@ce
    .line 894
    int-to-long v0, v15

    #@cf
    move-wide/from16 v32, v0

    #@d1
    move-object/from16 v0, p0

    #@d3
    move-wide/from16 v1, v32

    #@d5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    #@d8
    .line 895
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@dc
    move-object/from16 v32, v0

    #@de
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    #@e1
    .line 898
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    #@e4
    move-result v30

    #@e5
    .line 899
    .local v30, "partNum":I
    move/from16 v0, v30

    #@e7
    int-to-long v0, v0

    #@e8
    move-wide/from16 v32, v0

    #@ea
    move-object/from16 v0, p0

    #@ec
    move-wide/from16 v1, v32

    #@ee
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    #@f1
    .line 900
    const/16 v23, 0x0

    #@f3
    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    #@f5
    move/from16 v1, v30

    #@f7
    if-ge v0, v1, :cond_14

    #@f9
    .line 901
    move/from16 v0, v23

    #@fb
    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    #@fe
    move-result-object v26

    #@ff
    .line 902
    .restart local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@103
    move-object/from16 v32, v0

    #@105
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    #@108
    .line 903
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@10c
    move-object/from16 v32, v0

    #@10e
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    #@111
    move-result-object v4

    #@112
    .line 905
    .local v4, "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    #@114
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@116
    move-object/from16 v32, v0

    #@118
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    #@11b
    .line 906
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@11f
    move-object/from16 v32, v0

    #@121
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    #@124
    move-result-object v11

    #@125
    .line 908
    .local v11, "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    #@128
    move-result-object v27

    #@129
    .line 910
    .local v27, "partContentType":[B
    if-nez v27, :cond_5

    #@12b
    .line 912
    const/16 v32, 0x1

    #@12d
    return v32

    #@12e
    .line 880
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v15    # "ctLength":I
    .end local v23    # "i":I
    .end local v27    # "partContentType":[B
    .end local v30    # "partNum":I
    .restart local v31    # "start":[B
    :cond_4
    :try_start_1
    new-instance v32, Ljava/lang/StringBuilder;

    #@130
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v33, "<"

    #@136
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v32

    #@13a
    new-instance v33, Ljava/lang/String;

    #@13c
    move-object/from16 v0, v33

    #@13e
    move-object/from16 v1, v31

    #@140
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@143
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v32

    #@147
    const-string/jumbo v33, ">"

    #@14a
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v32

    #@14e
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v32

    #@152
    move-object/from16 v0, p0

    #@154
    move-object/from16 v1, v32

    #@156
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@159
    goto/16 :goto_0

    #@15b
    .line 888
    .end local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v31    # "start":[B
    :catch_0
    move-exception v20

    #@15c
    .line 889
    .local v20, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    #@15f
    goto/16 :goto_1

    #@161
    .line 917
    .end local v20    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v15    # "ctLength":I
    .restart local v23    # "i":I
    .restart local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v27    # "partContentType":[B
    .restart local v30    # "partNum":I
    :cond_5
    sget-object v32, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    #@163
    new-instance v33, Ljava/lang/String;

    #@165
    move-object/from16 v0, v33

    #@167
    move-object/from16 v1, v27

    #@169
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@16c
    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16f
    move-result-object v28

    #@170
    check-cast v28, Ljava/lang/Integer;

    #@172
    .line 918
    .local v28, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v28, :cond_6

    #@174
    .line 919
    move-object/from16 v0, p0

    #@176
    move-object/from16 v1, v27

    #@178
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    #@17b
    .line 928
    :goto_3
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    #@17e
    move-result-object v25

    #@17f
    .line 930
    .local v25, "name":[B
    if-nez v25, :cond_7

    #@181
    .line 931
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    #@184
    move-result-object v25

    #@185
    .line 933
    if-nez v25, :cond_7

    #@187
    .line 934
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    #@18a
    move-result-object v25

    #@18b
    .line 936
    if-nez v25, :cond_7

    #@18d
    .line 940
    const/16 v32, 0x1

    #@18f
    return v32

    #@190
    .line 921
    .end local v25    # "name":[B
    :cond_6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    #@193
    move-result v32

    #@194
    move-object/from16 v0, p0

    #@196
    move/from16 v1, v32

    #@198
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    #@19b
    goto :goto_3

    #@19c
    .line 944
    .restart local v25    # "name":[B
    :cond_7
    const/16 v32, 0x85

    #@19e
    move-object/from16 v0, p0

    #@1a0
    move/from16 v1, v32

    #@1a2
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@1a5
    .line 945
    move-object/from16 v0, p0

    #@1a7
    move-object/from16 v1, v25

    #@1a9
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    #@1ac
    .line 948
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    #@1af
    move-result v7

    #@1b0
    .line 949
    .local v7, "charset":I
    if-eqz v7, :cond_8

    #@1b2
    .line 950
    const/16 v32, 0x81

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move/from16 v1, v32

    #@1b8
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@1bb
    .line 951
    move-object/from16 v0, p0

    #@1bd
    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    #@1c0
    .line 954
    :cond_8
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    #@1c3
    move-result v13

    #@1c4
    .line 955
    .local v13, "contentTypeLength":I
    move-object/from16 v0, p0

    #@1c6
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@1c8
    move-object/from16 v32, v0

    #@1ca
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    #@1cd
    .line 956
    int-to-long v0, v13

    #@1ce
    move-wide/from16 v32, v0

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    move-wide/from16 v1, v32

    #@1d4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    #@1d7
    .line 957
    move-object/from16 v0, p0

    #@1d9
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@1db
    move-object/from16 v32, v0

    #@1dd
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    #@1e0
    .line 960
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    #@1e3
    move-result-object v8

    #@1e4
    .line 962
    .local v8, "contentId":[B
    if-eqz v8, :cond_9

    #@1e6
    .line 963
    const/16 v32, 0xc0

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    move/from16 v1, v32

    #@1ec
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@1ef
    .line 964
    const/16 v32, 0x0

    #@1f1
    aget-byte v32, v8, v32

    #@1f3
    const/16 v33, 0x3c

    #@1f5
    move/from16 v0, v33

    #@1f7
    move/from16 v1, v32

    #@1f9
    if-ne v0, v1, :cond_c

    #@1fb
    array-length v0, v8

    #@1fc
    move/from16 v32, v0

    #@1fe
    add-int/lit8 v32, v32, -0x1

    #@200
    aget-byte v32, v8, v32

    #@202
    const/16 v33, 0x3e

    #@204
    move/from16 v0, v33

    #@206
    move/from16 v1, v32

    #@208
    if-ne v0, v1, :cond_c

    #@20a
    .line 965
    move-object/from16 v0, p0

    #@20c
    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    #@20f
    .line 972
    :cond_9
    :goto_4
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    #@212
    move-result-object v9

    #@213
    .line 973
    .local v9, "contentLocation":[B
    if-eqz v9, :cond_a

    #@215
    .line 974
    const/16 v32, 0x8e

    #@217
    move-object/from16 v0, p0

    #@219
    move/from16 v1, v32

    #@21b
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@21e
    .line 975
    move-object/from16 v0, p0

    #@220
    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    #@223
    .line 979
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    #@226
    move-result v22

    #@227
    .line 981
    .local v22, "headerLength":I
    const/16 v17, 0x0

    #@229
    .line 982
    .local v17, "dataLength":I
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    #@22c
    move-result-object v29

    #@22d
    .line 984
    .local v29, "partData":[B
    if-eqz v29, :cond_d

    #@22f
    .line 985
    move-object/from16 v0, v29

    #@231
    array-length v0, v0

    #@232
    move/from16 v32, v0

    #@234
    const/16 v33, 0x0

    #@236
    move-object/from16 v0, p0

    #@238
    move-object/from16 v1, v29

    #@23a
    move/from16 v2, v33

    #@23c
    move/from16 v3, v32

    #@23e
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    #@241
    .line 986
    move-object/from16 v0, v29

    #@243
    array-length v0, v0

    #@244
    move/from16 v17, v0

    #@246
    .line 1014
    :cond_b
    :goto_5
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    #@249
    move-result v32

    #@24a
    sub-int v32, v32, v22

    #@24c
    move/from16 v0, v17

    #@24e
    move/from16 v1, v32

    #@250
    if-eq v0, v1, :cond_13

    #@252
    .line 1015
    new-instance v32, Ljava/lang/RuntimeException;

    #@254
    const-string/jumbo v33, "BUG: Length sanity check failed"

    #@257
    invoke-direct/range {v32 .. v33}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25a
    throw v32

    #@25b
    .line 967
    .end local v9    # "contentLocation":[B
    .end local v17    # "dataLength":I
    .end local v22    # "headerLength":I
    .end local v29    # "partData":[B
    :cond_c
    new-instance v32, Ljava/lang/StringBuilder;

    #@25d
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@260
    const-string/jumbo v33, "<"

    #@263
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v32

    #@267
    new-instance v33, Ljava/lang/String;

    #@269
    move-object/from16 v0, v33

    #@26b
    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    #@26e
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v32

    #@272
    const-string/jumbo v33, ">"

    #@275
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@278
    move-result-object v32

    #@279
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27c
    move-result-object v32

    #@27d
    move-object/from16 v0, p0

    #@27f
    move-object/from16 v1, v32

    #@281
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    #@284
    goto :goto_4

    #@285
    .line 988
    .restart local v9    # "contentLocation":[B
    .restart local v17    # "dataLength":I
    .restart local v22    # "headerLength":I
    .restart local v29    # "partData":[B
    :cond_d
    const/4 v14, 0x0

    #@286
    .line 990
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v32, 0x400

    #@288
    :try_start_2
    move/from16 v0, v32

    #@28a
    new-array v6, v0, [B

    #@28c
    .line 991
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    #@290
    move-object/from16 v32, v0

    #@292
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    #@295
    move-result-object v33

    #@296
    invoke-virtual/range {v32 .. v33}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@299
    move-result-object v14

    #@29a
    .line 992
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v24, 0x0

    #@29c
    .line 993
    .local v24, "len":I
    :goto_6
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    #@29f
    move-result v24

    #@2a0
    const/16 v32, -0x1

    #@2a2
    move/from16 v0, v24

    #@2a4
    move/from16 v1, v32

    #@2a6
    if-eq v0, v1, :cond_e

    #@2a8
    .line 994
    move-object/from16 v0, p0

    #@2aa
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@2ac
    move-object/from16 v32, v0

    #@2ae
    const/16 v33, 0x0

    #@2b0
    move-object/from16 v0, v32

    #@2b2
    move/from16 v1, v33

    #@2b4
    move/from16 v2, v24

    #@2b6
    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@2b9
    .line 995
    move-object/from16 v0, p0

    #@2bb
    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@2bd
    move/from16 v32, v0

    #@2bf
    add-int v32, v32, v24

    #@2c1
    move/from16 v0, v32

    #@2c3
    move-object/from16 v1, p0

    #@2c5
    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c7
    .line 996
    add-int v17, v17, v24

    #@2c9
    goto :goto_6

    #@2ca
    .line 1005
    :cond_e
    if-eqz v14, :cond_b

    #@2cc
    .line 1007
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@2cf
    goto/16 :goto_5

    #@2d1
    .line 1008
    :catch_1
    move-exception v19

    #@2d2
    .local v19, "e":Ljava/io/IOException;
    goto/16 :goto_5

    #@2d4
    .line 1002
    .end local v6    # "buffer":[B
    .end local v14    # "cr":Ljava/io/InputStream;
    .end local v19    # "e":Ljava/io/IOException;
    .end local v24    # "len":I
    :catch_2
    move-exception v21

    #@2d5
    .line 1003
    .local v21, "e":Ljava/lang/RuntimeException;
    const/16 v32, 0x1

    #@2d7
    .line 1005
    if-eqz v14, :cond_f

    #@2d9
    .line 1007
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@2dc
    .line 1003
    :cond_f
    :goto_7
    return v32

    #@2dd
    .line 1008
    :catch_3
    move-exception v19

    #@2de
    .restart local v19    # "e":Ljava/io/IOException;
    goto :goto_7

    #@2df
    .line 1000
    .end local v19    # "e":Ljava/io/IOException;
    .end local v21    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v19

    #@2e0
    .line 1001
    .restart local v19    # "e":Ljava/io/IOException;
    const/16 v32, 0x1

    #@2e2
    .line 1005
    if-eqz v14, :cond_10

    #@2e4
    .line 1007
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    #@2e7
    .line 1001
    :cond_10
    :goto_8
    return v32

    #@2e8
    .line 1008
    :catch_5
    move-exception v19

    #@2e9
    goto :goto_8

    #@2ea
    .line 998
    .end local v19    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v18

    #@2eb
    .line 999
    .local v18, "e":Ljava/io/FileNotFoundException;
    const/16 v32, 0x1

    #@2ed
    .line 1005
    if-eqz v14, :cond_11

    #@2ef
    .line 1007
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    #@2f2
    .line 999
    :cond_11
    :goto_9
    return v32

    #@2f3
    .line 1008
    :catch_7
    move-exception v19

    #@2f4
    .restart local v19    # "e":Ljava/io/IOException;
    goto :goto_9

    #@2f5
    .line 1004
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v32

    #@2f6
    .line 1005
    if-eqz v14, :cond_12

    #@2f8
    .line 1007
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    #@2fb
    .line 1004
    :cond_12
    :goto_a
    throw v32

    #@2fc
    .line 1008
    :catch_8
    move-exception v19

    #@2fd
    .restart local v19    # "e":Ljava/io/IOException;
    goto :goto_a

    #@2fe
    .line 1018
    .end local v19    # "e":Ljava/io/IOException;
    :cond_13
    move-object/from16 v0, p0

    #@300
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@302
    move-object/from16 v32, v0

    #@304
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    #@307
    .line 1019
    move/from16 v0, v22

    #@309
    int-to-long v0, v0

    #@30a
    move-wide/from16 v32, v0

    #@30c
    move-object/from16 v0, p0

    #@30e
    move-wide/from16 v1, v32

    #@310
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    #@313
    .line 1020
    move/from16 v0, v17

    #@315
    int-to-long v0, v0

    #@316
    move-wide/from16 v32, v0

    #@318
    move-object/from16 v0, p0

    #@31a
    move-wide/from16 v1, v32

    #@31c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    #@31f
    .line 1021
    move-object/from16 v0, p0

    #@321
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@323
    move-object/from16 v32, v0

    #@325
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    #@328
    .line 900
    add-int/lit8 v23, v23, 0x1

    #@32a
    goto/16 :goto_2

    #@32c
    .line 1024
    .end local v4    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v11    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v22    # "headerLength":I
    .end local v25    # "name":[B
    .end local v26    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v27    # "partContentType":[B
    .end local v28    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v29    # "partData":[B
    :cond_14
    const/16 v32, 0x0

    #@32e
    return v32
.end method

.method private makeNotifyResp()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 700
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 701
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@d
    .line 702
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@f
    .line 706
    :cond_0
    const/16 v0, 0x8c

    #@11
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@14
    .line 707
    const/16 v0, 0x83

    #@16
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@19
    .line 710
    const/16 v0, 0x98

    #@1b
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 711
    return v2

    #@22
    .line 715
    :cond_1
    const/16 v0, 0x8d

    #@24
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 716
    return v2

    #@2b
    .line 720
    :cond_2
    const/16 v0, 0x95

    #@2d
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 721
    return v2

    #@34
    .line 725
    :cond_3
    return v1
.end method

.method private makeReadRecInd()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 652
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 653
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@d
    .line 654
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@f
    .line 658
    :cond_0
    const/16 v0, 0x8c

    #@11
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@14
    .line 659
    const/16 v0, 0x87

    #@16
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@19
    .line 662
    const/16 v0, 0x8d

    #@1b
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 663
    return v2

    #@22
    .line 667
    :cond_1
    const/16 v0, 0x8b

    #@24
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 668
    return v2

    #@2b
    .line 672
    :cond_2
    const/16 v0, 0x97

    #@2d
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 673
    return v2

    #@34
    .line 677
    :cond_3
    const/16 v0, 0x89

    #@36
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 678
    return v2

    #@3d
    .line 682
    :cond_4
    const/16 v0, 0x85

    #@3f
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@42
    .line 685
    const/16 v0, 0x9b

    #@44
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_5

    #@4a
    .line 686
    return v2

    #@4b
    .line 693
    :cond_5
    return v1
.end method

.method private makeSendReqPdu()I
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x98

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    .line 761
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 762
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@d
    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@f
    .line 763
    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@11
    .line 767
    :cond_0
    const/16 v2, 0x8c

    #@13
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@16
    .line 768
    const/16 v2, 0x80

    #@18
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@1b
    .line 771
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@1e
    .line 773
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    #@20
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@23
    move-result-object v1

    #@24
    .line 774
    .local v1, "trid":[B
    if-nez v1, :cond_1

    #@26
    .line 776
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@28
    const-string/jumbo v3, "Transaction-ID is null."

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 778
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    #@32
    .line 781
    const/16 v2, 0x8d

    #@34
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 782
    return v3

    #@3b
    .line 786
    :cond_2
    const/16 v2, 0x85

    #@3d
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@40
    .line 789
    const/16 v2, 0x89

    #@42
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_3

    #@48
    .line 790
    return v3

    #@49
    .line 793
    :cond_3
    const/4 v0, 0x0

    #@4a
    .line 796
    .local v0, "recipient":Z
    const/16 v2, 0x97

    #@4c
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@4f
    move-result v2

    #@50
    if-eq v2, v3, :cond_4

    #@52
    .line 797
    const/4 v0, 0x1

    #@53
    .line 801
    :cond_4
    const/16 v2, 0x82

    #@55
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@58
    move-result v2

    #@59
    if-eq v2, v3, :cond_5

    #@5b
    .line 802
    const/4 v0, 0x1

    #@5c
    .line 806
    :cond_5
    const/16 v2, 0x81

    #@5e
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@61
    move-result v2

    #@62
    if-eq v2, v3, :cond_6

    #@64
    .line 807
    const/4 v0, 0x1

    #@65
    .line 811
    :cond_6
    if-nez v0, :cond_7

    #@67
    .line 812
    return v3

    #@68
    .line 816
    :cond_7
    const/16 v2, 0x96

    #@6a
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@6d
    .line 820
    const/16 v2, 0x8a

    #@6f
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@72
    .line 823
    const/16 v2, 0x88

    #@74
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@77
    .line 826
    const/16 v2, 0x8f

    #@79
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@7c
    .line 829
    const/16 v2, 0x86

    #@7e
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@81
    .line 832
    const/16 v2, 0x90

    #@83
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    #@86
    .line 835
    const/16 v2, 0x84

    #@88
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    #@8b
    .line 838
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody()I

    #@8e
    move-result v2

    #@8f
    return v2
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5
    .line 197
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@b
    .line 195
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 1
    .param p1, "date"    # J

    #@0
    .prologue
    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    #@3
    .line 392
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .param p1, "enStr"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 325
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->-assertionsDisabled:Z

    #@2
    if-nez v4, :cond_1

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v4, 0x1

    #@7
    :goto_0
    if-nez v4, :cond_1

    #@9
    new-instance v4, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v4

    #@f
    :cond_0
    const/4 v4, 0x0

    #@10
    goto :goto_0

    #@11
    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    #@14
    move-result v0

    #@15
    .line 328
    .local v0, "charset":I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    #@18
    move-result-object v3

    #@19
    .line 329
    .local v3, "textString":[B
    if-nez v3, :cond_2

    #@1b
    .line 330
    return-void

    #@1c
    .line 338
    :cond_2
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@1e
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    #@21
    .line 339
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@23
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    #@26
    move-result-object v2

    #@27
    .line 341
    .local v2, "start":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    #@2a
    .line 342
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    #@2d
    .line 344
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    #@30
    move-result v1

    #@31
    .line 345
    .local v1, "len":I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@33
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    #@36
    .line 346
    int-to-long v4, v1

    #@37
    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    #@3a
    .line 347
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #@3c
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    #@3f
    .line 320
    return-void
.end method

.method protected appendLongInteger(J)V
    .locals 11
    .param p1, "longInt"    # J

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    .line 258
    move-wide v4, p1

    #@3
    .line 261
    .local v4, "temp":J
    const/4 v2, 0x0

    #@4
    .local v2, "size":I
    :goto_0
    const-wide/16 v6, 0x0

    #@6
    cmp-long v3, v4, v6

    #@8
    if-eqz v3, :cond_0

    #@a
    if-ge v2, v8, :cond_0

    #@c
    .line 262
    ushr-long/2addr v4, v8

    #@d
    .line 261
    add-int/lit8 v2, v2, 0x1

    #@f
    goto :goto_0

    #@10
    .line 266
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    #@13
    .line 270
    add-int/lit8 v3, v2, -0x1

    #@15
    mul-int/lit8 v1, v3, 0x8

    #@17
    .line 272
    .local v1, "shift":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@1a
    .line 273
    ushr-long v6, p1, v1

    #@1c
    const-wide/16 v8, 0xff

    #@1e
    and-long/2addr v6, v8

    #@1f
    long-to-int v3, v6

    #@20
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@23
    .line 274
    add-int/lit8 v1, v1, -0x8

    #@25
    .line 272
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_1

    #@28
    .line 247
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .param p1, "number"    # I

    #@0
    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@3
    .line 225
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    #@7
    .line 445
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .param p1, "text"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 435
    const/16 v0, 0x22

    #@3
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@6
    .line 436
    array-length v0, p1

    #@7
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    #@a
    .line 437
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@d
    .line 428
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 215
    or-int/lit16 v0, p1, 0x80

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@7
    .line 205
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@3
    .line 234
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    #@7
    .line 304
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .param p1, "text"    # [B

    #@0
    .prologue
    const/16 v2, 0x7f

    #@2
    const/4 v1, 0x0

    #@3
    .line 291
    aget-byte v0, p1, v1

    #@5
    and-int/lit16 v0, v0, 0xff

    #@7
    if-le v0, v2, :cond_0

    #@9
    .line 292
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@c
    .line 295
    :cond_0
    array-length v0, p1

    #@d
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    #@10
    .line 296
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@13
    .line 283
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 13
    .param p1, "value"    # J

    #@0
    .prologue
    const-wide/16 v10, 0x7f

    #@2
    .line 365
    const-wide/16 v2, 0x7f

    #@4
    .line 367
    .local v2, "max":J
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 368
    cmp-long v1, p1, v2

    #@a
    if-gez v1, :cond_1

    #@c
    .line 375
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    #@e
    .line 376
    mul-int/lit8 v1, v0, 0x7

    #@10
    ushr-long v4, p1, v1

    #@12
    .line 377
    .local v4, "temp":J
    and-long/2addr v4, v10

    #@13
    .line 379
    const-wide/16 v6, 0x80

    #@15
    or-long/2addr v6, v4

    #@16
    const-wide/16 v8, 0xff

    #@18
    and-long/2addr v6, v8

    #@19
    long-to-int v1, v6

    #@1a
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@1d
    .line 381
    add-int/lit8 v0, v0, -0x1

    #@1f
    goto :goto_1

    #@20
    .line 372
    .end local v4    # "temp":J
    :cond_1
    const/4 v1, 0x7

    #@21
    shl-long v6, v2, v1

    #@23
    or-long v2, v6, v10

    #@25
    .line 367
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 384
    :cond_2
    and-long v6, p1, v10

    #@2a
    long-to-int v1, v6

    #@2b
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@2e
    .line 355
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 414
    const-wide/16 v0, 0x1f

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 415
    long-to-int v0, p1

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    #@a
    .line 416
    return-void

    #@b
    .line 419
    :cond_0
    const/16 v0, 0x1f

    #@d
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    #@10
    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    #@13
    .line 405
    return-void
.end method

.method protected arraycopy([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@5
    .line 189
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@7
    add-int/2addr v0, p3

    #@8
    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    #@a
    .line 187
    return-void
.end method

.method public make()[B
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 153
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    #@3
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    #@6
    move-result v0

    #@7
    .line 156
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@a
    .line 178
    :pswitch_0
    return-object v2

    #@b
    .line 158
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 159
    return-object v2

    #@12
    .line 163
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 164
    return-object v2

    #@19
    .line 168
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 169
    return-object v2

    #@20
    .line 173
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 174
    return-object v2

    #@27
    .line 181
    :cond_0
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    #@29
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 156
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
