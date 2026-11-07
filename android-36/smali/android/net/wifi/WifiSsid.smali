.class public final Landroid/net/wifi/WifiSsid;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist NONE:Ljava/lang/String; = "<unknown ssid>"


# instance fields
.field private final blacklist mBytes:[B

.field public final greylist octets:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 188
    new-instance v0, Landroid/net/wifi/WifiSsid$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>([B)V
    .registers 5
    .param p1, "bytes"    # [B

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    .line 49
    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 50
    new-array p1, v0, [B

    .line 52
    :cond_11
    iput-object p1, p0, Landroid/net/wifi/WifiSsid;->mBytes:[B

    .line 54
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>([BLandroid/net/wifi/WifiSsid-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiSsid;-><init>([B)V

    return-void
.end method

.method public static greylist createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .registers 2
    .param p0, "asciiEncoded"    # Ljava/lang/String;

    .line 224
    invoke-static {p0}, Landroid/net/wifi/WifiSsid;->fromUtf8Text(Ljava/lang/CharSequence;)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decodeSsid([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p0, "ssidBytes"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 146
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 147
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 148
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 149
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 150
    .local v1, "out":Ljava/nio/CharBuffer;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 151
    .local v2, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 152
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 153
    const/4 v3, 0x0

    return-object v3

    .line 155
    :cond_2a
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist fromBytes([B)Landroid/net/wifi/WifiSsid;
    .registers 2
    .param p0, "bytes"    # [B

    .line 63
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiSsid;-><init>([B)V

    return-object v0
.end method

.method public static blacklist fromString(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .line 109
    if-nez p0, :cond_9

    .line 110
    new-instance v0, Landroid/net/wifi/WifiSsid;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiSsid;-><init>([B)V

    return-object v0

    .line 112
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 113
    .local v0, "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_33

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_33

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_33

    .line 114
    new-instance v2, Landroid/net/wifi/WifiSsid;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiSsid;-><init>([B)V

    return-object v2

    .line 116
    :cond_33
    new-instance v1, Landroid/net/wifi/WifiSsid;

    invoke-static {p0}, Landroid/net/wifi/util/HexEncoding;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiSsid;-><init>([B)V

    return-object v1
.end method

.method public static blacklist fromUtf8Text(Ljava/lang/CharSequence;)Landroid/net/wifi/WifiSsid;
    .registers 4
    .param p0, "utf8Text"    # Ljava/lang/CharSequence;

    .line 82
    if-nez p0, :cond_9

    .line 83
    new-instance v0, Landroid/net/wifi/WifiSsid;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiSsid;-><init>([B)V

    return-object v0

    .line 85
    :cond_9
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiSsid;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 160
    if-ne p0, p1, :cond_4

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_4
    instance-of v0, p1, Landroid/net/wifi/WifiSsid;

    if-nez v0, :cond_a

    .line 164
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/WifiSsid;

    .line 167
    .local v0, "that":Landroid/net/wifi/WifiSsid;
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->mBytes:[B

    iget-object v2, v0, Landroid/net/wifi/WifiSsid;->mBytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public whitelist getBytes()[B
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->mBytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getOctets()[B
    .registers 2

    .line 234
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUtf8Text()Ljava/lang/CharSequence;
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->mBytes:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiSsid;->decodeSsid([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->mBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 130
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->mBytes:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiSsid;->decodeSsid([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "utf8String":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 132
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->mBytes:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/wifi/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 184
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->mBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 185
    return-void
.end method
