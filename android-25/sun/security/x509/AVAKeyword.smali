.class Lsun/security/x509/AVAKeyword;
.super Ljava/lang/Object;
.source "AVA.java"


# static fields
.field private static final keywordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/AVAKeyword;",
            ">;"
        }
    .end annotation
.end field

.field private static final oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/x509/AVAKeyword;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keyword:Ljava/lang/String;

.field private oid:Lsun/security/util/ObjectIdentifier;

.field private rfc1779Compliant:Z

.field private rfc2253Compliant:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1367
    new-instance v0, Ljava/util/HashMap;

    #@4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@7
    sput-object v0, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    #@9
    .line 1368
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    sput-object v0, Lsun/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    #@10
    .line 1372
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@12
    const-string/jumbo v1, "CN"

    #@15
    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    #@17
    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@1a
    .line 1373
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@1c
    const-string/jumbo v1, "C"

    #@1f
    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    #@21
    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@24
    .line 1374
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@26
    const-string/jumbo v1, "L"

    #@29
    sget-object v2, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    #@2b
    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@2e
    .line 1375
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@30
    const-string/jumbo v1, "S"

    #@33
    sget-object v2, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    #@35
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@38
    .line 1376
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@3a
    const-string/jumbo v1, "ST"

    #@3d
    sget-object v2, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    #@3f
    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@42
    .line 1377
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@44
    const-string/jumbo v1, "O"

    #@47
    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    #@49
    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@4c
    .line 1378
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@4e
    const-string/jumbo v1, "OU"

    #@51
    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    #@53
    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@56
    .line 1379
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@58
    const-string/jumbo v1, "T"

    #@5b
    sget-object v2, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    #@5d
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@60
    .line 1380
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@62
    const-string/jumbo v1, "IP"

    #@65
    sget-object v2, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    #@67
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@6a
    .line 1381
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@6c
    const-string/jumbo v1, "STREET"

    #@6f
    sget-object v2, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    #@71
    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@74
    .line 1382
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@76
    const-string/jumbo v1, "DC"

    #@79
    sget-object v2, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    #@7b
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@7e
    .line 1384
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@80
    const-string/jumbo v1, "DNQUALIFIER"

    #@83
    sget-object v2, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    #@85
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@88
    .line 1385
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@8a
    const-string/jumbo v1, "DNQ"

    #@8d
    sget-object v2, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    #@8f
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@92
    .line 1386
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@94
    const-string/jumbo v1, "SURNAME"

    #@97
    sget-object v2, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    #@99
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@9c
    .line 1387
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@9e
    const-string/jumbo v1, "GIVENNAME"

    #@a1
    sget-object v2, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    #@a3
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@a6
    .line 1388
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@a8
    const-string/jumbo v1, "INITIALS"

    #@ab
    sget-object v2, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    #@ad
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@b0
    .line 1389
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@b2
    const-string/jumbo v1, "GENERATION"

    #@b5
    sget-object v2, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    #@b7
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@ba
    .line 1391
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@bc
    const-string/jumbo v1, "EMAIL"

    #@bf
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    #@c1
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@c4
    .line 1392
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@c6
    const-string/jumbo v1, "EMAILADDRESS"

    #@c9
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    #@cb
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@ce
    .line 1394
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@d0
    const-string/jumbo v1, "UID"

    #@d3
    sget-object v2, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    #@d5
    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@d8
    .line 1395
    new-instance v0, Lsun/security/x509/AVAKeyword;

    #@da
    const-string/jumbo v1, "SERIALNUMBER"

    #@dd
    sget-object v2, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    #@df
    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    #@e2
    .line 1190
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "rfc1779Compliant"    # Z
    .param p4, "rfc2253Compliant"    # Z

    #@0
    .prologue
    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1201
    iput-object p1, p0, Lsun/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    #@5
    .line 1202
    iput-object p2, p0, Lsun/security/x509/AVAKeyword;->oid:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 1203
    iput-boolean p3, p0, Lsun/security/x509/AVAKeyword;->rfc1779Compliant:Z

    #@9
    .line 1204
    iput-boolean p4, p0, Lsun/security/x509/AVAKeyword;->rfc2253Compliant:Z

    #@b
    .line 1207
    sget-object v0, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    #@d
    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1208
    sget-object v0, Lsun/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    #@12
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 1200
    return-void
.end method

