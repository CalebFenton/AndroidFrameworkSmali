.class public Lsun/security/pkcs/PKCS9Attribute;
.super Ljava/lang/Object;
.source "PKCS9Attribute.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final BYTE_ARRAY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CHALLENGE_PASSWORD_STR:Ljava/lang/String; = "ChallengePassword"

.field public static final CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CONTENT_TYPE_STR:Ljava/lang/String; = "ContentType"

.field public static final COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final COUNTERSIGNATURE_STR:Ljava/lang/String; = "Countersignature"

.field public static final EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EMAIL_ADDRESS_STR:Ljava/lang/String; = "EmailAddress"

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_STR:Ljava/lang/String; = "ExtendedCertificateAttributes"

.field public static final EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENSION_REQUEST_STR:Ljava/lang/String; = "ExtensionRequest"

.field public static final ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field public static final ISSUER_SERIALNUMBER_STR:Ljava/lang/String; = "IssuerAndSerialNumber"

.field public static final MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final MESSAGE_DIGEST_STR:Ljava/lang/String; = "MessageDigest"

.field private static final NAME_OID_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final OID_NAME_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

.field private static final PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

.field private static final RSA_PROPRIETARY_STR:Ljava/lang/String; = "RSAProprietary"

.field public static final SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNATURE_TIMESTAMP_TOKEN_STR:Ljava/lang/String; = "SignatureTimestampToken"

.field public static final SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_CERTIFICATE_STR:Ljava/lang/String; = "SigningCertificate"

.field public static final SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_TIME_STR:Ljava/lang/String; = "SigningTime"

