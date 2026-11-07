.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist END_STRING_FLAG:I = 0x0

.field private static final blacklist LENGTH_QUOTE:I = 0x1f

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final blacklist LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final blacklist QUOTE:I = 0x7f

.field private static final blacklist QUOTED_STRING_FLAG:I = 0x22

.field private static final blacklist SHORT_INTEGER_MAX:I = 0x7f

.field private static final blacklist SHORT_LENGTH_MAX:I = 0x1e

.field private static final blacklist TEXT_MAX:I = 0x7f

.field private static final blacklist TEXT_MIN:I = 0x20

.field private static final blacklist THE_FIRST_PART:I = 0x0

.field private static final blacklist THE_LAST_PART:I = 0x1

.field private static final blacklist TYPE_QUOTED_STRING:I = 0x1

.field private static final blacklist TYPE_TEXT_STRING:I = 0x0

.field private static final blacklist TYPE_TOKEN_STRING:I = 0x2

.field private static blacklist mStartParam:[B

.field private static blacklist mTypeParam:[B


# instance fields
.field private blacklist mBody:Lcom/google/android/mms/pdu/PduBody;

.field private blacklist mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final blacklist mParseContentDisposition:Z

.field private blacklist mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    nop

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 80
    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void
.end method

.method public constructor greylist <init>([BZ)V
    .registers 4
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 65
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 70
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 102
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 103
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 104
    return-void
.end method

.method protected static blacklist checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 14
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 1818
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1819
    return v0

    .line 1823
    :cond_4
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1826
    .local v1, "messageType":I
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    .line 1827
    .local v2, "mmsVersion":I
    if-nez v2, :cond_13

    .line 1829
    return v0

    .line 1833
    :cond_13
    const/16 v3, 0x9b

    const/16 v4, 0x95

    const/16 v5, 0x84

    const/16 v6, 0x97

    const/16 v7, 0x8b

    const/16 v8, 0x89

    const/16 v9, 0x85

    const-wide/16 v10, -0x1

    const/16 v12, 0x98

    packed-switch v1, :pswitch_data_104

    .line 2022
    return v0

    .line 1964
    :pswitch_29
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1965
    .local v4, "roDate":J
    cmp-long v9, v10, v4

    if-nez v9, :cond_32

    .line 1966
    return v0

    .line 1970
    :cond_32
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 1971
    .local v8, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v8, :cond_39

    .line 1972
    return v0

    .line 1976
    :cond_39
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v7

    .line 1977
    .local v7, "roMessageId":[B
    if-nez v7, :cond_40

    .line 1978
    return v0

    .line 1982
    :cond_40
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 1983
    .local v3, "roReadStatus":I
    if-nez v3, :cond_47

    .line 1984
    return v0

    .line 1988
    :cond_47
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 1989
    .local v6, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_101

    .line 1990
    return v0

    .line 1996
    .end local v3    # "roReadStatus":I
    .end local v4    # "roDate":J
    .end local v6    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v7    # "roMessageId":[B
    .end local v8    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4e
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 1997
    .local v4, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_55

    .line 1998
    return v0

    .line 2002
    :cond_55
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 2003
    .local v5, "rrMessageId":[B
    if-nez v5, :cond_5c

    .line 2004
    return v0

    .line 2008
    :cond_5c
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 2009
    .local v3, "rrReadStatus":I
    if-nez v3, :cond_63

    .line 2010
    return v0

    .line 2014
    :cond_63
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 2015
    .local v6, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_101

    .line 2016
    return v0

    .line 1930
    .end local v3    # "rrReadStatus":I
    .end local v4    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "rrMessageId":[B
    .end local v6    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6a
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 1931
    .local v8, "diDate":J
    cmp-long v3, v10, v8

    if-nez v3, :cond_73

    .line 1932
    return v0

    .line 1936
    :cond_73
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1937
    .local v3, "diMessageId":[B
    if-nez v3, :cond_7a

    .line 1938
    return v0

    .line 1942
    :cond_7a
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 1943
    .local v4, "diStatus":I
    if-nez v4, :cond_81

    .line 1944
    return v0

    .line 1948
    :cond_81
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 1949
    .local v5, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_101

    .line 1950
    return v0

    .line 1956
    .end local v3    # "diMessageId":[B
    .end local v4    # "diStatus":I
    .end local v5    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8    # "diDate":J
    :pswitch_88
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1957
    .local v3, "aiTransactionId":[B
    if-nez v3, :cond_101

    .line 1958
    return v0

    .line 1916
    .end local v3    # "aiTransactionId":[B
    :pswitch_8f
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1917
    .local v3, "rcContentType":[B
    if-nez v3, :cond_96

    .line 1918
    return v0

    .line 1922
    :cond_96
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1923
    .local v4, "rcDate":J
    cmp-long v6, v10, v4

    if-nez v6, :cond_101

    .line 1924
    return v0

    .line 1902
    .end local v3    # "rcContentType":[B
    .end local v4    # "rcDate":J
    :pswitch_9f
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 1903
    .local v3, "nriStatus":I
    if-nez v3, :cond_a6

    .line 1904
    return v0

    .line 1908
    :cond_a6
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 1909
    .local v4, "nriTransactionId":[B
    if-nez v4, :cond_101

    .line 1910
    return v0

    .line 1870
    .end local v3    # "nriStatus":I
    .end local v4    # "nriTransactionId":[B
    :pswitch_ad
    const/16 v3, 0x83

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1871
    .local v3, "niContentLocation":[B
    if-nez v3, :cond_b6

    .line 1872
    return v0

    .line 1876
    :cond_b6
    const/16 v4, 0x88

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1877
    .local v4, "niExpiry":J
    cmp-long v6, v10, v4

    if-nez v6, :cond_c1

    .line 1878
    return v0

    .line 1882
    :cond_c1
    const/16 v6, 0x8a

    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v6

    .line 1883
    .local v6, "niMessageClass":[B
    if-nez v6, :cond_ca

    .line 1884
    return v0

    .line 1888
    :cond_ca
    const/16 v7, 0x8e

    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 1889
    .local v7, "niMessageSize":J
    cmp-long v9, v10, v7

    if-nez v9, :cond_d5

    .line 1890
    return v0

    .line 1894
    :cond_d5
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v9

    .line 1895
    .local v9, "niTransactionId":[B
    if-nez v9, :cond_101

    .line 1896
    return v0

    .line 1856
    .end local v3    # "niContentLocation":[B
    .end local v4    # "niExpiry":J
    .end local v6    # "niMessageClass":[B
    .end local v7    # "niMessageSize":J
    .end local v9    # "niTransactionId":[B
    :pswitch_dc
    const/16 v3, 0x92

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 1857
    .local v3, "scResponseStatus":I
    if-nez v3, :cond_e5

    .line 1858
    return v0

    .line 1862
    :cond_e5
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 1863
    .local v4, "scTransactionId":[B
    if-nez v4, :cond_101

    .line 1864
    return v0

    .line 1836
    .end local v3    # "scResponseStatus":I
    .end local v4    # "scTransactionId":[B
    :pswitch_ec
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1837
    .local v3, "srContentType":[B
    if-nez v3, :cond_f3

    .line 1838
    return v0

    .line 1842
    :cond_f3
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 1843
    .local v4, "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_fa

    .line 1844
    return v0

    .line 1848
    :cond_fa
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 1849
    .local v5, "srTransactionId":[B
    if-nez v5, :cond_101

    .line 1850
    return v0

    .line 2025
    .end local v3    # "srContentType":[B
    .end local v4    # "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "srTransactionId":[B
    :cond_101
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_104
    .packed-switch 0x80
        :pswitch_ec
        :pswitch_dc
        :pswitch_ad
        :pswitch_9f
        :pswitch_8f
        :pswitch_88
        :pswitch_6a
        :pswitch_4e
        :pswitch_29
    .end packed-switch
.end method

.method private static greylist checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 5
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 1779
    nop

    .line 1780
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v1, 0x1

    if-nez v0, :cond_b

    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v0, :cond_b

    .line 1782
    return v1

    .line 1786
    :cond_b
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 1787
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1788
    .local v0, "contentId":[B
    if-eqz v0, :cond_1f

    .line 1789
    sget-object v3, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-ne v1, v3, :cond_1f

    .line 1790
    return v2

    .line 1795
    :cond_1f
    return v1

    .line 1799
    .end local v0    # "contentId":[B
    :cond_20
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v0, :cond_33

    .line 1800
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    .line 1801
    .local v0, "contentType":[B
    if-eqz v0, :cond_33

    .line 1802
    sget-object v3, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-ne v1, v3, :cond_33

    .line 1803
    return v2

    .line 1808
    .end local v0    # "contentType":[B
    :cond_33
    return v1
.end method

.method protected static blacklist extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1234
    nop

    .line 1235
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1236
    .local v0, "temp":I
    nop

    .line 1237
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static blacklist getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 1200
    nop

    .line 1201
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1202
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1203
    .local v1, "temp":I
    nop

    .line 1204
    :goto_b
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2b

    if-eqz v1, :cond_2b

    .line 1206
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 1207
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1208
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_26

    .line 1211
    :cond_1d
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1212
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1216
    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1217
    goto :goto_b

    .line 1220
    :cond_2b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_36

    .line 1221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1224
    :cond_36
    const/4 v2, 0x0

    return-object v2
.end method

.method protected static blacklist isText(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 1184
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_11

    :cond_9
    const/16 v0, 0x80

    if-lt p0, v0, :cond_12

    const/16 v0, 0xff

    if-gt p0, v0, :cond_12

    .line 1185
    :cond_11
    return v1

    .line 1188
    :cond_12
    packed-switch p0, :pswitch_data_18

    .line 1195
    :pswitch_15
    const/4 v0, 0x0

    return v0

    .line 1192
    :pswitch_17
    return v1

    :pswitch_data_18
    .packed-switch 0x9
        :pswitch_17
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method protected static blacklist isTokenCharacter(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 1140
    const/16 v0, 0x21

    const/4 v1, 0x0

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7e

    if-le p0, v0, :cond_a

    goto :goto_10

    .line 1144
    :cond_a
    sparse-switch p0, :sswitch_data_12

    .line 1165
    const/4 v0, 0x1

    return v0

    .line 1162
    :sswitch_f
    return v1

    .line 1141
    :cond_10
    :goto_10
    return v1

    nop

    :sswitch_data_12
    .sparse-switch
        0x22 -> :sswitch_f
        0x28 -> :sswitch_f
        0x29 -> :sswitch_f
        0x2c -> :sswitch_f
        0x2f -> :sswitch_f
        0x3a -> :sswitch_f
        0x3b -> :sswitch_f
        0x3c -> :sswitch_f
        0x3d -> :sswitch_f
        0x3e -> :sswitch_f
        0x3f -> :sswitch_f
        0x40 -> :sswitch_f
        0x5b -> :sswitch_f
        0x5c -> :sswitch_f
        0x5d -> :sswitch_f
        0x7b -> :sswitch_f
        0x7d -> :sswitch_f
    .end sparse-switch
.end method

.method private static greylist log(Ljava/lang/String;)V
    .registers 1
    .param p0, "text"    # Ljava/lang/String;

    .line 957
    return-void
.end method

.method protected static greylist parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 13
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1540
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1542
    const/4 v0, 0x0

    .line 1543
    .local v0, "contentType":[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1544
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1545
    .local v2, "temp":I
    nop

    .line 1546
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1548
    and-int/lit16 v3, v2, 0xff

    .line 1550
    .local v3, "cur":I
    const/16 v4, 0x20

    const/16 v5, 0x7f

    const/4 v6, 0x0

    if-ge v3, v4, :cond_ae

    .line 1551
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 1552
    .local v7, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 1553
    .local v8, "startPos":I
    const-string v9, "PduParser"

    if-le v7, v8, :cond_4c

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseContentType: Invalid length "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " when available bytes are "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 1558
    :cond_4c
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1559
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1560
    nop

    .line 1561
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1562
    and-int/lit16 v1, v2, 0xff

    .line 1564
    .local v1, "first":I
    if-lt v1, v4, :cond_62

    if-gt v1, v5, :cond_62

    .line 1565
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_7e

    .line 1566
    :cond_62
    if-le v1, v5, :cond_a0

    .line 1567
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1569
    .local v4, "index":I
    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_76

    .line 1570
    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7d

    .line 1572
    :cond_76
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1573
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1575
    .end local v4    # "index":I
    :goto_7d
    nop

    .line 1580
    :goto_7e
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1581
    .local v4, "endPos":I
    sub-int v5, v8, v4

    sub-int v5, v7, v5

    .line 1582
    .local v5, "parameterLen":I
    if-lez v5, :cond_8f

    .line 1583
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p0, p1, v10}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1586
    :cond_8f
    if-gez v5, :cond_9f

    .line 1587
    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v6, v9, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    .line 1590
    .end local v1    # "first":I
    .end local v4    # "endPos":I
    .end local v5    # "parameterLen":I
    .end local v7    # "length":I
    .end local v8    # "startPos":I
    :cond_9f
    goto :goto_c1

    .line 1576
    .restart local v1    # "first":I
    .restart local v7    # "length":I
    .restart local v8    # "startPos":I
    :cond_a0
    const-string v4, "Corrupt content-type"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    sget-object v4, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    .line 1590
    .end local v1    # "first":I
    .end local v7    # "length":I
    .end local v8    # "startPos":I
    :cond_ae
    if-gt v3, v5, :cond_b5

    .line 1591
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_c1

    .line 1593
    :cond_b5
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .line 1594
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1597
    :goto_c1
    return-object v0
.end method

.method protected static blacklist parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 15
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1368
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1369
    nop

    .line 1371
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1372
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 1373
    .local v1, "tempPos":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1374
    .local v2, "lastLen":I
    :goto_b
    const-string v3, "Corrupt Content-Type"

    const-string v4, "PduParser"

    if-lez v2, :cond_110

    .line 1375
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1376
    .local v5, "param":I
    nop

    .line 1377
    add-int/lit8 v2, v2, -0x1

    .line 1379
    const/16 v6, 0x7f

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_116

    .line 1510
    invoke-static {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_10d

    .line 1511
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    .line 1435
    :sswitch_2b
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1436
    .local v3, "start":[B
    if-eqz v3, :cond_3c

    if-eqz p1, :cond_3c

    .line 1437
    const/16 v4, 0x99

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    :cond_3c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1441
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1442
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    move v2, v4

    goto/16 :goto_10e

    .line 1498
    .end local v3    # "start":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :sswitch_4a
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1499
    .local v3, "name":[B
    if-eqz v3, :cond_5b

    if-eqz p1, :cond_5b

    .line 1500
    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    :cond_5b
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1504
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1505
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto/16 :goto_10e

    .line 1395
    .end local v3    # "name":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :sswitch_69
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1396
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 1397
    .local v3, "first":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1398
    const/16 v4, 0x83

    if-le v3, v6, :cond_90

    .line 1400
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 1402
    .local v6, "index":I
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_8f

    .line 1403
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1404
    .local v7, "type":[B
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    .end local v6    # "index":I
    .end local v7    # "type":[B
    :cond_8f
    goto :goto_9f

    .line 1410
    :cond_90
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1411
    .local v6, "type":[B
    if-eqz v6, :cond_9f

    if-eqz p1, :cond_9f

    .line 1412
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    .end local v6    # "type":[B
    :cond_9f
    :goto_9f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1417
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1418
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto :goto_10e

    .line 1459
    .end local v3    # "first":I
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :sswitch_ac
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1460
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 1461
    .local v3, "firstValue":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1463
    const/16 v7, 0x20

    const/16 v9, 0x81

    if-le v3, v7, :cond_be

    if-lt v3, v6, :cond_c0

    :cond_be
    if-nez v3, :cond_ee

    .line 1466
    :cond_c0
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1468
    .local v6, "charsetStr":[B
    :try_start_c4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v7

    .line 1470
    .local v7, "charsetInt":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c4 .. :try_end_d8} :catch_da

    .line 1475
    nop

    .end local v7    # "charsetInt":I
    goto :goto_ed

    .line 1471
    :catch_da
    move-exception v7

    .line 1473
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1474
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_ed
    goto :goto_100

    .line 1478
    :cond_ee
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    long-to-int v4, v6

    .line 1479
    .local v4, "charset":I
    if-eqz p1, :cond_100

    .line 1480
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    .end local v4    # "charset":I
    :cond_100
    :goto_100
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1485
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1486
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    move v2, v4

    goto :goto_10e

    .line 1513
    .end local v3    # "firstValue":I
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :cond_10d
    const/4 v2, 0x0

    .line 1517
    .end local v5    # "param":I
    :goto_10e
    goto/16 :goto_b

    .line 1519
    :cond_110
    if-eqz v2, :cond_115

    .line 1520
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_115
    return-void

    :sswitch_data_116
    .sparse-switch
        0x81 -> :sswitch_ac
        0x83 -> :sswitch_69
        0x85 -> :sswitch_4a
        0x89 -> :sswitch_69
        0x8a -> :sswitch_2b
        0x97 -> :sswitch_4a
        0x99 -> :sswitch_2b
    .end sparse-switch
.end method

.method protected static blacklist parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 8
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1035
    nop

    .line 1036
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1037
    const/4 v0, 0x0

    .line 1038
    .local v0, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    .line 1039
    .local v1, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1040
    .local v2, "temp":I
    nop

    .line 1041
    and-int/lit16 v3, v2, 0xff

    .line 1042
    .local v3, "first":I
    if-nez v3, :cond_18

    .line 1043
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 1046
    :cond_18
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1047
    const/16 v4, 0x20

    if-ge v3, v4, :cond_26

    .line 1048
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1050
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1053
    :cond_26
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1056
    .local v4, "textString":[B
    if-eqz v1, :cond_33

    .line 1057
    :try_start_2d
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v0    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v5, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_38

    .line 1059
    .end local v5    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v0    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_33
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_3a

    .line 1063
    .end local v0    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v5    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_38
    nop

    .line 1065
    return-object v5

    .line 1061
    .end local v5    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v0    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_3a
    move-exception v5

    .line 1062
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return-object v6
.end method

.method protected static blacklist parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1310
    nop

    .line 1311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1312
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1313
    .local v0, "temp":I
    nop

    .line 1314
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1315
    const/16 v1, 0x7f

    if-le v0, v1, :cond_17

    .line 1316
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 1318
    :cond_17
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static blacklist parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1278
    nop

    .line 1279
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1280
    .local v0, "temp":I
    nop

    .line 1281
    and-int/lit16 v1, v0, 0xff

    .line 1283
    .local v1, "count":I
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1f

    .line 1287
    const-wide/16 v3, 0x0

    .line 1289
    .local v3, "result":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    if-ge v5, v1, :cond_1e

    .line 1290
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1291
    nop

    .line 1292
    shl-long/2addr v3, v2

    .line 1293
    and-int/lit16 v6, v0, 0xff

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 1289
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 1296
    .end local v5    # "i":I
    :cond_1e
    return-wide v3

    .line 1284
    .end local v3    # "result":J
    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static greylist parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1255
    nop

    .line 1256
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1257
    .local v0, "temp":I
    nop

    .line 1258
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static greylist parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 972
    nop

    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 975
    .local v1, "temp":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 976
    return v1

    .line 979
    :cond_a
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1a

    .line 980
    shl-int/lit8 v0, v0, 0x7

    .line 981
    and-int/lit8 v3, v1, 0x7f

    or-int/2addr v0, v3

    .line 982
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 983
    if-ne v1, v2, :cond_a

    .line 984
    return v1

    .line 988
    :cond_1a
    shl-int/lit8 v0, v0, 0x7

    .line 989
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 991
    return v0
.end method

.method protected static greylist parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1010
    nop

    .line 1011
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1012
    .local v0, "temp":I
    nop

    .line 1013
    and-int/lit16 v1, v0, 0xff

    .line 1015
    .local v1, "first":I
    const/16 v2, 0x1e

    if-gt v1, v2, :cond_d

    .line 1016
    return v1

    .line 1017
    :cond_d
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_16

    .line 1018
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    return v2

    .line 1021
    :cond_16
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static greylist parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 1078
    nop

    .line 1096
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1099
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1100
    .local v1, "temp":I
    nop

    .line 1101
    if-ne v0, p1, :cond_14

    const/16 v2, 0x22

    if-ne v2, v1, :cond_14

    .line 1104
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_21

    .line 1105
    :cond_14
    if-nez p1, :cond_1e

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_1e

    .line 1108
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_21

    .line 1111
    :cond_1e
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1119
    :goto_21
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .line 1330
    nop

    .line 1331
    new-array v0, p1, [B

    .line 1332
    .local v0, "area":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1333
    .local v1, "readLen":I
    if-ge v1, p1, :cond_c

    .line 1334
    const/4 v2, -0x1

    return v2

    .line 1336
    :cond_c
    return v1
.end method


# virtual methods
.method public greylist parse()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 8

    .line 114
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 115
    return-object v1

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 120
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v0, :cond_13

    .line 122
    return-object v1

    .line 126
    :cond_13
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v2, 0x8c

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 129
    .local v0, "messageType":I
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 130
    const-string v2, "check mandatory headers failed!"

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 131
    return-object v1

    .line 134
    :cond_29
    const/16 v2, 0x80

    if-eq v2, v0, :cond_31

    const/16 v2, 0x84

    if-ne v2, v0, :cond_3e

    .line 137
    :cond_31
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 138
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v2, :cond_3e

    .line 140
    return-object v1

    .line 144
    :cond_3e
    packed-switch v0, :pswitch_data_d2

    .line 228
    const-string v2, "Parser doesn\'t support this message type in this version!"

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 229
    return-object v1

    .line 217
    :pswitch_47
    new-instance v1, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 219
    .local v1, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    return-object v1

    .line 224
    .end local v1    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_4f
    new-instance v1, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 226
    .local v1, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    return-object v1

    .line 203
    .end local v1    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    :pswitch_57
    new-instance v1, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 205
    .local v1, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    return-object v1

    .line 210
    .end local v1    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_5f
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 212
    .local v1, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    return-object v1

    .line 175
    .end local v1    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_67
    new-instance v2, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 178
    .local v2, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    .line 179
    .local v3, "contentType":[B
    if-nez v3, :cond_77

    .line 180
    return-object v1

    .line 182
    :cond_77
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 183
    .local v4, "ctTypeStr":Ljava/lang/String;
    const-string v5, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ae

    .line 184
    const-string v5, "application/vnd.wap.multipart.related"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ae

    .line 185
    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    goto :goto_ae

    .line 190
    :cond_95
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 193
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 194
    .local v1, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 195
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6, v5, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 196
    return-object v2

    .line 198
    .end local v1    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_ad
    return-object v1

    .line 189
    :cond_ae
    :goto_ae
    return-object v2

    .line 168
    .end local v2    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v3    # "contentType":[B
    .end local v4    # "ctTypeStr":Ljava/lang/String;
    :pswitch_af
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 170
    .local v1, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    return-object v1

    .line 161
    .end local v1    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_b7
    new-instance v1, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 163
    .local v1, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    return-object v1

    .line 155
    .end local v1    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_bf
    new-instance v1, Lcom/google/android/mms/pdu/SendConf;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 156
    .local v1, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    return-object v1

    .line 149
    .end local v1    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_c7
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v1, v2, v3}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 150
    .local v1, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    return-object v1

    nop

    :pswitch_data_d2
    .packed-switch 0x80
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
    .end packed-switch
.end method

.method protected blacklist parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 20
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 240
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 241
    return-object v2

    .line 243
    :cond_6
    const/4 v0, 0x1

    .line 244
    .local v0, "keepParsing":Z
    new-instance v3, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    move v4, v0

    .line 246
    .end local v0    # "keepParsing":Z
    .local v3, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .local v4, "keepParsing":Z
    :goto_d
    if-eqz v4, :cond_435

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_435

    .line 247
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 248
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 250
    .local v5, "headerField":I
    const/16 v6, 0x20

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2e

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_2e

    .line 251
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 252
    invoke-static {v1, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 257
    .local v0, "bVal":[B
    goto :goto_d

    .line 259
    .end local v0    # "bVal":[B
    :cond_2e
    const/16 v6, 0x81

    const-string v8, "/"

    const-string v10, " is not Integer-Value"

    const-string v11, "is not Octet header field!"

    const-string v12, " into the header filed: "

    const-string v13, "Set invalid Octet value: "

    const/16 v14, 0x80

    const-string v15, "is not Text-String header field!"

    const-string v7, "is not Encoded-String-Value header field!"

    const-string v9, "is not Long-Integer header field!"

    const-string v17, "null pointer error!"

    packed-switch v5, :pswitch_data_436

    .line 824
    :pswitch_47
    const-string v0, "Unknown header"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_433

    .line 779
    :pswitch_4e
    invoke-static {v1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    .line 783
    goto/16 :goto_433

    .line 370
    :pswitch_53
    :try_start_53
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 375
    .local v6, "value":J
    invoke-virtual {v3, v6, v7, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_5a} :catch_5c

    .line 379
    .end local v6    # "value":J
    goto/16 :goto_433

    .line 376
    :catch_5c
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 378
    return-object v2

    .line 757
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_72
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 760
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 764
    :try_start_78
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_7b
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_7b} :catch_7d

    .line 768
    goto/16 :goto_433

    .line 765
    :catch_7d
    move-exception v0

    .line 766
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 767
    return-object v2

    .line 735
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_93
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 738
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 741
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 745
    goto/16 :goto_433

    .line 697
    :pswitch_9e
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 701
    :try_start_a1
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_a4
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_a4} :catch_c6

    .line 705
    nop

    .line 709
    :try_start_a5
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 714
    .local v6, "perviouslySentDate":J
    const/16 v0, 0xa1

    invoke-virtual {v3, v6, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_ae
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_ae} :catch_b0

    .line 719
    .end local v6    # "perviouslySentDate":J
    goto/16 :goto_433

    .line 716
    :catch_b0
    move-exception v0

    .line 717
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 718
    return-object v2

    .line 702
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_c6
    move-exception v0

    .line 703
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 704
    return-object v2

    .line 662
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_dc
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 666
    :try_start_df
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_e2
    .catch Ljava/lang/RuntimeException; {:try_start_df .. :try_end_e2} :catch_10c

    .line 670
    nop

    .line 673
    nop

    .line 674
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 675
    .local v6, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_433

    .line 681
    const/16 v0, 0xa0

    :try_start_ec
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_ef
    .catch Ljava/lang/NullPointerException; {:try_start_ec .. :try_end_ef} :catch_107
    .catch Ljava/lang/RuntimeException; {:try_start_ec .. :try_end_ef} :catch_f1

    .line 688
    :goto_ef
    goto/16 :goto_433

    .line 685
    :catch_f1
    move-exception v0

    .line 686
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 687
    return-object v2

    .line 683
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_107
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_ef

    .line 667
    .end local v6    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_10c
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 669
    return-object v2

    .line 432
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_122
    nop

    .line 433
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 434
    .local v6, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_433

    .line 440
    :try_start_129
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_12c
    .catch Ljava/lang/NullPointerException; {:try_start_129 .. :try_end_12c} :catch_144
    .catch Ljava/lang/RuntimeException; {:try_start_129 .. :try_end_12c} :catch_12e

    .line 446
    :goto_12c
    goto/16 :goto_433

    .line 443
    :catch_12e
    move-exception v0

    .line 444
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 445
    return-object v2

    .line 441
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_144
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_12c

    .line 639
    .end local v6    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_149
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 646
    .local v6, "version":I
    const/16 v0, 0x8d

    :try_start_14f
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_152
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_14f .. :try_end_152} :catch_16a
    .catch Ljava/lang/RuntimeException; {:try_start_14f .. :try_end_152} :catch_154

    .line 654
    goto/16 :goto_433

    .line 651
    :catch_154
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 653
    return-object v2

    .line 647
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_16a
    move-exception v0

    .line 648
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 650
    return-object v2

    .line 262
    .end local v0    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v6    # "version":I
    :pswitch_188
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 266
    .local v6, "messageType":I
    packed-switch v6, :pswitch_data_4b8

    .line 286
    :try_start_18f
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_192
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_18f .. :try_end_192} :catch_1ac
    .catch Ljava/lang/RuntimeException; {:try_start_18f .. :try_end_192} :catch_196

    goto :goto_194

    .line 283
    :pswitch_193
    return-object v2

    .line 294
    :goto_194
    goto/16 :goto_433

    .line 291
    :catch_196
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 293
    return-object v2

    .line 287
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1ac
    move-exception v0

    .line 288
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 290
    return-object v2

    .line 587
    .end local v0    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v6    # "messageType":I
    :pswitch_1ca
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 588
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 594
    .local v7, "messageClass":I
    const/16 v0, 0x8a

    if-lt v7, v14, :cond_228

    .line 597
    if-ne v14, v7, :cond_1e6

    .line 598
    :try_start_1d7
    const-string/jumbo v6, "personal"

    .line 599
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 598
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_226

    .line 616
    :catch_1e2
    move-exception v0

    goto :goto_20e

    .line 614
    :catch_1e4
    move-exception v0

    goto :goto_223

    .line 601
    :cond_1e6
    if-ne v6, v7, :cond_1f2

    .line 602
    const-string v6, "advertisement"

    .line 603
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 602
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_226

    .line 605
    :cond_1f2
    const/16 v6, 0x82

    if-ne v6, v7, :cond_200

    .line 606
    const-string v6, "informational"

    .line 607
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 606
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_226

    .line 609
    :cond_200
    const/16 v6, 0x83

    if-ne v6, v7, :cond_226

    .line 610
    const-string v6, "auto"

    .line 611
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 610
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_20d
    .catch Ljava/lang/NullPointerException; {:try_start_1d7 .. :try_end_20d} :catch_1e4
    .catch Ljava/lang/RuntimeException; {:try_start_1d7 .. :try_end_20d} :catch_1e2

    goto :goto_226

    .line 617
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_20e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 618
    return-object v2

    .line 615
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_223
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 619
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_226
    :goto_226
    goto/16 :goto_433

    .line 622
    :cond_228
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 623
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 624
    .local v6, "messageClassString":[B
    if-eqz v6, :cond_251

    .line 626
    :try_start_232
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_235
    .catch Ljava/lang/NullPointerException; {:try_start_232 .. :try_end_235} :catch_24c
    .catch Ljava/lang/RuntimeException; {:try_start_232 .. :try_end_235} :catch_236

    .line 632
    :goto_235
    goto :goto_251

    .line 629
    :catch_236
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 631
    return-object v2

    .line 627
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_24c
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_235

    .line 635
    .end local v6    # "messageClassString":[B
    :cond_251
    :goto_251
    goto/16 :goto_433

    .line 534
    .end local v7    # "messageClass":I
    :pswitch_253
    const/4 v6, 0x0

    .line 535
    .local v6, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 538
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 541
    .local v9, "fromToken":I
    if-ne v14, v9, :cond_28a

    .line 543
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 544
    if-eqz v6, :cond_297

    .line 545
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    .line 546
    .local v10, "address":[B
    if-eqz v10, :cond_289

    .line 547
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 548
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 549
    .local v8, "endIndex":I
    if-lez v8, :cond_27b

    .line 550
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_27c

    .line 549
    :cond_27b
    move-object v11, v0

    .line 553
    .end local v0    # "str":Ljava/lang/String;
    .local v11, "str":Ljava/lang/String;
    :goto_27c
    :try_start_27c
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_283
    .catch Ljava/lang/NullPointerException; {:try_start_27c .. :try_end_283} :catch_284

    .line 557
    goto :goto_289

    .line 554
    :catch_284
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 556
    return-object v2

    .line 559
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v10    # "address":[B
    .end local v11    # "str":Ljava/lang/String;
    :cond_289
    :goto_289
    goto :goto_297

    .line 562
    :cond_28a
    :try_start_28a
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v8, "insert-address-token"

    .line 563
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_295
    .catch Ljava/lang/NullPointerException; {:try_start_28a .. :try_end_295} :catch_2b9

    move-object v6, v0

    .line 567
    nop

    .line 575
    :cond_297
    :goto_297
    const/16 v0, 0x89

    :try_start_299
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_29c
    .catch Ljava/lang/NullPointerException; {:try_start_299 .. :try_end_29c} :catch_2b4
    .catch Ljava/lang/RuntimeException; {:try_start_299 .. :try_end_29c} :catch_29e

    .line 581
    :goto_29c
    goto/16 :goto_433

    .line 578
    :catch_29e
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 580
    return-object v2

    .line 576
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2b4
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_29c

    .line 564
    :catch_2b9
    move-exception v0

    .line 565
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 566
    return-object v2

    .line 497
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v6    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9    # "fromToken":I
    :pswitch_2cf
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 500
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 505
    .local v7, "token":I
    :try_start_2d6
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v10
    :try_end_2da
    .catch Ljava/lang/RuntimeException; {:try_start_2d6 .. :try_end_2da} :catch_300

    .line 509
    .local v10, "timeValue":J
    nop

    .line 510
    if-ne v6, v7, :cond_2e5

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    .line 521
    :cond_2e5
    :try_start_2e5
    invoke-virtual {v3, v10, v11, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2e8
    .catch Ljava/lang/RuntimeException; {:try_start_2e5 .. :try_end_2e8} :catch_2ea

    .line 525
    goto/16 :goto_433

    .line 522
    :catch_2ea
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 524
    return-object v2

    .line 506
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "timeValue":J
    :catch_300
    move-exception v0

    .line 507
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 508
    return-object v2

    .line 326
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "token":I
    :pswitch_316
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 333
    .local v6, "value":I
    :try_start_31a
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_31d
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_31a .. :try_end_31d} :catch_335
    .catch Ljava/lang/RuntimeException; {:try_start_31a .. :try_end_31d} :catch_31f

    .line 341
    goto/16 :goto_433

    .line 338
    :catch_31f
    move-exception v0

    .line 339
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 340
    return-object v2

    .line 334
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_335
    move-exception v0

    .line 335
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 337
    return-object v2

    .line 351
    .end local v0    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v6    # "value":I
    :pswitch_353
    :try_start_353
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 356
    .local v6, "value":J
    invoke-virtual {v3, v6, v7, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_35a
    .catch Ljava/lang/RuntimeException; {:try_start_353 .. :try_end_35a} :catch_35c

    .line 360
    .end local v6    # "value":J
    goto/16 :goto_433

    .line 357
    :catch_35c
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 359
    return-object v2

    .line 787
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .line 789
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 790
    invoke-static {v1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    .line 792
    .local v7, "contentType":[B
    if-eqz v7, :cond_3a0

    .line 798
    const/16 v0, 0x84

    :try_start_381
    invoke-virtual {v3, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_384
    .catch Ljava/lang/NullPointerException; {:try_start_381 .. :try_end_384} :catch_39b
    .catch Ljava/lang/RuntimeException; {:try_start_381 .. :try_end_384} :catch_385

    .line 804
    :goto_384
    goto :goto_3a0

    .line 801
    :catch_385
    move-exception v0

    .line 802
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 803
    return-object v2

    .line 799
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_39b
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_384

    .line 808
    :cond_3a0
    :goto_3a0
    const/16 v0, 0x99

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 811
    const/16 v16, 0x83

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 813
    const/4 v0, 0x0

    .line 814
    .end local v4    # "keepParsing":Z
    .local v0, "keepParsing":Z
    move v4, v0

    goto/16 :goto_433

    .line 404
    .end local v0    # "keepParsing":Z
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v7    # "contentType":[B
    .restart local v4    # "keepParsing":Z
    :pswitch_3c0
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 405
    .local v6, "value":[B
    if-eqz v6, :cond_433

    .line 411
    :try_start_3c7
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3ca
    .catch Ljava/lang/NullPointerException; {:try_start_3c7 .. :try_end_3ca} :catch_3e1
    .catch Ljava/lang/RuntimeException; {:try_start_3c7 .. :try_end_3ca} :catch_3cb

    .line 417
    :goto_3ca
    goto :goto_433

    .line 414
    :catch_3cb
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 416
    return-object v2

    .line 412
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_3e1
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_3ca

    .line 456
    .end local v6    # "value":[B
    :pswitch_3e6
    nop

    .line 457
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 458
    .local v6, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_433

    .line 459
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v9

    .line 460
    .local v9, "address":[B
    if-eqz v9, :cond_413

    .line 461
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    .line 466
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 467
    .restart local v8    # "endIndex":I
    if-lez v8, :cond_405

    .line 468
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_406

    .line 467
    :cond_405
    move-object v10, v0

    .line 471
    .end local v0    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    :goto_406
    :try_start_406
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_40d
    .catch Ljava/lang/NullPointerException; {:try_start_406 .. :try_end_40d} :catch_40e

    .line 475
    goto :goto_413

    .line 472
    :catch_40e
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 474
    return-object v2

    .line 479
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "endIndex":I
    .end local v10    # "str":Ljava/lang/String;
    :cond_413
    :goto_413
    :try_start_413
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_416
    .catch Ljava/lang/NullPointerException; {:try_start_413 .. :try_end_416} :catch_42d
    .catch Ljava/lang/RuntimeException; {:try_start_413 .. :try_end_416} :catch_417

    .line 485
    :goto_416
    goto :goto_432

    .line 482
    :catch_417
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 484
    return-object v2

    .line 480
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_42d
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_416

    .line 486
    .end local v9    # "address":[B
    :goto_432
    nop

    .line 827
    .end local v5    # "headerField":I
    .end local v6    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_433
    :goto_433
    goto/16 :goto_d

    .line 829
    :cond_435
    return-object v3

    :pswitch_data_436
    .packed-switch 0x81
        :pswitch_3e6
        :pswitch_3e6
        :pswitch_3c0
        :pswitch_372
        :pswitch_353
        :pswitch_316
        :pswitch_2cf
        :pswitch_2cf
        :pswitch_253
        :pswitch_1ca
        :pswitch_3c0
        :pswitch_188
        :pswitch_149
        :pswitch_353
        :pswitch_316
        :pswitch_316
        :pswitch_316
        :pswitch_316
        :pswitch_122
        :pswitch_316
        :pswitch_316
        :pswitch_122
        :pswitch_3e6
        :pswitch_3c0
        :pswitch_316
        :pswitch_122
        :pswitch_316
        :pswitch_316
        :pswitch_2cf
        :pswitch_3c0
        :pswitch_353
        :pswitch_dc
        :pswitch_9e
        :pswitch_316
        :pswitch_316
        :pswitch_93
        :pswitch_316
        :pswitch_122
        :pswitch_316
        :pswitch_47
        :pswitch_316
        :pswitch_72
        :pswitch_316
        :pswitch_72
        :pswitch_53
        :pswitch_47
        :pswitch_53
        :pswitch_47
        :pswitch_316
        :pswitch_4e
        :pswitch_53
        :pswitch_316
        :pswitch_122
        :pswitch_122
        :pswitch_3c0
        :pswitch_3c0
        :pswitch_3c0
        :pswitch_316
        :pswitch_316
        :pswitch_316
        :pswitch_3c0
        :pswitch_3c0
        :pswitch_316
    .end packed-switch

    :pswitch_data_4b8
    .packed-switch 0x89
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
    .end packed-switch
.end method

.method protected greylist parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 15
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    .line 1611
    nop

    .line 1612
    nop

    .line 1613
    nop

    .line 1631
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1632
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 1633
    .local v1, "tempPos":I
    move v2, p3

    .line 1634
    .local v2, "lastLen":I
    :goto_9
    const-string v3, "Corrupt Part headers"

    const-string v4, "PduParser"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_f2

    .line 1635
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 1636
    .local v7, "header":I
    nop

    .line 1637
    add-int/lit8 v2, v2, -0x1

    .line 1639
    const/16 v8, 0x7f

    const/4 v9, -0x1

    if-le v7, v8, :cond_be

    .line 1641
    sparse-switch v7, :sswitch_data_fa

    .line 1729
    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_bc

    .line 1730
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return v6

    .line 1660
    :sswitch_2a
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1661
    .local v3, "contentId":[B
    if-eqz v3, :cond_33

    .line 1662
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1665
    :cond_33
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1666
    sub-int v4, v0, v1

    sub-int v2, p3, v4

    .line 1667
    goto/16 :goto_f0

    .line 1683
    .end local v3    # "contentId":[B
    :sswitch_3d
    iget-boolean v3, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    if-eqz v3, :cond_f0

    .line 1684
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 1685
    .local v3, "len":I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1686
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1687
    .local v4, "thisStartPos":I
    const/4 v5, 0x0

    .line 1688
    .local v5, "thisEndPos":I
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1690
    .local v8, "value":I
    const/16 v9, 0x80

    if-ne v8, v9, :cond_5b

    .line 1691
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_79

    .line 1692
    :cond_5b
    const/16 v9, 0x81

    if-ne v8, v9, :cond_65

    .line 1693
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_79

    .line 1694
    :cond_65
    const/16 v9, 0x82

    if-ne v8, v9, :cond_6f

    .line 1695
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_79

    .line 1697
    :cond_6f
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1699
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1704
    :goto_79
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1705
    sub-int v9, v4, v5

    if-ge v9, v3, :cond_a1

    .line 1706
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1707
    const/16 v9, 0x98

    if-ne v8, v9, :cond_90

    .line 1708
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1713
    :cond_90
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1714
    sub-int v9, v4, v5

    if-ge v9, v3, :cond_a1

    .line 1715
    sub-int v9, v4, v5

    sub-int v9, v3, v9

    .line 1716
    .local v9, "last":I
    new-array v10, v9, [B

    .line 1717
    .local v10, "temp":[B
    invoke-virtual {p1, v10, v6, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1721
    .end local v9    # "last":I
    .end local v10    # "temp":[B
    :cond_a1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1722
    sub-int v6, v0, v1

    sub-int v2, p3, v6

    .line 1723
    .end local v3    # "len":I
    .end local v4    # "thisStartPos":I
    .end local v5    # "thisEndPos":I
    .end local v8    # "value":I
    goto :goto_f0

    .line 1647
    :sswitch_aa
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1648
    .local v3, "contentLocation":[B
    if-eqz v3, :cond_b3

    .line 1649
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1652
    :cond_b3
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1653
    sub-int v4, v0, v1

    sub-int v2, p3, v4

    .line 1654
    goto :goto_f0

    .line 1733
    .end local v3    # "contentLocation":[B
    :cond_bc
    const/4 v2, 0x0

    .line 1734
    goto :goto_f0

    .line 1736
    :cond_be
    const/16 v10, 0x20

    if-lt v7, v10, :cond_e5

    if-gt v7, v8, :cond_e5

    .line 1738
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1739
    .local v3, "tempHeader":[B
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1742
    .local v4, "tempValue":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 1743
    const-string v8, "Content-Transfer-Encoding"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-ne v5, v6, :cond_dc

    .line 1744
    invoke-virtual {p2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1747
    :cond_dc
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1748
    sub-int v5, v0, v1

    sub-int v2, p3, v5

    .line 1749
    .end local v3    # "tempHeader":[B
    .end local v4    # "tempValue":[B
    goto :goto_f0

    .line 1754
    :cond_e5
    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_ef

    .line 1755
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    return v6

    .line 1758
    :cond_ef
    const/4 v2, 0x0

    .line 1760
    .end local v7    # "header":I
    :cond_f0
    :goto_f0
    goto/16 :goto_9

    .line 1762
    :cond_f2
    if-eqz v2, :cond_f8

    .line 1763
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    return v6

    .line 1767
    :cond_f8
    return v5

    nop

    :sswitch_data_fa
    .sparse-switch
        0x8e -> :sswitch_aa
        0xae -> :sswitch_3d
        0xc0 -> :sswitch_2a
        0xc5 -> :sswitch_3d
    .end sparse-switch
.end method

.method protected blacklist parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .registers 23
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 840
    return-object v2

    .line 843
    :cond_8
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 844
    .local v3, "count":I
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 846
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    if-ge v5, v3, :cond_125

    .line 847
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 848
    .local v6, "headerLength":I
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 849
    .local v7, "dataLength":I
    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 850
    .local v8, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 851
    .local v9, "startPos":I
    if-gtz v9, :cond_28

    .line 853
    return-object v2

    .line 857
    :cond_28
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 858
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1, v10}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v11

    .line 859
    .local v11, "contentType":[B
    const/4 v12, 0x0

    if-eqz v11, :cond_38

    .line 860
    invoke-virtual {v8, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_43

    .line 862
    :cond_38
    sget-object v13, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 866
    :goto_43
    const/16 v13, 0x97

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 867
    .local v13, "name":[B
    if-eqz v13, :cond_54

    .line 868
    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 872
    :cond_54
    const/16 v14, 0x81

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 873
    .local v14, "charset":Ljava/lang/Integer;
    if-eqz v14, :cond_69

    .line 874
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 878
    :cond_69
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 879
    .local v15, "endPos":I
    sub-int v16, v9, v15

    move-object/from16 v17, v2

    sub-int v2, v6, v16

    .line 880
    .local v2, "partHeaderLen":I
    if-lez v2, :cond_7c

    .line 881
    invoke-virtual {v0, v1, v8, v2}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v16

    if-nez v16, :cond_7f

    .line 883
    return-object v17

    .line 885
    :cond_7c
    if-gez v2, :cond_7f

    .line 887
    return-object v17

    .line 893
    :cond_7f
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v16

    if-nez v16, :cond_a7

    .line 894
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v16

    if-nez v16, :cond_a7

    .line 895
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v16

    if-nez v16, :cond_a7

    .line 896
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v16

    if-nez v16, :cond_a7

    .line 897
    nop

    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 897
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v16

    .line 898
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 897
    invoke-virtual {v8, v12}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 902
    :cond_a7
    if-lez v7, :cond_109

    .line 903
    new-array v12, v7, [B

    .line 904
    .local v12, "partData":[B
    move/from16 v16, v2

    .end local v2    # "partHeaderLen":I
    .local v16, "partHeaderLen":I
    new-instance v2, Ljava/lang/String;

    move/from16 v19, v3

    .end local v3    # "count":I
    .local v19, "count":I
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 905
    .local v2, "partContentType":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v12, v3, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 906
    const-string v3, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 908
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    .line 910
    .local v3, "childBody":Lcom/google/android/mms/pdu/PduBody;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 911
    .end local v3    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    goto :goto_10d

    .line 913
    :cond_d3
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v0

    .line 914
    .local v0, "partDataEncoding":[B
    if-eqz v0, :cond_fb

    .line 915
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 916
    .local v3, "encoding":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "partDataEncoding":[B
    .local v20, "partDataEncoding":[B
    const-string v0, "base64"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 918
    invoke-static {v12}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v12

    goto :goto_fd

    .line 919
    :cond_ed
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 921
    invoke-static {v12}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v12

    goto :goto_fd

    .line 914
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v20    # "partDataEncoding":[B
    .restart local v0    # "partDataEncoding":[B
    :cond_fb
    move-object/from16 v20, v0

    .line 926
    .end local v0    # "partDataEncoding":[B
    .restart local v20    # "partDataEncoding":[B
    :cond_fd
    :goto_fd
    if-nez v12, :cond_105

    .line 927
    const-string v0, "Decode part data error!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 928
    return-object v17

    .line 930
    :cond_105
    invoke-virtual {v8, v12}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_10d

    .line 902
    .end local v12    # "partData":[B
    .end local v16    # "partHeaderLen":I
    .end local v19    # "count":I
    .end local v20    # "partDataEncoding":[B
    .local v2, "partHeaderLen":I
    .local v3, "count":I
    :cond_109
    move/from16 v16, v2

    move/from16 v19, v3

    .line 935
    .end local v2    # "partHeaderLen":I
    .end local v3    # "count":I
    .restart local v16    # "partHeaderLen":I
    .restart local v19    # "count":I
    :goto_10d
    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v0

    if-nez v0, :cond_118

    .line 937
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto :goto_11b

    .line 940
    :cond_118
    invoke-virtual {v4, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 846
    .end local v6    # "headerLength":I
    .end local v7    # "dataLength":I
    .end local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v9    # "startPos":I
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v11    # "contentType":[B
    .end local v13    # "name":[B
    .end local v14    # "charset":Ljava/lang/Integer;
    .end local v15    # "endPos":I
    .end local v16    # "partHeaderLen":I
    :goto_11b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move/from16 v3, v19

    goto/16 :goto_12

    .line 944
    .end local v5    # "i":I
    .end local v19    # "count":I
    .restart local v3    # "count":I
    :cond_125
    return-object v4
.end method
