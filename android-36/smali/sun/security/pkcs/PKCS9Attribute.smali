.class public Lsun/security/pkcs/PKCS9Attribute;
.super Ljava/lang/Object;
.source "PKCS9Attribute.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final greylist-max-o BYTE_ARRAY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final blacklist CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist CHALLENGE_PASSWORD_STR:Ljava/lang/String; = "ChallengePassword"

.field public static final greylist CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist CONTENT_TYPE_STR:Ljava/lang/String; = "ContentType"

.field public static final blacklist COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist COUNTERSIGNATURE_STR:Ljava/lang/String; = "Countersignature"

.field public static final greylist EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist EMAIL_ADDRESS_STR:Ljava/lang/String; = "EmailAddress"

.field public static final blacklist EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist EXTENDED_CERTIFICATE_ATTRIBUTES_STR:Ljava/lang/String; = "ExtendedCertificateAttributes"

.field public static final blacklist EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist EXTENSION_REQUEST_STR:Ljava/lang/String; = "ExtensionRequest"

.field public static final blacklist ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist ISSUER_SERIALNUMBER_STR:Ljava/lang/String; = "IssuerAndSerialNumber"

.field public static final greylist MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist MESSAGE_DIGEST_STR:Ljava/lang/String; = "MessageDigest"

.field private static final greylist-max-o NAME_OID_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o OID_NAME_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

.field private static final greylist-max-o RSA_PROPRIETARY_STR:Ljava/lang/String; = "RSAProprietary"

.field public static final blacklist SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist SIGNATURE_TIMESTAMP_TOKEN_STR:Ljava/lang/String; = "SignatureTimestampToken"

.field public static final blacklist SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist SIGNING_CERTIFICATE_STR:Ljava/lang/String; = "SigningCertificate"

.field public static final greylist SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist SIGNING_TIME_STR:Ljava/lang/String; = "SigningTime"

