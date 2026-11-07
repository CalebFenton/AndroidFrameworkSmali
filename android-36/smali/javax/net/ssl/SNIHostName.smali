.class public final Ljavax/net/ssl/SNIHostName;
.super Ljavax/net/ssl/SNIServerName;
.source "SNIHostName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;
    }
.end annotation


# instance fields
.field private final greylist-max-o hostname:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;

    .line 98
    nop

    .line 100
    const-string v0, "Server name value of host_name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljavax/net/ssl/SNIServerName;-><init>(I[B)V

    .line 105
    iput-object p1, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljavax/net/ssl/SNIHostName;->checkHostName()V

    .line 109
    return-void
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 5
    .param p1, "encoded"    # [B

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljavax/net/ssl/SNIServerName;-><init>(I[B)V

    .line 171
    :try_start_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 172
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 173
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 175
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    nop

    .line 176
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_29} :catch_2e
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_4 .. :try_end_29} :catch_2e

    .line 180
    .end local v0    # "decoder":Ljava/nio/charset/CharsetDecoder;
    nop

    .line 183
    invoke-direct {p0}, Ljavax/net/ssl/SNIHostName;->checkHostName()V

    .line 184
    return-void

    .line 177
    :catch_2e
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The encoded server name value is invalid"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o checkHostName()V
    .registers 3

    .line 313
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 318
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 322
    return-void

    .line 319
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Server name value of host_name cannot have the trailing dot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Server name value of host_name cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api createSNIMatcher(Ljava/lang/String;)Ljavax/net/ssl/SNIMatcher;
    .registers 3
    .param p0, "regex"    # Ljava/lang/String;

    .line 303
    if-eqz p0, :cond_8

    .line 308
    new-instance v0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 304
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The regular expression cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 219
    if-ne p0, p1, :cond_4

    .line 220
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_4
    instance-of v0, p1, Ljavax/net/ssl/SNIHostName;

    if-eqz v0, :cond_14

    .line 224
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SNIHostName;

    iget-object v1, v1, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 227
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getAsciiName()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 240
    const/16 v0, 0x11

    .line 241
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 243
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type=host_name (0), value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
