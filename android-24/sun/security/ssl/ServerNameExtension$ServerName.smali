.class Lsun/security/ssl/ServerNameExtension$ServerName;
.super Ljava/lang/Object;
.source "HelloExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/ServerNameExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServerName"
.end annotation


# instance fields
.field final data:[B

.field final hostname:Ljava/lang/String;

.field final length:I

.field final type:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 378
    iput p1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    #@5
    .line 379
    iput-object p2, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->hostname:Ljava/lang/String;

    #@7
    .line 380
    const-string/jumbo v0, "UTF8"

    #@a
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    #@10
    .line 381
    iget-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    #@12
    array-length v0, v0

    #@13
    add-int/lit8 v0, v0, 0x3

    #@15
    iput v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->length:I

    #@17
    .line 377
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 3
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 386
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    #@9
    .line 387
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    #@f
    .line 388
    iget-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    #@11
    array-length v0, v0

    #@12
    add-int/lit8 v0, v0, 0x3

    #@14
    iput v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->length:I

    #@16
    .line 390
    iget v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 391
    new-instance v0, Ljava/lang/String;

    #@1c
    iget-object v1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    #@1e
    const-string/jumbo v2, "UTF8"

    #@21
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@24
    iput-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->hostname:Ljava/lang/String;

    #@26
    .line 385
    :goto_0
    return-void

    #@27
    .line 393
    :cond_0
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->hostname:Ljava/lang/String;

    #@2a
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 398
    iget v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "host_name: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->hostname:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v1, "unknown-"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    iget v1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string/jumbo v1, ": "

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    iget-object v1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    #@36
    invoke-static {v1}, Lsun/security/ssl/Debug;->toString([B)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    return-object v0
.end method