.field private static final SINGLE_VALUED:[Z

.field public static final SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SMIME_CAPABILITY_STR:Ljava/lang/String; = "SMIMECapability"

.field private static final SMIME_SIGNING_DESC_STR:Ljava/lang/String; = "SMIMESigningDesc"

.field public static final UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_ADDRESS_STR:Ljava/lang/String; = "UnstructuredAddress"

.field public static final UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_NAME_STR:Ljava/lang/String; = "UnstructuredName"

.field private static final VALUE_CLASSES:[Ljava/lang/Class;

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private index:I

.field private oid:Lsun/security/util/ObjectIdentifier;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    #@0
    .prologue
    const/16 v11, 0x9

    #@2
    const/4 v10, 0x2

    #@3
    const/4 v9, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    const/4 v7, 0x1

    #@6
    .line 183
    const-string/jumbo v3, "jar"

    #@9
    invoke-static {v3}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@c
    move-result-object v3

    #@d
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    #@f
    .line 188
    const/16 v3, 0x12

    #@11
    new-array v3, v3, [Lsun/security/util/ObjectIdentifier;

    #@13
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@15
    .line 193
    const/4 v1, 0x1

    #@16
    .local v1, "i":I
    :goto_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@18
    array-length v3, v3

    #@19
    add-int/lit8 v3, v3, -0x2

    #@1b
    if-ge v1, v3, :cond_0

    #@1d
    .line 194
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@1f
    .line 195
    const/4 v4, 0x7

    #@20
    new-array v4, v4, [I

    #@22
    aput v7, v4, v8

    #@24
    aput v10, v4, v7

    #@26
    const/16 v5, 0x348

    #@28
    aput v5, v4, v10

    #@2a
    const v5, 0x1bb8d

    #@2d
    const/4 v6, 0x3

    #@2e
    aput v5, v4, v6

    #@30
    const/4 v5, 0x4

    #@31
    aput v7, v4, v5

    #@33
    const/4 v5, 0x5

    #@34
    aput v11, v4, v5

    #@36
    const/4 v5, 0x6

    #@37
    aput v1, v4, v5

    #@39
    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@3c
    move-result-object v4

    #@3d
    .line 194
    aput-object v4, v3, v1

    #@3f
    .line 193
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 199
    :cond_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@44
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@46
    array-length v4, v4

    #@47
    add-int/lit8 v4, v4, -0x2

    #@49
    .line 200
    new-array v5, v11, [I

    #@4b
    fill-array-data v5, :array_0

    #@4e
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@51
    move-result-object v5

    #@52
    .line 199
    aput-object v5, v3, v4

    #@54
    .line 201
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@56
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@58
    array-length v4, v4

    #@59
    add-int/lit8 v4, v4, -0x1

    #@5b
    .line 202
    new-array v5, v11, [I

    #@5d
    fill-array-data v5, :array_1

    #@60
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@63
    move-result-object v5

    #@64
    .line 201
    aput-object v5, v3, v4

    #@66
    .line 205
    :try_start_0
    const-string/jumbo v3, "[B"

    #@69
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6c
    move-result-object v3

    #@6d
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 212
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@71
    aget-object v3, v3, v7

    #@73
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    #@75
    .line 213
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@77
    aget-object v3, v3, v10

    #@79
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

    #@7b
    .line 214
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@7d
    const/4 v4, 0x3

    #@7e
    aget-object v3, v3, v4

    #@80
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    #@82
    .line 215
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@84
    const/4 v4, 0x4

    #@85
    aget-object v3, v3, v4

    #@87
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    #@89
    .line 216
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@8b
    const/4 v4, 0x5

    #@8c
    aget-object v3, v3, v4

    #@8e
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

    #@90
    .line 217
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@92
    const/4 v4, 0x6

    #@93
    aget-object v3, v3, v4

    #@95
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

    #@97
    .line 218
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@99
    const/4 v4, 0x7

    #@9a
    aget-object v3, v3, v4

    #@9c
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

    #@9e
    .line 219
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@a0
    const/16 v4, 0x8

    #@a2
    aget-object v3, v3, v4

    #@a4
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    #@a6
    .line 221
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@a8
    aget-object v3, v3, v11

    #@aa
    .line 220
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

    #@ac
    .line 222
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@ae
    const/16 v4, 0xa

    #@b0
    aget-object v3, v3, v4

    #@b2
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    #@b4
    .line 225
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@b6
    const/16 v4, 0xe

    #@b8
    aget-object v3, v3, v4

    #@ba
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

    #@bc
    .line 226
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@be
    const/16 v4, 0xf

    #@c0
    aget-object v3, v3, v4

    #@c2
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

    #@c4
    .line 227
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@c6
    const/16 v4, 0x10

    #@c8
    aget-object v3, v3, v4

    #@ca
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

    #@cc
    .line 229
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@ce
    const/16 v4, 0x11

    #@d0
    aget-object v3, v3, v4

    #@d2
    .line 228
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    #@d4
    .line 257
    new-instance v3, Ljava/util/Hashtable;

    #@d6
    const/16 v4, 0x12

    #@d8
    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    #@db
    .line 256
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@dd
    .line 260
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@df
    const-string/jumbo v4, "emailaddress"

    #@e2
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@e4
    aget-object v5, v5, v7

    #@e6
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e9
    .line 261
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@eb
    const-string/jumbo v4, "unstructuredname"

    #@ee
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@f0
    aget-object v5, v5, v10

    #@f2
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 262
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@f7
    const-string/jumbo v4, "contenttype"

    #@fa
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@fc
    const/4 v6, 0x3

    #@fd
    aget-object v5, v5, v6

    #@ff
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@102
    .line 263
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@104
    const-string/jumbo v4, "messagedigest"

    #@107
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@109
    const/4 v6, 0x4

    #@10a
    aget-object v5, v5, v6

    #@10c
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10f
    .line 264
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@111
    const-string/jumbo v4, "signingtime"

    #@114
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@116
    const/4 v6, 0x5

    #@117
    aget-object v5, v5, v6

    #@119
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11c
    .line 265
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@11e
    const-string/jumbo v4, "countersignature"

    #@121
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@123
    const/4 v6, 0x6

    #@124
    aget-object v5, v5, v6

    #@126
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@129
    .line 266
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@12b
    const-string/jumbo v4, "challengepassword"

    #@12e
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@130
    const/4 v6, 0x7

    #@131
    aget-object v5, v5, v6

    #@133
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@136
    .line 267
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@138
    const-string/jumbo v4, "unstructuredaddress"

    #@13b
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@13d
    const/16 v6, 0x8

    #@13f
    aget-object v5, v5, v6

    #@141
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@144
    .line 268
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@146
    const-string/jumbo v4, "extendedcertificateattributes"

    #@149
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@14b
    aget-object v5, v5, v11

    #@14d
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@150
    .line 269
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@152
    const-string/jumbo v4, "issuerandserialnumber"

    #@155
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@157
    const/16 v6, 0xa

    #@159
    aget-object v5, v5, v6

    #@15b
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15e
    .line 270
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@160
    const-string/jumbo v4, "rsaproprietary"

    #@163
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@165
    const/16 v6, 0xb

    #@167
    aget-object v5, v5, v6

    #@169
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16c
    .line 271
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@16e
    const-string/jumbo v4, "rsaproprietary"

    #@171
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@173
    const/16 v6, 0xc

    #@175
    aget-object v5, v5, v6

    #@177
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17a
    .line 272
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@17c
    const-string/jumbo v4, "signingdescription"

    #@17f
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@181
    const/16 v6, 0xd

    #@183
    aget-object v5, v5, v6

    #@185
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@188
    .line 273
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@18a
    const-string/jumbo v4, "extensionrequest"

    #@18d
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@18f
    const/16 v6, 0xe

    #@191
    aget-object v5, v5, v6

    #@193
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@196
    .line 274
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@198
    const-string/jumbo v4, "smimecapability"

    #@19b
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@19d
    const/16 v6, 0xf

    #@19f
    aget-object v5, v5, v6

    #@1a1
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a4
    .line 275
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@1a6
    const-string/jumbo v4, "signingcertificate"

    #@1a9
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@1ab
    const/16 v6, 0x10

    #@1ad
    aget-object v5, v5, v6

    #@1af
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b2
    .line 276
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@1b4
    const-string/jumbo v4, "signaturetimestamptoken"

    #@1b7
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@1b9
    const/16 v6, 0x11

    #@1bb
    aget-object v5, v5, v6

    #@1bd
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c0
    .line 284
    new-instance v3, Ljava/util/Hashtable;

    #@1c2
    const/16 v4, 0x10

    #@1c4
    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    #@1c7
    .line 283
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@1c9
    .line 286
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@1cb
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@1cd
    aget-object v4, v4, v7

    #@1cf
    const-string/jumbo v5, "EmailAddress"

    #@1d2
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d5
    .line 287
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@1d7
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@1d9
    aget-object v4, v4, v10

    #@1db
    const-string/jumbo v5, "UnstructuredName"

    #@1de
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e1
    .line 288
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@1e3
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@1e5
    const/4 v5, 0x3

    #@1e6
    aget-object v4, v4, v5

    #@1e8
    const-string/jumbo v5, "ContentType"

    #@1eb
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ee
    .line 289
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@1f0
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@1f2
    const/4 v5, 0x4

    #@1f3
    aget-object v4, v4, v5

    #@1f5
    const-string/jumbo v5, "MessageDigest"

    #@1f8
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fb
    .line 290
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@1fd
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@1ff
    const/4 v5, 0x5

    #@200
    aget-object v4, v4, v5

    #@202
    const-string/jumbo v5, "SigningTime"

    #@205
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@208
    .line 291
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@20a
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@20c
    const/4 v5, 0x6

    #@20d
    aget-object v4, v4, v5

    #@20f
    const-string/jumbo v5, "Countersignature"

    #@212
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@215
    .line 292
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@217
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@219
    const/4 v5, 0x7

    #@21a
    aget-object v4, v4, v5

    #@21c
    const-string/jumbo v5, "ChallengePassword"

    #@21f
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@222
    .line 293
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@224
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@226
    const/16 v5, 0x8

    #@228
    aget-object v4, v4, v5

    #@22a
    const-string/jumbo v5, "UnstructuredAddress"

    #@22d
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@230
    .line 294
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@232
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@234
    aget-object v4, v4, v11

    #@236
    const-string/jumbo v5, "ExtendedCertificateAttributes"

    #@239
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23c
    .line 295
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@23e
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@240
    const/16 v5, 0xa

    #@242
    aget-object v4, v4, v5

    #@244
    const-string/jumbo v5, "IssuerAndSerialNumber"

    #@247
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24a
    .line 296
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@24c
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@24e
    const/16 v5, 0xb

    #@250
    aget-object v4, v4, v5

    #@252
    const-string/jumbo v5, "RSAProprietary"

    #@255
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@258
    .line 297
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@25a
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@25c
    const/16 v5, 0xc

    #@25e
    aget-object v4, v4, v5

    #@260
    const-string/jumbo v5, "RSAProprietary"

    #@263
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@266
    .line 298
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@268
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@26a
    const/16 v5, 0xd

    #@26c
    aget-object v4, v4, v5

    #@26e
    const-string/jumbo v5, "SMIMESigningDesc"

    #@271
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@274
    .line 299
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@276
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@278
    const/16 v5, 0xe

    #@27a
    aget-object v4, v4, v5

    #@27c
    const-string/jumbo v5, "ExtensionRequest"

    #@27f
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@282
    .line 300
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@284
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@286
    const/16 v5, 0xf

    #@288
    aget-object v4, v4, v5

    #@28a
    const-string/jumbo v5, "SMIMECapability"

    #@28d
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@290
    .line 301
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@292
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@294
    const/16 v5, 0x10

    #@296
    aget-object v4, v4, v5

    #@298
    const-string/jumbo v5, "SigningCertificate"

    #@29b
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29e
    .line 302
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@2a0
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@2a2
    const/16 v5, 0x11

    #@2a4
    aget-object v4, v4, v5

    #@2a6
    const-string/jumbo v5, "SignatureTimestampToken"

    #@2a9
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ac
    .line 310
    const/16 v3, 0x12

    #@2ae
    new-array v3, v3, [[Ljava/lang/Byte;

    #@2b0
    .line 311
    aput-object v9, v3, v8

    #@2b2
    .line 312
    new-array v4, v7, [Ljava/lang/Byte;

    #@2b4
    new-instance v5, Ljava/lang/Byte;

    #@2b6
    const/16 v6, 0x16

    #@2b8
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@2bb
    aput-object v5, v4, v8

    #@2bd
    aput-object v4, v3, v7

    #@2bf
    .line 313
    new-array v4, v7, [Ljava/lang/Byte;

    #@2c1
    new-instance v5, Ljava/lang/Byte;

    #@2c3
    const/16 v6, 0x16

    #@2c5
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@2c8
    aput-object v5, v4, v8

    #@2ca
    aput-object v4, v3, v10

    #@2cc
    .line 314
    new-array v4, v7, [Ljava/lang/Byte;

    #@2ce
    new-instance v5, Ljava/lang/Byte;

    #@2d0
    const/4 v6, 0x6

    #@2d1
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@2d4
    aput-object v5, v4, v8

    #@2d6
    const/4 v5, 0x3

    #@2d7
    aput-object v4, v3, v5

    #@2d9
    .line 315
    new-array v4, v7, [Ljava/lang/Byte;

    #@2db
    new-instance v5, Ljava/lang/Byte;

    #@2dd
    const/4 v6, 0x4

    #@2de
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@2e1
    aput-object v5, v4, v8

    #@2e3
    const/4 v5, 0x4

    #@2e4
    aput-object v4, v3, v5

    #@2e6
    .line 316
    new-array v4, v7, [Ljava/lang/Byte;

    #@2e8
    new-instance v5, Ljava/lang/Byte;

    #@2ea
    const/16 v6, 0x17

    #@2ec
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@2ef
    aput-object v5, v4, v8

    #@2f1
    const/4 v5, 0x5

    #@2f2
    aput-object v4, v3, v5

    #@2f4
    .line 317
    new-array v4, v7, [Ljava/lang/Byte;

    #@2f6
    new-instance v5, Ljava/lang/Byte;

    #@2f8
    const/16 v6, 0x30

    #@2fa
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@2fd
    aput-object v5, v4, v8

    #@2ff
    const/4 v5, 0x6

    #@300
    aput-object v4, v3, v5

    #@302
    .line 318
    new-array v4, v10, [Ljava/lang/Byte;

    #@304
    new-instance v5, Ljava/lang/Byte;

    #@306
    const/16 v6, 0x13

    #@308
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@30b
    aput-object v5, v4, v8

    #@30d
    .line 319
    new-instance v5, Ljava/lang/Byte;

    #@30f
    const/16 v6, 0x14

    #@311
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@314
    aput-object v5, v4, v7

    #@316
    .line 318
    const/4 v5, 0x7

    #@317
    aput-object v4, v3, v5

    #@319
    .line 320
    new-array v4, v10, [Ljava/lang/Byte;

    #@31b
    new-instance v5, Ljava/lang/Byte;

    #@31d
    const/16 v6, 0x13

    #@31f
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@322
    aput-object v5, v4, v8

    #@324
    .line 321
    new-instance v5, Ljava/lang/Byte;

    #@326
    const/16 v6, 0x14

    #@328
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@32b
    aput-object v5, v4, v7

    #@32d
    .line 320
    const/16 v5, 0x8

    #@32f
    aput-object v4, v3, v5

    #@331
    .line 322
    new-array v4, v7, [Ljava/lang/Byte;

    #@333
    new-instance v5, Ljava/lang/Byte;

    #@335
    const/16 v6, 0x31

    #@337
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@33a
    aput-object v5, v4, v8

    #@33c
    aput-object v4, v3, v11

    #@33e
    .line 323
    new-array v4, v7, [Ljava/lang/Byte;

    #@340
    new-instance v5, Ljava/lang/Byte;

    #@342
    const/16 v6, 0x30

    #@344
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@347
    aput-object v5, v4, v8

    #@349
    const/16 v5, 0xa

    #@34b
    aput-object v4, v3, v5

    #@34d
    .line 324
    const/16 v4, 0xb

    #@34f
    aput-object v9, v3, v4

    #@351
    .line 325
    const/16 v4, 0xc

    #@353
    aput-object v9, v3, v4

    #@355
    .line 326
    const/16 v4, 0xd

    #@357
    aput-object v9, v3, v4

    #@359
    .line 327
    new-array v4, v7, [Ljava/lang/Byte;

    #@35b
    new-instance v5, Ljava/lang/Byte;

    #@35d
    const/16 v6, 0x30

    #@35f
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@362
    aput-object v5, v4, v8

    #@364
    const/16 v5, 0xe

    #@366
    aput-object v4, v3, v5

    #@368
    .line 328
    new-array v4, v7, [Ljava/lang/Byte;

    #@36a
    new-instance v5, Ljava/lang/Byte;

    #@36c
    const/16 v6, 0x30

    #@36e
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@371
    aput-object v5, v4, v8

    #@373
    const/16 v5, 0xf

    #@375
    aput-object v4, v3, v5

    #@377
    .line 329
    new-array v4, v7, [Ljava/lang/Byte;

    #@379
    new-instance v5, Ljava/lang/Byte;

    #@37b
    const/16 v6, 0x30

    #@37d
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@380
    aput-object v5, v4, v8

    #@382
    const/16 v5, 0x10

    #@384
    aput-object v4, v3, v5

    #@386
    .line 330
    new-array v4, v7, [Ljava/lang/Byte;

    #@388
    new-instance v5, Ljava/lang/Byte;

    #@38a
    const/16 v6, 0x30

    #@38c
    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    #@38f
    aput-object v5, v4, v8

    #@391
    const/16 v5, 0x11

    #@393
    aput-object v4, v3, v5

    #@395
    .line 310
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    #@397
    .line 333
    const/16 v3, 0x12

    #@399
    new-array v3, v3, [Ljava/lang/Class;

    #@39b
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@39d
    .line 337
    :try_start_1
    const-string/jumbo v3, "[Ljava.lang.String;"

    #@3a0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3a3
    move-result-object v2

    #@3a4
    .line 339
    .local v2, "str":Ljava/lang/Class;
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3a6
    const/4 v4, 0x0

    #@3a7
    const/4 v5, 0x0

    #@3a8
    aput-object v4, v3, v5

    #@3aa
    .line 340
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3ac
    const/4 v4, 0x1

    #@3ad
    aput-object v2, v3, v4

    #@3af
    .line 341
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3b1
    const/4 v4, 0x2

    #@3b2
    aput-object v2, v3, v4

    #@3b4
    .line 342
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3b6
    .line 343
    const-string/jumbo v4, "sun.security.util.ObjectIdentifier"

    #@3b9
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3bc
    move-result-object v4

    #@3bd
    .line 342
    const/4 v5, 0x3

    #@3be
    aput-object v4, v3, v5

    #@3c0
    .line 344
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3c2
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    #@3c4
    const/4 v5, 0x4

    #@3c5
    aput-object v4, v3, v5

    #@3c7
    .line 345
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3c9
    const-string/jumbo v4, "java.util.Date"

    #@3cc
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3cf
    move-result-object v4

    #@3d0
    const/4 v5, 0x5

    #@3d1
    aput-object v4, v3, v5

    #@3d3
    .line 346
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3d5
    .line 347
    const-string/jumbo v4, "[Lsun.security.pkcs.SignerInfo;"

    #@3d8
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3db
    move-result-object v4

    #@3dc
    .line 346
    const/4 v5, 0x6

    #@3dd
    aput-object v4, v3, v5

    #@3df
    .line 348
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3e1
    .line 349
    const-string/jumbo v4, "java.lang.String"

    #@3e4
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3e7
    move-result-object v4

    #@3e8
    .line 348
    const/4 v5, 0x7

    #@3e9
    aput-object v4, v3, v5

    #@3eb
    .line 350
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3ed
    const/16 v4, 0x8

    #@3ef
    aput-object v2, v3, v4

    #@3f1
    .line 351
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3f3
    const/4 v4, 0x0

    #@3f4
    const/16 v5, 0x9

    #@3f6
    aput-object v4, v3, v5

    #@3f8
    .line 352
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@3fa
    const/4 v4, 0x0

    #@3fb
    const/16 v5, 0xa

    #@3fd
    aput-object v4, v3, v5

    #@3ff
    .line 353
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@401
    const/4 v4, 0x0

    #@402
    const/16 v5, 0xb

    #@404
    aput-object v4, v3, v5

    #@406
    .line 354
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@408
    const/4 v4, 0x0

    #@409
    const/16 v5, 0xc

    #@40b
    aput-object v4, v3, v5

    #@40d
    .line 355
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@40f
    const/4 v4, 0x0

    #@410
    const/16 v5, 0xd

    #@412
    aput-object v4, v3, v5

    #@414
    .line 356
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@416
    .line 357
    const-string/jumbo v4, "sun.security.x509.CertificateExtensions"

    #@419
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@41c
    move-result-object v4

    #@41d
    .line 356
    const/16 v5, 0xe

    #@41f
    aput-object v4, v3, v5

    #@421
    .line 358
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@423
    const/4 v4, 0x0

    #@424
    const/16 v5, 0xf

    #@426
    aput-object v4, v3, v5

    #@428
    .line 359
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@42a
    const/4 v4, 0x0

    #@42b
    const/16 v5, 0x10

    #@42d
    aput-object v4, v3, v5

    #@42f
    .line 360
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@431
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    #@433
    const/16 v5, 0x11

    #@435
    aput-object v4, v3, v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@437
    .line 370
    const/16 v3, 0x12

    #@439
    new-array v3, v3, [Z

    #@43b
    fill-array-data v3, :array_2

    #@43e
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    #@440
    .line 180
    return-void

    #@441
    .line 206
    .end local v2    # "str":Ljava/lang/Class;
    :catch_0
    move-exception v0

    #@442
    .line 207
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    #@444
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@447
    move-result-object v4

    #@448
    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    #@44b
    throw v3

    #@44c
    .line 361
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    #@44d
    .line 362
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    #@44f
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@452
    move-result-object v4

    #@453
    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    #@456
    throw v3

    #@457
    .line 200
    nop

    #@458
    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xc
    .end array-data

    #@46e
    .line 202
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xe
    .end array-data

    #@484
    .line 370
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 446
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    #@6
    move-result-object v0

    #@7
    .line 448
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v0, :cond_0

    #@9
    .line 449
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Unrecognized attribute name "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 451
    const-string/jumbo v3, " constructing PKCS9Attribute."

    #@1e
    .line 450
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 449
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 453
    :cond_0
    invoke-direct {p0, v0, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    #@2d
    .line 445
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 13
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v12, -0x1

    #@2
    const/4 v11, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 483
    new-instance v1, Lsun/security/util/DerInputStream;

    #@9
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@c
    move-result-object v8

    #@d
    invoke-direct {v1, v8}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@10
    .line 484
    .local v1, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v9}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@13
    move-result-object v5

    #@14
    .line 486
    .local v5, "val":[Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@17
    move-result v8

    #@18
    if-eqz v8, :cond_0

    #@1a
    .line 487
    new-instance v8, Ljava/io/IOException;

    #@1c
    const-string/jumbo v9, "Excess data parsing PKCS9Attribute"

    #@1f
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v8

    #@23
    .line 489
    :cond_0
    array-length v8, v5

    #@24
    if-eq v8, v9, :cond_1

    #@26
    .line 490
    new-instance v8, Ljava/io/IOException;

    #@28
    const-string/jumbo v9, "PKCS9Attribute doesn\'t have two components"

    #@2b
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v8

    #@2f
    .line 493
    :cond_1
    aget-object v8, v5, v10

    #@31
    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    #@34
    move-result-object v8

    #@35
    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@37
    .line 494
    aget-object v8, v5, v11

    #@39
    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    #@3c
    move-result-object v0

    #@3d
    .line 495
    .local v0, "content":[B
    new-instance v8, Lsun/security/util/DerInputStream;

    #@3f
    invoke-direct {v8, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@42
    invoke-virtual {v8, v11}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    #@45
    move-result-object v2

    #@46
    .line 497
    .local v2, "elems":[Lsun/security/util/DerValue;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@48
    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@4a
    invoke-static {v8, v9, v11}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    #@4d
    move-result v8

    #@4e
    iput v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@50
    .line 498
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@52
    if-ne v8, v12, :cond_3

    #@54
    .line 499
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    #@56
    if-eqz v8, :cond_2

    #@58
    .line 500
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    #@5a
    new-instance v9, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v10, "Unsupported signer attribute: "

    #@62
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v9

    #@66
    iget-object v10, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@73
    .line 502
    :cond_2
    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@75
    .line 503
    return-void

    #@76
    .line 507
    :cond_3
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    #@78
    iget v9, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@7a
    aget-boolean v8, v8, v9

    #@7c
    if-eqz v8, :cond_4

    #@7e
    array-length v8, v2

    #@7f
    if-le v8, v11, :cond_4

    #@81
    .line 508
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attribute;->throwSingleValuedException()V

    #@84
    .line 512
    :cond_4
    const/4 v3, 0x0

    #@85
    .local v3, "i":I
    :goto_0
    array-length v8, v2

    #@86
    if-ge v3, v8, :cond_6

    #@88
    .line 513
    new-instance v4, Ljava/lang/Byte;

    #@8a
    aget-object v8, v2, v3

    #@8c
    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    #@8e
    invoke-direct {v4, v8}, Ljava/lang/Byte;-><init>(B)V

    #@91
    .line 515
    .local v4, "tag":Ljava/lang/Byte;
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    #@93
    iget v9, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@95
    aget-object v8, v8, v9

    #@97
    invoke-static {v4, v8, v10}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    #@9a
    move-result v8

    #@9b
    if-ne v8, v12, :cond_5

    #@9d
    .line 516
    invoke-direct {p0, v4}, Lsun/security/pkcs/PKCS9Attribute;->throwTagException(Ljava/lang/Byte;)V

    #@a0
    .line 512
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@a2
    goto :goto_0

    #@a3
    .line 519
    .end local v4    # "tag":Ljava/lang/Byte;
    :cond_6
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@a5
    packed-switch v8, :pswitch_data_0

    #@a8
    .line 481
    :goto_1
    return-void

    #@a9
    .line 524
    :pswitch_0
    array-length v8, v2

    #@aa
    new-array v6, v8, [Ljava/lang/String;

    #@ac
    .line 526
    .local v6, "values":[Ljava/lang/String;
    const/4 v3, 0x0

    #@ad
    :goto_2
    array-length v8, v2

    #@ae
    if-ge v3, v8, :cond_7

    #@b0
    .line 527
    aget-object v8, v2, v3

    #@b2
    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    #@b5
    move-result-object v8

    #@b6
    aput-object v8, v6, v3

    #@b8
    .line 526
    add-int/lit8 v3, v3, 0x1

    #@ba
    goto :goto_2

    #@bb
    .line 528
    :cond_7
    iput-object v6, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@bd
    goto :goto_1

    #@be
    .line 533
    .end local v6    # "values":[Ljava/lang/String;
    :pswitch_1
    aget-object v8, v2, v10

    #@c0
    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    #@c3
    move-result-object v8

    #@c4
    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@c6
    goto :goto_1

    #@c7
    .line 537
    :pswitch_2
    aget-object v8, v2, v10

    #@c9
    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOctetString()[B

    #@cc
    move-result-object v8

    #@cd
    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@cf
    goto :goto_1

    #@d0
    .line 541
    :pswitch_3
    new-instance v8, Lsun/security/util/DerInputStream;

    #@d2
    aget-object v9, v2, v10

    #@d4
    invoke-virtual {v9}, Lsun/security/util/DerValue;->toByteArray()[B

    #@d7
    move-result-object v9

    #@d8
    invoke-direct {v8, v9}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@db
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    #@de
    move-result-object v8

    #@df
    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@e1
    goto :goto_1

    #@e2
    .line 546
    :pswitch_4
    array-length v8, v2

    #@e3
    new-array v7, v8, [Lsun/security/pkcs/SignerInfo;

    #@e5
    .line 547
    .local v7, "values":[Lsun/security/pkcs/SignerInfo;
    const/4 v3, 0x0

    #@e6
    :goto_3
    array-length v8, v2

    #@e7
    if-ge v3, v8, :cond_8

    #@e9
    .line 549
    new-instance v8, Lsun/security/pkcs/SignerInfo;

    #@eb
    aget-object v9, v2, v3

    #@ed
    invoke-virtual {v9}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@f0
    move-result-object v9

    #@f1
    invoke-direct {v8, v9}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    #@f4
    .line 548
    aput-object v8, v7, v3

    #@f6
    .line 547
    add-int/lit8 v3, v3, 0x1

    #@f8
    goto :goto_3

    #@f9
    .line 550
    :cond_8
    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@fb
    goto :goto_1

    #@fc
    .line 555
    .end local v7    # "values":[Lsun/security/pkcs/SignerInfo;
    :pswitch_5
    aget-object v8, v2, v10

    #@fe
    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    #@101
    move-result-object v8

    #@102
    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@104
    goto :goto_1

    #@105
    .line 559
    :pswitch_6
    new-instance v8, Ljava/io/IOException;

    #@107
    const-string/jumbo v9, "PKCS9 extended-certificate attribute not supported."

    #@10a
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10d
    throw v8

    #@10e
    .line 563
    :pswitch_7
    new-instance v8, Ljava/io/IOException;

    #@110
    const-string/jumbo v9, "PKCS9 IssuerAndSerialNumberattribute not supported."

    #@113
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@116
    throw v8

    #@117
    .line 568
    :pswitch_8
    new-instance v8, Ljava/io/IOException;

    #@119
    const-string/jumbo v9, "PKCS9 RSA DSI attributes11 and 12, not supported."

    #@11c
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11f
    throw v8

    #@120
    .line 572
    :pswitch_9
    new-instance v8, Ljava/io/IOException;

    #@122
    const-string/jumbo v9, "PKCS9 attribute #13 not supported."

    #@125
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@128
    throw v8

    #@129
    .line 576
    :pswitch_a
    new-instance v8, Lsun/security/x509/CertificateExtensions;

    #@12b
    .line 577
    new-instance v9, Lsun/security/util/DerInputStream;

    #@12d
    aget-object v10, v2, v10

    #@12f
    invoke-virtual {v10}, Lsun/security/util/DerValue;->toByteArray()[B

    #@132
    move-result-object v10

    #@133
    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@136
    .line 576
    invoke-direct {v8, v9}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    #@139
    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@13b
    goto/16 :goto_1

    #@13d
    .line 581
    :pswitch_b
    new-instance v8, Ljava/io/IOException;

    #@13f
    const-string/jumbo v9, "PKCS9 SMIMECapability attribute not supported."

    #@142
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@145
    throw v8

    #@146
    .line 585
    :pswitch_c
    new-instance v8, Lsun/security/pkcs/SigningCertificateInfo;

    #@148
    aget-object v9, v2, v10

    #@14a
    invoke-virtual {v9}, Lsun/security/util/DerValue;->toByteArray()[B

    #@14d
    move-result-object v9

    #@14e
    invoke-direct {v8, v9}, Lsun/security/pkcs/SigningCertificateInfo;-><init>([B)V

    #@151
    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@153
    goto/16 :goto_1

    #@155
    .line 589
    :pswitch_d
    aget-object v8, v2, v10

    #@157
    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    #@15a
    move-result-object v8

    #@15b
    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@15d
    goto/16 :goto_1

    #@15f
    .line 519
    nop

    #@160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 0
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 425
    invoke-direct {p0, p1, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    #@6
    .line 424
    return-void
.end method

.method public static getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    .line 785
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 777
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    #@2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lsun/security/util/ObjectIdentifier;

    #@e
    return-object v0
.end method

.method static indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "start"    # I

    #@0
    .prologue
    .line 835
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 836
    aget-object v1, p1, v0

    #@6
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    return v0

    #@d
    .line 835
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 838
    :cond_1
    const/4 v1, -0x1

    #@11
    return v1
.end method

.method private init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .locals 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    .line 460
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-static {p1, v1, v2}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    #@8
    move-result v1

    #@9
    iput v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@b
    .line 461
    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@d
    const/4 v2, -0x1

    #@e
    if-ne v1, v2, :cond_0

    #@10
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    #@12
    .line 462
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 463
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1a
    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Wrong value class  for attribute "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 466
    const-string/jumbo v3, " constructing PKCS9Attribute; was "

    #@2d
    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 467
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 467
    const-string/jumbo v3, ", should be "

    #@40
    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 468
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 463
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v1

    #@54
    .line 461
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    #@56
    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@58
    aget-object v0, v1, v2

    #@5a
    goto :goto_0

    #@5b
    .line 470
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iput-object p2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@5d
    .line 457
    return-void
.end method

.method private throwSingleValuedException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 846
    new-instance v0, Ljava/io/IOException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Single-value attribute "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 847
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@10
    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 847
    const-string/jumbo v2, " ("

    #@17
    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 847
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 847
    const-string/jumbo v2, ")"

    #@26
    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 848
    const-string/jumbo v2, " has multiple values."

    #@2d
    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0
.end method

.method private throwTagException(Ljava/lang/Byte;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 858
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    #@2
    iget v4, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@4
    aget-object v0, v3, v4

    #@6
    .line 859
    .local v0, "expectedTags":[Ljava/lang/Byte;
    new-instance v2, Ljava/lang/StringBuffer;

    #@8
    const/16 v3, 0x64

    #@a
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    #@d
    .line 860
    .local v2, "msg":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "Value of attribute "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    .line 861
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@15
    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    .line 862
    const-string/jumbo v3, " ("

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 863
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    .line 864
    const-string/jumbo v3, ") has wrong tag: "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 865
    invoke-virtual {p1}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 866
    const-string/jumbo v3, ".  Expected tags: "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    .line 868
    const/4 v3, 0x0

    #@3d
    aget-object v3, v0, v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 870
    const/4 v1, 0x1

    #@47
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@48
    if-ge v1, v3, :cond_0

    #@4a
    .line 871
    const-string/jumbo v3, ", "

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 872
    aget-object v3, v0, v1

    #@52
    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@59
    .line 870
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 874
    :cond_0
    const-string/jumbo v3, "."

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@62
    .line 875
    new-instance v3, Ljava/io/IOException;

    #@64
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v3
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x31

    #@2
    .line 604
    new-instance v4, Lsun/security/util/DerOutputStream;

    #@4
    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    #@7
    .line 605
    .local v4, "temp":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@9
    invoke-virtual {v4, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@c
    .line 606
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@e
    packed-switch v8, :pswitch_data_0

    #@11
    .line 720
    :goto_0
    :pswitch_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@13
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@16
    .line 721
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v8

    #@1a
    const/16 v9, 0x30

    #@1c
    invoke-virtual {v0, v9, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@1f
    .line 723
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@22
    move-result-object v8

    #@23
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    #@26
    .line 603
    return-void

    #@27
    .line 608
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    :pswitch_1
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@29
    check-cast v8, [B

    #@2b
    invoke-virtual {v4, v8}, Lsun/security/util/DerOutputStream;->write([B)V

    #@2e
    goto :goto_0

    #@2f
    .line 613
    :pswitch_2
    iget-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@31
    check-cast v7, [Ljava/lang/String;

    #@33
    .line 615
    .local v7, "values":[Ljava/lang/String;
    array-length v8, v7

    #@34
    .line 614
    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    #@36
    .line 617
    .local v6, "temps":[Lsun/security/util/DerOutputStream;
    const/4 v3, 0x0

    #@37
    .local v3, "i":I
    :goto_1
    array-length v8, v7

    #@38
    if-ge v3, v8, :cond_0

    #@3a
    .line 618
    new-instance v8, Lsun/security/util/DerOutputStream;

    #@3c
    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    #@3f
    aput-object v8, v6, v3

    #@41
    .line 619
    aget-object v8, v6, v3

    #@43
    aget-object v9, v7, v3

    #@45
    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    #@48
    .line 617
    add-int/lit8 v3, v3, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 621
    :cond_0
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    #@4e
    goto :goto_0

    #@4f
    .line 627
    .end local v3    # "i":I
    .end local v6    # "temps":[Lsun/security/util/DerOutputStream;
    .end local v7    # "values":[Ljava/lang/String;
    :pswitch_3
    new-instance v5, Lsun/security/util/DerOutputStream;

    #@51
    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    #@54
    .line 628
    .local v5, "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@56
    check-cast v8, Lsun/security/util/ObjectIdentifier;

    #@58
    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@5b
    .line 629
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@5e
    move-result-object v8

    #@5f
    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@62
    goto :goto_0

    #@63
    .line 635
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_4
    new-instance v5, Lsun/security/util/DerOutputStream;

    #@65
    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    #@68
    .line 636
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@6a
    check-cast v8, [B

    #@6c
    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@6f
    .line 637
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@76
    goto :goto_0

    #@77
    .line 643
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_5
    new-instance v5, Lsun/security/util/DerOutputStream;

    #@79
    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    #@7c
    .line 644
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@7e
    check-cast v8, Ljava/util/Date;

    #@80
    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    #@83
    .line 645
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@8a
    goto :goto_0

    #@8b
    .line 650
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_6
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@8d
    check-cast v8, [Lsun/security/util/DerEncoder;

    #@8f
    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    #@92
    goto/16 :goto_0

    #@94
    .line 655
    :pswitch_7
    new-instance v5, Lsun/security/util/DerOutputStream;

    #@96
    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    #@99
    .line 656
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@9b
    check-cast v8, Ljava/lang/String;

    #@9d
    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    #@a0
    .line 657
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@a7
    goto/16 :goto_0

    #@a9
    .line 663
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_8
    iget-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@ab
    check-cast v7, [Ljava/lang/String;

    #@ad
    .line 665
    .restart local v7    # "values":[Ljava/lang/String;
    array-length v8, v7

    #@ae
    .line 664
    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    #@b0
    .line 667
    .restart local v6    # "temps":[Lsun/security/util/DerOutputStream;
    const/4 v3, 0x0

    #@b1
    .restart local v3    # "i":I
    :goto_2
    array-length v8, v7

    #@b2
    if-ge v3, v8, :cond_1

    #@b4
    .line 668
    new-instance v8, Lsun/security/util/DerOutputStream;

    #@b6
    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    #@b9
    aput-object v8, v6, v3

    #@bb
    .line 669
    aget-object v8, v6, v3

    #@bd
    aget-object v9, v7, v3

    #@bf
    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    #@c2
    .line 667
    add-int/lit8 v3, v3, 0x1

    #@c4
    goto :goto_2

    #@c5
    .line 671
    :cond_1
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    #@c8
    goto/16 :goto_0

    #@ca
    .line 676
    .end local v3    # "i":I
    .end local v6    # "temps":[Lsun/security/util/DerOutputStream;
    .end local v7    # "values":[Ljava/lang/String;
    :pswitch_9
    new-instance v8, Ljava/io/IOException;

    #@cc
    const-string/jumbo v9, "PKCS9 extended-certificate attribute not supported."

    #@cf
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d2
    throw v8

    #@d3
    .line 680
    :pswitch_a
    new-instance v8, Ljava/io/IOException;

    #@d5
    const-string/jumbo v9, "PKCS9 IssuerAndSerialNumberattribute not supported."

    #@d8
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@db
    throw v8

    #@dc
    .line 685
    :pswitch_b
    new-instance v8, Ljava/io/IOException;

    #@de
    const-string/jumbo v9, "PKCS9 RSA DSI attributes11 and 12, not supported."

    #@e1
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e4
    throw v8

    #@e5
    .line 689
    :pswitch_c
    new-instance v8, Ljava/io/IOException;

    #@e7
    const-string/jumbo v9, "PKCS9 attribute #13 not supported."

    #@ea
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v8

    #@ee
    .line 694
    :pswitch_d
    new-instance v5, Lsun/security/util/DerOutputStream;

    #@f0
    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    #@f3
    .line 695
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@f5
    check-cast v2, Lsun/security/x509/CertificateExtensions;

    #@f7
    .line 697
    .local v2, "exts":Lsun/security/x509/CertificateExtensions;
    const/4 v8, 0x1

    #@f8
    :try_start_0
    invoke-virtual {v2, v5, v8}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@fb
    .line 701
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@fe
    move-result-object v8

    #@ff
    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@102
    goto/16 :goto_0

    #@104
    .line 698
    :catch_0
    move-exception v1

    #@105
    .line 699
    .local v1, "ex":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/io/IOException;

    #@107
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    #@10a
    move-result-object v9

    #@10b
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10e
    throw v8

    #@10f
    .line 705
    .end local v1    # "ex":Ljava/security/cert/CertificateException;
    .end local v2    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_e
    new-instance v8, Ljava/io/IOException;

    #@111
    const-string/jumbo v9, "PKCS9 attribute #15 not supported."

    #@114
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@117
    throw v8

    #@118
    .line 709
    :pswitch_f
    new-instance v8, Ljava/io/IOException;

    #@11a
    .line 710
    const-string/jumbo v9, "PKCS9 SigningCertificate attribute not supported."

    #@11d
    .line 709
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@120
    throw v8

    #@121
    .line 714
    :pswitch_10
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@123
    check-cast v8, [B

    #@125
    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    #@128
    goto/16 :goto_0

    #@12a
    .line 606
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 767
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 768
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@7
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 767
    :goto_0
    return-object v0

    #@c
    .line 769
    :cond_0
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@e
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@10
    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@12
    aget-object v1, v1, v2

    #@14
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    goto :goto_0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 760
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public isKnown()Z
    .locals 2

    #@0
    .prologue
    .line 732
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isSingleValued()Z
    .locals 2

    #@0
    .prologue
    .line 753
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    #@7
    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@9
    aget-boolean v0, v0, v1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 792
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    const/16 v5, 0x64

    #@5
    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@8
    .line 794
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "["

    #@b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    .line 796
    iget v5, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@10
    if-ne v5, v8, :cond_1

    #@12
    .line 797
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    #@14
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    .line 801
    :goto_0
    const-string/jumbo v5, ": "

    #@1e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 803
    iget v5, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@23
    if-eq v5, v8, :cond_0

    #@25
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    #@27
    iget v6, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@29
    aget-boolean v5, v5, v6

    #@2b
    if-eqz v5, :cond_3

    #@2d
    .line 804
    :cond_0
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@2f
    instance-of v5, v5, [B

    #@31
    if-eqz v5, :cond_2

    #@33
    .line 805
    new-instance v2, Lsun/misc/HexDumpEncoder;

    #@35
    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@38
    .line 806
    .local v2, "hexDump":Lsun/misc/HexDumpEncoder;
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@3a
    check-cast v5, [B

    #@3c
    invoke-virtual {v2, v5}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    .line 810
    .end local v2    # "hexDump":Lsun/misc/HexDumpEncoder;
    :goto_1
    const-string/jumbo v5, "]"

    #@46
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 811
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    return-object v5

    #@4e
    .line 799
    :cond_1
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    #@50
    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    #@52
    iget v7, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    #@54
    aget-object v6, v6, v7

    #@56
    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v5

    #@5a
    check-cast v5, Ljava/lang/String;

    #@5c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    goto :goto_0

    #@60
    .line 808
    :cond_2
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@62
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@69
    goto :goto_1

    #@6a
    .line 813
    :cond_3
    const/4 v1, 0x1

    #@6b
    .line 814
    .local v1, "first":Z
    iget-object v4, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    #@6d
    check-cast v4, [Ljava/lang/Object;

    #@6f
    .line 816
    .local v4, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@70
    .local v3, "j":I
    :goto_2
    array-length v5, v4

    #@71
    if-ge v3, v5, :cond_5

    #@73
    .line 817
    if-eqz v1, :cond_4

    #@75
    .line 818
    const/4 v1, 0x0

    #@76
    .line 822
    :goto_3
    aget-object v5, v4, v3

    #@78
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7f
    .line 816
    add-int/lit8 v3, v3, 0x1

    #@81
    goto :goto_2

    #@82
    .line 820
    :cond_4
    const-string/jumbo v5, ", "

    #@85
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@88
    goto :goto_3

    #@89
    .line 824
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    return-object v5
.end method