.method static getKeyword(Lsun/security/util/ObjectIdentifier;I)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "standard"    # I

    #@0
    .prologue
    .line 1307
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 1306
    invoke-static {p0, p1, v0}, Lsun/security/x509/AVAKeyword;->getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;
    .locals 11
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "standard"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/ObjectIdentifier;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "extraOidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x7a

    #@2
    const/16 v9, 0x61

    #@4
    const/16 v8, 0x5a

    #@6
    const/16 v7, 0x41

    #@8
    const/4 v6, 0x0

    #@9
    .line 1320
    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 1321
    .local v4, "oidString":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Ljava/lang/String;

    #@13
    .line 1322
    .local v3, "keywordString":Ljava/lang/String;
    if-nez v3, :cond_0

    #@15
    .line 1323
    sget-object v5, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    #@17
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lsun/security/x509/AVAKeyword;

    #@1d
    .line 1324
    .local v0, "ak":Lsun/security/x509/AVAKeyword;
    if-eqz v0, :cond_a

    #@1f
    invoke-direct {v0, p1}, Lsun/security/x509/AVAKeyword;->isCompliant(I)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_a

    #@25
    .line 1325
    iget-object v5, v0, Lsun/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    #@27
    return-object v5

    #@28
    .line 1328
    .end local v0    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_1

    #@2e
    .line 1329
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v6, "keyword cannot be empty"

    #@33
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v5

    #@37
    .line 1331
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 1332
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v1

    #@3f
    .line 1333
    .local v1, "c":C
    if-lt v1, v7, :cond_2

    #@41
    if-le v1, v10, :cond_3

    #@43
    .line 1334
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@45
    .line 1335
    const-string/jumbo v6, "keyword does not start with letter"

    #@48
    .line 1334
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v5

    #@4c
    .line 1333
    :cond_3
    if-le v1, v8, :cond_4

    #@4e
    if-lt v1, v9, :cond_2

    #@50
    .line 1337
    :cond_4
    const/4 v2, 0x1

    #@51
    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@54
    move-result v5

    #@55
    if-ge v2, v5, :cond_9

    #@57
    .line 1338
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@5a
    move-result v1

    #@5b
    .line 1339
    if-lt v1, v7, :cond_5

    #@5d
    if-le v1, v10, :cond_7

    #@5f
    .line 1340
    :cond_5
    const/16 v5, 0x30

    #@61
    if-lt v1, v5, :cond_6

    #@63
    const/16 v5, 0x39

    #@65
    if-le v1, v5, :cond_8

    #@67
    :cond_6
    const/16 v5, 0x5f

    #@69
    if-eq v1, v5, :cond_8

    #@6b
    .line 1341
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@6d
    .line 1342
    const-string/jumbo v6, "keyword character is not a letter, digit, or underscore"

    #@70
    .line 1341
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v5

    #@74
    .line 1339
    :cond_7
    if-le v1, v8, :cond_8

    #@76
    if-lt v1, v9, :cond_5

    #@78
    .line 1337
    :cond_8
    add-int/lit8 v2, v2, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 1345
    :cond_9
    return-object v3

    #@7c
    .line 1348
    .end local v1    # "c":C
    .end local v2    # "i":I
    .restart local v0    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_a
    const/4 v5, 0x3

    #@7d
    if-ne p1, v5, :cond_b

    #@7f
    .line 1349
    return-object v4

    #@80
    .line 1351
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v6, "OID."

    #@88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v5

    #@94
    return-object v5
.end method

