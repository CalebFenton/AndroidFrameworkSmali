.class final Lsun/security/ssl/ServerNameExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/ServerNameExtension$ServerName;
    }
.end annotation


# static fields
.field static final NAME_HOST_NAME:I


# instance fields
.field private listLength:I

.field private names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/ServerNameExtension$ServerName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "hostnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 308
    sget-object v3, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    #@3
    invoke-direct {p0, v3}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    #@6
    .line 310
    iput v5, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@8
    .line 311
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@d
    move-result v4

    #@e
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    iput-object v3, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    #@13
    .line 312
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "hostname$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    .line 313
    .local v0, "hostname":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_0

    #@2b
    .line 316
    new-instance v2, Lsun/security/ssl/ServerNameExtension$ServerName;

    #@2d
    invoke-direct {v2, v5, v0}, Lsun/security/ssl/ServerNameExtension$ServerName;-><init>(ILjava/lang/String;)V

    #@30
    .line 317
    .local v2, "serverName":Lsun/security/ssl/ServerNameExtension$ServerName;
    iget-object v3, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    #@32
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@35
    .line 318
    iget v3, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@37
    iget v4, v2, Lsun/security/ssl/ServerNameExtension$ServerName;->length:I

    #@39
    add-int/2addr v3, v4

    #@3a
    iput v3, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@3c
    goto :goto_0

    #@3d
    .line 324
    .end local v0    # "hostname":Ljava/lang/String;
    .end local v2    # "serverName":Lsun/security/ssl/ServerNameExtension$ServerName;
    :cond_1
    iget-object v3, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    #@3f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@42
    move-result v3

    #@43
    const/4 v4, 0x1

    #@44
    if-le v3, v4, :cond_2

    #@46
    .line 325
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    #@48
    .line 326
    const-string/jumbo v4, "The ServerNameList MUST NOT contain more than one name of the same name_type"

    #@4b
    .line 325
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v3

    #@4f
    .line 334
    :cond_2
    iget v3, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@51
    if-nez v3, :cond_3

    #@53
    .line 335
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    #@55
    .line 336
    const-string/jumbo v4, "The ServerNameList cannot be empty"

    #@58
    .line 335
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v3

    #@5c
    .line 307
    :cond_3
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 5
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 342
    sget-object v2, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    #@3
    invoke-direct {p0, v2}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    #@6
    .line 344
    move v1, p2

    #@7
    .line 345
    .local v1, "remains":I
    const/4 v2, 0x2

    #@8
    if-lt p2, v2, :cond_2

    #@a
    .line 346
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@d
    move-result v2

    #@e
    iput v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@10
    .line 347
    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@12
    if-eqz v2, :cond_0

    #@14
    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@16
    add-int/lit8 v2, v2, 0x2

    #@18
    if-eq v2, p2, :cond_1

    #@1a
    .line 348
    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@1c
    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "Invalid "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    iget-object v4, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    const-string/jumbo v4, " extension"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 348
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v2

    #@3d
    .line 352
    :cond_1
    add-int/lit8 v1, p2, -0x2

    #@3f
    .line 353
    new-instance v2, Ljava/util/ArrayList;

    #@41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@44
    iput-object v2, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    #@46
    .line 354
    :goto_0
    if-lez v1, :cond_3

    #@48
    .line 355
    new-instance v0, Lsun/security/ssl/ServerNameExtension$ServerName;

    #@4a
    invoke-direct {v0, p1}, Lsun/security/ssl/ServerNameExtension$ServerName;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@4d
    .line 356
    .local v0, "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    iget-object v2, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    #@4f
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@52
    .line 357
    iget v2, v0, Lsun/security/ssl/ServerNameExtension$ServerName;->length:I

    #@54
    sub-int/2addr v1, v2

    #@55
    goto :goto_0

    #@56
    .line 361
    .end local v0    # "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    :cond_2
    if-nez p2, :cond_3

    #@58
    .line 362
    iput v3, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@5a
    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@5d
    move-result-object v2

    #@5e
    iput-object v2, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    #@60
    .line 366
    :cond_3
    if-eqz v1, :cond_4

    #@62
    .line 367
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@64
    const-string/jumbo v3, "Invalid server_name extension"

    #@67
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v2

    #@6b
    .line 341
    :cond_4
    return-void
.end method


# virtual methods
.method length()I
    .locals 1

    #@0
    .prologue
    .line 407
    iget v0, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x4

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget v0, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@8
    add-int/lit8 v0, v0, 0x6

    #@a
    goto :goto_0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 411
    iget-object v2, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@2
    iget v2, v2, Lsun/security/ssl/ExtensionType;->id:I

    #@4
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@7
    .line 412
    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@9
    add-int/lit8 v2, v2, 0x2

    #@b
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@e
    .line 413
    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 414
    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    #@14
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@17
    .line 416
    iget-object v2, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    #@19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lsun/security/ssl/ServerNameExtension$ServerName;

    #@29
    .line 417
    .local v0, "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    iget v2, v0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    #@2b
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@2e
    .line 418
    iget-object v2, v0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    #@30
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    #@33
    goto :goto_0

    #@34
    .line 410
    .end local v0    # "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    .end local v1    # "name$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 425
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lsun/security/ssl/ServerNameExtension$ServerName;

    #@17
    .line 426
    .local v1, "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "["

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, "]"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    goto :goto_0

    #@36
    .line 429
    .end local v1    # "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "Extension "

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    iget-object v4, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    const-string/jumbo v4, ", server_name: "

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    return-object v3
.end method
