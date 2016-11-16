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
.field private final hostname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    const-string/jumbo v0, "Server name value of host_name cannot be null"

    #@3
    .line 100
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    .line 102
    const/4 v1, 0x2

    #@a
    .line 99
    invoke-static {v0, v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    .line 103
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@10
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@13
    move-result-object v0

    #@14
    .line 98
    const/4 v1, 0x0

    #@15
    invoke-direct {p0, v1, v0}, Ljavax/net/ssl/SNIServerName;-><init>(I[B)V

    #@18
    .line 105
    iput-object p1, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    #@1a
    .line 108
    invoke-direct {p0}, Ljavax/net/ssl/SNIHostName;->checkHostName()V

    #@1d
    .line 95
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "encoded"    # [B

    #@0
    .prologue
    .line 164
    const/4 v2, 0x0

    #@1
    invoke-direct {p0, v2, p1}, Ljavax/net/ssl/SNIServerName;-><init>(I[B)V

    #@4
    .line 171
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@9
    move-result-object v2

    #@a
    .line 172
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@c
    .line 171
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@f
    move-result-object v2

    #@10
    .line 173
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@12
    .line 171
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@15
    move-result-object v0

    #@16
    .line 176
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 175
    invoke-static {v2}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 183
    invoke-direct {p0}, Ljavax/net/ssl/SNIHostName;->checkHostName()V

    #@2b
    .line 162
    return-void

    #@2c
    .line 177
    .end local v0    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :catch_0
    move-exception v1

    #@2d
    .line 178
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2f
    .line 179
    const-string/jumbo v3, "The encoded server name value is invalid"

    #@32
    .line 178
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v2
.end method

.method private checkHostName()V
    .locals 2

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 315
    const-string/jumbo v1, "Server name value of host_name cannot be empty"

    #@d
    .line 314
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 318
    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    #@13
    const-string/jumbo v1, "."

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 320
    const-string/jumbo v1, "Server name value of host_name cannot have the trailing dot"

    #@21
    .line 319
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 312
    :cond_1
    return-void
.end method

.method public static createSNIMatcher(Ljava/lang/String;)Ljavax/net/ssl/SNIMatcher;
    .locals 2
    .param p0, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 303
    if-nez p0, :cond_0

    #@2
    .line 304
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 305
    const-string/jumbo v1, "The regular expression cannot be null"

    #@7
    .line 304
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 308
    :cond_0
    new-instance v0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;

    #@d
    invoke-direct {v0, p0}, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;-><init>(Ljava/lang/String;)V

    #@10
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 219
    if-ne p0, p1, :cond_0

    #@2
    .line 220
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 223
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SNIHostName;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 224
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    #@a
    check-cast p1, Ljavax/net/ssl/SNIHostName;

    #@c
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 227
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public getAsciiName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 241
    iget-object v1, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    #@2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/lit16 v0, v1, 0x20f

    #@e
    .line 243
    .local v0, "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "type=host_name (0), value="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
