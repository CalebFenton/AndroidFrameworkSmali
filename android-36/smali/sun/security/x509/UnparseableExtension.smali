.class Lsun/security/x509/UnparseableExtension;
.super Lsun/security/x509/Extension;
.source "CertificateExtensions.java"


# instance fields
.field private blacklist name:Ljava/lang/String;

.field private blacklist why:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Lsun/security/x509/Extension;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .param p2, "why"    # Ljava/lang/Throwable;

    .line 360
    invoke-direct {p0, p1}, Lsun/security/x509/Extension;-><init>(Lsun/security/x509/Extension;)V

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    .line 364
    :try_start_7
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v0

    .line 365
    .local v0, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_33

    .line 366
    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 367
    .local v1, "field":Ljava/lang/reflect/Field;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_34

    .line 371
    .end local v0    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_33
    goto :goto_35

    .line 369
    :catch_34
    move-exception v0

    .line 373
    :goto_35
    iput-object p2, p0, Lsun/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    .line 374
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Unparseable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extension due to\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 379
    invoke-virtual {p0}, Lsun/security/x509/UnparseableExtension;->getExtensionValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    return-object v0
.end method
