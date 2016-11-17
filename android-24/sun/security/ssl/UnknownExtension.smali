.class final Lsun/security/ssl/UnknownExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# instance fields
.field private final data:[B


# direct methods
.method constructor <init>(Lsun/security/ssl/HandshakeInStream;ILsun/security/ssl/ExtensionType;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "len"    # I
    .param p3, "type"    # Lsun/security/ssl/ExtensionType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    invoke-direct {p0, p3}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    #@3
    .line 254
    new-array v0, p2, [B

    #@5
    iput-object v0, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    #@7
    .line 256
    if-eqz p2, :cond_0

    #@9
    .line 257
    iget-object v0, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    #@b
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    #@e
    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method length()I
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    #@2
    array-length v0, v0

    #@3
    add-int/lit8 v0, v0, 0x4

    #@5
    return v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@2
    iget v0, v0, Lsun/security/ssl/ExtensionType;->id:I

    #@4
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@7
    .line 267
    iget-object v0, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    #@9
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@c
    .line 265
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Unsupported extension "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", data: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 272
    iget-object v1, p0, Lsun/security/ssl/UnknownExtension;->data:[B

    #@1b
    invoke-static {v1}, Lsun/security/ssl/Debug;->toString([B)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
