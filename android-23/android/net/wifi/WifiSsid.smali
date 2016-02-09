.class public Landroid/net/wifi/WifiSsid;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiSsid$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX_RADIX:I = 0x10

.field public static final NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final TAG:Ljava/lang/String; = "WifiSsid"


# instance fields
.field public final octets:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 224
    new-instance v0, Landroid/net/wifi/WifiSsid$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiSsid$1;-><init>()V

    #@5
    .line 223
    sput-object v0, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@5
    const/16 v1, 0x20

    #@7
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@c
    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiSsid;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiSsid;-><init>()V

    #@3
    return-void
.end method

.method private convertToBytes(Ljava/lang/String;)V
    .locals 9
    .param p1, "asciiEncoded"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x37

    #@2
    const/16 v7, 0x30

    #@4
    const/16 v6, 0x10

    #@6
    .line 81
    const/4 v2, 0x0

    #@7
    .line 82
    .local v2, "i":I
    const/4 v3, 0x0

    #@8
    .line 83
    .local v3, "val":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v4

    #@c
    if-ge v2, v4, :cond_4

    #@e
    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 85
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    #@15
    .line 155
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@17
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@1a
    .line 156
    add-int/lit8 v2, v2, 0x1

    #@1c
    .line 157
    goto :goto_0

    #@1d
    .line 87
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    #@1f
    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v4

    #@23
    sparse-switch v4, :sswitch_data_0

    #@26
    goto :goto_0

    #@27
    .line 94
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@29
    const/16 v5, 0x22

    #@2b
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@2e
    .line 95
    add-int/lit8 v2, v2, 0x1

    #@30
    .line 96
    goto :goto_0

    #@31
    .line 90
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@33
    const/16 v5, 0x5c

    #@35
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@38
    .line 91
    add-int/lit8 v2, v2, 0x1

    #@3a
    .line 92
    goto :goto_0

    #@3b
    .line 98
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@3d
    const/16 v5, 0xa

    #@3f
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@42
    .line 99
    add-int/lit8 v2, v2, 0x1

    #@44
    .line 100
    goto :goto_0

    #@45
    .line 102
    :sswitch_3
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@47
    const/16 v5, 0xd

    #@49
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4c
    .line 103
    add-int/lit8 v2, v2, 0x1

    #@4e
    .line 104
    goto :goto_0

    #@4f
    .line 106
    :sswitch_4
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@51
    const/16 v5, 0x9

    #@53
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@56
    .line 107
    add-int/lit8 v2, v2, 0x1

    #@58
    .line 108
    goto :goto_0

    #@59
    .line 110
    :sswitch_5
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@5b
    const/16 v5, 0x1b

    #@5d
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@60
    .line 111
    add-int/lit8 v2, v2, 0x1

    #@62
    .line 112
    goto :goto_0

    #@63
    .line 114
    :sswitch_6
    add-int/lit8 v2, v2, 0x1

    #@65
    .line 116
    add-int/lit8 v4, v2, 0x2

    #@67
    :try_start_0
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    const/16 v5, 0x10

    #@6d
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    move-result v3

    #@71
    .line 120
    :goto_1
    if-gez v3, :cond_1

    #@73
    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@76
    move-result v4

    #@77
    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    #@7a
    move-result v3

    #@7b
    .line 122
    if-ltz v3, :cond_0

    #@7d
    .line 123
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@7f
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@82
    .line 124
    add-int/lit8 v2, v2, 0x1

    #@84
    goto :goto_0

    #@85
    .line 117
    :catch_0
    move-exception v1

    #@86
    .line 118
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    #@87
    goto :goto_1

    #@88
    .line 126
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@8a
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@8d
    .line 127
    add-int/lit8 v2, v2, 0x2

    #@8f
    goto/16 :goto_0

    #@91
    .line 138
    :sswitch_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@94
    move-result v4

    #@95
    add-int/lit8 v3, v4, -0x30

    #@97
    .line 139
    add-int/lit8 v2, v2, 0x1

    #@99
    .line 140
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@9c
    move-result v4

    #@9d
    if-lt v4, v7, :cond_2

    #@9f
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@a2
    move-result v4

    #@a3
    if-gt v4, v8, :cond_2

    #@a5
    .line 141
    mul-int/lit8 v4, v3, 0x8

    #@a7
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@aa
    move-result v5

    #@ab
    add-int/2addr v4, v5

    #@ac
    add-int/lit8 v3, v4, -0x30

    #@ae
    .line 142
    add-int/lit8 v2, v2, 0x1

    #@b0
    .line 144
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@b3
    move-result v4

    #@b4
    if-lt v4, v7, :cond_3

    #@b6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@b9
    move-result v4

    #@ba
    if-gt v4, v8, :cond_3

    #@bc
    .line 145
    mul-int/lit8 v4, v3, 0x8

    #@be
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@c1
    move-result v5

    #@c2
    add-int/2addr v4, v5

    #@c3
    add-int/lit8 v3, v4, -0x30

    #@c5
    .line 146
    add-int/lit8 v2, v2, 0x1

    #@c7
    .line 148
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@c9
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@cc
    goto/16 :goto_0

    #@ce
    .line 80
    .end local v0    # "c":C
    :cond_4
    return-void

    #@cf
    .line 85
    nop

    #@d0
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    #@d6
    .line 88
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x5c -> :sswitch_1
        0x65 -> :sswitch_5
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x78 -> :sswitch_6
    .end sparse-switch
