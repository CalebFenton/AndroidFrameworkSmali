.class Lsun/security/x509/AVAKeyword;
.super Ljava/lang/Object;
.source "AVA.java"


# static fields
.field private static final greylist keywordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsun/security/x509/AVAKeyword;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/x509/AVAKeyword;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist keyword:Ljava/lang/String;

.field private greylist oid:Lsun/security/util/ObjectIdentifier;

.field private blacklist rfc1779Compliant:Z

.field private blacklist rfc2253Compliant:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 1350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    .line 1351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    .line 1355
    new-instance v0, Lsun/security/x509/AVAKeyword;

    sget-object v1, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "CN"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1356
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "C"

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1357
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "L"

    sget-object v2, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1358
    new-instance v0, Lsun/security/x509/AVAKeyword;

    sget-object v1, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    const-string v2, "S"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1359
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "ST"

    sget-object v2, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1360
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "O"

    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1361
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "OU"

    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1362
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "T"

    sget-object v2, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1363
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "IP"

    sget-object v2, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1364
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "STREET"

    sget-object v2, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1365
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "DC"

    sget-object v2, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1367
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "DNQUALIFIER"

    sget-object v2, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1368
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "DNQ"

    sget-object v2, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1369
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "SURNAME"

    sget-object v2, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1370
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "GIVENNAME"

    sget-object v2, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1371
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "INITIALS"

    sget-object v2, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1372
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "GENERATION"

    sget-object v2, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1374
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "EMAIL"

    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1375
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "EMAILADDRESS"

    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1377
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "UID"

    sget-object v2, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1378
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string v1, "SERIALNUMBER"

    sget-object v2, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1379
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V
    .registers 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "rfc1779Compliant"    # Z
    .param p4, "rfc2253Compliant"    # Z

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    iput-object p1, p0, Lsun/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    .line 1205
    iput-object p2, p0, Lsun/security/x509/AVAKeyword;->oid:Lsun/security/util/ObjectIdentifier;

    .line 1206
    iput-boolean p3, p0, Lsun/security/x509/AVAKeyword;->rfc1779Compliant:Z

    .line 1207
    iput-boolean p4, p0, Lsun/security/x509/AVAKeyword;->rfc2253Compliant:Z

    .line 1210
    sget-object v0, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v0, Lsun/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    return-void
.end method

.method static blacklist getKeyword(Lsun/security/util/ObjectIdentifier;I)Ljava/lang/String;
    .registers 3
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "standard"    # I

    .line 1289
    nop

    .line 1290
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lsun/security/x509/AVAKeyword;->getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1289
    return-object v0
.end method

.method static blacklist getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;
    .registers 12
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "standard"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/ObjectIdentifier;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1303
    .local p2, "extraOidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, "oidString":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1305
    .local v1, "keywordString":Ljava/lang/String;
    if-nez v1, :cond_38

    .line 1306
    sget-object v2, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/AVAKeyword;

    .line 1307
    .local v2, "ak":Lsun/security/x509/AVAKeyword;
    if-eqz v2, :cond_1f

    invoke-direct {v2, p1}, Lsun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1308
    iget-object v3, v2, Lsun/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    return-object v3

    .line 1310
    .end local v2    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_1f
    nop

    .line 1331
    const/4 v2, 0x3

    if-ne p1, v2, :cond_24

    .line 1332
    return-object v0

    .line 1334
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1311
    :cond_38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8a

    .line 1314
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1315
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1316
    .local v2, "c":C
    const/16 v3, 0x41

    if-lt v2, v3, :cond_82

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_82

    const/16 v5, 0x61

    const/16 v6, 0x5a

    if-le v2, v6, :cond_57

    if-lt v2, v5, :cond_82

    .line 1320
    :cond_57
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_81

    .line 1321
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1322
    if-lt v2, v3, :cond_6a

    if-gt v2, v4, :cond_6a

    if-le v2, v6, :cond_76

    if-ge v2, v5, :cond_76

    :cond_6a
    const/16 v8, 0x30

    if-lt v2, v8, :cond_72

    const/16 v8, 0x39

    if-le v2, v8, :cond_76

    :cond_72
    const/16 v8, 0x5f

    if-ne v2, v8, :cond_79

    .line 1320
    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    .line 1324
    :cond_79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "keyword character is not a letter, digit, or underscore"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1328
    .end local v7    # "i":I
    :cond_81
    return-object v1

    .line 1317
    :cond_82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "keyword does not start with letter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1312
    .end local v2    # "c":C
    :cond_8a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "keyword cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static greylist getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;
    .registers 9
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "standard"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
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

    .line 1243
    .local p2, "extraKeywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1244
    const/4 v0, 0x3

    const-string v1, "\""

    if-ne p1, v0, :cond_37

    .line 1245
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_3b

    .line 1246
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid leading or trailing space in keyword \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_37
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1255
    :goto_3b
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1256
    .local v0, "oidString":Ljava/lang/String;
    if-nez v0, :cond_a1

    .line 1257
    sget-object v2, Lsun/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/AVAKeyword;

    .line 1258
    .local v2, "ak":Lsun/security/x509/AVAKeyword;
    if-eqz v2, :cond_56

    invoke-direct {v2, p1}, Lsun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1259
    iget-object v1, v2, Lsun/security/x509/AVAKeyword;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v1

    .line 1261
    .end local v2    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_56
    nop

    .line 1266
    const/4 v2, 0x1

    if-ne p1, v2, :cond_67

    const-string v2, "OID."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1267
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1270
    :cond_67
    const/4 v2, 0x0

    .line 1271
    .local v2, "number":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7c

    .line 1272
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1273
    .local v3, "ch":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_7c

    const/16 v4, 0x39

    if-gt v3, v4, :cond_7c

    .line 1274
    const/4 v2, 0x1

    .line 1277
    .end local v3    # "ch":C
    :cond_7c
    if-eqz v2, :cond_84

    .line 1280
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1278
    :cond_84
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid keyword \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1262
    .end local v2    # "number":Z
    :cond_a1
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static blacklist hasKeyword(Lsun/security/util/ObjectIdentifier;I)Z
    .registers 4
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "standard"    # I

    .line 1342
    sget-object v0, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AVAKeyword;

    .line 1343
    .local v0, "ak":Lsun/security/x509/AVAKeyword;
    if-nez v0, :cond_c

    .line 1344
    const/4 v1, 0x0

    return v1

    .line 1346
    :cond_c
    invoke-direct {v0, p1}, Lsun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v1

    return v1
.end method

.method private greylist isCompliant(I)Z
    .registers 5
    .param p1, "standard"    # I

    .line 1215
    packed-switch p1, :pswitch_data_24

    .line 1224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid standard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :pswitch_1c
    iget-boolean v0, p0, Lsun/security/x509/AVAKeyword;->rfc2253Compliant:Z

    return v0

    .line 1217
    :pswitch_1f
    iget-boolean v0, p0, Lsun/security/x509/AVAKeyword;->rfc1779Compliant:Z

    return v0

    .line 1221
    :pswitch_22
    const/4 v0, 0x1

    return v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method
