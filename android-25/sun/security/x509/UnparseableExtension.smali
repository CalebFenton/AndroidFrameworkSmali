.class Lsun/security/x509/UnparseableExtension;
.super Lsun/security/x509/Extension;
.source "CertificateExtensions.java"


# instance fields
.field private name:Ljava/lang/String;

.field private why:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lsun/security/x509/Extension;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .param p2, "why"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 359
    invoke-direct {p0, p1}, Lsun/security/x509/Extension;-><init>(Lsun/security/x509/Extension;)V

    #@3
    .line 361
    const-string/jumbo v3, ""

    #@6
    iput-object v3, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    #@8
    .line 363
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@b
    move-result-object v3

    #@c
    invoke-static {v3}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    .line 364
    .local v1, "extClass":Ljava/lang/Class;
    if-eqz v1, :cond_0

    #@12
    .line 365
    const-string/jumbo v3, "NAME"

    #@15
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@18
    move-result-object v2

    #@19
    .line 366
    .local v2, "field":Ljava/lang/reflect/Field;
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/String;

    #@25
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, " "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    iput-object v3, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 372
    .end local v1    # "extClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    iput-object p2, p0, Lsun/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    #@38
    .line 358
    return-void

    #@39
    .line 368
    :catch_0
    move-exception v0

    #@3a
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    .line 377
    const-string/jumbo v1, "Unparseable "

    #@10
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 377
    iget-object v1, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    #@16
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 377
    const-string/jumbo v1, "extension due to\n"

    #@1d
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 377
    iget-object v1, p0, Lsun/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    #@23
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 377
    const-string/jumbo v1, "\n\n"

    #@2a
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 378
    new-instance v1, Lsun/misc/HexDumpEncoder;

    #@30
    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@33
    invoke-virtual {p0}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method
