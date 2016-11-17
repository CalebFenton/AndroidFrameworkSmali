.class final Lsun/security/ssl/RenegotiationInfoExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# instance fields
.field private final renegotiated_connection:[B


# direct methods
.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 4
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 720
    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    #@3
    invoke-direct {p0, v1}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    #@6
    .line 723
    const/4 v1, 0x1

    #@7
    if-ge p2, v1, :cond_0

    #@9
    .line 724
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Invalid "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " extension"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 727
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@2f
    move-result v0

    #@30
    .line 728
    .local v0, "renegoInfoDataLen":I
    add-int/lit8 v1, v0, 0x1

    #@32
    if-eq v1, p2, :cond_1

    #@34
    .line 729
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v3, "Invalid "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    iget-object v3, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    const-string/jumbo v3, " extension"

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1

    #@57
    .line 732
    :cond_1
    new-array v1, v0, [B

    #@59
    iput-object v1, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@5b
    .line 733
    if-eqz v0, :cond_2

    #@5d
    .line 734
    iget-object v1, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@5f
    invoke-virtual {p1, v1, v2, v0}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    #@62
    .line 719
    :cond_2
    return-void
.end method

.method constructor <init>([B[B)V
    .locals 4
    .param p1, "clientVerifyData"    # [B
    .param p2, "serverVerifyData"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 700
    sget-object v0, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    #@3
    invoke-direct {p0, v0}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    #@6
    .line 702
    array-length v0, p1

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 704
    array-length v0, p1

    #@a
    array-length v1, p2

    #@b
    add-int/2addr v0, v1

    #@c
    new-array v0, v0, [B

    #@e
    .line 703
    iput-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@10
    .line 705
    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@12
    .line 706
    array-length v1, p1

    #@13
    .line 705
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@16
    .line 708
    array-length v0, p2

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 709
    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@1b
    .line 710
    array-length v1, p1

    #@1c
    array-length v2, p2

    #@1d
    .line 709
    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 699
    :cond_0
    :goto_0
    return-void

    #@21
    .line 714
    :cond_1
    new-array v0, v3, [B

    #@23
    iput-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@25
    goto :goto_0
.end method


# virtual methods
.method getRenegotiatedConnection()[B
    .locals 1

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@2
    return-object v0
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 751
    iget-object v1, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@3
    array-length v1, v1

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method length()I
    .locals 1

    #@0
    .prologue
    .line 741
    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@2
    array-length v0, v0

    #@3
    add-int/lit8 v0, v0, 0x5

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
    .line 745
    iget-object v0, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@2
    iget v0, v0, Lsun/security/ssl/ExtensionType;->id:I

    #@4
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@7
    .line 746
    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@9
    array-length v0, v0

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@f
    .line 747
    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@11
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    #@14
    .line 744
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Extension "

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
    const-string/jumbo v1, ", renegotiated_connection: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 760
    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@1b
    array-length v0, v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    const-string/jumbo v0, "<empty>"

    #@21
    .line 759
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 761
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    #@2c
    invoke-static {v0}, Lsun/security/ssl/Debug;->toString([B)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    goto :goto_0
.end method
