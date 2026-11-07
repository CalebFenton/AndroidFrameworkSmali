.class public Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;
.super Ljava/lang/Object;
.source "DnsPacketUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsPacketUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsRecordParser"
.end annotation


# static fields
.field private static final blacklist MAXLABELCOUNT:I = 0x80

.field private static final blacklist MAXLABELSIZE:I = 0x3f

.field private static final blacklist MAXNAMESIZE:I = 0xff

.field private static final blacklist sByteFormat:Ljava/text/DecimalFormat;

.field private static final blacklist sPos:Ljava/text/FieldPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    .line 54
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist domainNameToLabels(Ljava/lang/String;)[B
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/ParseException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_75

    .line 99
    invoke-static {p0}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->isHostName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "labels":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v4, v2, :cond_54

    aget-object v5, v1, v4

    .line 105
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3f

    if-gt v6, v7, :cond_3b

    .line 108
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 104
    .end local v5    # "label":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 106
    .restart local v5    # "label":Ljava/lang/String;
    :cond_3b
    new-instance v2, Landroid/net/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v5    # "label":Ljava/lang/String;
    :cond_54
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 100
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "labels":[Ljava/lang/String;
    :cond_5c
    new-instance v0, Landroid/net/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse domain name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_75
    new-instance v0, Landroid/net/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain name exceeds max length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isHostName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "hostName"    # Ljava/lang/String;

    .line 126
    if-eqz p0, :cond_16

    sget-object v0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 127
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 128
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 126
    :goto_17
    return v0
.end method

.method static blacklist labelToString([B)Ljava/lang/String;
    .registers 8
    .param p0, "label"    # [B

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 66
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    .line 68
    .local v2, "b":I
    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-le v2, v3, :cond_46

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1a

    goto :goto_46

    .line 72
    :cond_1a
    const/16 v3, 0x22

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_3e

    if-eq v2, v4, :cond_3e

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x29

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x24

    if-ne v2, v3, :cond_39

    goto :goto_3e

    .line 79
    :cond_39
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 75
    :cond_3e
    :goto_3e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 70
    :cond_46
    :goto_46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    sget-object v3, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v2

    sget-object v6, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    invoke-virtual {v3, v4, v5, v0, v6}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 65
    .end local v2    # "b":I
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 82
    .end local v1    # "i":I
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist parseName(Ljava/nio/ByteBuffer;IIZ)Ljava/lang/String;
    .registers 11
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "depth"    # I
    .param p2, "maxLabelCount"    # I
    .param p3, "isNameCompressionSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 151
    if-gt p1, p2, :cond_a0

    .line 154
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 155
    .local v0, "len":I
    and-int/lit16 v1, v0, 0xc0

    .line 156
    .local v1, "mask":I
    if-nez v0, :cond_11

    .line 157
    const-string v2, ""

    return-object v2

    .line 158
    :cond_11
    const/16 v2, 0xc0

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_1c

    :cond_17
    if-nez p3, :cond_35

    if-eq v1, v2, :cond_1c

    goto :goto_35

    .line 160
    :cond_1c
    new-instance v2, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse name fail, bad label type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_35
    :goto_35
    if-ne v1, v2, :cond_61

    .line 163
    and-int/lit16 v2, v0, -0xc1

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    add-int/2addr v2, v3

    .line 164
    .local v2, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 165
    .local v3, "oldPos":I
    add-int/lit8 v4, v3, -0x2

    if-ge v2, v4, :cond_59

    .line 169
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, p2, p3}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IIZ)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "pointed":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    return-object v4

    .line 166
    .end local v4    # "pointed":Ljava/lang/String;
    :cond_59
    new-instance v4, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v5, "Parse compression name fail, invalid compression"

    invoke-direct {v4, v5}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    .end local v2    # "offset":I
    .end local v3    # "oldPos":I
    :cond_61
    new-array v2, v0, [B

    .line 176
    .local v2, "label":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 177
    invoke-static {v2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->labelToString([B)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "head":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_98

    .line 181
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, p2, p3}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IIZ)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "tail":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_80

    move-object v5, v3

    goto :goto_97

    :cond_80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_97
    return-object v5

    .line 179
    .end local v4    # "tail":Ljava/lang/String;
    :cond_98
    new-instance v4, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v5, "Parse name fail, invalid label length"

    invoke-direct {v4, v5}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    .end local v0    # "len":I
    .end local v1    # "mask":I
    .end local v2    # "label":[B
    .end local v3    # "head":Ljava/lang/String;
    :cond_a0
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Failed to parse name, too many labels"

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "depth"    # I
    .param p2, "isNameCompressionSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 137
    const/16 v0, 0x80

    invoke-static {p0, p1, v0, p2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
