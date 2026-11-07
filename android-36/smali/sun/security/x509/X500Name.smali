.class public Lsun/security/x509/X500Name;
.super Ljava/lang/Object;
.source "X500Name.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;
.implements Ljava/security/Principal;


# static fields
.field private static final greylist-max-o DNQUALIFIER_DATA:[I

.field public static final greylist DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o DOMAIN_COMPONENT_DATA:[I

.field public static final greylist DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o GENERATIONQUALIFIER_DATA:[I

.field public static final greylist GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o GIVENNAME_DATA:[I

.field public static final greylist GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o INITIALS_DATA:[I

.field public static final greylist INITIALS_OID:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o SERIALNUMBER_DATA:[I

.field public static final greylist SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o SURNAME_DATA:[I

.field public static final greylist SURNAME_OID:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o commonName_data:[I

.field public static final greylist commonName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o countryName_data:[I

.field public static final greylist countryName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o internedOIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ipAddress_data:[I

.field public static final greylist ipAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o localityName_data:[I

.field public static final greylist localityName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o orgName_data:[I

.field public static final greylist orgName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o orgUnitName_data:[I

.field public static final greylist orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o principalConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o principalField:Ljava/lang/reflect/Field;

.field private static final greylist-max-o stateName_data:[I

.field public static final greylist stateName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o streetAddress_data:[I

.field public static final greylist streetAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o title_data:[I

.field public static final greylist title_oid:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o userid_data:[I

.field public static final greylist userid_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private volatile greylist-max-o allAvaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o canonicalDn:Ljava/lang/String;

.field private greylist-max-o dn:Ljava/lang/String;

.field private greylist-max-o encoded:[B

.field private greylist-max-o names:[Lsun/security/x509/RDN;

.field private volatile greylist-max-o rdnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o rfc1779Dn:Ljava/lang/String;

.field private greylist-max-o rfc2253Dn:Ljava/lang/String;

.field private greylist-max-o x500Principal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 1141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    .line 1149
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x4

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->commonName_data:[I

    .line 1150
    filled-new-array {v1, v2, v3, v3}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    .line 1151
    filled-new-array {v1, v2, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    .line 1152
    const/4 v0, 0x6

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->countryName_data:[I

    .line 1153
    const/4 v0, 0x7

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/X500Name;->localityName_data:[I

    .line 1154
    const/16 v4, 0x8

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/X500Name;->stateName_data:[I

    .line 1155
    const/16 v4, 0x9

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/X500Name;->streetAddress_data:[I

    .line 1156
    const/16 v4, 0xa

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v4

    sput-object v4, Lsun/security/x509/X500Name;->orgName_data:[I

    .line 1157
    const/16 v4, 0xb

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    .line 1158
    const/16 v5, 0xc

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v5

    sput-object v5, Lsun/security/x509/X500Name;->title_data:[I

    .line 1159
    const/16 v5, 0x2a

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v5

    sput-object v5, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    .line 1160
    const/16 v5, 0x2b

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v5

    sput-object v5, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    .line 1161
    const/16 v5, 0x2c

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v5

    sput-object v5, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    .line 1162
    const/16 v5, 0x2e

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v1

    sput-object v1, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    .line 1164
    new-array v1, v4, [I

    fill-array-data v1, :array_178

    sput-object v1, Lsun/security/x509/X500Name;->ipAddress_data:[I

    .line 1165
    new-array v1, v0, [I

    fill-array-data v1, :array_192

    sput-object v1, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    .line 1167
    new-array v0, v0, [I

    fill-array-data v0, :array_1a4

    sput-object v0, Lsun/security/x509/X500Name;->userid_data:[I

    .line 1191
    sget-object v0, Lsun/security/x509/X500Name;->commonName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1196
    sget-object v0, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    .line 1199
    sget-object v0, Lsun/security/x509/X500Name;->countryName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1202
    sget-object v0, Lsun/security/x509/X500Name;->localityName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1205
    sget-object v0, Lsun/security/x509/X500Name;->orgName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1208
    sget-object v0, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1211
    sget-object v0, Lsun/security/x509/X500Name;->stateName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1214
    sget-object v0, Lsun/security/x509/X500Name;->streetAddress_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    .line 1217
    sget-object v0, Lsun/security/x509/X500Name;->title_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    .line 1221
    sget-object v0, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    .line 1224
    sget-object v0, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 1227
    sget-object v0, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 1230
    sget-object v0, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    .line 1233
    sget-object v0, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    .line 1234
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    .line 1241
    sget-object v0, Lsun/security/x509/X500Name;->ipAddress_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    .line 1251
    sget-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    .line 1252
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 1255
    sget-object v0, Lsun/security/x509/X500Name;->userid_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    .line 1405
    new-instance v0, Lsun/security/x509/X500Name$1;

    invoke-direct {v0}, Lsun/security/x509/X500Name$1;-><init>()V

    .line 1418
    .local v0, "pa":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/Object;>;"
    :try_start_159
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1420
    .local v1, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 1422
    .local v2, "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljavax/security/auth/x500/X500Principal;>;"
    sput-object v2, Lsun/security/x509/X500Name;->principalConstructor:Ljava/lang/reflect/Constructor;

    .line 1423
    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/reflect/Field;

    sput-object v3, Lsun/security/x509/X500Name;->principalField:Ljava/lang/reflect/Field;
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_16d} :catch_16f

    .line 1426
    .end local v1    # "result":[Ljava/lang/Object;
    .end local v2    # "constr":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljavax/security/auth/x500/X500Principal;>;"
    nop

    .line 1427
    .end local v0    # "pa":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/Object;>;"
    return-void

    .line 1424
    .restart local v0    # "pa":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/Object;>;"
    :catch_16f
    move-exception v1

    .line 1425
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/InternalError;

    const-string v3, "Could not obtain X500Principal access"

    invoke-direct {v2, v3, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :array_178
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x4
        0x1
        0x2a
        0x2
        0xb
        0x2
        0x1
    .end array-data

    :array_192
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x19
    .end array-data

    :array_1a4
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x1
    .end array-data
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "dname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "dname"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    if-eqz p1, :cond_3a

    .line 181
    const-string v0, "RFC2253"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 182
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseRFC2253DN(Ljava/lang/String;)V

    goto :goto_20

    .line 183
    :cond_11
    const-string v0, "DEFAULT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    :goto_20
    return-void

    .line 186
    :cond_21
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "commonName"    # Ljava/lang/String;
    .param p2, "organizationUnit"    # Ljava/lang/String;
    .param p3, "organizationName"    # Ljava/lang/String;
    .param p4, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x4

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 211
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 212
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v3

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v3, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 214
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 215
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v4, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v3

    .line 217
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v2

    .line 218
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v2

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v4, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v3

    .line 220
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v3

    .line 221
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v3

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v3

    .line 223
    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "commonName"    # Ljava/lang/String;
    .param p2, "organizationUnit"    # Ljava/lang/String;
    .param p3, "organizationName"    # Ljava/lang/String;
    .param p4, "localityName"    # Ljava/lang/String;
    .param p5, "stateName"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v0, 0x6

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 249
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 250
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v3

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v3, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 252
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 253
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v4, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v3

    .line 255
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 256
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v4, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v3

    .line 258
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 259
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v4, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v3

    .line 261
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v2

    .line 262
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v2

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v4, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, p5}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v3

    .line 264
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v2}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v3

    .line 265
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v3

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, p6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v3

    .line 267
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p1, "dname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-direct {p0, p1, p2}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerInputStream;)V
    .registers 2
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    .line 308
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "value"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    .line 298
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 3
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 317
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    .line 318
    return-void
.end method

.method public constructor blacklist <init>([Lsun/security/x509/RDN;)V
    .registers 5
    .param p1, "rdnArray"    # [Lsun/security/x509/RDN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    if-nez p1, :cond_b

    .line 277
    const/4 v0, 0x0

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    goto :goto_2a

    .line 279
    :cond_b
    invoke-virtual {p1}, [Lsun/security/x509/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 281
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v1, v1, v0

    if-eqz v1, :cond_22

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 282
    :cond_22
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot create an X500Name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    .end local v0    # "i":I
    :cond_2a
    :goto_2a
    return-void
.end method

.method public static greylist asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;
    .registers 4
    .param p0, "p"    # Ljavax/security/auth/x500/X500Principal;

    .line 1454
    :try_start_0
    sget-object v0, Lsun/security/x509/X500Name;->principalField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/X500Name;

    .line 1455
    .local v0, "name":Lsun/security/x509/X500Name;
    iput-object p0, v0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 1456
    return-object v0

    .line 1457
    .end local v0    # "name":Lsun/security/x509/X500Name;
    :catch_b
    move-exception v0

    .line 1458
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o checkNoNewLinesNorTabsAtBeginningOfDN(Ljava/lang/String;)V
    .registers 6
    .param p1, "input"    # Ljava/lang/String;

    .line 955
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 956
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 957
    .local v1, "c":C
    const/16 v2, 0x20

    if-eq v1, v2, :cond_20

    .line 958
    const/16 v2, 0x9

    if-eq v1, v2, :cond_18

    const/16 v2, 0xa

    if-eq v1, v2, :cond_18

    goto :goto_23

    .line 959
    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DN cannot start with newline nor tab"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 955
    .end local v1    # "c":C
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 964
    .end local v0    # "i":I
    :cond_23
    :goto_23
    return-void
.end method

.method static greylist-max-o countQuotes(Ljava/lang/String;II)I
    .registers 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 1023
    const/4 v0, 0x0

    .line 1026
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1027
    .local v1, "escape":I
    move v2, p1

    .local v2, "i":I
    :goto_3
    if-ge v2, p2, :cond_23

    .line 1028
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_13

    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_13

    .line 1029
    add-int/lit8 v0, v0, 0x1

    .line 1031
    :cond_13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1e

    add-int/lit8 v3, v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    move v1, v3

    .line 1027
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1035
    .end local v2    # "i":I
    :cond_23
    return v0
.end method

.method private static greylist-max-o escaped(IILjava/lang/String;)Z
    .registers 8
    .param p0, "rdnEnd"    # I
    .param p1, "searchOffset"    # I
    .param p2, "dnString"    # Ljava/lang/String;

    .line 1041
    const/16 v0, 0x5c

    const/4 v1, 0x1

    if-ne p0, v1, :cond_e

    add-int/lit8 v2, p0, -0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_e

    .line 1046
    return v1

    .line 1048
    :cond_e
    if-le p0, v1, :cond_21

    add-int/lit8 v2, p0, -0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_21

    add-int/lit8 v2, p0, -0x2

    .line 1049
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_21

    .line 1054
    return v1

    .line 1056
    :cond_21
    const/4 v2, 0x0

    if-le p0, v1, :cond_4b

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_4b

    add-int/lit8 v3, p0, -0x2

    .line 1057
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_4b

    .line 1062
    const/4 v3, 0x0

    .line 1063
    .local v3, "count":I
    add-int/lit8 p0, p0, -0x1

    .line 1064
    :goto_37
    if-lt p0, p1, :cond_44

    .line 1065
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_41

    .line 1066
    add-int/lit8 v3, v3, 0x1

    .line 1068
    :cond_41
    add-int/lit8 p0, p0, -0x1

    goto :goto_37

    .line 1072
    :cond_44
    rem-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_49

    goto :goto_4a

    :cond_49
    move v1, v2

    :goto_4a
    return v1

    .line 1075
    .end local v3    # "count":I
    :cond_4b
    return v2
.end method

.method private greylist-max-o findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .registers 4
    .param p1, "attribute"    # Lsun/security/util/ObjectIdentifier;

    .line 747
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v0, :cond_18

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 749
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    .line 750
    .local v1, "value":Lsun/security/util/DerValue;
    if-eqz v1, :cond_15

    .line 751
    return-object v1

    .line 748
    .end local v1    # "value":Lsun/security/util/DerValue;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 755
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o generateDN()V
    .registers 5

    .line 1087
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1088
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    .line 1089
    return-void

    .line 1092
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1093
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_3c

    .line 1094
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_21
    if-ltz v2, :cond_3c

    .line 1095
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    sub-int/2addr v3, v1

    if-eq v2, v3, :cond_2e

    .line 1096
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_2e
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 1101
    .end local v2    # "i":I
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    .line 1102
    return-void
.end method

.method private greylist-max-o generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1114
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1115
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1118
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1119
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_3a

    .line 1120
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1f
    if-ltz v2, :cond_3a

    .line 1121
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    sub-int/2addr v3, v1

    if-eq v2, v3, :cond_2c

    .line 1122
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :cond_2c
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 1127
    .end local v2    # "i":I
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 679
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    if-nez v0, :cond_8

    .line 680
    const-string v0, ""

    return-object v0

    .line 692
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 693
    .local v0, "fullname":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_30

    .line 694
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_22

    .line 695
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    :cond_22
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 699
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getString(Lsun/security/util/DerValue;)Ljava/lang/String;
    .registers 6
    .param p1, "attribute"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    if-nez p1, :cond_4

    .line 427
    const/4 v0, 0x0

    return-object v0

    .line 428
    :cond_4
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 434
    return-object v0

    .line 431
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a DER string encoding, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;
    .registers 3
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 1137
    sget-object v0, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    .line 1138
    .local v0, "interned":Lsun/security/util/ObjectIdentifier;
    if-nez v0, :cond_c

    move-object v1, p0

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method private greylist-max-o isWithinSubtree(Lsun/security/x509/X500Name;)Z
    .registers 7
    .param p1, "other"    # Lsun/security/x509/X500Name;

    .line 1309
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1310
    return v0

    .line 1312
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1313
    return v1

    .line 1315
    :cond_8
    iget-object v2, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_e

    .line 1316
    return v0

    .line 1318
    :cond_e
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_14

    .line 1319
    return v1

    .line 1321
    :cond_14
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    iget-object v3, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-ge v2, v3, :cond_1d

    .line 1322
    return v1

    .line 1324
    :cond_1d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    iget-object v3, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-ge v2, v3, :cond_35

    .line 1325
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v2

    iget-object v4, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1326
    return v1

    .line 1324
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1329
    .end local v2    # "i":I
    :cond_35
    return v0
.end method

.method private greylist-max-o parseDER(Lsun/security/util/DerInputStream;)V
    .registers 8
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, "nameseq":[Lsun/security/util/DerValue;
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v1

    .line 786
    .local v1, "derBytes":[B
    const/4 v2, 0x5

    :try_start_6
    invoke-virtual {p1, v2}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_b

    .line 796
    .end local v0    # "nameseq":[Lsun/security/util/DerValue;
    .local v2, "nameseq":[Lsun/security/util/DerValue;
    goto :goto_24

    .line 787
    .end local v2    # "nameseq":[Lsun/security/util/DerValue;
    .restart local v0    # "nameseq":[Lsun/security/util/DerValue;
    :catch_b
    move-exception v3

    .line 788
    .local v3, "ioe":Ljava/io/IOException;
    if-nez v1, :cond_10

    .line 789
    const/4 v2, 0x0

    .end local v0    # "nameseq":[Lsun/security/util/DerValue;
    .restart local v2    # "nameseq":[Lsun/security/util/DerValue;
    goto :goto_24

    .line 791
    .end local v2    # "nameseq":[Lsun/security/util/DerValue;
    .restart local v0    # "nameseq":[Lsun/security/util/DerValue;
    :cond_10
    new-instance v4, Lsun/security/util/DerValue;

    const/16 v5, 0x30

    invoke-direct {v4, v5, v1}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 793
    .local v4, "derVal":Lsun/security/util/DerValue;
    invoke-virtual {v4}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    .line 794
    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-direct {v5, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v5, v2}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 798
    .end local v0    # "nameseq":[Lsun/security/util/DerValue;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "derVal":Lsun/security/util/DerValue;
    .restart local v2    # "nameseq":[Lsun/security/util/DerValue;
    :goto_24
    if-nez v2, :cond_2c

    .line 799
    const/4 v0, 0x0

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    goto :goto_43

    .line 801
    :cond_2c
    array-length v0, v2

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    array-length v3, v2

    if-ge v0, v3, :cond_43

    .line 803
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v4, Lsun/security/x509/RDN;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    aput-object v4, v3, v0

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 806
    .end local v0    # "i":I
    :cond_43
    :goto_43
    return-void
.end method

.method private greylist-max-o parseDN(Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 874
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_7b

    .line 880
    :cond_a
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->checkNoNewLinesNorTabsAtBeginningOfDN(Ljava/lang/String;)V

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v0, "dnVector":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    const/4 v1, 0x0

    .line 886
    .local v1, "dnOffset":I
    const/4 v2, 0x0

    .line 888
    .local v2, "quoteCount":I
    move-object v3, p1

    .line 890
    .local v3, "dnString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 891
    .local v4, "searchOffset":I
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 892
    .local v6, "nextComma":I
    const/16 v7, 0x3b

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 893
    .local v8, "nextSemiColon":I
    :goto_22
    if-gez v6, :cond_45

    if-ltz v8, :cond_27

    goto :goto_45

    .line 936
    :cond_27
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 937
    .local v5, "rdnString":Ljava/lang/String;
    new-instance v7, Lsun/security/x509/RDN;

    invoke-direct {v7, v5, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 938
    .local v7, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 945
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lsun/security/x509/RDN;

    invoke-interface {v0, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lsun/security/x509/RDN;

    iput-object v9, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 946
    return-void

    .line 895
    .end local v5    # "rdnString":Ljava/lang/String;
    .end local v7    # "rdn":Lsun/security/x509/RDN;
    :cond_45
    :goto_45
    if-gez v8, :cond_49

    .line 896
    move v9, v6

    .local v9, "rdnEnd":I
    goto :goto_51

    .line 897
    .end local v9    # "rdnEnd":I
    :cond_49
    if-gez v6, :cond_4d

    .line 898
    move v9, v8

    .restart local v9    # "rdnEnd":I
    goto :goto_51

    .line 900
    .end local v9    # "rdnEnd":I
    :cond_4d
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 902
    .restart local v9    # "rdnEnd":I
    :goto_51
    invoke-static {v3, v4, v9}, Lsun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v10

    add-int/2addr v2, v10

    .line 911
    if-ltz v9, :cond_70

    const/4 v10, 0x1

    if-eq v2, v10, :cond_70

    .line 912
    invoke-static {v9, v4, v3}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_70

    .line 917
    invoke-virtual {v3, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 920
    .local v10, "rdnString":Ljava/lang/String;
    new-instance v11, Lsun/security/x509/RDN;

    invoke-direct {v11, v10, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 921
    .local v11, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    add-int/lit8 v1, v9, 0x1

    .line 927
    const/4 v2, 0x0

    .line 930
    .end local v10    # "rdnString":Ljava/lang/String;
    .end local v11    # "rdn":Lsun/security/x509/RDN;
    :cond_70
    add-int/lit8 v4, v9, 0x1

    .line 931
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 932
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    goto :goto_22

    .line 875
    .end local v0    # "dnVector":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    .end local v1    # "dnOffset":I
    .end local v2    # "quoteCount":I
    .end local v3    # "dnString":Ljava/lang/String;
    .end local v4    # "searchOffset":I
    .end local v6    # "nextComma":I
    .end local v8    # "nextSemiColon":I
    .end local v9    # "rdnEnd":I
    :cond_7b
    :goto_7b
    const/4 v0, 0x0

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 876
    return-void
.end method

.method private greylist-max-o parseRFC2253DN(Ljava/lang/String;)V
    .registers 10
    .param p1, "dnString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 969
    const/4 v0, 0x0

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 970
    return-void

    .line 973
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v0, "dnVector":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    const/4 v1, 0x0

    .line 976
    .local v1, "dnOffset":I
    const/4 v2, 0x0

    .line 977
    .local v2, "searchOffset":I
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 978
    .local v4, "rdnEnd":I
    :goto_19
    const-string v5, "RFC2253"

    if-ltz v4, :cond_3a

    .line 986
    if-lez v4, :cond_33

    invoke-static {v4, v2, p1}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 991
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 994
    .local v6, "rdnString":Ljava/lang/String;
    new-instance v7, Lsun/security/x509/RDN;

    invoke-direct {v7, v6, v5}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .local v7, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    add-int/lit8 v1, v4, 0x1

    .line 1001
    .end local v6    # "rdnString":Ljava/lang/String;
    .end local v7    # "rdn":Lsun/security/x509/RDN;
    :cond_33
    add-int/lit8 v2, v4, 0x1

    .line 1002
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_19

    .line 1006
    :cond_3a
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, "rdnString":Ljava/lang/String;
    new-instance v6, Lsun/security/x509/RDN;

    invoke-direct {v6, v3, v5}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    .local v6, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1015
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lsun/security/x509/RDN;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lsun/security/x509/RDN;

    iput-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 1016
    return-void
.end method


# virtual methods
.method public greylist allAvas()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lsun/security/x509/X500Name;->allAvaList:Ljava/util/List;

    .line 345
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    if-nez v0, :cond_23

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    .line 348
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/x509/RDN;->avas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 350
    .end local v0    # "i":I
    :cond_1d
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 351
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    iput-object v0, p0, Lsun/security/x509/X500Name;->allAvaList:Ljava/util/List;

    .line 353
    :cond_23
    return-object v0
.end method

.method public greylist asX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 4

    .line 1436
    iget-object v0, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_1c

    .line 1438
    :try_start_4
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1439
    .local v0, "args":[Ljava/lang/Object;
    sget-object v1, Lsun/security/x509/X500Name;->principalConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;

    iput-object v1, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 1442
    .end local v0    # "args":[Ljava/lang/Object;
    goto :goto_1c

    .line 1440
    :catch_13
    move-exception v0

    .line 1441
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1444
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public blacklist avaSize()I
    .registers 2

    .line 361
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;
    .registers 10
    .param p1, "other"    # Lsun/security/x509/X500Name;

    .line 1352
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1353
    return-object v0

    .line 1355
    :cond_4
    iget-object v1, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    .line 1356
    .local v1, "otherLen":I
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    .line 1357
    .local v2, "thisLen":I
    if-eqz v2, :cond_43

    if-nez v1, :cond_f

    goto :goto_43

    .line 1360
    :cond_f
    if-ge v2, v1, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v1

    .line 1364
    .local v3, "minLen":I
    :goto_14
    const/4 v4, 0x0

    .line 1365
    .local v4, "i":I
    :goto_15
    if-ge v4, v3, :cond_2b

    .line 1366
    iget-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v5, v5, v4

    iget-object v6, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 1367
    if-nez v4, :cond_2b

    .line 1368
    return-object v0

    .line 1365
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1376
    :cond_2b
    new-array v5, v4, [Lsun/security/x509/RDN;

    .line 1377
    .local v5, "ancestor":[Lsun/security/x509/RDN;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2e
    if-ge v6, v4, :cond_39

    .line 1378
    iget-object v7, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v7, v7, v6

    aput-object v7, v5, v6

    .line 1377
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 1381
    .end local v6    # "j":I
    :cond_39
    const/4 v6, 0x0

    .line 1383
    .local v6, "commonAncestor":Lsun/security/x509/X500Name;
    :try_start_3a
    new-instance v7, Lsun/security/x509/X500Name;

    invoke-direct {v7, v5}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_41

    .line 1386
    .end local v6    # "commonAncestor":Lsun/security/x509/X500Name;
    .local v7, "commonAncestor":Lsun/security/x509/X500Name;
    nop

    .line 1387
    return-object v7

    .line 1384
    .end local v7    # "commonAncestor":Lsun/security/x509/X500Name;
    .restart local v6    # "commonAncestor":Lsun/security/x509/X500Name;
    :catch_41
    move-exception v7

    .line 1385
    .local v7, "ioe":Ljava/io/IOException;
    return-object v0

    .line 1358
    .end local v3    # "minLen":I
    .end local v4    # "i":I
    .end local v5    # "ancestor":[Lsun/security/x509/RDN;
    .end local v6    # "commonAncestor":Lsun/security/x509/X500Name;
    .end local v7    # "ioe":Ljava/io/IOException;
    :cond_43
    :goto_43
    return-object v0
.end method

.method public blacklist constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 4
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1278
    if-nez p1, :cond_4

    .line 1279
    const/4 v0, -0x1

    .local v0, "constraintType":I
    goto :goto_3d

    .line 1280
    .end local v0    # "constraintType":I
    :cond_4
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 1281
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_3d

    .line 1283
    .end local v0    # "constraintType":I
    :cond_d
    move-object v0, p1

    check-cast v0, Lsun/security/x509/X500Name;

    .line 1284
    .local v0, "inputX500":Lsun/security/x509/X500Name;
    invoke-virtual {v0, p0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1285
    const/4 v1, 0x0

    move v0, v1

    .local v1, "constraintType":I
    goto :goto_3d

    .line 1286
    .end local v1    # "constraintType":I
    :cond_19
    iget-object v1, v0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-nez v1, :cond_21

    .line 1287
    const/4 v1, 0x2

    move v0, v1

    .restart local v1    # "constraintType":I
    goto :goto_3d

    .line 1288
    .end local v1    # "constraintType":I
    :cond_21
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-nez v1, :cond_29

    .line 1289
    const/4 v1, 0x1

    move v0, v1

    .restart local v1    # "constraintType":I
    goto :goto_3d

    .line 1290
    .end local v1    # "constraintType":I
    :cond_29
    invoke-direct {v0, p0}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1291
    const/4 v1, 0x1

    move v0, v1

    .restart local v1    # "constraintType":I
    goto :goto_3d

    .line 1292
    .end local v1    # "constraintType":I
    :cond_32
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1293
    const/4 v1, 0x2

    move v0, v1

    .restart local v1    # "constraintType":I
    goto :goto_3d

    .line 1295
    .end local v1    # "constraintType":I
    :cond_3b
    const/4 v1, 0x3

    move v0, v1

    .line 1298
    .local v0, "constraintType":I
    :goto_3d
    return v0
.end method

.method public blacklist emit(Lsun/security/util/DerOutputStream;)V
    .registers 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    invoke-virtual {p0, p1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 817
    return-void
.end method

.method public greylist encode(Lsun/security/util/DerOutputStream;)V
    .registers 5
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 826
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 827
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 826
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 829
    .end local v1    # "i":I
    :cond_15
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 830
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 392
    if-ne p0, p1, :cond_4

    .line 393
    const/4 v0, 0x1

    return v0

    .line 395
    :cond_4
    instance-of v0, p1, Lsun/security/x509/X500Name;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 396
    return v1

    .line 398
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/X500Name;

    .line 400
    .local v0, "other":Lsun/security/x509/X500Name;
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 401
    iget-object v1, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    iget-object v2, v0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 404
    :cond_1e
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    .line 405
    .local v2, "n":I
    iget-object v3, v0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-eq v2, v3, :cond_27

    .line 406
    return v1

    .line 408
    :cond_27
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v2, :cond_3e

    .line 409
    iget-object v4, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v4, v4, v3

    .line 410
    .local v4, "r1":Lsun/security/x509/RDN;
    iget-object v5, v0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v5, v5, v3

    .line 411
    .local v5, "r2":Lsun/security/x509/RDN;
    iget-object v6, v4, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v6, v6

    iget-object v7, v5, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v7, v7

    if-eq v6, v7, :cond_3b

    .line 412
    return v1

    .line 408
    .end local v4    # "r1":Lsun/security/x509/RDN;
    .end local v5    # "r2":Lsun/security/x509/RDN;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 416
    .end local v3    # "i":I
    :cond_3e
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "thisCanonical":Ljava/lang/String;
    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "otherCanonical":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method public blacklist findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .registers 4
    .param p1, "attribute"    # Lsun/security/util/ObjectIdentifier;

    .line 763
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v0, :cond_19

    .line 764
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_19

    .line 765
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    .line 766
    .local v1, "value":Lsun/security/util/DerValue;
    if-eqz v1, :cond_16

    .line 767
    return-object v1

    .line 764
    .end local v1    # "value":Lsun/security/util/DerValue;
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 771
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getCommonName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    sget-object v0, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 492
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getCountry()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    sget-object v0, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 453
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDNQualifier()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    sget-object v0, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 541
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDomain()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    sget-object v0, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 529
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getEncodedInternal()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Lsun/security/x509/X500Name;->encoded:[B

    if-nez v0, :cond_29

    .line 839
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 840
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 841
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    .line 842
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 841
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 844
    .end local v2    # "i":I
    :cond_1e
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 845
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->encoded:[B

    .line 847
    .end local v0    # "out":Lsun/security/util/DerOutputStream;
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_29
    iget-object v0, p0, Lsun/security/x509/X500Name;->encoded:[B

    return-object v0
.end method

.method public blacklist getGeneration()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    sget-object v0, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 589
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getGivenName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    sget-object v0, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 565
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getIP()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    sget-object v0, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 601
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getInitials()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    sget-object v0, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 577
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getLocality()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    sget-object v0, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 505
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 740
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOrganization()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    sget-object v0, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 466
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getOrganizationalUnit()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    sget-object v0, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 479
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getRFC1779Name()Ljava/lang/String;
    .registers 2

    .line 623
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 634
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 636
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 637
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    return-object v0

    .line 639
    :cond_d
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    return-object v0

    .line 643
    :cond_16
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRFC2253CanonicalName()Ljava/lang/String;
    .registers 5

    .line 704
    iget-object v0, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 705
    iget-object v0, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v0

    .line 711
    :cond_7
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    if-nez v0, :cond_13

    .line 712
    const-string v0, ""

    iput-object v0, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v0

    .line 725
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 726
    .local v0, "fullname":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_1f
    if-ltz v1, :cond_3a

    .line 727
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_2c

    .line 728
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    :cond_2c
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 732
    .end local v1    # "i":I
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    .line 733
    iget-object v1, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getRFC2253Name()Ljava/lang/String;
    .registers 2

    .line 652
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 663
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 664
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 665
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    return-object v0

    .line 667
    :cond_d
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    .line 668
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    return-object v0

    .line 671
    :cond_16
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getState()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    sget-object v0, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 517
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getSurname()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    sget-object v0, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 553
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getType()I
    .registers 2

    .line 441
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 383
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isEmpty()Z
    .registers 4

    .line 369
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    .line 370
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_14

    .line 371
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    iget-object v2, v2, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v2, v2

    if-eqz v2, :cond_11

    .line 372
    const/4 v2, 0x0

    return v2

    .line 370
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 375
    .end local v1    # "i":I
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist rdns()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    .line 325
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    if-nez v0, :cond_10

    .line 326
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 327
    iput-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    .line 329
    :cond_10
    return-object v0
.end method

.method public blacklist size()I
    .registers 2

    .line 336
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    return v0
.end method

.method public blacklist subtreeDepth()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1341
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 611
    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 612
    invoke-direct {p0}, Lsun/security/x509/X500Name;->generateDN()V

    .line 614
    :cond_7
    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    return-object v0
.end method