.method static getOID(Ljava/lang/String;I)Lsun/security/util/ObjectIdentifier;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "standard"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1234
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 1233
    invoke-static {p0, p1, v0}, Lsun/security/x509/AVAKeyword;->getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;
    .locals 7
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "standard"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lsun/security/util/ObjectIdentifier;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "extraKeywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x0

    #@2
    .line 1252
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4
    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    .line 1253
    const/4 v4, 0x3

    #@9
    if-ne p1, v4, :cond_1

    #@b
    .line 1254
    const-string/jumbo v4, " "

    #@e
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_0

    #@14
    const-string/jumbo v4, " "

    #@17
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    .line 1255
    :cond_0
    new-instance v4, Ljava/io/IOException;

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "Invalid leading or trailing space in keyword \""

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 1256
    const-string/jumbo v6, "\""

    #@32
    .line 1255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v4

    #@3e
    .line 1259
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@41
    move-result-object p0

    #@42
    .line 1264
    :cond_2
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v3

    #@46
    check-cast v3, Ljava/lang/String;

    #@48
    .line 1265
    .local v3, "oidString":Ljava/lang/String;
    if-nez v3, :cond_3

    #@4a
    .line 1266
    sget-object v4, Lsun/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    #@4c
    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Lsun/security/x509/AVAKeyword;

    #@52
    .line 1267
    .local v0, "ak":Lsun/security/x509/AVAKeyword;
    if-eqz v0, :cond_4

    #@54
    invoke-direct {v0, p1}, Lsun/security/x509/AVAKeyword;->isCompliant(I)Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_4

    #@5a
    .line 1268
    iget-object v4, v0, Lsun/security/x509/AVAKeyword;->oid:Lsun/security/util/ObjectIdentifier;

    #@5c
    return-object v4

    #@5d
    .line 1271
    .end local v0    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_3
    new-instance v4, Lsun/security/util/ObjectIdentifier;

    #@5f
    invoke-direct {v4, v3}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@62
    return-object v4

    #@63
    .line 1277
    .restart local v0    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_4
    const/4 v4, 0x2

    #@64
    if-ne p1, v4, :cond_8

    #@66
    .line 1278
    const-string/jumbo v4, "OID."

    #@69
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6c
    move-result v4

    #@6d
    if-nez v4, :cond_5

    #@6f
    .line 1279
    new-instance v4, Ljava/io/IOException;

    #@71
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v6, "Invalid RFC1779 keyword: "

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@88
    throw v4

    #@89
    .line 1281
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8c
    move-result-object p0

    #@8d
    .line 1287
    :cond_6
    :goto_0
    const/4 v2, 0x0

    #@8e
    .line 1288
    .local v2, "number":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@91
    move-result v4

    #@92
    if-eqz v4, :cond_7

    #@94
    .line 1289
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@97
    move-result v1

    #@98
    .line 1290
    .local v1, "ch":C
    const/16 v4, 0x30

    #@9a
    if-lt v1, v4, :cond_7

    #@9c
    const/16 v4, 0x39

    #@9e
    if-gt v1, v4, :cond_7

    #@a0
    .line 1291
    const/4 v2, 0x1

    #@a1
    .line 1294
    .end local v1    # "ch":C
    :cond_7
    if-nez v2, :cond_9

    #@a3
    .line 1295
    new-instance v4, Ljava/io/IOException;

    #@a5
    new-instance v5, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v6, "Invalid keyword \""

    #@ad
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v5

    #@b5
    const-string/jumbo v6, "\""

    #@b8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v4

    #@c4
    .line 1282
    .end local v2    # "number":Z
    :cond_8
    const/4 v4, 0x1

    #@c5
    if-ne p1, v4, :cond_6

    #@c7
    .line 1283
    const-string/jumbo v4, "OID."

    #@ca
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@cd
    move-result v4

    #@ce
    if-eqz v4, :cond_6

    #@d0
    .line 1284
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d3
    move-result-object p0

    #@d4
    goto :goto_0

    #@d5
    .line 1297
    .restart local v2    # "number":Z
    :cond_9
    new-instance v4, Lsun/security/util/ObjectIdentifier;

    #@d7
    invoke-direct {v4, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@da
    return-object v4
.end method

.method static hasKeyword(Lsun/security/util/ObjectIdentifier;I)Z
    .locals 2
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "standard"    # I

    #@0
    .prologue
    .line 1359
    sget-object v1, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/x509/AVAKeyword;

    #@8
    .line 1360
    .local v0, "ak":Lsun/security/x509/AVAKeyword;
    if-nez v0, :cond_0

    #@a
    .line 1361
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 1363
    :cond_0
    invoke-direct {v0, p1}, Lsun/security/x509/AVAKeyword;->isCompliant(I)Z

    #@f
    move-result v1

    #@10
    return v1
.end method

.method private isCompliant(I)Z
    .locals 3
    .param p1, "standard"    # I

    #@0
    .prologue
    .line 1212
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Invalid standard "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1214
    :pswitch_0
    iget-boolean v0, p0, Lsun/security/x509/AVAKeyword;->rfc1779Compliant:Z

    #@1f
    return v0

    #@20
    .line 1216
    :pswitch_1
    iget-boolean v0, p0, Lsun/security/x509/AVAKeyword;->rfc2253Compliant:Z

    #@22
    return v0

    #@23
    .line 1218
    :pswitch_2
    const/4 v0, 0x1

    #@24
    return v0

    #@25
    .line 1212
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
