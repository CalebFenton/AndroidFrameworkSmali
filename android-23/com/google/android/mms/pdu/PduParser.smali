.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final mParseContentDisposition:Z

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@c
    .line 74
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    #@e
    .line 79
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    #@10
    .line 31
    return-void

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 59
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    #@6
    .line 64
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@8
    .line 69
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    #@a
    .line 100
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@c
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@f
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    #@11
    .line 101
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    #@13
    .line 99
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 40
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    .line 1802
    if-nez p0, :cond_0

    #@2
    .line 1803
    const/16 v37, 0x0

    #@4
    return v37

    #@5
    .line 1807
    :cond_0
    const/16 v37, 0x8c

    #@7
    move-object/from16 v0, p0

    #@9
    move/from16 v1, v37

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@e
    move-result v8

    #@f
    .line 1810
    .local v8, "messageType":I
    const/16 v37, 0x8d

    #@11
    move-object/from16 v0, p0

    #@13
    move/from16 v1, v37

    #@15
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@18
    move-result v9

    #@19
    .line 1811
    .local v9, "mmsVersion":I
    if-nez v9, :cond_1

    #@1b
    .line 1813
    const/16 v37, 0x0

    #@1d
    return v37

    #@1e
    .line 1817
    :cond_1
    packed-switch v8, :pswitch_data_0

    #@21
    .line 2006
    const/16 v37, 0x0

    #@23
    return v37

    #@24
    .line 1820
    :pswitch_0
    const/16 v37, 0x84

    #@26
    move-object/from16 v0, p0

    #@28
    move/from16 v1, v37

    #@2a
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@2d
    move-result-object v34

    #@2e
    .line 1821
    .local v34, "srContentType":[B
    if-nez v34, :cond_2

    #@30
    .line 1822
    const/16 v37, 0x0

    #@32
    return v37

    #@33
    .line 1826
    :cond_2
    const/16 v37, 0x89

    #@35
    move-object/from16 v0, p0

    #@37
    move/from16 v1, v37

    #@39
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@3c
    move-result-object v35

    #@3d
    .line 1827
    .local v35, "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v35, :cond_3

    #@3f
    .line 1828
    const/16 v37, 0x0

    #@41
    return v37

    #@42
    .line 1832
    :cond_3
    const/16 v37, 0x98

    #@44
    move-object/from16 v0, p0

    #@46
    move/from16 v1, v37

    #@48
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@4b
    move-result-object v36

    #@4c
    .line 1833
    .local v36, "srTransactionId":[B
    if-nez v36, :cond_15

    #@4e
    .line 1834
    const/16 v37, 0x0

    #@50
    return v37

    #@51
    .line 1840
    .end local v34    # "srContentType":[B
    .end local v35    # "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v36    # "srTransactionId":[B
    :pswitch_1
    const/16 v37, 0x92

    #@53
    move-object/from16 v0, p0

    #@55
    move/from16 v1, v37

    #@57
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@5a
    move-result v32

    #@5b
    .line 1841
    .local v32, "scResponseStatus":I
    if-nez v32, :cond_4

    #@5d
    .line 1842
    const/16 v37, 0x0

    #@5f
    return v37

    #@60
    .line 1846
    :cond_4
    const/16 v37, 0x98

    #@62
    move-object/from16 v0, p0

    #@64
    move/from16 v1, v37

    #@66
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@69
    move-result-object v33

    #@6a
    .line 1847
    .local v33, "scTransactionId":[B
    if-nez v33, :cond_15

    #@6c
    .line 1848
    const/16 v37, 0x0

    #@6e
    return v37

    #@6f
    .line 1854
    .end local v32    # "scResponseStatus":I
    .end local v33    # "scTransactionId":[B
    :pswitch_2
    const/16 v37, 0x83

    #@71
    move-object/from16 v0, p0

    #@73
    move/from16 v1, v37

    #@75
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@78
    move-result-object v10

    #@79
    .line 1855
    .local v10, "niContentLocation":[B
    if-nez v10, :cond_5

    #@7b
    .line 1856
    const/16 v37, 0x0

    #@7d
    return v37

    #@7e
    .line 1860
    :cond_5
    const/16 v37, 0x88

    #@80
    move-object/from16 v0, p0

    #@82
    move/from16 v1, v37

    #@84
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@87
    move-result-wide v12

    #@88
    .line 1861
    .local v12, "niExpiry":J
    const-wide/16 v38, -0x1

    #@8a
    cmp-long v37, v38, v12

    #@8c
    if-nez v37, :cond_6

    #@8e
    .line 1862
    const/16 v37, 0x0

    #@90
    return v37

    #@91
    .line 1866
    :cond_6
    const/16 v37, 0x8a

    #@93
    move-object/from16 v0, p0

    #@95
    move/from16 v1, v37

    #@97
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@9a
    move-result-object v11

    #@9b
    .line 1867
    .local v11, "niMessageClass":[B
    if-nez v11, :cond_7

    #@9d
    .line 1868
    const/16 v37, 0x0

    #@9f
    return v37

    #@a0
    .line 1872
    :cond_7
    const/16 v37, 0x8e

    #@a2
    move-object/from16 v0, p0

    #@a4
    move/from16 v1, v37

    #@a6
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@a9
    move-result-wide v14

    #@aa
    .line 1873
    .local v14, "niMessageSize":J
    const-wide/16 v38, -0x1

    #@ac
    cmp-long v37, v38, v14

    #@ae
    if-nez v37, :cond_8

    #@b0
    .line 1874
    const/16 v37, 0x0

    #@b2
    return v37

    #@b3
    .line 1878
    :cond_8
    const/16 v37, 0x98

    #@b5
    move-object/from16 v0, p0

    #@b7
    move/from16 v1, v37

    #@b9
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@bc
    move-result-object v16

    #@bd
    .line 1879
    .local v16, "niTransactionId":[B
    if-nez v16, :cond_15

    #@bf
    .line 1880
    const/16 v37, 0x0

    #@c1
    return v37

    #@c2
    .line 1886
    .end local v10    # "niContentLocation":[B
    .end local v11    # "niMessageClass":[B
    .end local v12    # "niExpiry":J
    .end local v14    # "niMessageSize":J
    .end local v16    # "niTransactionId":[B
    :pswitch_3
    const/16 v37, 0x95

    #@c4
    move-object/from16 v0, p0

    #@c6
    move/from16 v1, v37

    #@c8
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@cb
    move-result v17

    #@cc
    .line 1887
    .local v17, "nriStatus":I
    if-nez v17, :cond_9

    #@ce
    .line 1888
    const/16 v37, 0x0

    #@d0
    return v37

    #@d1
    .line 1892
    :cond_9
    const/16 v37, 0x98

    #@d3
    move-object/from16 v0, p0

    #@d5
    move/from16 v1, v37

    #@d7
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@da
    move-result-object v18

    #@db
    .line 1893
    .local v18, "nriTransactionId":[B
    if-nez v18, :cond_15

    #@dd
    .line 1894
    const/16 v37, 0x0

    #@df
    return v37

    #@e0
    .line 1900
    .end local v17    # "nriStatus":I
    .end local v18    # "nriTransactionId":[B
    :pswitch_4
    const/16 v37, 0x84

    #@e2
    move-object/from16 v0, p0

    #@e4
    move/from16 v1, v37

    #@e6
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@e9
    move-result-object v19

    #@ea
    .line 1901
    .local v19, "rcContentType":[B
    if-nez v19, :cond_a

    #@ec
    .line 1902
    const/16 v37, 0x0

    #@ee
    return v37

    #@ef
    .line 1906
    :cond_a
    const/16 v37, 0x85

    #@f1
    move-object/from16 v0, p0

    #@f3
    move/from16 v1, v37

    #@f5
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@f8
    move-result-wide v20

    #@f9
    .line 1907
    .local v20, "rcDate":J
    const-wide/16 v38, -0x1

    #@fb
    cmp-long v37, v38, v20

    #@fd
    if-nez v37, :cond_15

    #@ff
    .line 1908
    const/16 v37, 0x0

    #@101
    return v37

    #@102
    .line 1914
    .end local v19    # "rcContentType":[B
    .end local v20    # "rcDate":J
    :pswitch_5
    const/16 v37, 0x85

    #@104
    move-object/from16 v0, p0

    #@106
    move/from16 v1, v37

    #@108
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@10b
    move-result-wide v4

    #@10c
    .line 1915
    .local v4, "diDate":J
    const-wide/16 v38, -0x1

    #@10e
    cmp-long v37, v38, v4

    #@110
    if-nez v37, :cond_b

    #@112
    .line 1916
    const/16 v37, 0x0

    #@114
    return v37

    #@115
    .line 1920
    :cond_b
    const/16 v37, 0x8b

    #@117
    move-object/from16 v0, p0

    #@119
    move/from16 v1, v37

    #@11b
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@11e
    move-result-object v3

    #@11f
    .line 1921
    .local v3, "diMessageId":[B
    if-nez v3, :cond_c

    #@121
    .line 1922
    const/16 v37, 0x0

    #@123
    return v37

    #@124
    .line 1926
    :cond_c
    const/16 v37, 0x95

    #@126
    move-object/from16 v0, p0

    #@128
    move/from16 v1, v37

    #@12a
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@12d
    move-result v6

    #@12e
    .line 1927
    .local v6, "diStatus":I
    if-nez v6, :cond_d

    #@130
    .line 1928
    const/16 v37, 0x0

    #@132
    return v37

    #@133
    .line 1932
    :cond_d
    const/16 v37, 0x97

    #@135
    move-object/from16 v0, p0

    #@137
    move/from16 v1, v37

    #@139
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@13c
    move-result-object v7

    #@13d
    .line 1933
    .local v7, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_15

    #@13f
    .line 1934
    const/16 v37, 0x0

    #@141
    return v37

    #@142
    .line 1940
    .end local v3    # "diMessageId":[B
    .end local v4    # "diDate":J
    .end local v6    # "diStatus":I
    .end local v7    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6
    const/16 v37, 0x98

    #@144
    move-object/from16 v0, p0

    #@146
    move/from16 v1, v37

    #@148
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@14b
    move-result-object v2

    #@14c
    .line 1941
    .local v2, "aiTransactionId":[B
    if-nez v2, :cond_15

    #@14e
    .line 1942
    const/16 v37, 0x0

    #@150
    return v37

    #@151
    .line 1948
    .end local v2    # "aiTransactionId":[B
    :pswitch_7
    const/16 v37, 0x85

    #@153
    move-object/from16 v0, p0

    #@155
    move/from16 v1, v37

    #@157
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@15a
    move-result-wide v22

    #@15b
    .line 1949
    .local v22, "roDate":J
    const-wide/16 v38, -0x1

    #@15d
    cmp-long v37, v38, v22

    #@15f
    if-nez v37, :cond_e

    #@161
    .line 1950
    const/16 v37, 0x0

    #@163
    return v37

    #@164
    .line 1954
    :cond_e
    const/16 v37, 0x89

    #@166
    move-object/from16 v0, p0

    #@168
    move/from16 v1, v37

    #@16a
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@16d
    move-result-object v24

    #@16e
    .line 1955
    .local v24, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_f

    #@170
    .line 1956
    const/16 v37, 0x0

    #@172
    return v37

    #@173
    .line 1960
    :cond_f
    const/16 v37, 0x8b

    #@175
    move-object/from16 v0, p0

    #@177
    move/from16 v1, v37

    #@179
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@17c
    move-result-object v25

    #@17d
    .line 1961
    .local v25, "roMessageId":[B
    if-nez v25, :cond_10

    #@17f
    .line 1962
    const/16 v37, 0x0

    #@181
    return v37

    #@182
    .line 1966
    :cond_10
    const/16 v37, 0x9b

    #@184
    move-object/from16 v0, p0

    #@186
    move/from16 v1, v37

    #@188
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@18b
    move-result v26

    #@18c
    .line 1967
    .local v26, "roReadStatus":I
    if-nez v26, :cond_11

    #@18e
    .line 1968
    const/16 v37, 0x0

    #@190
    return v37

    #@191
    .line 1972
    :cond_11
    const/16 v37, 0x97

    #@193
    move-object/from16 v0, p0

    #@195
    move/from16 v1, v37

    #@197
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@19a
    move-result-object v27

    #@19b
    .line 1973
    .local v27, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_15

    #@19d
    .line 1974
    const/16 v37, 0x0

    #@19f
    return v37

    #@1a0
    .line 1980
    .end local v22    # "roDate":J
    .end local v24    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25    # "roMessageId":[B
    .end local v26    # "roReadStatus":I
    .end local v27    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    const/16 v37, 0x89

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    move/from16 v1, v37

    #@1a6
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@1a9
    move-result-object v28

    #@1aa
    .line 1981
    .local v28, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_12

    #@1ac
    .line 1982
    const/16 v37, 0x0

    #@1ae
    return v37

    #@1af
    .line 1986
    :cond_12
    const/16 v37, 0x8b

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    move/from16 v1, v37

    #@1b5
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@1b8
    move-result-object v29

    #@1b9
    .line 1987
    .local v29, "rrMessageId":[B
    if-nez v29, :cond_13

    #@1bb
    .line 1988
    const/16 v37, 0x0

    #@1bd
    return v37

    #@1be
    .line 1992
    :cond_13
    const/16 v37, 0x9b

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    move/from16 v1, v37

    #@1c4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@1c7
    move-result v30

    #@1c8
    .line 1993
    .local v30, "rrReadStatus":I
    if-nez v30, :cond_14

    #@1ca
    .line 1994
    const/16 v37, 0x0

    #@1cc
    return v37

    #@1cd
    .line 1998
    :cond_14
    const/16 v37, 0x97

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    move/from16 v1, v37

    #@1d3
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@1d6
    move-result-object v31

    #@1d7
    .line 1999
    .local v31, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_15

    #@1d9
    .line 2000
    const/16 v37, 0x0

    #@1db
    return v37

    #@1dc
    .line 2009
    .end local v28    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29    # "rrMessageId":[B
    .end local v30    # "rrReadStatus":I
    .end local v31    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/16 v37, 0x1

    #@1de
    return v37

    #@1df
    .line 1817
    nop

    #@1e0
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 1763
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@4
    if-nez v2, :cond_1

    #@6
    if-eqz p0, :cond_0

    #@8
    move v2, v3

    #@9
    :goto_0
    if-nez v2, :cond_1

    #@b
    new-instance v2, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v2

    #@11
    :cond_0
    move v2, v4

    #@12
    goto :goto_0

    #@13
    .line 1764
    :cond_1
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    #@15
    if-nez v2, :cond_2

    #@17
    .line 1765
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    #@19
    if-nez v2, :cond_2

    #@1b
    .line 1766
    return v3

    #@1c
    .line 1770
    :cond_2
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    #@1e
    if-eqz v2, :cond_4

    #@20
    .line 1771
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    #@23
    move-result-object v0

    #@24
    .line 1772
    .local v0, "contentId":[B
    if-eqz v0, :cond_3

    #@26
    .line 1773
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    #@28
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_3

    #@2e
    .line 1774
    return v4

    #@2f
    .line 1779
    :cond_3
    return v3

    #@30
    .line 1783
    .end local v0    # "contentId":[B
    :cond_4
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    #@32
    if-eqz v2, :cond_5

    #@34
    .line 1784
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    #@37
    move-result-object v1

    #@38
    .line 1785
    .local v1, "contentType":[B
    if-eqz v1, :cond_5

    #@3a
    .line 1786
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    #@3c
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_5

    #@42
    .line 1787
    return v4

    #@43
    .line 1792
    .end local v1    # "contentType":[B
    :cond_5
    return v3
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1227
    sget-boolean v3, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    if-eqz p0, :cond_0

    #@8
    move v3, v1

    #@9
    :goto_0
    if-nez v3, :cond_1

    #@b
    new-instance v1, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v1

    #@11
    :cond_0
    move v3, v2

    #@12
    goto :goto_0

    #@13
    .line 1228
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@16
    move-result v0

    #@17
    .line 1229
    .local v0, "temp":I
    sget-boolean v3, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@19
    if-nez v3, :cond_3

    #@1b
    const/4 v3, -0x1

    #@1c
    if-eq v3, v0, :cond_2

    #@1e
    :goto_1
    if-nez v1, :cond_3

    #@20
    new-instance v1, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@25
    throw v1

    #@26
    :cond_2
    move v1, v2

    #@27
    goto :goto_1

    #@28
    .line 1230
    :cond_3
    and-int/lit16 v1, v0, 0xff

    #@2a
    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 7
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v5, -0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 1193
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@6
    if-nez v2, :cond_1

    #@8
    if-eqz p0, :cond_0

    #@a
    move v2, v3

    #@b
    :goto_0
    if-nez v2, :cond_1

    #@d
    new-instance v2, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v2

    #@13
    :cond_0
    move v2, v4

    #@14
    goto :goto_0

    #@15
    .line 1194
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@17
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1a
    .line 1195
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@1d
    move-result v1

    #@1e
    .line 1196
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@20
    if-nez v2, :cond_3

    #@22
    if-eq v5, v1, :cond_2

    #@24
    move v2, v3

    #@25
    :goto_1
    if-nez v2, :cond_3

    #@27
    new-instance v2, Ljava/lang/AssertionError;

    #@29
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2c
    throw v2

    #@2d
    :cond_2
    move v2, v4

    #@2e
    goto :goto_1

    #@2f
    .line 1197
    :cond_3
    if-eq v5, v1, :cond_7

    #@31
    if-eqz v1, :cond_7

    #@33
    .line 1199
    const/4 v2, 0x2

    #@34
    if-ne p1, v2, :cond_5

    #@36
    .line 1200
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_4

    #@3c
    .line 1201
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@3f
    .line 1209
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@42
    move-result v1

    #@43
    .line 1210
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@45
    if-nez v2, :cond_3

    #@47
    if-eq v5, v1, :cond_6

    #@49
    move v2, v3

    #@4a
    :goto_3
    if-nez v2, :cond_3

    #@4c
    new-instance v2, Ljava/lang/AssertionError;

    #@4e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@51
    throw v2

    #@52
    .line 1204
    :cond_5
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_4

    #@58
    .line 1205
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5b
    goto :goto_2

    #@5c
    :cond_6
    move v2, v4

    #@5d
    .line 1210
    goto :goto_3

    #@5e
    .line 1213
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@61
    move-result v2

    #@62
    if-lez v2, :cond_8

    #@64
    .line 1214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@67
    move-result-object v2

    #@68
    return-object v2

    #@69
    .line 1217
    :cond_8
    return-object v6
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1177
    const/16 v0, 0x20

    #@3
    if-lt p0, v0, :cond_1

    #@5
    const/16 v0, 0x7e

    #@7
    if-gt p0, v0, :cond_1

    #@9
    .line 1178
    :cond_0
    return v1

    #@a
    .line 1177
    :cond_1
    const/16 v0, 0x80

    #@c
    if-lt p0, v0, :cond_2

    #@e
    const/16 v0, 0xff

    #@10
    if-le p0, v0, :cond_0

    #@12
    .line 1181
    :cond_2
    packed-switch p0, :pswitch_data_0

    #@15
    .line 1188
    :pswitch_0
    const/4 v0, 0x0

    #@16
    return v0

    #@17
    .line 1185
    :pswitch_1
    return v1

    #@18
    .line 1181
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1133
    const/16 v0, 0x21

    #@3
    if-lt p0, v0, :cond_0

    #@5
    const/16 v0, 0x7e

    #@7
    if-le p0, v0, :cond_1

    #@9
    .line 1134
    :cond_0
    return v1

    #@a
    .line 1137
    :cond_1
    sparse-switch p0, :sswitch_data_0

    #@d
    .line 1158
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 1155
    :sswitch_0
    return v1

    #@10
    .line 1137
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 949
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    #@0
    .prologue
    .line 1531
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@2
    if-nez v9, :cond_1

    #@4
    if-eqz p0, :cond_0

    #@6
    const/4 v9, 0x1

    #@7
    :goto_0
    if-nez v9, :cond_1

    #@9
    new-instance v9, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v9

    #@f
    :cond_0
    const/4 v9, 0x0

    #@10
    goto :goto_0

    #@11
    .line 1533
    :cond_1
    const/4 v0, 0x0

    #@12
    .line 1534
    .local v0, "contentType":[B
    const/4 v9, 0x1

    #@13
    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@16
    .line 1535
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@19
    move-result v8

    #@1a
    .line 1536
    .local v8, "temp":I
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@1c
    if-nez v9, :cond_3

    #@1e
    const/4 v9, -0x1

    #@1f
    if-eq v9, v8, :cond_2

    #@21
    const/4 v9, 0x1

    #@22
    :goto_1
    if-nez v9, :cond_3

    #@24
    new-instance v9, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v9

    #@2a
    :cond_2
    const/4 v9, 0x0

    #@2b
    goto :goto_1

    #@2c
    .line 1537
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    #@2f
    .line 1539
    and-int/lit16 v1, v8, 0xff

    #@31
    .line 1541
    .local v1, "cur":I
    const/16 v9, 0x20

    #@33
    if-ge v1, v9, :cond_a

    #@35
    .line 1542
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    #@38
    move-result v5

    #@39
    .line 1543
    .local v5, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@3c
    move-result v7

    #@3d
    .line 1544
    .local v7, "startPos":I
    const/4 v9, 0x1

    #@3e
    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@41
    .line 1545
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@44
    move-result v8

    #@45
    .line 1546
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@47
    if-nez v9, :cond_5

    #@49
    const/4 v9, -0x1

    #@4a
    if-eq v9, v8, :cond_4

    #@4c
    const/4 v9, 0x1

    #@4d
    :goto_2
    if-nez v9, :cond_5

    #@4f
    new-instance v9, Ljava/lang/AssertionError;

    #@51
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@54
    throw v9

    #@55
    :cond_4
    const/4 v9, 0x0

    #@56
    goto :goto_2

    #@57
    .line 1547
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    #@5a
    .line 1548
    and-int/lit16 v3, v8, 0xff

    #@5c
    .line 1550
    .local v3, "first":I
    const/16 v9, 0x20

    #@5e
    if-lt v3, v9, :cond_7

    #@60
    const/16 v9, 0x7f

    #@62
    if-gt v3, v9, :cond_7

    #@64
    .line 1551
    const/4 v9, 0x0

    #@65
    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@68
    move-result-object v0

    #@69
    .line 1566
    .local v0, "contentType":[B
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@6c
    move-result v2

    #@6d
    .line 1567
    .local v2, "endPos":I
    sub-int v9, v7, v2

    #@6f
    sub-int v6, v5, v9

    #@71
    .line 1568
    .local v6, "parameterLen":I
    if-lez v6, :cond_6

    #@73
    .line 1569
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@76
    move-result-object v9

    #@77
    invoke-static {p0, p1, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    #@7a
    .line 1572
    :cond_6
    if-gez v6, :cond_b

    #@7c
    .line 1573
    const-string/jumbo v9, "PduParser"

    #@7f
    const-string/jumbo v10, "Corrupt MMS message"

    #@82
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 1574
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@87
    const/4 v10, 0x0

    #@88
    aget-object v9, v9, v10

    #@8a
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    #@8d
    move-result-object v9

    #@8e
    return-object v9

    #@8f
    .line 1552
    .end local v2    # "endPos":I
    .end local v6    # "parameterLen":I
    .local v0, "contentType":[B
    :cond_7
    const/16 v9, 0x7f

    #@91
    if-le v3, v9, :cond_9

    #@93
    .line 1553
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    #@96
    move-result v4

    #@97
    .line 1555
    .local v4, "index":I
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@99
    array-length v9, v9

    #@9a
    if-ge v4, v9, :cond_8

    #@9c
    .line 1556
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@9e
    aget-object v9, v9, v4

    #@a0
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    #@a3
    move-result-object v0

    #@a4
    .local v0, "contentType":[B
    goto :goto_3

    #@a5
    .line 1558
    .local v0, "contentType":[B
    :cond_8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    #@a8
    .line 1559
    const/4 v9, 0x0

    #@a9
    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@ac
    move-result-object v0

    #@ad
    .local v0, "contentType":[B
    goto :goto_3

    #@ae
    .line 1562
    .end local v4    # "index":I
    .local v0, "contentType":[B
    :cond_9
    const-string/jumbo v9, "PduParser"

    #@b1
    const-string/jumbo v10, "Corrupt content-type"

    #@b4
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    .line 1563
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@b9
    const/4 v10, 0x0

    #@ba
    aget-object v9, v9, v10

    #@bc
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    #@bf
    move-result-object v9

    #@c0
    return-object v9

    #@c1
    .line 1576
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v7    # "startPos":I
    :cond_a
    const/16 v9, 0x7f

    #@c3
    if-gt v1, v9, :cond_c

    #@c5
    .line 1577
    const/4 v9, 0x0

    #@c6
    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@c9
    move-result-object v0

    #@ca
    .line 1583
    .local v0, "contentType":[B
    :cond_b
    :goto_4
    return-object v0

    #@cb
    .line 1580
    .local v0, "contentType":[B
    :cond_c
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@cd
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    #@d0
    move-result v10

    #@d1
    aget-object v9, v9, v10

    #@d3
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    #@d6
    move-result-object v0

    #@d7
    .local v0, "contentType":[B
    goto :goto_4
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 20
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1360
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@2
    if-nez v18, :cond_1

    #@4
    if-eqz p0, :cond_0

    #@6
    const/16 v18, 0x1

    #@8
    :goto_0
    if-nez v18, :cond_1

    #@a
    new-instance v18, Ljava/lang/AssertionError;

    #@c
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v18

    #@10
    :cond_0
    const/16 v18, 0x0

    #@12
    goto :goto_0

    #@13
    .line 1361
    :cond_1
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@15
    if-nez v18, :cond_3

    #@17
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v18

    #@1b
    if-lez v18, :cond_2

    #@1d
    const/16 v18, 0x1

    #@1f
    :goto_1
    if-nez v18, :cond_3

    #@21
    new-instance v18, Ljava/lang/AssertionError;

    #@23
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@26
    throw v18

    #@27
    :cond_2
    const/16 v18, 0x0

    #@29
    goto :goto_1

    #@2a
    .line 1363
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@2d
    move-result v15

    #@2e
    .line 1364
    .local v15, "startPos":I
    const/16 v16, 0x0

    #@30
    .line 1365
    .local v16, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v11

    #@34
    .line 1366
    .local v11, "lastLen":I
    :goto_2
    if-lez v11, :cond_e

    #@36
    .line 1367
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@39
    move-result v13

    #@3a
    .line 1368
    .local v13, "param":I
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@3c
    if-nez v18, :cond_5

    #@3e
    const/16 v18, -0x1

    #@40
    move/from16 v0, v18

    #@42
    if-eq v0, v13, :cond_4

    #@44
    const/16 v18, 0x1

    #@46
    :goto_3
    if-nez v18, :cond_5

    #@48
    new-instance v18, Ljava/lang/AssertionError;

    #@4a
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@4d
    throw v18

    #@4e
    :cond_4
    const/16 v18, 0x0

    #@50
    goto :goto_3

    #@51
    .line 1369
    :cond_5
    add-int/lit8 v11, v11, -0x1

    #@53
    .line 1371
    sparse-switch v13, :sswitch_data_0

    #@56
    .line 1502
    move-object/from16 v0, p0

    #@58
    invoke-static {v0, v11}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    #@5b
    move-result v18

    #@5c
    const/16 v19, -0x1

    #@5e
    move/from16 v0, v19

    #@60
    move/from16 v1, v18

    #@62
    if-ne v0, v1, :cond_d

    #@64
    .line 1503
    const-string/jumbo v18, "PduParser"

    #@67
    const-string/jumbo v19, "Corrupt Content-Type"

    #@6a
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    goto :goto_2

    #@6e
    .line 1387
    :sswitch_0
    const/16 v18, 0x1

    #@70
    move-object/from16 v0, p0

    #@72
    move/from16 v1, v18

    #@74
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@77
    .line 1388
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@7a
    move-result v8

    #@7b
    .line 1389
    .local v8, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    #@7e
    .line 1390
    const/16 v18, 0x7f

    #@80
    move/from16 v0, v18

    #@82
    if-le v8, v0, :cond_7

    #@84
    .line 1392
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    #@87
    move-result v10

    #@88
    .line 1394
    .local v10, "index":I
    sget-object v18, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@8a
    move-object/from16 v0, v18

    #@8c
    array-length v0, v0

    #@8d
    move/from16 v18, v0

    #@8f
    move/from16 v0, v18

    #@91
    if-ge v10, v0, :cond_6

    #@93
    .line 1395
    sget-object v18, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@95
    aget-object v18, v18, v10

    #@97
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    #@9a
    move-result-object v17

    #@9b
    .line 1396
    .local v17, "type":[B
    const/16 v18, 0x83

    #@9d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a0
    move-result-object v18

    #@a1
    move-object/from16 v0, p1

    #@a3
    move-object/from16 v1, v18

    #@a5
    move-object/from16 v2, v17

    #@a7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    .line 1408
    .end local v10    # "index":I
    .end local v17    # "type":[B
    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@ad
    move-result v16

    #@ae
    .line 1409
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    #@b1
    move-result v18

    #@b2
    sub-int v19, v15, v16

    #@b4
    sub-int v11, v18, v19

    #@b6
    .line 1410
    goto/16 :goto_2

    #@b8
    .line 1402
    :cond_7
    const/16 v18, 0x0

    #@ba
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v18

    #@be
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@c1
    move-result-object v17

    #@c2
    .line 1403
    .restart local v17    # "type":[B
    if-eqz v17, :cond_6

    #@c4
    if-eqz p1, :cond_6

    #@c6
    .line 1404
    const/16 v18, 0x83

    #@c8
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cb
    move-result-object v18

    #@cc
    move-object/from16 v0, p1

    #@ce
    move-object/from16 v1, v18

    #@d0
    move-object/from16 v2, v17

    #@d2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    goto :goto_4

    #@d6
    .line 1427
    .end local v8    # "first":I
    .end local v17    # "type":[B
    :sswitch_1
    const/16 v18, 0x0

    #@d8
    move-object/from16 v0, p0

    #@da
    move/from16 v1, v18

    #@dc
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@df
    move-result-object v14

    #@e0
    .line 1428
    .local v14, "start":[B
    if-eqz v14, :cond_8

    #@e2
    if-eqz p1, :cond_8

    #@e4
    .line 1429
    const/16 v18, 0x99

    #@e6
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e9
    move-result-object v18

    #@ea
    move-object/from16 v0, p1

    #@ec
    move-object/from16 v1, v18

    #@ee
    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    .line 1432
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@f4
    move-result v16

    #@f5
    .line 1433
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    #@f8
    move-result v18

    #@f9
    sub-int v19, v15, v16

    #@fb
    sub-int v11, v18, v19

    #@fd
    .line 1434
    goto/16 :goto_2

    #@ff
    .line 1451
    .end local v14    # "start":[B
    :sswitch_2
    const/16 v18, 0x1

    #@101
    move-object/from16 v0, p0

    #@103
    move/from16 v1, v18

    #@105
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@108
    .line 1452
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@10b
    move-result v9

    #@10c
    .line 1453
    .local v9, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    #@10f
    .line 1455
    const/16 v18, 0x20

    #@111
    move/from16 v0, v18

    #@113
    if-le v9, v0, :cond_b

    #@115
    const/16 v18, 0x7f

    #@117
    move/from16 v0, v18

    #@119
    if-ge v9, v0, :cond_b

    #@11b
    .line 1458
    :cond_9
    const/16 v18, 0x0

    #@11d
    move-object/from16 v0, p0

    #@11f
    move/from16 v1, v18

    #@121
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@124
    move-result-object v6

    #@125
    .line 1461
    .local v6, "charsetStr":[B
    :try_start_0
    new-instance v18, Ljava/lang/String;

    #@127
    move-object/from16 v0, v18

    #@129
    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    #@12c
    .line 1460
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    #@12f
    move-result v5

    #@130
    .line 1462
    .local v5, "charsetInt":I
    const/16 v18, 0x81

    #@132
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@135
    move-result-object v18

    #@136
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@139
    move-result-object v19

    #@13a
    move-object/from16 v0, p1

    #@13c
    move-object/from16 v1, v18

    #@13e
    move-object/from16 v2, v19

    #@140
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@143
    .line 1476
    .end local v5    # "charsetInt":I
    .end local v6    # "charsetStr":[B
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@146
    move-result v16

    #@147
    .line 1477
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    #@14a
    move-result v18

    #@14b
    sub-int v19, v15, v16

    #@14d
    sub-int v11, v18, v19

    #@14f
    .line 1478
    goto/16 :goto_2

    #@151
    .line 1456
    :cond_b
    if-eqz v9, :cond_9

    #@153
    .line 1470
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    #@156
    move-result-wide v18

    #@157
    move-wide/from16 v0, v18

    #@159
    long-to-int v4, v0

    #@15a
    .line 1471
    .local v4, "charset":I
    if-eqz p1, :cond_a

    #@15c
    .line 1472
    const/16 v18, 0x81

    #@15e
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@161
    move-result-object v18

    #@162
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@165
    move-result-object v19

    #@166
    move-object/from16 v0, p1

    #@168
    move-object/from16 v1, v18

    #@16a
    move-object/from16 v2, v19

    #@16c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16f
    goto :goto_5

    #@170
    .line 1463
    .end local v4    # "charset":I
    .restart local v6    # "charsetStr":[B
    :catch_0
    move-exception v7

    #@171
    .line 1465
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v18, "PduParser"

    #@174
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@177
    move-result-object v19

    #@178
    move-object/from16 v0, v18

    #@17a
    move-object/from16 v1, v19

    #@17c
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17f
    .line 1466
    const/16 v18, 0x81

    #@181
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@184
    move-result-object v18

    #@185
    const/16 v19, 0x0

    #@187
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18a
    move-result-object v19

    #@18b
    move-object/from16 v0, p1

    #@18d
    move-object/from16 v1, v18

    #@18f
    move-object/from16 v2, v19

    #@191
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@194
    goto :goto_5

    #@195
    .line 1490
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "firstValue":I
    :sswitch_3
    const/16 v18, 0x0

    #@197
    move-object/from16 v0, p0

    #@199
    move/from16 v1, v18

    #@19b
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@19e
    move-result-object v12

    #@19f
    .line 1491
    .local v12, "name":[B
    if-eqz v12, :cond_c

    #@1a1
    if-eqz p1, :cond_c

    #@1a3
    .line 1492
    const/16 v18, 0x97

    #@1a5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a8
    move-result-object v18

    #@1a9
    move-object/from16 v0, p1

    #@1ab
    move-object/from16 v1, v18

    #@1ad
    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b0
    .line 1495
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    #@1b3
    move-result v16

    #@1b4
    .line 1496
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    #@1b7
    move-result v18

    #@1b8
    sub-int v19, v15, v16

    #@1ba
    sub-int v11, v18, v19

    #@1bc
    .line 1497
    goto/16 :goto_2

    #@1be
    .line 1505
    .end local v12    # "name":[B
    :cond_d
    const/4 v11, 0x0

    #@1bf
    goto/16 :goto_2

    #@1c1
    .line 1511
    .end local v13    # "param":I
    :cond_e
    if-eqz v11, :cond_f

    #@1c3
    .line 1512
    const-string/jumbo v18, "PduParser"

    #@1c6
    const-string/jumbo v19, "Corrupt Content-Type"

    #@1c9
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1cc
    .line 1341
    :cond_f
    return-void

    #@1cd
    .line 1371
    nop

    #@1ce
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 1029
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@5
    if-nez v8, :cond_1

    #@7
    if-eqz p0, :cond_0

    #@9
    move v8, v6

    #@a
    :goto_0
    if-nez v8, :cond_1

    #@c
    new-instance v6, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v6

    #@12
    :cond_0
    move v8, v7

    #@13
    goto :goto_0

    #@14
    .line 1030
    :cond_1
    invoke-virtual {p0, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@17
    .line 1031
    const/4 v3, 0x0

    #@18
    .line 1032
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    #@19
    .line 1033
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@1c
    move-result v4

    #@1d
    .line 1034
    .local v4, "temp":I
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@1f
    if-nez v8, :cond_3

    #@21
    const/4 v8, -0x1

    #@22
    if-eq v8, v4, :cond_2

    #@24
    :goto_1
    if-nez v6, :cond_3

    #@26
    new-instance v6, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@2b
    throw v6

    #@2c
    :cond_2
    move v6, v7

    #@2d
    goto :goto_1

    #@2e
    .line 1035
    :cond_3
    and-int/lit16 v2, v4, 0xff

    #@30
    .line 1036
    .local v2, "first":I
    if-nez v2, :cond_4

    #@32
    .line 1037
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@34
    const-string/jumbo v7, ""

    #@37
    invoke-direct {v6, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    #@3a
    return-object v6

    #@3b
    .line 1040
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    #@3e
    .line 1041
    const/16 v6, 0x20

    #@40
    if-ge v2, v6, :cond_5

    #@42
    .line 1042
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    #@45
    .line 1044
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    #@48
    move-result v0

    #@49
    .line 1047
    :cond_5
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@4c
    move-result-object v5

    #@4d
    .line 1050
    .local v5, "textString":[B
    if-eqz v0, :cond_6

    #@4f
    .line 1051
    :try_start_0
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@51
    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-direct {v3, v0, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    #@54
    .line 1059
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_2
    return-object v3

    #@55
    .line 1053
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@57
    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-direct {v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    #@5b
    .line 1055
    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v1

    #@5c
    .line 1056
    .local v1, "e":Ljava/lang/Exception;
    return-object v9
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1302
    sget-boolean v3, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    if-eqz p0, :cond_0

    #@8
    move v3, v1

    #@9
    :goto_0
    if-nez v3, :cond_1

    #@b
    new-instance v1, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v1

    #@11
    :cond_0
    move v3, v2

    #@12
    goto :goto_0

    #@13
    .line 1303
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@16
    .line 1304
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@19
    move-result v0

    #@1a
    .line 1305
    .local v0, "temp":I
    sget-boolean v3, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@1c
    if-nez v3, :cond_3

    #@1e
    const/4 v3, -0x1

    #@1f
    if-eq v3, v0, :cond_2

    #@21
    :goto_1
    if-nez v1, :cond_3

    #@23
    new-instance v1, Ljava/lang/AssertionError;

    #@25
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@28
    throw v1

    #@29
    :cond_2
    move v1, v2

    #@2a
    goto :goto_1

    #@2b
    .line 1306
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    #@2e
    .line 1307
    const/16 v1, 0x7f

    #@30
    if-le v0, v1, :cond_4

    #@32
    .line 1308
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    #@35
    move-result v1

    #@36
    int-to-long v2, v1

    #@37
    return-wide v2

    #@38
    .line 1310
    :cond_4
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    #@3b
    move-result-wide v2

    #@3c
    return-wide v2
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 12
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    #@0
    .prologue
    const/16 v11, 0x8

    #@2
    const/4 v10, -0x1

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 1270
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@7
    if-nez v5, :cond_1

    #@9
    if-eqz p0, :cond_0

    #@b
    move v5, v6

    #@c
    :goto_0
    if-nez v5, :cond_1

    #@e
    new-instance v5, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v5

    #@14
    :cond_0
    move v5, v7

    #@15
    goto :goto_0

    #@16
    .line 1271
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@19
    move-result v4

    #@1a
    .line 1272
    .local v4, "temp":I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@1c
    if-nez v5, :cond_3

    #@1e
    if-eq v10, v4, :cond_2

    #@20
    move v5, v6

    #@21
    :goto_1
    if-nez v5, :cond_3

    #@23
    new-instance v5, Ljava/lang/AssertionError;

    #@25
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@28
    throw v5

    #@29
    :cond_2
    move v5, v7

    #@2a
    goto :goto_1

    #@2b
    .line 1273
    :cond_3
    and-int/lit16 v0, v4, 0xff

    #@2d
    .line 1275
    .local v0, "count":I
    if-le v0, v11, :cond_4

    #@2f
    .line 1276
    new-instance v5, Ljava/lang/RuntimeException;

    #@31
    const-string/jumbo v6, "Octet count greater than 8 and I can\'t represent that!"

    #@34
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@37
    throw v5

    #@38
    .line 1279
    :cond_4
    const-wide/16 v2, 0x0

    #@3a
    .line 1281
    .local v2, "result":J
    const/4 v1, 0x0

    #@3b
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_7

    #@3d
    .line 1282
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@40
    move-result v4

    #@41
    .line 1283
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@43
    if-nez v5, :cond_6

    #@45
    if-eq v10, v4, :cond_5

    #@47
    move v5, v6

    #@48
    :goto_3
    if-nez v5, :cond_6

    #@4a
    new-instance v5, Ljava/lang/AssertionError;

    #@4c
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@4f
    throw v5

    #@50
    :cond_5
    move v5, v7

    #@51
    goto :goto_3

    #@52
    .line 1284
    :cond_6
    shl-long/2addr v2, v11

    #@53
    .line 1285
    and-int/lit16 v5, v4, 0xff

    #@55
    int-to-long v8, v5

    #@56
    add-long/2addr v2, v8

    #@57
    .line 1281
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_2

    #@5a
    .line 1288
    :cond_7
    return-wide v2
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1247
    sget-boolean v3, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    if-eqz p0, :cond_0

    #@8
    move v3, v1

    #@9
    :goto_0
    if-nez v3, :cond_1

    #@b
    new-instance v1, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v1

    #@11
    :cond_0
    move v3, v2

    #@12
    goto :goto_0

    #@13
    .line 1248
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@16
    move-result v0

    #@17
    .line 1249
    .local v0, "temp":I
    sget-boolean v3, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@19
    if-nez v3, :cond_3

    #@1b
    const/4 v3, -0x1

    #@1c
    if-eq v3, v0, :cond_2

    #@1e
    :goto_1
    if-nez v1, :cond_3

    #@20
    new-instance v1, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@25
    throw v1

    #@26
    :cond_2
    move v1, v2

    #@27
    goto :goto_1

    #@28
    .line 1250
    :cond_3
    and-int/lit8 v1, v0, 0x7f

    #@2a
    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 967
    sget-boolean v3, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    if-eqz p0, :cond_0

    #@8
    const/4 v2, 0x1

    #@9
    :cond_0
    if-nez v2, :cond_1

    #@b
    new-instance v2, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v2

    #@11
    .line 968
    :cond_1
    const/4 v0, 0x0

    #@12
    .line 969
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@15
    move-result v1

    #@16
    .line 970
    .local v1, "temp":I
    if-ne v1, v4, :cond_2

    #@18
    .line 971
    return v1

    #@19
    .line 974
    :cond_2
    and-int/lit16 v2, v1, 0x80

    #@1b
    if-eqz v2, :cond_3

    #@1d
    .line 975
    shl-int/lit8 v0, v0, 0x7

    #@1f
    .line 976
    and-int/lit8 v2, v1, 0x7f

    #@21
    or-int/2addr v0, v2

    #@22
    .line 977
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@25
    move-result v1

    #@26
    .line 978
    if-ne v1, v4, :cond_2

    #@28
    .line 979
    return v1

    #@29
    .line 983
    :cond_3
    shl-int/lit8 v0, v0, 0x7

    #@2b
    .line 984
    and-int/lit8 v2, v1, 0x7f

    #@2d
    or-int/2addr v0, v2

    #@2e
    .line 986
    return v0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1004
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@4
    if-nez v4, :cond_1

    #@6
    if-eqz p0, :cond_0

    #@8
    move v4, v2

    #@9
    :goto_0
    if-nez v4, :cond_1

    #@b
    new-instance v2, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v2

    #@11
    :cond_0
    move v4, v3

    #@12
    goto :goto_0

    #@13
    .line 1005
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@16
    move-result v1

    #@17
    .line 1006
    .local v1, "temp":I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@19
    if-nez v4, :cond_3

    #@1b
    const/4 v4, -0x1

    #@1c
    if-eq v4, v1, :cond_2

    #@1e
    :goto_1
    if-nez v2, :cond_3

    #@20
    new-instance v2, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@25
    throw v2

    #@26
    :cond_2
    move v2, v3

    #@27
    goto :goto_1

    #@28
    .line 1007
    :cond_3
    and-int/lit16 v0, v1, 0xff

    #@2a
    .line 1009
    .local v0, "first":I
    const/16 v2, 0x1e

    #@2c
    if-gt v0, v2, :cond_4

    #@2e
    .line 1010
    return v0

    #@2f
    .line 1011
    :cond_4
    const/16 v2, 0x1f

    #@31
    if-ne v0, v2, :cond_5

    #@33
    .line 1012
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    #@36
    move-result v2

    #@37
    return v2

    #@38
    .line 1015
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    #@3a
    const-string/jumbo v3, "Value length > LENGTH_QUOTE!"

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1071
    sget-boolean v3, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_1

    #@6
    if-eqz p0, :cond_0

    #@8
    move v3, v2

    #@9
    :goto_0
    if-nez v3, :cond_1

    #@b
    new-instance v1, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v1

    #@11
    :cond_0
    move v3, v1

    #@12
    goto :goto_0

    #@13
    .line 1089
    :cond_1
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@16
    .line 1092
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    #@19
    move-result v0

    #@1a
    .line 1093
    .local v0, "temp":I
    sget-boolean v3, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@1c
    if-nez v3, :cond_3

    #@1e
    const/4 v3, -0x1

    #@1f
    if-eq v3, v0, :cond_2

    #@21
    move v1, v2

    #@22
    :cond_2
    if-nez v1, :cond_3

    #@24
    new-instance v1, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v1

    #@2a
    .line 1094
    :cond_3
    if-ne v2, p1, :cond_4

    #@2c
    .line 1095
    const/16 v1, 0x22

    #@2e
    if-ne v1, v0, :cond_4

    #@30
    .line 1097
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@33
    .line 1112
    :goto_1
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@36
    move-result-object v1

    #@37
    return-object v1

    #@38
    .line 1098
    :cond_4
    if-nez p1, :cond_5

    #@3a
    .line 1099
    const/16 v1, 0x7f

    #@3c
    if-ne v1, v0, :cond_5

    #@3e
    .line 1101
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@41
    goto :goto_1

    #@42
    .line 1104
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    #@45
    goto :goto_1
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1322
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    if-eqz p0, :cond_0

    #@7
    const/4 v2, 0x1

    #@8
    :goto_0
    if-nez v2, :cond_1

    #@a
    new-instance v2, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v2

    #@10
    :cond_0
    move v2, v3

    #@11
    goto :goto_0

    #@12
    .line 1323
    :cond_1
    new-array v0, p1, [B

    #@14
    .line 1324
    .local v0, "area":[B
    invoke-virtual {p0, v0, v3, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    #@17
    move-result v1

    #@18
    .line 1325
    .local v1, "readLen":I
    if-ge v1, p1, :cond_2

    #@1a
    .line 1326
    const/4 v2, -0x1

    #@1b
    return v2

    #@1c
    .line 1328
    :cond_2
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 15

    #@0
    .prologue
    .line 111
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    #@2
    if-nez v13, :cond_0

    #@4
    .line 112
    const/4 v13, 0x0

    #@5
    return-object v13

    #@6
    .line 116
    :cond_0
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    #@8
    invoke-virtual {p0, v13}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    #@b
    move-result-object v13

    #@c
    iput-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@e
    .line 117
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@10
    if-nez v13, :cond_1

    #@12
    .line 119
    const/4 v13, 0x0

    #@13
    return-object v13

    #@14
    .line 123
    :cond_1
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@16
    const/16 v14, 0x8c

    #@18
    invoke-virtual {v13, v14}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@1b
    move-result v5

    #@1c
    .line 126
    .local v5, "messageType":I
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@1e
    invoke-static {v13}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    #@21
    move-result v13

    #@22
    if-nez v13, :cond_2

    #@24
    .line 127
    const-string/jumbo v13, "check mandatory headers failed!"

    #@27
    invoke-static {v13}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@2a
    .line 128
    const/4 v13, 0x0

    #@2b
    return-object v13

    #@2c
    .line 131
    :cond_2
    const/16 v13, 0x80

    #@2e
    if-eq v13, v5, :cond_3

    #@30
    .line 132
    const/16 v13, 0x84

    #@32
    if-ne v13, v5, :cond_4

    #@34
    .line 134
    :cond_3
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    #@36
    invoke-virtual {p0, v13}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    #@39
    move-result-object v13

    #@3a
    iput-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    #@3c
    .line 135
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    #@3e
    if-nez v13, :cond_4

    #@40
    .line 137
    const/4 v13, 0x0

    #@41
    return-object v13

    #@42
    .line 141
    :cond_4
    packed-switch v5, :pswitch_data_0

    #@45
    .line 225
    const-string/jumbo v13, "Parser doesn\'t support this message type in this version!"

    #@48
    invoke-static {v13}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@4b
    .line 226
    const/4 v13, 0x0

    #@4c
    return-object v13

    #@4d
    .line 146
    :pswitch_0
    new-instance v12, Lcom/google/android/mms/pdu/SendReq;

    #@4f
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@51
    iget-object v14, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    #@53
    invoke-direct {v12, v13, v14}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    #@56
    .line 147
    .local v12, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    return-object v12

    #@57
    .line 152
    .end local v12    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v11, Lcom/google/android/mms/pdu/SendConf;

    #@59
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@5b
    invoke-direct {v11, v13}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@5e
    .line 153
    .local v11, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    return-object v11

    #@5f
    .line 159
    .end local v11    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v6, Lcom/google/android/mms/pdu/NotificationInd;

    #@61
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@63
    invoke-direct {v6, v13}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@66
    .line 160
    .local v6, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    return-object v6

    #@67
    .line 166
    .end local v6    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v7, Lcom/google/android/mms/pdu/NotifyRespInd;

    #@69
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@6b
    invoke-direct {v7, v13}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@6e
    .line 167
    .local v7, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    return-object v7

    #@6f
    .line 173
    .end local v7    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v10, Lcom/google/android/mms/pdu/RetrieveConf;

    #@71
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@73
    iget-object v14, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    #@75
    invoke-direct {v10, v13, v14}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    #@78
    .line 175
    .local v10, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    #@7b
    move-result-object v1

    #@7c
    .line 176
    .local v1, "contentType":[B
    if-nez v1, :cond_5

    #@7e
    .line 177
    const/4 v13, 0x0

    #@7f
    return-object v13

    #@80
    .line 179
    :cond_5
    new-instance v2, Ljava/lang/String;

    #@82
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    #@85
    .line 180
    .local v2, "ctTypeStr":Ljava/lang/String;
    const-string/jumbo v13, "application/vnd.wap.multipart.mixed"

    #@88
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v13

    #@8c
    if-nez v13, :cond_6

    #@8e
    .line 181
    const-string/jumbo v13, "application/vnd.wap.multipart.related"

    #@91
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v13

    #@95
    .line 180
    if-nez v13, :cond_6

    #@97
    .line 182
    const-string/jumbo v13, "application/vnd.wap.multipart.alternative"

    #@9a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v13

    #@9e
    .line 180
    if-eqz v13, :cond_7

    #@a0
    .line 186
    :cond_6
    return-object v10

    #@a1
    .line 187
    :cond_7
    const-string/jumbo v13, "application/vnd.wap.multipart.alternative"

    #@a4
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v13

    #@a8
    if-eqz v13, :cond_8

    #@aa
    .line 190
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    #@ac
    const/4 v14, 0x0

    #@ad
    invoke-virtual {v13, v14}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    #@b0
    move-result-object v4

    #@b1
    .line 191
    .local v4, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    #@b3
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    #@b6
    .line 192
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    #@b8
    const/4 v14, 0x0

    #@b9
    invoke-virtual {v13, v14, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    #@bc
    .line 193
    return-object v10

    #@bd
    .line 195
    .end local v4    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_8
    const/4 v13, 0x0

    #@be
    return-object v13

    #@bf
    .line 201
    .end local v1    # "contentType":[B
    .end local v2    # "ctTypeStr":Ljava/lang/String;
    .end local v10    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v3, Lcom/google/android/mms/pdu/DeliveryInd;

    #@c1
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@c3
    invoke-direct {v3, v13}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@c6
    .line 202
    .local v3, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    return-object v3

    #@c7
    .line 208
    .end local v3    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    #@c9
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@cb
    invoke-direct {v0, v13}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@ce
    .line 209
    .local v0, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    return-object v0

    #@cf
    .line 215
    .end local v0    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v8, Lcom/google/android/mms/pdu/ReadOrigInd;

    #@d1
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@d3
    invoke-direct {v8, v13}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@d6
    .line 216
    .local v8, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    return-object v8

    #@d7
    .line 222
    .end local v8    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v9, Lcom/google/android/mms/pdu/ReadRecInd;

    #@d9
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@db
    invoke-direct {v9, v13}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@de
    .line 223
    .local v9, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    return-object v9

    #@df
    .line 141
    nop

    #@e0
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 38
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    #@0
    .prologue
    .line 237
    if-nez p1, :cond_0

    #@2
    .line 238
    const/16 v33, 0x0

    #@4
    return-object v33

    #@5
    .line 240
    :cond_0
    const/4 v15, 0x1

    #@6
    .line 241
    .local v15, "keepParsing":Z
    new-instance v14, Lcom/google/android/mms/pdu/PduHeaders;

    #@8
    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    #@b
    .line 243
    .local v14, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_1
    :goto_0
    if-eqz v15, :cond_e

    #@d
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@10
    move-result v33

    #@11
    if-lez v33, :cond_e

    #@13
    .line 244
    const/16 v33, 0x1

    #@15
    move-object/from16 v0, p1

    #@17
    move/from16 v1, v33

    #@19
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@1c
    .line 245
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@1f
    move-result v13

    #@20
    .line 247
    .local v13, "headerField":I
    const/16 v33, 0x20

    #@22
    move/from16 v0, v33

    #@24
    if-lt v13, v0, :cond_2

    #@26
    const/16 v33, 0x7f

    #@28
    move/from16 v0, v33

    #@2a
    if-gt v13, v0, :cond_2

    #@2c
    .line 248
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    #@2f
    .line 249
    const/16 v33, 0x0

    #@31
    move-object/from16 v0, p1

    #@33
    move/from16 v1, v33

    #@35
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@38
    move-result-object v5

    #@39
    .local v5, "bVal":[B
    goto :goto_0

    #@3a
    .line 256
    .end local v5    # "bVal":[B
    :cond_2
    packed-switch v13, :pswitch_data_0

    #@3d
    .line 821
    :pswitch_0
    const-string/jumbo v33, "Unknown header"

    #@40
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@43
    goto :goto_0

    #@44
    .line 259
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@47
    move-result v19

    #@48
    .line 263
    .local v19, "messageType":I
    packed-switch v19, :pswitch_data_1

    #@4b
    .line 283
    :try_start_0
    move/from16 v0, v19

    #@4d
    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@50
    goto :goto_0

    #@51
    .line 284
    :catch_0
    move-exception v7

    #@52
    .line 285
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@54
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v34, "Set invalid Octet value: "

    #@5a
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v33

    #@5e
    move-object/from16 v0, v33

    #@60
    move/from16 v1, v19

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v33

    #@66
    .line 286
    const-string/jumbo v34, " into the header filed: "

    #@69
    .line 285
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v33

    #@6d
    move-object/from16 v0, v33

    #@6f
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v33

    #@73
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v33

    #@77
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@7a
    .line 287
    const/16 v33, 0x0

    #@7c
    return-object v33

    #@7d
    .line 280
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/16 v33, 0x0

    #@7f
    return-object v33

    #@80
    .line 288
    :catch_1
    move-exception v9

    #@81
    .line 289
    .local v9, "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@83
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    move-object/from16 v0, v33

    #@88
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v33

    #@8c
    const-string/jumbo v34, "is not Octet header field!"

    #@8f
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v33

    #@93
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v33

    #@97
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@9a
    .line 290
    const/16 v33, 0x0

    #@9c
    return-object v33

    #@9d
    .line 323
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "messageType":I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@a0
    move-result v27

    #@a1
    .line 330
    .local v27, "value":I
    :try_start_1
    move/from16 v0, v27

    #@a3
    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    #@a6
    goto/16 :goto_0

    #@a8
    .line 331
    :catch_2
    move-exception v7

    #@a9
    .line 332
    .restart local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v34, "Set invalid Octet value: "

    #@b1
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v33

    #@b5
    move-object/from16 v0, v33

    #@b7
    move/from16 v1, v27

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v33

    #@bd
    .line 333
    const-string/jumbo v34, " into the header filed: "

    #@c0
    .line 332
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v33

    #@c4
    move-object/from16 v0, v33

    #@c6
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v33

    #@ca
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v33

    #@ce
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@d1
    .line 334
    const/16 v33, 0x0

    #@d3
    return-object v33

    #@d4
    .line 335
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v9

    #@d5
    .line 336
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    move-object/from16 v0, v33

    #@dc
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@df
    move-result-object v33

    #@e0
    const-string/jumbo v34, "is not Octet header field!"

    #@e3
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v33

    #@e7
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v33

    #@eb
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@ee
    .line 337
    const/16 v33, 0x0

    #@f0
    return-object v33

    #@f1
    .line 348
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v27    # "value":I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    #@f4
    move-result-wide v28

    #@f5
    .line 353
    .local v28, "value":J
    move-wide/from16 v0, v28

    #@f7
    invoke-virtual {v14, v0, v1, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    #@fa
    goto/16 :goto_0

    #@fc
    .line 354
    .end local v28    # "value":J
    :catch_4
    move-exception v9

    #@fd
    .line 355
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    move-object/from16 v0, v33

    #@104
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@107
    move-result-object v33

    #@108
    const-string/jumbo v34, "is not Long-Integer header field!"

    #@10b
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v33

    #@10f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v33

    #@113
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@116
    .line 356
    const/16 v33, 0x0

    #@118
    return-object v33

    #@119
    .line 367
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    #@11c
    move-result-wide v28

    #@11d
    .line 372
    .restart local v28    # "value":J
    move-wide/from16 v0, v28

    #@11f
    invoke-virtual {v14, v0, v1, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    #@122
    goto/16 :goto_0

    #@124
    .line 373
    .end local v28    # "value":J
    :catch_5
    move-exception v9

    #@125
    .line 374
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@127
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@12a
    move-object/from16 v0, v33

    #@12c
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v33

    #@130
    const-string/jumbo v34, "is not Long-Integer header field!"

    #@133
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v33

    #@137
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v33

    #@13b
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@13e
    .line 375
    const/16 v33, 0x0

    #@140
    return-object v33

    #@141
    .line 401
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v33, 0x0

    #@143
    move-object/from16 v0, p1

    #@145
    move/from16 v1, v33

    #@147
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@14a
    move-result-object v31

    #@14b
    .line 402
    .local v31, "value":[B
    if-eqz v31, :cond_1

    #@14d
    .line 408
    :try_start_4
    move-object/from16 v0, v31

    #@14f
    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    #@152
    goto/16 :goto_0

    #@154
    .line 409
    :catch_6
    move-exception v8

    #@155
    .line 410
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@158
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@15b
    goto/16 :goto_0

    #@15d
    .line 411
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v9

    #@15e
    .line 412
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@160
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    move-object/from16 v0, v33

    #@165
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@168
    move-result-object v33

    #@169
    const-string/jumbo v34, "is not Text-String header field!"

    #@16c
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v33

    #@170
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v33

    #@174
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@177
    .line 413
    const/16 v33, 0x0

    #@179
    return-object v33

    #@17a
    .line 430
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v31    # "value":[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@17d
    move-result-object v30

    #@17e
    .line 431
    .local v30, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v30, :cond_1

    #@180
    .line 437
    :try_start_5
    move-object/from16 v0, v30

    #@182
    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    #@185
    goto/16 :goto_0

    #@187
    .line 438
    :catch_8
    move-exception v8

    #@188
    .line 439
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@18b
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@18e
    goto/16 :goto_0

    #@190
    .line 440
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v9

    #@191
    .line 441
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@193
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    move-object/from16 v0, v33

    #@198
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v33

    #@19c
    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    #@19f
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v33

    #@1a3
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a6
    move-result-object v33

    #@1a7
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@1aa
    .line 442
    const/16 v33, 0x0

    #@1ac
    return-object v33

    #@1ad
    .line 454
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@1b0
    move-result-object v30

    #@1b1
    .line 455
    .restart local v30    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v30, :cond_1

    #@1b3
    .line 456
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    #@1b6
    move-result-object v4

    #@1b7
    .line 457
    .local v4, "address":[B
    if-eqz v4, :cond_4

    #@1b9
    .line 458
    new-instance v23, Ljava/lang/String;

    #@1bb
    move-object/from16 v0, v23

    #@1bd
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    #@1c0
    .line 463
    .local v23, "str":Ljava/lang/String;
    const-string/jumbo v33, "/"

    #@1c3
    move-object/from16 v0, v23

    #@1c5
    move-object/from16 v1, v33

    #@1c7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1ca
    move-result v10

    #@1cb
    .line 464
    .local v10, "endIndex":I
    if-lez v10, :cond_3

    #@1cd
    .line 465
    const/16 v33, 0x0

    #@1cf
    move-object/from16 v0, v23

    #@1d1
    move/from16 v1, v33

    #@1d3
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d6
    move-result-object v23

    #@1d7
    .line 468
    :cond_3
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    #@1da
    move-result-object v33

    #@1db
    move-object/from16 v0, v30

    #@1dd
    move-object/from16 v1, v33

    #@1df
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    #@1e2
    .line 476
    .end local v10    # "endIndex":I
    .end local v23    # "str":Ljava/lang/String;
    :cond_4
    :try_start_7
    move-object/from16 v0, v30

    #@1e4
    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    #@1e7
    goto/16 :goto_0

    #@1e9
    .line 477
    :catch_a
    move-exception v8

    #@1ea
    .line 478
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@1ed
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@1f0
    goto/16 :goto_0

    #@1f2
    .line 469
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v10    # "endIndex":I
    .restart local v23    # "str":Ljava/lang/String;
    :catch_b
    move-exception v8

    #@1f3
    .line 470
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@1f6
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@1f9
    .line 471
    const/16 v33, 0x0

    #@1fb
    return-object v33

    #@1fc
    .line 479
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "endIndex":I
    .end local v23    # "str":Ljava/lang/String;
    :catch_c
    move-exception v9

    #@1fd
    .line 480
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@1ff
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@202
    move-object/from16 v0, v33

    #@204
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@207
    move-result-object v33

    #@208
    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    #@20b
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v33

    #@20f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v33

    #@213
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@216
    .line 481
    const/16 v33, 0x0

    #@218
    return-object v33

    #@219
    .line 494
    .end local v4    # "address":[B
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    #@21c
    .line 497
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@21f
    move-result v26

    #@220
    .line 502
    .local v26, "token":I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    #@223
    move-result-wide v24

    #@224
    .line 507
    .local v24, "timeValue":J
    const/16 v33, 0x81

    #@226
    move/from16 v0, v33

    #@228
    move/from16 v1, v26

    #@22a
    if-ne v0, v1, :cond_5

    #@22c
    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@22f
    move-result-wide v34

    #@230
    const-wide/16 v36, 0x3e8

    #@232
    div-long v34, v34, v36

    #@234
    add-long v24, v24, v34

    #@236
    .line 518
    :cond_5
    :try_start_9
    move-wide/from16 v0, v24

    #@238
    invoke-virtual {v14, v0, v1, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    #@23b
    goto/16 :goto_0

    #@23d
    .line 519
    :catch_d
    move-exception v9

    #@23e
    .line 520
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@240
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@243
    move-object/from16 v0, v33

    #@245
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@248
    move-result-object v33

    #@249
    const-string/jumbo v34, "is not Long-Integer header field!"

    #@24c
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v33

    #@250
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@253
    move-result-object v33

    #@254
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@257
    .line 521
    const/16 v33, 0x0

    #@259
    return-object v33

    #@25a
    .line 503
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "timeValue":J
    :catch_e
    move-exception v9

    #@25b
    .line 504
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@25d
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@260
    move-object/from16 v0, v33

    #@262
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@265
    move-result-object v33

    #@266
    const-string/jumbo v34, "is not Long-Integer header field!"

    #@269
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v33

    #@26d
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@270
    move-result-object v33

    #@271
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@274
    .line 505
    const/16 v33, 0x0

    #@276
    return-object v33

    #@277
    .line 531
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "token":I
    :pswitch_a
    const/4 v11, 0x0

    #@278
    .line 532
    .local v11, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    #@27b
    .line 535
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@27e
    move-result v12

    #@27f
    .line 538
    .local v12, "fromToken":I
    const/16 v33, 0x80

    #@281
    move/from16 v0, v33

    #@283
    if-ne v0, v12, :cond_8

    #@285
    .line 540
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@288
    move-result-object v11

    #@289
    .line 541
    .local v11, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v11, :cond_7

    #@28b
    .line 542
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    #@28e
    move-result-object v4

    #@28f
    .line 543
    .restart local v4    # "address":[B
    if-eqz v4, :cond_7

    #@291
    .line 544
    new-instance v23, Ljava/lang/String;

    #@293
    move-object/from16 v0, v23

    #@295
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    #@298
    .line 545
    .restart local v23    # "str":Ljava/lang/String;
    const-string/jumbo v33, "/"

    #@29b
    move-object/from16 v0, v23

    #@29d
    move-object/from16 v1, v33

    #@29f
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2a2
    move-result v10

    #@2a3
    .line 546
    .restart local v10    # "endIndex":I
    if-lez v10, :cond_6

    #@2a5
    .line 547
    const/16 v33, 0x0

    #@2a7
    move-object/from16 v0, v23

    #@2a9
    move/from16 v1, v33

    #@2ab
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2ae
    move-result-object v23

    #@2af
    .line 550
    :cond_6
    :try_start_a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    #@2b2
    move-result-object v33

    #@2b3
    move-object/from16 v0, v33

    #@2b5
    invoke-virtual {v11, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    #@2b8
    .line 572
    .end local v4    # "address":[B
    .end local v10    # "endIndex":I
    .end local v23    # "str":Ljava/lang/String;
    :cond_7
    :goto_1
    const/16 v33, 0x89

    #@2ba
    :try_start_b
    move/from16 v0, v33

    #@2bc
    invoke-virtual {v14, v11, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    #@2bf
    goto/16 :goto_0

    #@2c1
    .line 573
    :catch_f
    move-exception v8

    #@2c2
    .line 574
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@2c5
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@2c8
    goto/16 :goto_0

    #@2ca
    .line 551
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "address":[B
    .restart local v10    # "endIndex":I
    .restart local v23    # "str":Ljava/lang/String;
    :catch_10
    move-exception v8

    #@2cb
    .line 552
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@2ce
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@2d1
    .line 553
    const/16 v33, 0x0

    #@2d3
    return-object v33

    #@2d4
    .line 559
    .end local v4    # "address":[B
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "endIndex":I
    .end local v23    # "str":Ljava/lang/String;
    .local v11, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_8
    :try_start_c
    new-instance v11, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@2d6
    .line 560
    .end local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string/jumbo v33, "insert-address-token"

    #@2d9
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    #@2dc
    move-result-object v33

    #@2dd
    .line 559
    move-object/from16 v0, v33

    #@2df
    invoke-direct {v11, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    #@2e2
    .local v11, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    #@2e3
    .line 561
    .end local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_11
    move-exception v8

    #@2e4
    .line 562
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@2e6
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@2e9
    move-object/from16 v0, v33

    #@2eb
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v33

    #@2ef
    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    #@2f2
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v33

    #@2f6
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f9
    move-result-object v33

    #@2fa
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@2fd
    .line 563
    const/16 v33, 0x0

    #@2ff
    return-object v33

    #@300
    .line 575
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v9

    #@301
    .line 576
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@303
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@306
    move-object/from16 v0, v33

    #@308
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30b
    move-result-object v33

    #@30c
    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    #@30f
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@312
    move-result-object v33

    #@313
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@316
    move-result-object v33

    #@317
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@31a
    .line 577
    const/16 v33, 0x0

    #@31c
    return-object v33

    #@31d
    .line 584
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v12    # "fromToken":I
    :pswitch_b
    const/16 v33, 0x1

    #@31f
    move-object/from16 v0, p1

    #@321
    move/from16 v1, v33

    #@323
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@326
    .line 585
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@329
    move-result v17

    #@32a
    .line 591
    .local v17, "messageClass":I
    const/16 v33, 0x80

    #@32c
    move/from16 v0, v17

    #@32e
    move/from16 v1, v33

    #@330
    if-lt v0, v1, :cond_c

    #@332
    .line 594
    const/16 v33, 0x80

    #@334
    move/from16 v0, v33

    #@336
    move/from16 v1, v17

    #@338
    if-ne v0, v1, :cond_9

    #@33a
    .line 596
    :try_start_d
    const-string/jumbo v33, "personal"

    #@33d
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    #@340
    move-result-object v33

    #@341
    .line 597
    const/16 v34, 0x8a

    #@343
    .line 595
    move-object/from16 v0, v33

    #@345
    move/from16 v1, v34

    #@347
    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    #@34a
    goto/16 :goto_0

    #@34c
    .line 611
    :catch_13
    move-exception v8

    #@34d
    .line 612
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@350
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@353
    goto/16 :goto_0

    #@355
    .line 598
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_9
    const/16 v33, 0x81

    #@357
    move/from16 v0, v33

    #@359
    move/from16 v1, v17

    #@35b
    if-ne v0, v1, :cond_a

    #@35d
    .line 600
    :try_start_e
    const-string/jumbo v33, "advertisement"

    #@360
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    #@363
    move-result-object v33

    #@364
    .line 601
    const/16 v34, 0x8a

    #@366
    .line 599
    move-object/from16 v0, v33

    #@368
    move/from16 v1, v34

    #@36a
    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    #@36d
    goto/16 :goto_0

    #@36f
    .line 613
    :catch_14
    move-exception v9

    #@370
    .line 614
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@372
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@375
    move-object/from16 v0, v33

    #@377
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37a
    move-result-object v33

    #@37b
    const-string/jumbo v34, "is not Text-String header field!"

    #@37e
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@381
    move-result-object v33

    #@382
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@385
    move-result-object v33

    #@386
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@389
    .line 615
    const/16 v33, 0x0

    #@38b
    return-object v33

    #@38c
    .line 602
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_a
    const/16 v33, 0x82

    #@38e
    move/from16 v0, v33

    #@390
    move/from16 v1, v17

    #@392
    if-ne v0, v1, :cond_b

    #@394
    .line 604
    :try_start_f
    const-string/jumbo v33, "informational"

    #@397
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    #@39a
    move-result-object v33

    #@39b
    .line 605
    const/16 v34, 0x8a

    #@39d
    .line 603
    move-object/from16 v0, v33

    #@39f
    move/from16 v1, v34

    #@3a1
    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@3a4
    goto/16 :goto_0

    #@3a6
    .line 606
    :cond_b
    const/16 v33, 0x83

    #@3a8
    move/from16 v0, v33

    #@3aa
    move/from16 v1, v17

    #@3ac
    if-ne v0, v1, :cond_1

    #@3ae
    .line 608
    const-string/jumbo v33, "auto"

    #@3b1
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    #@3b4
    move-result-object v33

    #@3b5
    .line 609
    const/16 v34, 0x8a

    #@3b7
    .line 607
    move-object/from16 v0, v33

    #@3b9
    move/from16 v1, v34

    #@3bb
    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    #@3be
    goto/16 :goto_0

    #@3c0
    .line 619
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    #@3c3
    .line 620
    const/16 v33, 0x0

    #@3c5
    move-object/from16 v0, p1

    #@3c7
    move/from16 v1, v33

    #@3c9
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@3cc
    move-result-object v18

    #@3cd
    .line 621
    .local v18, "messageClassString":[B
    if-eqz v18, :cond_1

    #@3cf
    .line 623
    const/16 v33, 0x8a

    #@3d1
    :try_start_10
    move-object/from16 v0, v18

    #@3d3
    move/from16 v1, v33

    #@3d5
    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    #@3d8
    goto/16 :goto_0

    #@3da
    .line 624
    :catch_15
    move-exception v8

    #@3db
    .line 625
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@3de
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@3e1
    goto/16 :goto_0

    #@3e3
    .line 626
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v9

    #@3e4
    .line 627
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@3e6
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@3e9
    move-object/from16 v0, v33

    #@3eb
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ee
    move-result-object v33

    #@3ef
    const-string/jumbo v34, "is not Text-String header field!"

    #@3f2
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f5
    move-result-object v33

    #@3f6
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f9
    move-result-object v33

    #@3fa
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@3fd
    .line 628
    const/16 v33, 0x0

    #@3ff
    return-object v33

    #@400
    .line 636
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "messageClass":I
    .end local v18    # "messageClassString":[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    #@403
    move-result v32

    #@404
    .line 643
    .local v32, "version":I
    const/16 v33, 0x8d

    #@406
    :try_start_11
    move/from16 v0, v32

    #@408
    move/from16 v1, v33

    #@40a
    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    #@40d
    goto/16 :goto_0

    #@40f
    .line 644
    :catch_17
    move-exception v7

    #@410
    .line 645
    .restart local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@412
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@415
    const-string/jumbo v34, "Set invalid Octet value: "

    #@418
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41b
    move-result-object v33

    #@41c
    move-object/from16 v0, v33

    #@41e
    move/from16 v1, v32

    #@420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@423
    move-result-object v33

    #@424
    .line 646
    const-string/jumbo v34, " into the header filed: "

    #@427
    .line 645
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42a
    move-result-object v33

    #@42b
    move-object/from16 v0, v33

    #@42d
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@430
    move-result-object v33

    #@431
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@434
    move-result-object v33

    #@435
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@438
    .line 647
    const/16 v33, 0x0

    #@43a
    return-object v33

    #@43b
    .line 648
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_18
    move-exception v9

    #@43c
    .line 649
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@43e
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@441
    move-object/from16 v0, v33

    #@443
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@446
    move-result-object v33

    #@447
    const-string/jumbo v34, "is not Octet header field!"

    #@44a
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44d
    move-result-object v33

    #@44e
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@451
    move-result-object v33

    #@452
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@455
    .line 650
    const/16 v33, 0x0

    #@457
    return-object v33

    #@458
    .line 659
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v32    # "version":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    #@45b
    .line 663
    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    #@45e
    .line 671
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@461
    move-result-object v22

    #@462
    .line 672
    .local v22, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v22, :cond_1

    #@464
    .line 679
    const/16 v33, 0xa0

    #@466
    .line 678
    :try_start_13
    move-object/from16 v0, v22

    #@468
    move/from16 v1, v33

    #@46a
    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    #@46d
    goto/16 :goto_0

    #@46f
    .line 680
    :catch_19
    move-exception v8

    #@470
    .line 681
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@473
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@476
    goto/16 :goto_0

    #@478
    .line 664
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v22    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1a
    move-exception v9

    #@479
    .line 665
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@47b
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@47e
    move-object/from16 v0, v33

    #@480
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@483
    move-result-object v33

    #@484
    const-string/jumbo v34, " is not Integer-Value"

    #@487
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48a
    move-result-object v33

    #@48b
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48e
    move-result-object v33

    #@48f
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@492
    .line 666
    const/16 v33, 0x0

    #@494
    return-object v33

    #@495
    .line 682
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v22    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v9

    #@496
    .line 683
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@498
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@49b
    move-object/from16 v0, v33

    #@49d
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a0
    move-result-object v33

    #@4a1
    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    #@4a4
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a7
    move-result-object v33

    #@4a8
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ab
    move-result-object v33

    #@4ac
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@4af
    .line 684
    const/16 v33, 0x0

    #@4b1
    return-object v33

    #@4b2
    .line 694
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    #@4b5
    .line 698
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    #@4b8
    .line 706
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    #@4bb
    move-result-wide v20

    #@4bc
    .line 712
    .local v20, "perviouslySentDate":J
    const/16 v33, 0xa1

    #@4be
    .line 711
    move-wide/from16 v0, v20

    #@4c0
    move/from16 v2, v33

    #@4c2
    invoke-virtual {v14, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    #@4c5
    goto/16 :goto_0

    #@4c7
    .line 713
    .end local v20    # "perviouslySentDate":J
    :catch_1c
    move-exception v9

    #@4c8
    .line 714
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@4ca
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@4cd
    move-object/from16 v0, v33

    #@4cf
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d2
    move-result-object v33

    #@4d3
    const-string/jumbo v34, "is not Long-Integer header field!"

    #@4d6
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d9
    move-result-object v33

    #@4da
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4dd
    move-result-object v33

    #@4de
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@4e1
    .line 715
    const/16 v33, 0x0

    #@4e3
    return-object v33

    #@4e4
    .line 699
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v9

    #@4e5
    .line 700
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@4e7
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@4ea
    move-object/from16 v0, v33

    #@4ec
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4ef
    move-result-object v33

    #@4f0
    const-string/jumbo v34, " is not Integer-Value"

    #@4f3
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f6
    move-result-object v33

    #@4f7
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4fa
    move-result-object v33

    #@4fb
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@4fe
    .line 701
    const/16 v33, 0x0

    #@500
    return-object v33

    #@501
    .line 732
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    #@504
    .line 735
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@507
    .line 738
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@50a
    goto/16 :goto_0

    #@50c
    .line 754
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    #@50f
    .line 757
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    #@512
    .line 761
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    #@515
    goto/16 :goto_0

    #@517
    .line 762
    :catch_1e
    move-exception v9

    #@518
    .line 763
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@51a
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@51d
    move-object/from16 v0, v33

    #@51f
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@522
    move-result-object v33

    #@523
    const-string/jumbo v34, " is not Integer-Value"

    #@526
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@529
    move-result-object v33

    #@52a
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52d
    move-result-object v33

    #@52e
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@531
    .line 764
    const/16 v33, 0x0

    #@533
    return-object v33

    #@534
    .line 776
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v33, 0x0

    #@536
    move-object/from16 v0, p1

    #@538
    move-object/from16 v1, v33

    #@53a
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    #@53d
    goto/16 :goto_0

    #@53f
    .line 785
    :pswitch_12
    new-instance v16, Ljava/util/HashMap;

    #@541
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    #@544
    .line 787
    .local v16, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    #@546
    move-object/from16 v1, v16

    #@548
    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    #@54b
    move-result-object v6

    #@54c
    .line 789
    .local v6, "contentType":[B
    if-eqz v6, :cond_d

    #@54e
    .line 795
    const/16 v33, 0x84

    #@550
    :try_start_17
    move/from16 v0, v33

    #@552
    invoke-virtual {v14, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1f

    #@555
    .line 805
    :cond_d
    :goto_2
    const/16 v33, 0x99

    #@557
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55a
    move-result-object v33

    #@55b
    move-object/from16 v0, v16

    #@55d
    move-object/from16 v1, v33

    #@55f
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@562
    move-result-object v33

    #@563
    check-cast v33, [B

    #@565
    sput-object v33, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    #@567
    .line 808
    const/16 v33, 0x83

    #@569
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56c
    move-result-object v33

    #@56d
    move-object/from16 v0, v16

    #@56f
    move-object/from16 v1, v33

    #@571
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@574
    move-result-object v33

    #@575
    check-cast v33, [B

    #@577
    sput-object v33, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    #@579
    .line 810
    const/4 v15, 0x0

    #@57a
    .line 811
    goto/16 :goto_0

    #@57c
    .line 798
    :catch_1f
    move-exception v9

    #@57d
    .line 799
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    #@57f
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    #@582
    move-object/from16 v0, v33

    #@584
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@587
    move-result-object v33

    #@588
    const-string/jumbo v34, "is not Text-String header field!"

    #@58b
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58e
    move-result-object v33

    #@58f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@592
    move-result-object v33

    #@593
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@596
    .line 800
    const/16 v33, 0x0

    #@598
    return-object v33

    #@599
    .line 796
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catch_20
    move-exception v8

    #@59a
    .line 797
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    #@59d
    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@5a0
    goto :goto_2

    #@5a1
    .line 826
    .end local v6    # "contentType":[B
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v13    # "headerField":I
    .end local v16    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_e
    return-object v14

    #@5a2
    .line 256
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    #@624
    .line 263
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 17
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    #@0
    .prologue
    .line 1596
    sget-boolean v15, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@2
    if-nez v15, :cond_1

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v15, 0x1

    #@7
    :goto_0
    if-nez v15, :cond_1

    #@9
    new-instance v15, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v15

    #@f
    :cond_0
    const/4 v15, 0x0

    #@10
    goto :goto_0

    #@11
    .line 1597
    :cond_1
    sget-boolean v15, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@13
    if-nez v15, :cond_3

    #@15
    if-eqz p2, :cond_2

    #@17
    const/4 v15, 0x1

    #@18
    :goto_1
    if-nez v15, :cond_3

    #@1a
    new-instance v15, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v15

    #@20
    :cond_2
    const/4 v15, 0x0

    #@21
    goto :goto_1

    #@22
    .line 1598
    :cond_3
    sget-boolean v15, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@24
    if-nez v15, :cond_5

    #@26
    if-lez p3, :cond_4

    #@28
    const/4 v15, 0x1

    #@29
    :goto_2
    if-nez v15, :cond_5

    #@2b
    new-instance v15, Ljava/lang/AssertionError;

    #@2d
    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    #@30
    throw v15

    #@31
    :cond_4
    const/4 v15, 0x0

    #@32
    goto :goto_2

    #@33
    .line 1616
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@36
    move-result v7

    #@37
    .line 1617
    .local v7, "startPos":I
    const/4 v10, 0x0

    #@38
    .line 1618
    .local v10, "tempPos":I
    move/from16 v5, p3

    #@3a
    .line 1619
    .local v5, "lastLen":I
    :cond_6
    :goto_3
    if-lez v5, :cond_15

    #@3c
    .line 1620
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    #@3f
    move-result v3

    #@40
    .line 1621
    .local v3, "header":I
    sget-boolean v15, Lcom/google/android/mms/pdu/PduParser;->-assertionsDisabled:Z

    #@42
    if-nez v15, :cond_8

    #@44
    const/4 v15, -0x1

    #@45
    if-eq v15, v3, :cond_7

    #@47
    const/4 v15, 0x1

    #@48
    :goto_4
    if-nez v15, :cond_8

    #@4a
    new-instance v15, Ljava/lang/AssertionError;

    #@4c
    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    #@4f
    throw v15

    #@50
    :cond_7
    const/4 v15, 0x0

    #@51
    goto :goto_4

    #@52
    .line 1622
    :cond_8
    add-int/lit8 v5, v5, -0x1

    #@54
    .line 1624
    const/16 v15, 0x7f

    #@56
    if-le v3, v15, :cond_11

    #@58
    .line 1626
    sparse-switch v3, :sswitch_data_0

    #@5b
    .line 1714
    move-object/from16 v0, p1

    #@5d
    invoke-static {v0, v5}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    #@60
    move-result v15

    #@61
    const/16 v16, -0x1

    #@63
    move/from16 v0, v16

    #@65
    if-ne v0, v15, :cond_10

    #@67
    .line 1715
    const-string/jumbo v15, "PduParser"

    #@6a
    const-string/jumbo v16, "Corrupt Part headers"

    #@6d
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 1716
    const/4 v15, 0x0

    #@71
    return v15

    #@72
    .line 1632
    :sswitch_0
    const/4 v15, 0x0

    #@73
    move-object/from16 v0, p1

    #@75
    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@78
    move-result-object v2

    #@79
    .line 1633
    .local v2, "contentLocation":[B
    if-eqz v2, :cond_9

    #@7b
    .line 1634
    move-object/from16 v0, p2

    #@7d
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    #@80
    .line 1637
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@83
    move-result v10

    #@84
    .line 1638
    sub-int v15, v7, v10

    #@86
    sub-int v5, p3, v15

    #@88
    .line 1639
    goto :goto_3

    #@89
    .line 1645
    .end local v2    # "contentLocation":[B
    :sswitch_1
    const/4 v15, 0x1

    #@8a
    move-object/from16 v0, p1

    #@8c
    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@8f
    move-result-object v1

    #@90
    .line 1646
    .local v1, "contentId":[B
    if-eqz v1, :cond_a

    #@92
    .line 1647
    move-object/from16 v0, p2

    #@94
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    #@97
    .line 1650
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@9a
    move-result v10

    #@9b
    .line 1651
    sub-int v15, v7, v10

    #@9d
    sub-int v5, p3, v15

    #@9f
    .line 1652
    goto :goto_3

    #@a0
    .line 1668
    .end local v1    # "contentId":[B
    :sswitch_2
    move-object/from16 v0, p0

    #@a2
    iget-boolean v15, v0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    #@a4
    if-eqz v15, :cond_6

    #@a6
    .line 1669
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    #@a9
    move-result v6

    #@aa
    .line 1670
    .local v6, "len":I
    const/4 v15, 0x1

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->mark(I)V

    #@b0
    .line 1671
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@b3
    move-result v13

    #@b4
    .line 1672
    .local v13, "thisStartPos":I
    const/4 v12, 0x0

    #@b5
    .line 1673
    .local v12, "thisEndPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    #@b8
    move-result v14

    #@b9
    .line 1675
    .local v14, "value":I
    const/16 v15, 0x80

    #@bb
    if-ne v14, v15, :cond_d

    #@bd
    .line 1676
    sget-object v15, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    #@bf
    move-object/from16 v0, p2

    #@c1
    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    #@c4
    .line 1689
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@c7
    move-result v12

    #@c8
    .line 1690
    sub-int v15, v13, v12

    #@ca
    if-ge v15, v6, :cond_c

    #@cc
    .line 1691
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    #@cf
    move-result v14

    #@d0
    .line 1692
    const/16 v15, 0x98

    #@d2
    if-ne v14, v15, :cond_b

    #@d4
    .line 1694
    const/4 v15, 0x0

    #@d5
    .line 1693
    move-object/from16 v0, p1

    #@d7
    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@da
    move-result-object v15

    #@db
    move-object/from16 v0, p2

    #@dd
    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    #@e0
    .line 1698
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@e3
    move-result v12

    #@e4
    .line 1699
    sub-int v15, v13, v12

    #@e6
    if-ge v15, v6, :cond_c

    #@e8
    .line 1700
    sub-int v15, v13, v12

    #@ea
    sub-int v4, v6, v15

    #@ec
    .line 1701
    .local v4, "last":I
    new-array v8, v4, [B

    #@ee
    .line 1702
    .local v8, "temp":[B
    const/4 v15, 0x0

    #@ef
    move-object/from16 v0, p1

    #@f1
    invoke-virtual {v0, v8, v15, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    #@f4
    .line 1706
    .end local v4    # "last":I
    .end local v8    # "temp":[B
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@f7
    move-result v10

    #@f8
    .line 1707
    sub-int v15, v7, v10

    #@fa
    sub-int v5, p3, v15

    #@fc
    goto/16 :goto_3

    #@fe
    .line 1677
    :cond_d
    const/16 v15, 0x81

    #@100
    if-ne v14, v15, :cond_e

    #@102
    .line 1678
    sget-object v15, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    #@104
    move-object/from16 v0, p2

    #@106
    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    #@109
    goto :goto_5

    #@10a
    .line 1679
    :cond_e
    const/16 v15, 0x82

    #@10c
    if-ne v14, v15, :cond_f

    #@10e
    .line 1680
    sget-object v15, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    #@110
    move-object/from16 v0, p2

    #@112
    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    #@115
    goto :goto_5

    #@116
    .line 1682
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    #@119
    .line 1685
    const/4 v15, 0x0

    #@11a
    .line 1684
    move-object/from16 v0, p1

    #@11c
    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@11f
    move-result-object v15

    #@120
    move-object/from16 v0, p2

    #@122
    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    #@125
    goto :goto_5

    #@126
    .line 1718
    .end local v6    # "len":I
    .end local v12    # "thisEndPos":I
    .end local v13    # "thisStartPos":I
    .end local v14    # "value":I
    :cond_10
    const/4 v5, 0x0

    #@127
    .line 1719
    goto/16 :goto_3

    #@129
    .line 1721
    :cond_11
    const/16 v15, 0x20

    #@12b
    if-lt v3, v15, :cond_13

    #@12d
    const/16 v15, 0x7f

    #@12f
    if-gt v3, v15, :cond_13

    #@131
    .line 1723
    const/4 v15, 0x0

    #@132
    move-object/from16 v0, p1

    #@134
    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@137
    move-result-object v9

    #@138
    .line 1724
    .local v9, "tempHeader":[B
    const/4 v15, 0x0

    #@139
    move-object/from16 v0, p1

    #@13b
    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    #@13e
    move-result-object v11

    #@13f
    .line 1728
    .local v11, "tempValue":[B
    const-string/jumbo v15, "Content-Transfer-Encoding"

    #@142
    new-instance v16, Ljava/lang/String;

    #@144
    move-object/from16 v0, v16

    #@146
    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    #@149
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14c
    move-result v15

    #@14d
    .line 1727
    if-eqz v15, :cond_12

    #@14f
    .line 1729
    move-object/from16 v0, p2

    #@151
    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    #@154
    .line 1732
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@157
    move-result v10

    #@158
    .line 1733
    sub-int v15, v7, v10

    #@15a
    sub-int v5, p3, v15

    #@15c
    .line 1721
    goto/16 :goto_3

    #@15e
    .line 1739
    .end local v9    # "tempHeader":[B
    .end local v11    # "tempValue":[B
    :cond_13
    move-object/from16 v0, p1

    #@160
    invoke-static {v0, v5}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    #@163
    move-result v15

    #@164
    const/16 v16, -0x1

    #@166
    move/from16 v0, v16

    #@168
    if-ne v0, v15, :cond_14

    #@16a
    .line 1740
    const-string/jumbo v15, "PduParser"

    #@16d
    const-string/jumbo v16, "Corrupt Part headers"

    #@170
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@173
    .line 1741
    const/4 v15, 0x0

    #@174
    return v15

    #@175
    .line 1743
    :cond_14
    const/4 v5, 0x0

    #@176
    goto/16 :goto_3

    #@178
    .line 1747
    .end local v3    # "header":I
    :cond_15
    if-eqz v5, :cond_16

    #@17a
    .line 1748
    const-string/jumbo v15, "PduParser"

    #@17d
    const-string/jumbo v16, "Corrupt Part headers"

    #@180
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@183
    .line 1749
    const/4 v15, 0x0

    #@184
    return v15

    #@185
    .line 1752
    :cond_16
    const/4 v15, 0x1

    #@186
    return v15

    #@187
    .line 1626
    nop

    #@188
    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 24
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    #@0
    .prologue
    .line 836
    if-nez p1, :cond_0

    #@2
    .line 837
    const/16 v22, 0x0

    #@4
    return-object v22

    #@5
    .line 840
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    #@8
    move-result v8

    #@9
    .line 841
    .local v8, "count":I
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    #@b
    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    #@e
    .line 843
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    const/4 v13, 0x0

    #@f
    .local v13, "i":I
    :goto_0
    if-ge v13, v8, :cond_e

    #@11
    .line 844
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    #@14
    move-result v12

    #@15
    .line 845
    .local v12, "headerLength":I
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    #@18
    move-result v9

    #@19
    .line 846
    .local v9, "dataLength":I
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    #@1b
    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    #@1e
    .line 847
    .local v16, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@21
    move-result v21

    #@22
    .line 848
    .local v21, "startPos":I
    if-gtz v21, :cond_1

    #@24
    .line 850
    const/16 v22, 0x0

    #@26
    return-object v22

    #@27
    .line 854
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    #@29
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    #@2c
    .line 855
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    #@2e
    invoke-static {v0, v14}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    #@31
    move-result-object v7

    #@32
    .line 856
    .local v7, "contentType":[B
    if-eqz v7, :cond_4

    #@34
    .line 857
    move-object/from16 v0, v16

    #@36
    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    #@39
    .line 863
    :goto_1
    const/16 v22, 0x97

    #@3b
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v22

    #@3f
    move-object/from16 v0, v22

    #@41
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v15

    #@45
    check-cast v15, [B

    #@47
    .line 864
    .local v15, "name":[B
    if-eqz v15, :cond_2

    #@49
    .line 865
    move-object/from16 v0, v16

    #@4b
    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    #@4e
    .line 869
    :cond_2
    const/16 v22, 0x81

    #@50
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v22

    #@54
    move-object/from16 v0, v22

    #@56
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Ljava/lang/Integer;

    #@5c
    .line 870
    .local v5, "charset":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    #@5e
    .line 871
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@61
    move-result v22

    #@62
    move-object/from16 v0, v16

    #@64
    move/from16 v1, v22

    #@66
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    #@69
    .line 875
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    #@6c
    move-result v11

    #@6d
    .line 876
    .local v11, "endPos":I
    sub-int v22, v21, v11

    #@6f
    sub-int v20, v12, v22

    #@71
    .line 877
    .local v20, "partHeaderLen":I
    if-lez v20, :cond_5

    #@73
    .line 878
    move-object/from16 v0, p0

    #@75
    move-object/from16 v1, p1

    #@77
    move-object/from16 v2, v16

    #@79
    move/from16 v3, v20

    #@7b
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    #@7e
    move-result v22

    #@7f
    if-nez v22, :cond_6

    #@81
    .line 880
    const/16 v22, 0x0

    #@83
    return-object v22

    #@84
    .line 859
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v11    # "endPos":I
    .end local v15    # "name":[B
    .end local v20    # "partHeaderLen":I
    :cond_4
    sget-object v22, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    #@86
    const/16 v23, 0x0

    #@88
    aget-object v22, v22, v23

    #@8a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    #@8d
    move-result-object v22

    #@8e
    move-object/from16 v0, v16

    #@90
    move-object/from16 v1, v22

    #@92
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    #@95
    goto :goto_1

    #@96
    .line 882
    .restart local v5    # "charset":Ljava/lang/Integer;
    .restart local v11    # "endPos":I
    .restart local v15    # "name":[B
    .restart local v20    # "partHeaderLen":I
    :cond_5
    if-gez v20, :cond_6

    #@98
    .line 884
    const/16 v22, 0x0

    #@9a
    return-object v22

    #@9b
    .line 890
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    #@9e
    move-result-object v22

    #@9f
    if-nez v22, :cond_7

    #@a1
    .line 891
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    #@a4
    move-result-object v22

    #@a5
    if-nez v22, :cond_7

    #@a7
    .line 892
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    #@aa
    move-result-object v22

    #@ab
    if-nez v22, :cond_7

    #@ad
    .line 893
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    #@b0
    move-result-object v22

    #@b1
    if-nez v22, :cond_7

    #@b3
    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b6
    move-result-wide v22

    #@b7
    .line 894
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    #@ba
    move-result-object v22

    #@bb
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    #@be
    move-result-object v22

    #@bf
    move-object/from16 v0, v16

    #@c1
    move-object/from16 v1, v22

    #@c3
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    #@c6
    .line 899
    :cond_7
    if-lez v9, :cond_8

    #@c8
    .line 900
    new-array v0, v9, [B

    #@ca
    move-object/from16 v18, v0

    #@cc
    .line 901
    .local v18, "partData":[B
    new-instance v17, Ljava/lang/String;

    #@ce
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    #@d1
    move-result-object v22

    #@d2
    move-object/from16 v0, v17

    #@d4
    move-object/from16 v1, v22

    #@d6
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@d9
    .line 902
    .local v17, "partContentType":Ljava/lang/String;
    const/16 v22, 0x0

    #@db
    move-object/from16 v0, p1

    #@dd
    move-object/from16 v1, v18

    #@df
    move/from16 v2, v22

    #@e1
    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    #@e4
    .line 903
    const-string/jumbo v22, "application/vnd.wap.multipart.alternative"

    #@e7
    move-object/from16 v0, v17

    #@e9
    move-object/from16 v1, v22

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ee
    move-result v22

    #@ef
    if-eqz v22, :cond_9

    #@f1
    .line 905
    new-instance v22, Ljava/io/ByteArrayInputStream;

    #@f3
    move-object/from16 v0, v22

    #@f5
    move-object/from16 v1, v18

    #@f7
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@fa
    move-object/from16 v0, p0

    #@fc
    move-object/from16 v1, v22

    #@fe
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    #@101
    move-result-object v6

    #@102
    .line 907
    .local v6, "childBody":Lcom/google/android/mms/pdu/PduBody;
    const/16 v22, 0x0

    #@104
    move/from16 v0, v22

    #@106
    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    #@109
    move-result-object v16

    #@10a
    .line 932
    .end local v6    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    :cond_8
    :goto_2
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    #@10d
    move-result v22

    #@10e
    if-nez v22, :cond_d

    #@110
    .line 934
    const/16 v22, 0x0

    #@112
    move/from16 v0, v22

    #@114
    move-object/from16 v1, v16

    #@116
    invoke-virtual {v4, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    #@119
    .line 843
    :goto_3
    add-int/lit8 v13, v13, 0x1

    #@11b
    goto/16 :goto_0

    #@11d
    .line 910
    .restart local v17    # "partContentType":Ljava/lang/String;
    .restart local v18    # "partData":[B
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    #@120
    move-result-object v19

    #@121
    .line 911
    .local v19, "partDataEncoding":[B
    if-eqz v19, :cond_a

    #@123
    .line 912
    new-instance v10, Ljava/lang/String;

    #@125
    move-object/from16 v0, v19

    #@127
    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    #@12a
    .line 913
    .local v10, "encoding":Ljava/lang/String;
    const-string/jumbo v22, "base64"

    #@12d
    move-object/from16 v0, v22

    #@12f
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@132
    move-result v22

    #@133
    if-eqz v22, :cond_b

    #@135
    .line 915
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    #@138
    move-result-object v18

    #@139
    .line 923
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_a
    :goto_4
    if-nez v18, :cond_c

    #@13b
    .line 924
    const-string/jumbo v22, "Decode part data error!"

    #@13e
    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    #@141
    .line 925
    const/16 v22, 0x0

    #@143
    return-object v22

    #@144
    .line 916
    .restart local v10    # "encoding":Ljava/lang/String;
    :cond_b
    const-string/jumbo v22, "quoted-printable"

    #@147
    move-object/from16 v0, v22

    #@149
    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14c
    move-result v22

    #@14d
    if-eqz v22, :cond_a

    #@14f
    .line 918
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    #@152
    move-result-object v18

    #@153
    goto :goto_4

    #@154
    .line 927
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v16

    #@156
    move-object/from16 v1, v18

    #@158
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    #@15b
    goto :goto_2

    #@15c
    .line 937
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    .end local v19    # "partDataEncoding":[B
    :cond_d
    move-object/from16 v0, v16

    #@15e
    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    #@161
    goto :goto_3

    #@162
    .line 941
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v7    # "contentType":[B
    .end local v9    # "dataLength":I
    .end local v11    # "endPos":I
    .end local v12    # "headerLength":I
    .end local v14    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v15    # "name":[B
    .end local v16    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v20    # "partHeaderLen":I
    .end local v21    # "startPos":I
    :cond_e
    return-object v4
.end method
