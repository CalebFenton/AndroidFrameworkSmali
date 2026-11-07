.class public Lcom/android/org/bouncycastle/asn1/x509/X509Name;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X509Name.java"


# static fields
.field public static final blacklist BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final greylist-max-r CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DMD_NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DefaultLookUp:Ljava/util/Hashtable;

.field public static blacklist DefaultReverse:Z

.field public static final blacklist DefaultSymbols:Ljava/util/Hashtable;

.field public static final blacklist E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final blacklist FALSE:Ljava/lang/Boolean;

.field public static final blacklist GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist OIDLookUp:Ljava/util/Hashtable;

.field public static final blacklist OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist RFC1779Symbols:Ljava/util/Hashtable;

.field public static final blacklist RFC2253Symbols:Ljava/util/Hashtable;

.field public static final blacklist SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SymbolLookUp:Ljava/util/Hashtable;

.field public static final blacklist T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final blacklist TRUE:Ljava/lang/Boolean;

.field public static final blacklist UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private blacklist added:Ljava/util/Vector;

.field private blacklist converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

.field private blacklist hashCodeValue:I

.field private blacklist isHashCodeCalculated:Z

.field private blacklist ordering:Ljava/util/Vector;

.field private blacklist seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private blacklist values:Ljava/util/Vector;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 47

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2.5.4.10"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "2.5.4.11"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.5.4.12"

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "2.5.4.3"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "2.5.4.5"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "2.5.4.9"

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    sput-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "2.5.4.7"

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "2.5.4.8"

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "2.5.4.4"

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "2.5.4.42"

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "2.5.4.43"

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v11, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    new-instance v12, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "2.5.4.44"

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v12, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 106
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "2.5.4.45"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 111
    new-instance v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "2.5.4.15"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v14

    const-string v14, "2.5.4.17"

    invoke-direct {v15, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 123
    new-instance v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v15

    const-string v15, "2.5.4.46"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 129
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v14

    const-string v14, "2.5.4.65"

    invoke-direct {v15, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 136
    new-instance v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v15

    const-string v15, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 142
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v14

    const-string v14, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v15, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 148
    new-instance v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v15

    const-string v15, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 155
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v14

    const-string v14, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v15, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 162
    new-instance v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v15

    const-string v15, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 169
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v14

    const-string v14, "1.3.36.8.3.14"

    invoke-direct {v15, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 175
    new-instance v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v25, v15

    const-string v15, "2.5.4.16"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 180
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v26, v14

    const-string v14, "2.5.4.54"

    invoke-direct {v15, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DMD_NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 185
    sget-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 190
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v27, v15

    .line 197
    sget-object v15, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v28, v14

    .line 202
    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v29, v13

    .line 203
    sget-object v13, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 208
    sput-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v30, v14

    .line 213
    new-instance v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v31, v13

    const-string v13, "0.9.2342.19200300.100.1.25"

    invoke-direct {v14, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 218
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v32, v12

    const-string v12, "0.9.2342.19200300.100.1.1"

    invoke-direct {v13, v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v12, 0x0

    .line 224
    sput-boolean v12, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    .line 230
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    sput-object v12, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    move-object/from16 v33, v11

    .line 236
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    move-object/from16 v34, v11

    .line 242
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    move-object/from16 v35, v11

    .line 247
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    .line 253
    sput-object v12, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OIDLookUp:Ljava/util/Hashtable;

    .line 259
    sput-object v11, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SymbolLookUp:Ljava/util/Hashtable;

    .line 262
    sget-object v36, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v36, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    .line 263
    sget-object v36, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v36, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v36, v11

    .line 268
    const-string v11, "C"

    invoke-virtual {v12, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v37, v0

    .line 269
    const-string v0, "O"

    invoke-virtual {v12, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v38, v0

    .line 270
    const-string v0, "T"

    invoke-virtual {v12, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "OU"

    invoke-virtual {v12, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v39, v3

    .line 272
    const-string v3, "CN"

    invoke-virtual {v12, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v40, v3

    .line 273
    const-string v3, "L"

    invoke-virtual {v12, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v41, v3

    .line 274
    const-string v3, "ST"

    invoke-virtual {v12, v8, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v42, v3

    .line 275
    const-string v3, "SERIALNUMBER"

    invoke-virtual {v12, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "E"

    invoke-virtual {v12, v15, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v3, "DC"

    invoke-virtual {v12, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v43, v15

    .line 278
    const-string v15, "UID"

    invoke-virtual {v12, v13, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v44, v5

    .line 279
    const-string v5, "STREET"

    invoke-virtual {v12, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v45, v13

    .line 280
    const-string v13, "SURNAME"

    invoke-virtual {v12, v9, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v13, "GIVENNAME"

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v13, "INITIALS"

    move-object/from16 v46, v10

    move-object/from16 v10, v33

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v13, "GENERATION"

    move-object/from16 v10, v32

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v13, "unstructuredAddress"

    move-object/from16 v10, v31

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v13, "unstructuredName"

    move-object/from16 v10, v30

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v13, "UniqueIdentifier"

    move-object/from16 v10, v29

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v13, "DN"

    move-object/from16 v10, v18

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v13, "Pseudonym"

    move-object/from16 v10, v19

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v13, "PostalAddress"

    move-object/from16 v10, v26

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v13, "NameAtBirth"

    move-object/from16 v10, v25

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v13, "CountryOfCitizenship"

    move-object/from16 v10, v23

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v13, "CountryOfResidence"

    move-object/from16 v10, v24

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v13, "Gender"

    move-object/from16 v10, v22

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v13, "PlaceOfBirth"

    move-object/from16 v10, v21

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v13, "DateOfBirth"

    move-object/from16 v10, v20

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v13, "PostalCode"

    move-object/from16 v10, v17

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v13, "BusinessCategory"

    move-object/from16 v10, v16

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v13, "TelephoneNumber"

    move-object/from16 v10, v28

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v13, "Name"

    move-object/from16 v10, v27

    invoke-virtual {v12, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v34

    move-object/from16 v12, v37

    .line 301
    invoke-virtual {v13, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v38

    .line 302
    invoke-virtual {v13, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {v13, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v34, v9

    move-object/from16 v9, v40

    .line 304
    invoke-virtual {v13, v4, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v37, v4

    move-object/from16 v4, v41

    .line 305
    invoke-virtual {v13, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v42

    .line 306
    invoke-virtual {v13, v8, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {v13, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v13, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v45

    .line 309
    invoke-virtual {v13, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v35

    .line 311
    invoke-virtual {v13, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {v13, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {v13, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v37

    .line 314
    invoke-virtual {v13, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v41

    .line 315
    invoke-virtual {v13, v7, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {v13, v8, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {v13, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v4, "c"

    move-object/from16 v5, v36

    invoke-virtual {v5, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v4, "o"

    invoke-virtual {v5, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "t"

    move-object/from16 v4, v39

    invoke-virtual {v5, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v1, "ou"

    invoke-virtual {v5, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "cn"

    invoke-virtual {v5, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v0, "l"

    invoke-virtual {v5, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v0, "st"

    invoke-virtual {v5, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v0, "sn"

    move-object/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v0, "serialnumber"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v0, "street"

    invoke-virtual {v5, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v0, "emailaddress"

    move-object/from16 v1, v43

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, "dc"

    invoke-virtual {v5, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v0, "e"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "uid"

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "surname"

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "givenname"

    move-object/from16 v1, v46

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, "initials"

    move-object/from16 v10, v33

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, "generation"

    move-object/from16 v10, v32

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, "unstructuredaddress"

    move-object/from16 v10, v31

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v0, "unstructuredname"

    move-object/from16 v10, v30

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, "uniqueidentifier"

    move-object/from16 v10, v29

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "dn"

    move-object/from16 v10, v18

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "pseudonym"

    move-object/from16 v10, v19

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "postaladdress"

    move-object/from16 v10, v26

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, "nameofbirth"

    move-object/from16 v10, v25

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "countryofcitizenship"

    move-object/from16 v10, v23

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "countryofresidence"

    move-object/from16 v10, v24

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v0, "gender"

    move-object/from16 v10, v22

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "placeofbirth"

    move-object/from16 v10, v21

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v0, "dateofbirth"

    move-object/from16 v10, v20

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, "postalcode"

    move-object/from16 v10, v17

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v0, "businesscategory"

    move-object/from16 v10, v16

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, "telephonenumber"

    move-object/from16 v10, v28

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v0, "name"

    move-object/from16 v10, v27

    invoke-virtual {v5, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-r <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9

    .line 411
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 358
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 412
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 414
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 416
    :cond_21
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 418
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 420
    :goto_37
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 422
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 424
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_db

    .line 429
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 431
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 432
    instance-of v4, v3, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v4, :cond_9b

    instance-of v4, v3, Lcom/android/org/bouncycastle/asn1/ASN1UniversalString;

    if-nez v4, :cond_9b

    .line 434
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_95

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_95

    .line 437
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_c3

    .line 441
    :cond_95
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_c3

    .line 448
    :cond_9b
    :try_start_9b
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    const-string v6, "DER"

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_c3} :catch_d3

    .line 455
    :goto_c3
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    if-eqz v2, :cond_ca

    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    goto :goto_cc

    :cond_ca
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    :goto_cc
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_37

    .line 452
    :catch_d3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot encode value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 426
    :cond_db
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "badly sized pair"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e3
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4

    .line 601
    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 5

    .line 615
    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Hashtable;)V
    .registers 3

    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .registers 4

    .line 490
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 7

    .line 509
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 358
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 510
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    const/4 p3, 0x0

    if-eqz p1, :cond_3a

    move v0, p3

    .line 514
    :goto_21
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_55

    .line 516
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 517
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 522
    :cond_3a
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    .line 524
    :goto_3e
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 526
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3e

    .line 531
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-eq p3, p1, :cond_97

    .line 533
    iget-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 535
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 540
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_55

    .line 537
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No attribute for object id - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - passed to distinguished name"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 4

    .line 552
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 6

    .line 566
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 358
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 567
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 569
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p3

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne p3, v0, :cond_4b

    const/4 p3, 0x0

    .line 574
    :goto_28
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p3, v0, :cond_4a

    .line 576
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 577
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {p2, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_28

    :cond_4a
    return-void

    .line 571
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "oids vector must be same length as values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;)V
    .registers 4

    .line 629
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 5

    .line 645
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .registers 5

    .line 667
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .registers 9

    .line 786
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 357
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 358
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 787
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 788
    new-instance p4, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    invoke-direct {p4, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 790
    :cond_22
    :goto_22
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result p3

    if-eqz p3, :cond_58

    .line 792
    invoke-virtual {p4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x2b

    .line 794
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_52

    .line 796
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    invoke-direct {v1, p3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 798
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 800
    :goto_42
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result p3

    if-eqz p3, :cond_22

    .line 802
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_42

    .line 807
    :cond_52
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_22

    :cond_58
    if-eqz p1, :cond_c5

    .line 813
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 814
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 815
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    const/4 p4, 0x0

    const/4 v0, 0x1

    move v1, p4

    move v2, v0

    .line 819
    :goto_6d
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_bf

    .line 821
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 823
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 824
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 825
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/2addr v2, v0

    goto :goto_bc

    .line 830
    :cond_a0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2, p4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 831
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, p4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 832
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2, p4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move v2, v0

    :goto_bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 837
    :cond_bf
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 838
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 839
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    :cond_c5
    return-void
.end method

.method private blacklist addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6

    .line 848
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    const/16 v1, 0x3d

    invoke-direct {v0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 850
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 852
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 857
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    .line 861
    iget-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 862
    iget-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 863
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {p0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 854
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "badly formatted directory string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 7

    .line 1237
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_c

    .line 1241
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 1245
    :cond_c
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_13
    const/16 p0, 0x3d

    .line 1248
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1250
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .line 1251
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1252
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    .line 1254
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x5c

    const/4 v1, 0x2

    if-lt p3, v1, :cond_3e

    const/4 p3, 0x0

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v0, :cond_3e

    const/4 p3, 0x1

    invoke-virtual {p4, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 p4, 0x23

    if-ne p3, p4, :cond_3e

    add-int/lit8 p0, p0, 0x2

    .line 1259
    :cond_3e
    :goto_3e
    const-string p3, "\\"

    const/16 p4, 0x20

    if-ge p0, p2, :cond_52

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p4, :cond_52

    .line 1261
    invoke-virtual {p1, p0, p3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3e

    :cond_52
    :goto_52
    add-int/lit8 p2, p2, -0x1

    if-le p2, p0, :cond_60

    .line 1266
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p4, :cond_60

    .line 1268
    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_52

    :cond_60
    :goto_60
    if-gt p0, p2, :cond_82

    .line 1273
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p4

    const/16 v1, 0x22

    if-eq p4, v1, :cond_7a

    if-eq p4, v0, :cond_7a

    const/16 v1, 0x2b

    if-eq p4, v1, :cond_7a

    const/16 v1, 0x2c

    if-eq p4, v1, :cond_7a

    packed-switch p4, :pswitch_data_84

    add-int/lit8 p0, p0, 0x1

    goto :goto_60

    .line 1283
    :cond_7a
    :pswitch_7a
    invoke-virtual {p1, p0, p3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_60

    :cond_82
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x3b
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
        :pswitch_7a
    .end packed-switch
.end method

.method private blacklist bytesToString([B)Ljava/lang/String;
    .registers 5

    .line 1374
    array-length p0, p1

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_4
    if-eq v1, p0, :cond_10

    .line 1378
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1381
    :cond_10
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private blacklist canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1179
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2e

    .line 1183
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 1185
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    if-eqz v0, :cond_2e

    .line 1187
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    return-object p1
.end method

.method private blacklist decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 5

    .line 674
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 675
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OID."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 677
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    .line 679
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_32

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_32

    .line 681
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 684
    :cond_32
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz p1, :cond_3f

    return-object p1

    .line 687
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown object id - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - passed to distinguished name"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 1198
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-static {p1, v0, p0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;II)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 1202
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown encoding in name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1160
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1161
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1163
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1165
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1166
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1168
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .line 376
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .line 382
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-eqz v0, :cond_7

    .line 384
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    return-object p0

    .line 386
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_1b

    .line 388
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1b
    if-eqz p0, :cond_27

    .line 392
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1209
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 1213
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1215
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    .line 1217
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 1219
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v0, v3, :cond_24

    if-eq v2, v3, :cond_27

    .line 1222
    :cond_24
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_27
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_14

    .line 1228
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 695
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_93

    const/16 p0, 0x5c

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x22

    if-gez v0, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_18

    goto/16 :goto_93

    .line 700
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 703
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 p1, 0x0

    .line 708
    aget-char v3, v0, p1

    const/4 v4, 0x1

    if-ne v3, p0, :cond_38

    .line 710
    aget-char v3, v0, v4

    const/16 v5, 0x23

    if-ne v3, v5, :cond_38

    .line 713
    const-string v3, "\\#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x2

    goto :goto_39

    :cond_38
    move v3, p1

    :goto_39
    move v5, p1

    move v6, v5

    move v7, v6

    move v8, v7

    .line 720
    :goto_3d
    array-length v9, v0

    const/16 v10, 0x20

    if-eq v3, v9, :cond_6d

    .line 722
    aget-char v9, v0, v3

    if-eq v9, v10, :cond_47

    move v8, v4

    :cond_47
    if-ne v9, v1, :cond_53

    if-nez v5, :cond_4e

    xor-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 737
    :cond_4e
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_51
    move v5, p1

    goto :goto_6a

    :cond_53
    if-ne v9, p0, :cond_5f

    if-nez v5, :cond_5f

    if-nez v7, :cond_5f

    .line 744
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move v5, v4

    goto :goto_6a

    :cond_5f
    if-ne v9, v10, :cond_66

    if-nez v5, :cond_66

    if-nez v8, :cond_66

    goto :goto_6a

    .line 752
    :cond_66
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_51

    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 757
    :cond_6d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_8e

    .line 759
    :goto_73
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    if-ne p0, v10, :cond_8e

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v4

    if-eq v6, p0, :cond_8e

    .line 761
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_73

    .line 765
    :cond_8e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 697
    :cond_93
    :goto_93
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 13

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1075
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_e

    return v2

    .line 1080
    :cond_e
    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 1082
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    .line 1091
    :cond_20
    :try_start_20
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_24} :catch_8e

    .line 1098
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1100
    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v1, v3, :cond_33

    return v2

    .line 1105
    :cond_33
    new-array v3, v1, [Z

    .line 1108
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    move v6, v0

    move v5, v1

    move v4, v2

    goto :goto_4f

    :cond_4b
    add-int/lit8 v4, v1, -0x1

    const/4 v5, -0x1

    move v6, v5

    :goto_4f
    if-eq v4, v5, :cond_8d

    .line 1124
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1125
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move v9, v2

    :goto_62
    if-ge v9, v1, :cond_8c

    .line 1129
    aget-boolean v10, v3, v9

    if-eqz v10, :cond_69

    goto :goto_89

    .line 1134
    :cond_69
    iget-object v10, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v10, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1136
    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_89

    .line 1138
    iget-object v10, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v10, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1140
    invoke-direct {p0, v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_89

    .line 1142
    aput-boolean v0, v3, v9

    add-int/2addr v4, v6

    goto :goto_4f

    :cond_89
    :goto_89
    add-int/lit8 v9, v9, 0x1

    goto :goto_62

    :cond_8c
    return v2

    :cond_8d
    return v0

    :catch_8e
    return v2
.end method

.method public blacklist equals(Ljava/lang/Object;Z)Z
    .registers 8

    if-nez p2, :cond_7

    .line 979
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    const/4 p2, 0x1

    if-ne p1, p0, :cond_b

    return p2

    .line 987
    :cond_b
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_15

    return v1

    .line 992
    :cond_15
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 994
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_27

    return p2

    .line 1003
    :cond_27
    :try_start_27
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2b} :catch_6f

    .line 1010
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1012
    iget-object v2, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_3a

    return v1

    :cond_3a
    move v2, v1

    :goto_3b
    if-ge v2, v0, :cond_6e

    .line 1019
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1020
    iget-object v4, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1022
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1024
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1025
    iget-object v4, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1027
    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    return v1

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_6d
    return v1

    :cond_6e
    return p2

    :catch_6f
    return v1
.end method

.method public greylist-max-r getOIDs()Ljava/util/Vector;
    .registers 4

    .line 872
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 874
    :goto_6
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1a

    .line 876
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public greylist-max-r getValues()Ljava/util/Vector;
    .registers 4

    .line 889
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 891
    :goto_6
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1a

    .line 893
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public blacklist getValues(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;
    .registers 9

    .line 906
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 908
    :goto_7
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_49

    .line 910
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 912
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 914
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_43

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_43

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_43

    .line 916
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_46

    .line 920
    :cond_43
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_49
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1043
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_7

    .line 1045
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    return p0

    :cond_7
    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    const/4 v0, 0x0

    .line 1051
    :goto_b
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_3c

    .line 1053
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1055
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1058
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    .line 1059
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1062
    :cond_3c
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 9

    .line 930
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_7c

    .line 932
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 933
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 936
    :goto_10
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v3, v4, :cond_6d

    .line 938
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 939
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 941
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 943
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 945
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    invoke-virtual {v7, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;->getConvertedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz v2, :cond_61

    .line 947
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 948
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_61

    .line 954
    :cond_4b
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 956
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 957
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_69

    .line 950
    :cond_61
    :goto_61
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    :goto_69
    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_10

    .line 963
    :cond_6d
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 965
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 968
    :cond_7c
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1386
    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toString(ZLjava/util/Hashtable;)Ljava/lang/String;
    .registers 10

    .line 1310
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1311
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    .line 1316
    :goto_d
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 1318
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3c

    const/16 v5, 0x2b

    .line 1320
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1321
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 1322
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 1323
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1321
    invoke-direct {p0, v2, p2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    goto :goto_57

    .line 1327
    :cond_3c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1328
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 1329
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 1330
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1328
    invoke-direct {p0, v2, p2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_5a
    const/16 p0, 0x2c

    const/4 p2, 0x1

    if-eqz p1, :cond_7b

    .line 1337
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, p2

    :goto_64
    if-ltz p1, :cond_97

    if-eqz p2, :cond_6a

    move p2, v3

    goto :goto_6d

    .line 1345
    :cond_6a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1348
    :goto_6d
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    goto :goto_64

    :cond_7b
    move p1, v3

    .line 1353
    :goto_7c
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_97

    if-eqz p2, :cond_86

    move p2, v3

    goto :goto_89

    .line 1361
    :cond_86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1364
    :goto_89
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_7c

    .line 1368
    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