.field private static final greylist-max-o SINGLE_VALUED:[Z

.field public static final blacklist SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist SMIME_CAPABILITY_STR:Ljava/lang/String; = "SMIMECapability"

.field private static final greylist-max-o SMIME_SIGNING_DESC_STR:Ljava/lang/String; = "SMIMESigningDesc"

.field public static final blacklist UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist UNSTRUCTURED_ADDRESS_STR:Ljava/lang/String; = "UnstructuredAddress"

.field public static final blacklist UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final blacklist UNSTRUCTURED_NAME_STR:Ljava/lang/String; = "UnstructuredName"

.field private static final greylist-max-o VALUE_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o debug:Lsun/security/util/Debug;


# instance fields
.field private greylist-max-o index:I

.field private greylist-max-o oid:Lsun/security/util/ObjectIdentifier;

.field private greylist-max-o value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 26

    .line 183
    const-string v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    .line 188
    const/16 v0, 0x12

    new-array v1, v0, [Lsun/security/util/ObjectIdentifier;

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    .line 193
    const/4 v1, 0x1

    move v8, v1

    .local v8, "i":I
    :goto_10
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v1, v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-ge v8, v1, :cond_30

    .line 194
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x1

    const/16 v7, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x348

    const v5, 0x1bb8d

    filled-new-array/range {v2 .. v8}, [I

    move-result-object v2

    .line 195
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    aput-object v2, v1, v8

    .line 193
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 199
    .end local v8    # "i":I
    :cond_30
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    new-array v5, v4, [I

    fill-array-data v5, :array_3c0

    .line 200
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    aput-object v5, v1, v3

    .line 201
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    new-array v6, v4, [I

    fill-array-data v6, :array_3d6

    .line 202
    invoke-static {v6}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    aput-object v6, v1, v3

    .line 205
    :try_start_55
    const-string v1, "[B"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;
    :try_end_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_55 .. :try_end_5d} :catch_3b4

    .line 208
    nop

    .line 212
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v1, v1, v5

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 213
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v1, v1, v2

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 214
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 215
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x4

    aget-object v1, v1, v6

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 216
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v7, 0x5

    aget-object v1, v1, v7

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

    .line 217
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v8, 0x6

    aget-object v1, v1, v8

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

    .line 218
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v9, 0x7

    aget-object v1, v1, v9

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

    .line 219
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v10, 0x8

    aget-object v1, v1, v10

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 220
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v1, v1, v4

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

    .line 222
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v11, 0xa

    aget-object v1, v1, v11

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    .line 225
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v12, 0xe

    aget-object v1, v1, v12

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 226
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v13, 0xf

    aget-object v1, v1, v13

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

    .line 227
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v14, 0x10

    aget-object v1, v1, v14

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

    .line 228
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v15, 0x11

    aget-object v1, v1, v15

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    .line 256
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v0}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    .line 260
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v16, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    move/from16 v17, v3

    aget-object v3, v16, v5

    move/from16 v16, v4

    const-string v4, "emailaddress"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v2

    const-string v4, "unstructuredname"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v17

    const-string v4, "contenttype"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v6

    const-string v4, "messagedigest"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v7

    const-string v4, "signingtime"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v8

    const-string v4, "countersignature"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v9

    const-string v4, "challengepassword"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v10

    const-string v4, "unstructuredaddress"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v16

    const-string v4, "extendedcertificateattributes"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v11

    const-string v4, "issuerandserialnumber"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    move/from16 v18, v4

    const-string v4, "rsaproprietary"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    move/from16 v19, v4

    const-string v4, "rsaproprietary"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    move/from16 v20, v4

    const-string v4, "signingdescription"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v12

    const-string v4, "extensionrequest"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v13

    const-string v4, "smimecapability"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v14

    const-string v4, "signingcertificate"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v15

    const-string v4, "signaturetimestamptoken"

    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v14}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    .line 286
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v5

    const-string v4, "EmailAddress"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v2

    const-string v4, "UnstructuredName"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v17

    const-string v4, "ContentType"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v6

    const-string v4, "MessageDigest"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v7

    const-string v4, "SigningTime"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v8

    const-string v4, "Countersignature"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v9

    const-string v4, "ChallengePassword"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v10

    const-string v4, "UnstructuredAddress"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v16

    const-string v4, "ExtendedCertificateAttributes"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v11

    const-string v4, "IssuerAndSerialNumber"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v18

    const-string v4, "RSAProprietary"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v19

    const-string v4, "RSAProprietary"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v20

    const-string v4, "SMIMESigningDesc"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v12

    const-string v4, "ExtensionRequest"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v13

    const-string v4, "SMIMECapability"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v14

    const-string v4, "SigningCertificate"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v15

    const-string v4, "SignatureTimestampToken"

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-array v1, v0, [[Ljava/lang/Byte;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    move/from16 v21, v3

    new-array v3, v5, [Ljava/lang/Byte;

    move-object/from16 v22, v4

    new-instance v4, Ljava/lang/Byte;

    move/from16 v23, v7

    const/16 v7, 0x16

    invoke-direct {v4, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    new-instance v4, Ljava/lang/Byte;

    const/16 v7, 0x13

    invoke-direct {v4, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v5

    aput-object v3, v1, v2

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v8}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v17

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v6

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    move/from16 v24, v6

    const/16 v6, 0x17

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v23

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    new-instance v4, Ljava/lang/Byte;

    move/from16 v25, v8

    const/16 v8, 0x14

    invoke-direct {v4, v8}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v5

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    new-instance v4, Ljava/lang/Byte;

    const/16 v7, 0x14

    invoke-direct {v4, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v5

    aput-object v3, v1, v10

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    const/16 v7, 0x31

    invoke-direct {v4, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v16

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v11

    aput-object v22, v1, v18

    aput-object v22, v1, v19

    aput-object v22, v1, v20

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v12

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v13

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v14

    new-array v3, v5, [Ljava/lang/Byte;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v4, v3, v21

    aput-object v3, v1, v15

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    .line 334
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 338
    :try_start_330
    const-string v1, "[Ljava.lang.String;"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 340
    .local v1, "str":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v22, v3, v21

    .line 341
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v1, v3, v5

    .line 342
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v1, v3, v2

    .line 343
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string v3, "sun.security.util.ObjectIdentifier"

    .line 344
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v17

    .line 345
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    aput-object v3, v2, v24

    .line 346
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string v3, "java.util.Date"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v23

    .line 347
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string v3, "[Lsun.security.pkcs.SignerInfo;"

    .line 348
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v25

    .line 349
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string v3, "java.lang.String"

    .line 350
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v9

    .line 351
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v1, v2, v10

    .line 352
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v22, v2, v16

    .line 353
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v22, v2, v11

    .line 354
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v22, v2, v18

    .line 355
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v22, v2, v19

    .line 356
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v22, v2, v20

    .line 357
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string v3, "sun.security.x509.CertificateExtensions"

    .line 358
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v12

    .line 359
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v22, v2, v13

    .line 360
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    aput-object v22, v2, v14

    .line 361
    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    aput-object v3, v2, v15
    :try_end_3a0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_330 .. :try_end_3a0} :catch_3a9

    .line 364
    .end local v1    # "str":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 371
    new-array v0, v0, [Z

    fill-array-data v0, :array_3ec

    sput-object v0, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    return-void

    .line 362
    :catch_3a9
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3b4
    move-exception v0

    .line 207
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_3c0
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

    :array_3d6
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

    :array_3ec
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

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 449
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    if-eqz v0, :cond_d

    .line 454
    invoke-direct {p0, v0, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 455
    return-void

    .line 450
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " constructing PKCS9Attribute."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor greylist <init>(Lsun/security/util/DerValue;)V
    .registers 12
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 485
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 487
    .local v2, "val":[Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_151

    .line 490
    array-length v3, v2

    if-ne v3, v1, :cond_149

    .line 494
    const/4 v1, 0x0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    .line 495
    const/4 v3, 0x1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    .line 496
    .local v4, "content":[B
    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-direct {v5, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v5, v3}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 498
    .local v5, "elems":[Lsun/security/util/DerValue;
    iget-object v6, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v7, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    invoke-static {v6, v7, v3}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v6

    iput v6, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    .line 499
    iget v6, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_63

    .line 500
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_60

    .line 501
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported signer attribute: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 503
    :cond_60
    iput-object v4, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 504
    return-void

    .line 508
    :cond_63
    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_71

    array-length v6, v5

    if-le v6, v3, :cond_71

    .line 509
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attribute;->throwSingleValuedException()V

    .line 513
    :cond_71
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_72
    array-length v6, v5

    if-ge v3, v6, :cond_90

    .line 514
    new-instance v6, Ljava/lang/Byte;

    aget-object v8, v5, v3

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    invoke-direct {v6, v8}, Ljava/lang/Byte;-><init>(B)V

    .line 516
    .local v6, "tag":Ljava/lang/Byte;
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v9, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v8, v8, v9

    invoke-static {v6, v8, v1}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v8

    if-ne v8, v7, :cond_8d

    .line 517
    invoke-direct {p0, v6}, Lsun/security/pkcs/PKCS9Attribute;->throwTagException(Ljava/lang/Byte;)V

    .line 513
    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 520
    .end local v3    # "i":I
    .end local v6    # "tag":Ljava/lang/Byte;
    :cond_90
    iget v3, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v3, :pswitch_data_15a

    goto/16 :goto_148

    .line 590
    :pswitch_97
    aget-object v1, v5, v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 591
    goto/16 :goto_148

    .line 586
    :pswitch_a1
    new-instance v3, Lsun/security/pkcs/SigningCertificateInfo;

    aget-object v1, v5, v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Lsun/security/pkcs/SigningCertificateInfo;-><init>([B)V

    iput-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 587
    goto/16 :goto_148

    .line 582
    :pswitch_b0
    new-instance v1, Ljava/io/IOException;

    const-string v3, "PKCS9 SMIMECapability attribute not supported."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :pswitch_b8
    new-instance v3, Lsun/security/x509/CertificateExtensions;

    new-instance v6, Lsun/security/util/DerInputStream;

    aget-object v1, v5, v1

    .line 578
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v6, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {v3, v6}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 579
    goto/16 :goto_148

    .line 573
    :pswitch_cc
    new-instance v1, Ljava/io/IOException;

    const-string v3, "PKCS9 attribute #13 not supported."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :pswitch_d4
    new-instance v1, Ljava/io/IOException;

    const-string v3, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 564
    :pswitch_dc
    new-instance v1, Ljava/io/IOException;

    const-string v3, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :pswitch_e4
    new-instance v1, Ljava/io/IOException;

    const-string v3, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :pswitch_ec
    aget-object v1, v5, v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 557
    goto :goto_148

    .line 547
    :pswitch_f5
    array-length v1, v5

    new-array v1, v1, [Lsun/security/pkcs/SignerInfo;

    .line 548
    .local v1, "values":[Lsun/security/pkcs/SignerInfo;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_f9
    array-length v6, v5

    if-ge v3, v6, :cond_10c

    .line 549
    new-instance v6, Lsun/security/pkcs/SignerInfo;

    aget-object v7, v5, v3

    .line 550
    invoke-virtual {v7}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v6, v1, v3

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_f9

    .line 551
    .end local v3    # "i":I
    :cond_10c
    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 553
    .end local v1    # "values":[Lsun/security/pkcs/SignerInfo;
    goto :goto_148

    .line 542
    :pswitch_10f
    new-instance v3, Lsun/security/util/DerInputStream;

    aget-object v1, v5, v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 543
    goto :goto_148

    .line 538
    :pswitch_121
    aget-object v1, v5, v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 539
    goto :goto_148

    .line 534
    :pswitch_12a
    aget-object v1, v5, v1

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 535
    goto :goto_148

    .line 525
    :pswitch_133
    array-length v1, v5

    new-array v1, v1, [Ljava/lang/String;

    .line 527
    .local v1, "values":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_137
    array-length v6, v5

    if-ge v3, v6, :cond_145

    .line 528
    aget-object v6, v5, v3

    invoke-virtual {v6}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 527
    add-int/lit8 v3, v3, 0x1

    goto :goto_137

    .line 529
    .end local v3    # "i":I
    :cond_145
    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 531
    .end local v1    # "values":[Ljava/lang/String;
    nop

    .line 594
    :goto_148
    return-void

    .line 491
    .end local v4    # "content":[B
    .end local v5    # "elems":[Lsun/security/util/DerValue;
    :cond_149
    new-instance v1, Ljava/io/IOException;

    const-string v3, "PKCS9Attribute doesn\'t have two components"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_151
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Excess data parsing PKCS9Attribute"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_133
        :pswitch_133
        :pswitch_12a
        :pswitch_121
        :pswitch_10f
        :pswitch_f5
        :pswitch_ec
        :pswitch_133
        :pswitch_e4
        :pswitch_dc
        :pswitch_d4
        :pswitch_d4
        :pswitch_cc
        :pswitch_b8
        :pswitch_b0
        :pswitch_a1
        :pswitch_97
    .end packed-switch
.end method

.method public constructor greylist <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .registers 3
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    invoke-direct {p0, p1, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method public static blacklist getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 786
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 778
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method static greylist-max-o indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "start"    # I

    .line 836
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 837
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    .line 836
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 839
    .end local v0    # "i":I
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .registers 7
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 460
    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    .line 461
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    .line 462
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    goto :goto_19

    :cond_13
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v0, v1

    .line 463
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_19
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 471
    iput-object p2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 472
    return-void

    .line 464
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong value class  for attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " constructing PKCS9Attribute; was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 468
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o throwSingleValuedException()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Single-value attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has multiple values."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwTagException(Ljava/lang/Byte;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v0, v1

    .line 860
    .local v0, "expectedTags":[Ljava/lang/Byte;
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 861
    .local v1, "msg":Ljava/lang/StringBuffer;
    const-string v2, "Value of attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 863
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 865
    const-string v2, ") has wrong tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    invoke-virtual {p1}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 867
    const-string v2, ".  Expected tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 871
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_43
    array-length v3, v0

    if-ge v2, v3, :cond_57

    .line 872
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 873
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 871
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 875
    .end local v2    # "i":I
    :cond_57
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public greylist derEncode(Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 606
    .local v0, "temp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 607
    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/16 v2, 0x31

    packed-switch v1, :pswitch_data_126

    :pswitch_11
    goto/16 :goto_10f

    .line 715
    :pswitch_13
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 716
    goto/16 :goto_10f

    .line 710
    :pswitch_1c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PKCS9 SigningCertificate attribute not supported."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 706
    :pswitch_24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PKCS9 attribute #15 not supported."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 695
    :pswitch_2c
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 696
    .local v1, "temp2":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v3, Lsun/security/x509/CertificateExtensions;

    .line 698
    .local v3, "exts":Lsun/security/x509/CertificateExtensions;
    const/4 v4, 0x1

    :try_start_36
    invoke-virtual {v3, v1, v4}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V
    :try_end_39
    .catch Ljava/security/cert/CertificateException; {:try_start_36 .. :try_end_39} :catch_43

    .line 701
    nop

    .line 702
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 704
    .end local v1    # "temp2":Lsun/security/util/DerOutputStream;
    .end local v3    # "exts":Lsun/security/x509/CertificateExtensions;
    goto/16 :goto_10f

    .line 699
    .restart local v1    # "temp2":Lsun/security/util/DerOutputStream;
    .restart local v3    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_43
    move-exception v2

    .line 700
    .local v2, "ex":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 690
    .end local v1    # "temp2":Lsun/security/util/DerOutputStream;
    .end local v2    # "ex":Ljava/security/cert/CertificateException;
    .end local v3    # "exts":Lsun/security/x509/CertificateExtensions;
    :pswitch_4e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PKCS9 attribute #13 not supported."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :pswitch_56
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :pswitch_5e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :pswitch_66
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 664
    :pswitch_6e
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 665
    .local v1, "values":[Ljava/lang/String;
    array-length v3, v1

    new-array v3, v3, [Lsun/security/util/DerOutputStream;

    .line 668
    .local v3, "temps":[Lsun/security/util/DerOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_76
    array-length v5, v1

    if-ge v4, v5, :cond_8a

    .line 669
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v5, v3, v4

    .line 670
    aget-object v5, v3, v4

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 668
    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    .line 672
    .end local v4    # "i":I
    :cond_8a
    invoke-virtual {v0, v2, v3}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 674
    .end local v1    # "values":[Ljava/lang/String;
    .end local v3    # "temps":[Lsun/security/util/DerOutputStream;
    goto/16 :goto_10f

    .line 656
    :pswitch_8f
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 657
    .local v1, "temp2":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 660
    .end local v1    # "temp2":Lsun/security/util/DerOutputStream;
    goto :goto_10f

    .line 651
    :pswitch_a3
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v1, [Lsun/security/util/DerEncoder;

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 652
    goto :goto_10f

    .line 644
    :pswitch_ab
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 645
    .restart local v1    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 646
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 648
    .end local v1    # "temp2":Lsun/security/util/DerOutputStream;
    goto :goto_10f

    .line 636
    :pswitch_bf
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 637
    .restart local v1    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 638
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 640
    .end local v1    # "temp2":Lsun/security/util/DerOutputStream;
    goto :goto_10f

    .line 628
    :pswitch_d3
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 629
    .restart local v1    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v3, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 630
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 632
    .end local v1    # "temp2":Lsun/security/util/DerOutputStream;
    goto :goto_10f

    .line 614
    :pswitch_e7
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 615
    .local v1, "values":[Ljava/lang/String;
    array-length v3, v1

    new-array v3, v3, [Lsun/security/util/DerOutputStream;

    .line 618
    .restart local v3    # "temps":[Lsun/security/util/DerOutputStream;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_ef
    array-length v5, v1

    if-ge v4, v5, :cond_103

    .line 619
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v5, v3, v4

    .line 620
    aget-object v5, v3, v4

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 618
    add-int/lit8 v4, v4, 0x1

    goto :goto_ef

    .line 622
    .end local v4    # "i":I
    :cond_103
    invoke-virtual {v0, v2, v3}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 624
    .end local v1    # "values":[Ljava/lang/String;
    .end local v3    # "temps":[Lsun/security/util/DerOutputStream;
    goto :goto_10f

    .line 609
    :pswitch_107
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->write([B)V

    .line 610
    nop

    .line 721
    :goto_10f
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 722
    .local v1, "derOut":Lsun/security/util/DerOutputStream;
    const/16 v2, 0x30

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 724
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 726
    return-void

    nop

    :pswitch_data_126
    .packed-switch -0x1
        :pswitch_107
        :pswitch_11
        :pswitch_e7
        :pswitch_e7
        :pswitch_d3
        :pswitch_bf
        :pswitch_ab
        :pswitch_a3
        :pswitch_8f
        :pswitch_6e
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_56
        :pswitch_4e
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 4

    .line 768
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 769
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 770
    :cond_c
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 768
    :goto_1a
    return-object v0
.end method

.method public greylist getOID()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 761
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public greylist getValue()Ljava/lang/Object;
    .registers 2

    .line 747
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist isKnown()Z
    .registers 3

    .line 733
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isSingleValued()Z
    .registers 3

    .line 754
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 793
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 795
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 798
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    .line 800
    :cond_1b
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    iget v4, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    :goto_2c
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-eq v1, v2, :cond_61

    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3e

    goto :goto_61

    .line 814
    :cond_3e
    const/4 v1, 0x1

    .line 815
    .local v1, "first":Z
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 817
    .local v2, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_44
    array-length v4, v2

    if-ge v3, v4, :cond_5c

    .line 818
    if-eqz v1, :cond_4b

    .line 819
    const/4 v1, 0x0

    goto :goto_50

    .line 821
    :cond_4b
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    :goto_50
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 825
    .end local v3    # "j":I
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 805
    .end local v1    # "first":Z
    .end local v2    # "values":[Ljava/lang/Object;
    :cond_61
    :goto_61
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_78

    .line 806
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 807
    .local v1, "hexDump":Lsun/misc/HexDumpEncoder;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    .end local v1    # "hexDump":Lsun/misc/HexDumpEncoder;
    goto :goto_81

    .line 809
    :cond_78
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    :goto_81
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 812
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
