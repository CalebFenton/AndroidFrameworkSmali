.class public Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;
.super Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.source "BCStyle.java"


# static fields
.field public static final blacklist BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DESCRIPTION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DMD_NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final blacklist DefaultLookUp:Ljava/util/Hashtable;

.field private static final blacklist DefaultSymbols:Ljava/util/Hashtable;

.field public static final blacklist E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

.field public static final blacklist L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ORGANIZATION_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ROLE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field protected final blacklist defaultLookUp:Ljava/util/Hashtable;

.field protected final blacklist defaultSymbols:Ljava/util/Hashtable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 39

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2.5.4.10"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "2.5.4.11"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.5.4.12"

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "2.5.4.3"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "2.5.4.5"

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "2.5.4.9"

    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    sput-object v6, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "2.5.4.7"

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    sput-object v7, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "2.5.4.8"

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sput-object v8, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "2.5.4.4"

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    sput-object v9, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "2.5.4.42"

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    sput-object v10, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 79
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "2.5.4.43"

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    sput-object v11, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    new-instance v12, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "2.5.4.44"

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    sput-object v12, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "2.5.4.45"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    new-instance v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "2.5.4.13"

    invoke-direct {v14, v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v14

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DESCRIPTION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v13

    const-string v13, "2.5.4.15"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v13

    const-string v13, "2.5.4.17"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v13

    const-string v13, "2.5.4.46"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v13

    const-string v13, "2.5.4.65"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v13

    const-string v13, "2.5.4.72"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->ROLE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 110
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v13

    const-string v13, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 115
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v13

    const-string v13, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v13

    const-string v13, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 126
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v13

    const-string v13, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v25, v13

    const-string v13, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 138
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v26, v13

    const-string v13, "1.3.36.8.3.14"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 144
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v27, v13

    const-string v13, "2.5.4.16"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 149
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v28, v13

    const-string v13, "2.5.4.54"

    invoke-direct {v15, v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DMD_NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 154
    sget-object v13, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 159
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v29, v15

    .line 165
    sget-object v15, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_organizationIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->ORGANIZATION_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v30, v15

    .line 171
    sget-object v15, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v15, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v31, v13

    .line 176
    sget-object v13, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v32, v13

    .line 177
    sget-object v13, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 182
    sput-object v15, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v33, v13

    .line 187
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v34, v14

    const-string v14, "0.9.2342.19200300.100.1.25"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v13, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 192
    new-instance v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v35, v12

    const-string v12, "0.9.2342.19200300.100.1.1"

    invoke-direct {v14, v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 198
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    sput-object v12, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    move-object/from16 v36, v11

    .line 203
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    sput-object v11, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    move-object/from16 v37, v11

    .line 207
    const-string v11, "C"

    invoke-virtual {v12, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v11, "O"

    invoke-virtual {v12, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v11, "T"

    invoke-virtual {v12, v3, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v11, "OU"

    invoke-virtual {v12, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v11, "CN"

    invoke-virtual {v12, v4, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v11, "L"

    invoke-virtual {v12, v7, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v11, "ST"

    invoke-virtual {v12, v8, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v11, "SERIALNUMBER"

    invoke-virtual {v12, v6, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v11, "E"

    invoke-virtual {v12, v15, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v11, "DC"

    invoke-virtual {v12, v13, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v11, "UID"

    invoke-virtual {v12, v14, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v11, "STREET"

    invoke-virtual {v12, v5, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v11, "SURNAME"

    invoke-virtual {v12, v9, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v11, "GIVENNAME"

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v11, "INITIALS"

    move-object/from16 v38, v10

    move-object/from16 v10, v36

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v11, "GENERATION"

    move-object/from16 v10, v35

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v11, "DESCRIPTION"

    move-object/from16 v10, v34

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v11, "ROLE"

    move-object/from16 v10, v21

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v11, "unstructuredAddress"

    move-object/from16 v10, v33

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v11, "unstructuredName"

    move-object/from16 v10, v32

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v11, "UniqueIdentifier"

    move-object/from16 v10, v16

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v11, "DN"

    move-object/from16 v10, v19

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v11, "Pseudonym"

    move-object/from16 v10, v20

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v11, "PostalAddress"

    move-object/from16 v10, v28

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v11, "NameAtBirth"

    move-object/from16 v10, v27

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v11, "CountryOfCitizenship"

    move-object/from16 v10, v25

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v11, "CountryOfResidence"

    move-object/from16 v10, v26

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v11, "Gender"

    move-object/from16 v10, v24

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v11, "PlaceOfBirth"

    move-object/from16 v10, v23

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v11, "DateOfBirth"

    move-object/from16 v10, v22

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v11, "PostalCode"

    move-object/from16 v10, v18

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v11, "BusinessCategory"

    move-object/from16 v10, v17

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v11, "TelephoneNumber"

    move-object/from16 v10, v31

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v11, "Name"

    move-object/from16 v10, v29

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v11, "organizationIdentifier"

    move-object/from16 v10, v30

    invoke-virtual {v12, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v11, "c"

    move-object/from16 v12, v37

    invoke-virtual {v12, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "o"

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "t"

    invoke-virtual {v12, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "ou"

    invoke-virtual {v12, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v0, "cn"

    invoke-virtual {v12, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "l"

    invoke-virtual {v12, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "st"

    invoke-virtual {v12, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "sn"

    invoke-virtual {v12, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "serialnumber"

    invoke-virtual {v12, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "street"

    invoke-virtual {v12, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "emailaddress"

    invoke-virtual {v12, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "dc"

    invoke-virtual {v12, v0, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "e"

    invoke-virtual {v12, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "uid"

    invoke-virtual {v12, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "surname"

    invoke-virtual {v12, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "givenname"

    move-object/from16 v1, v38

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "initials"

    move-object/from16 v1, v36

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "generation"

    move-object/from16 v1, v35

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "description"

    move-object/from16 v1, v34

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "role"

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "unstructuredaddress"

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "unstructuredname"

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "uniqueidentifier"

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "dn"

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "pseudonym"

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v0, "postaladdress"

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v0, "nameatbirth"

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "countryofcitizenship"

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "countryofresidence"

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "gender"

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "placeofbirth"

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "dateofbirth"

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "postalcode"

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "businesscategory"

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "telephonenumber"

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "name"

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "organizationidentifier"

    invoke-virtual {v12, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 291
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;-><init>()V

    .line 292
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->defaultSymbols:Ljava/util/Hashtable;

    .line 293
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->defaultLookUp:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public blacklist attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 327
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4

    .line 298
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4b

    .line 302
    :cond_11
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 304
    new-instance p0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 306
    :cond_1f
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 307
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_45

    .line 312
    :cond_40
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    .line 309
    :cond_45
    :goto_45
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 300
    :cond_4b
    :goto_4b
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist fromString(Ljava/lang/String;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 2

    .line 332
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
    .registers 8

    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    .line 342
    :goto_c
    array-length v4, p1

    if-ge v3, v4, :cond_22

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_18

    :cond_13
    const/16 v4, 0x2c

    .line 350
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 353
    :goto_18
    aget-object v4, p1, v3

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->defaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendRDN(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 356
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
