.class public Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;
.super Ljava/lang/Object;
.source "DnsPacketUtils.java"


# static fields
.field private static final blacklist sByteFormat:Ljava/text/DecimalFormat;

.field private static final blacklist sPos:Ljava/text/FieldPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    .line 54
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist domainNameToLabels(Ljava/lang/String;)[B
    .registers 8
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

    if-gt v0, v1, :cond_71

    .line 99
    invoke-static {p0}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->isHostName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 104
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_52

    aget-object v4, p0, v3

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3f

    if-gt v5, v6, :cond_3b

    .line 108
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 106
    :cond_3b
    new-instance p0, Landroid/net/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_52
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 100
    :cond_5a
    new-instance v0, Landroid/net/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse domain name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_71
    new-instance v0, Landroid/net/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain name exceeds max length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isHostName(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_16

    .line 126
    sget-object v0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 127
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 128
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist labelToString([B)Ljava/lang/String;
    .registers 7

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 65
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 66
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-le v2, v3, :cond_46

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1a

    goto :goto_46

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

    :cond_39
    int-to-char v2, v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 75
    :cond_3e
    :goto_3e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v2, v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    .line 70
    :cond_46
    :goto_46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    sget-object v3, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v2

    sget-object v2, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    invoke-virtual {v3, v4, v5, v0, v2}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 82
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseName(Ljava/nio/ByteBuffer;IIZ)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    if-gt p1, p2, :cond_9a

    .line 154
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-nez v0, :cond_11

    .line 157
    const-string p0, ""

    return-object p0

    :cond_11
    const/16 v2, 0xc0

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_1c

    :cond_17
    if-nez p3, :cond_33

    if-eq v1, v2, :cond_1c

    goto :goto_33

    .line 160
    :cond_1c
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Parse name fail, bad label type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    if-ne v1, v2, :cond_5f

    and-int/lit16 v0, v0, -0xc1

    shl-int/lit8 v0, v0, 0x8

    .line 163
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    if-ge v0, v2, :cond_57

    .line 169
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 p1, p1, 0x1

    .line 170
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IIZ)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    .line 166
    :cond_57
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Parse compression name fail, invalid compression"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_5f
    new-array v0, v0, [B

    .line 176
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 177
    invoke-static {v0}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->labelToString([B)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_92

    add-int/lit8 p1, p1, 0x1

    .line 181
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IIZ)Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    return-object v0

    :cond_7d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_92
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Parse name fail, invalid label length"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_9a
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Failed to parse name, too many labels"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 137
    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