.end method

.method public static createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 1
    .param p0, "asciiEncoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    new-instance v0, Landroid/net/wifi/WifiSsid;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    #@5
    .line 54
    .local v0, "a":Landroid/net/wifi/WifiSsid;
    invoke-direct {v0, p0}, Landroid/net/wifi/WifiSsid;->convertToBytes(Ljava/lang/String;)V

    #@8
    .line 55
    return-object v0
.end method

.method public static createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 6
    .param p0, "hexStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    new-instance v0, Landroid/net/wifi/WifiSsid;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    #@5
    .line 60
    .local v0, "a":Landroid/net/wifi/WifiSsid;
    if-nez p0, :cond_0

    #@7
    return-object v0

    #@8
    .line 62
    :cond_0
    const-string/jumbo v4, "0x"

    #@b
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_1

    #@11
    const-string/jumbo v4, "0X"

    #@14
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_2

    #@1a
    .line 63
    :cond_1
    const/4 v4, 0x2

    #@1b
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    .line 66
    :cond_2
    const/4 v2, 0x0

    #@20
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@23
    move-result v4

    #@24
    add-int/lit8 v4, v4, -0x1

    #@26
    if-ge v2, v4, :cond_3

    #@28
    .line 69
    add-int/lit8 v4, v2, 0x2

    #@2a
    :try_start_0
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    const/16 v5, 0x10

    #@30
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    move-result v3

    #@34
    .line 73
    .local v3, "val":I
    :goto_1
    iget-object v4, v0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@36
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@39
    .line 66
    add-int/lit8 v2, v2, 0x2

    #@3b
    goto :goto_0

    #@3c
    .line 70
    .end local v3    # "val":I
    :catch_0
    move-exception v1

    #@3d
    .line 71
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    #@3e
    .restart local v3    # "val":I
    goto :goto_1

    #@3f
    .line 75
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "val":I
    :cond_3
    return-object v0
.end method

.method private isArrayAllZeroes([B)Z
    .locals 3
    .param p1, "ssidBytes"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 185
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 186
    aget-byte v1, p1, v0

    #@7
    if-eqz v1, :cond_0

    #@9
    return v2

    #@a
    .line 185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 188
    :cond_1
    const/4 v1, 0x1

    #@e
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 213
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getHexString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 203
    const-string/jumbo v1, "0x"

    #@3
    .line 204
    .local v1, "out":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    #@6
    move-result-object v2

    #@7
    .line 205
    .local v2, "ssidbytes":[B
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    #@d
    move-result v3

    #@e
    if-ge v0, v3, :cond_0

    #@10
    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1b
    const-string/jumbo v5, "%02x"

    #@1e
    const/4 v6, 0x1

    #@1f
    new-array v6, v6, [Ljava/lang/Object;

    #@21
    aget-byte v7, v2, v0

    #@23
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@26
    move-result-object v7

    #@27
    const/4 v8, 0x0

    #@28
    aput-object v7, v6, v8

    #@2a
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 205
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 208
    :cond_0
    return-object v1
.end method

.method public getOctets()[B
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 164
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5
    move-result-object v4

    #@6
    .line 168
    .local v4, "ssidBytes":[B
    iget-object v5, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    #@b
    move-result v5

    #@c
    if-lez v5, :cond_0

    #@e
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1

    #@14
    :cond_0
    const-string/jumbo v5, ""

    #@17
    return-object v5

    #@18
    .line 170
    :cond_1
    const-string/jumbo v5, "UTF-8"

    #@1b
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1e
    move-result-object v0

    #@1f
    .line 171
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@22
    move-result-object v5

    #@23
    .line 172
    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@25
    .line 171
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@28
    move-result-object v5

    #@29
    .line 173
    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@2b
    .line 171
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@2e
    move-result-object v1

    #@2f
    .line 174
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    const/16 v5, 0x20

    #@31
    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@34
    move-result-object v2

    #@35
    .line 176
    .local v2, "out":Ljava/nio/CharBuffer;
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@38
    move-result-object v5

    #@39
    const/4 v6, 0x1

    #@3a
    invoke-virtual {v1, v5, v2, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@3d
    move-result-object v3

    #@3e
    .line 177
    .local v3, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@41
    .line 178
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_2

    #@47
    .line 179
    const-string/jumbo v5, "<unknown ssid>"

    #@4a
    return-object v5

    #@4b
    .line 181
    :cond_2
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 219
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    #@b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@12
    .line 217
    return-void
.end method
