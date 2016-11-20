.class final Lsun/security/ssl/HandshakeMessage$DistinguishedName;
.super Ljava/lang/Object;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinguishedName"
.end annotation


# instance fields
.field name:[B


# direct methods
.method constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "dn"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1191
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    #@9
    .line 1190
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 1
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1187
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    #@9
    .line 1186
    return-void
.end method


# virtual methods
.method getX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1196
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    #@2
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    #@4
    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    return-object v1

    #@8
    .line 1197
    :catch_0
    move-exception v0

    #@9
    .line 1198
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    #@b
    .line 1199
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 1198
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljavax/net/ssl/SSLProtocolException;

    #@18
    throw v1
.end method

.method length()I
    .locals 1

    #@0
    .prologue
    .line 1204
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    #@2
    array-length v0, v0

    #@3
    add-int/lit8 v0, v0, 0x2

    #@5
    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1212
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    #@2
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    #@4
    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@7
    .line 1213
    .local v0, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "<"

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, ">"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29
    .line 1211
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "output"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1208
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    #@2
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@5
    .line 1207
    return-void
.end method
