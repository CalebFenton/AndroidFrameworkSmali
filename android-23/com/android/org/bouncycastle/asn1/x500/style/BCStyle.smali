.class public Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;
.super Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.source "BCStyle.java"


# static fields
.field public static final BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DMD_NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final DefaultLookUp:Ljava/util/Hashtable;

.field private static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

.field public static final L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field protected final defaultLookUp:Ljava/util/Hashtable;

.field protected final defaultSymbols:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "2.5.4.6"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "2.5.4.10"

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    const-string/jumbo v1, "2.5.4.11"

    #@19
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    const-string/jumbo v1, "2.5.4.12"

    #@23
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    const-string/jumbo v1, "2.5.4.3"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    const-string/jumbo v1, "2.5.4.5"

    #@37
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    const-string/jumbo v1, "2.5.4.9"

    #@41
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 57
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c
    const-string/jumbo v1, "2.5.4.7"

    #@4f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@52
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    .line 67
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56
    const-string/jumbo v1, "2.5.4.8"

    #@59
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@5c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5e
    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@60
    const-string/jumbo v1, "2.5.4.4"

    #@63
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@66
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@68
    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    const-string/jumbo v1, "2.5.4.42"

    #@6d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@70
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@72
    .line 74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@74
    const-string/jumbo v1, "2.5.4.43"

    #@77
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@7a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7c
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7e
    const-string/jumbo v1, "2.5.4.44"

    #@81
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@84
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@86
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@88
    const-string/jumbo v1, "2.5.4.45"

    #@8b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@90
    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@92
    .line 82
    const-string/jumbo v1, "2.5.4.15"

    #@95
    .line 81
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@98
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9a
    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9c
    .line 88
    const-string/jumbo v1, "2.5.4.17"

    #@9f
    .line 87
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a4
    .line 93
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a6
    .line 94
    const-string/jumbo v1, "2.5.4.46"

    #@a9
    .line 93
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@ac
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ae
    .line 99
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b0
    .line 100
    const-string/jumbo v1, "2.5.4.65"

    #@b3
    .line 99
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b8
    .line 106
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    .line 107
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.1"

    #@bd
    .line 106
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c2
    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c4
    .line 113
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.2"

    #@c7
    .line 112
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@ca
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cc
    .line 118
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ce
    .line 119
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.3"

    #@d1
    .line 118
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@d4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d6
    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d8
    .line 126
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.4"

    #@db
    .line 125
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@de
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e0
    .line 132
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e2
    .line 133
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.5"

    #@e5
    .line 132
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@e8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ea
    .line 139
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ec
    const-string/jumbo v1, "1.3.36.8.3.14"

    #@ef
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@f2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f4
    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f6
    const-string/jumbo v1, "2.5.4.16"

    #@f9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@fc
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fe
    .line 150
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@100
    const-string/jumbo v1, "2.5.4.54"

    #@103
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@106
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DMD_NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@108
    .line 155
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10c
    .line 160
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@110
    .line 166
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@112
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@114
    .line 171
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@116
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@118
    .line 172
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11c
    .line 177
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@120
    .line 182
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@122
    const-string/jumbo v1, "0.9.2342.19200300.100.1.25"

    #@125
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@128
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12a
    .line 187
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12c
    const-string/jumbo v1, "0.9.2342.19200300.100.1.1"

    #@12f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@132
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@134
    .line 193
    new-instance v0, Ljava/util/Hashtable;

    #@136
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@139
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@13b
    .line 198
    new-instance v0, Ljava/util/Hashtable;

    #@13d
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@140
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@142
    .line 202
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@144
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@146
    const-string/jumbo v2, "C"

    #@149
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14c
    .line 203
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@14e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@150
    const-string/jumbo v2, "O"

    #@153
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@156
    .line 204
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@158
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15a
    const-string/jumbo v2, "T"

    #@15d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@160
    .line 205
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@162
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@164
    const-string/jumbo v2, "OU"

    #@167
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16a
    .line 206
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@16c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16e
    const-string/jumbo v2, "CN"

    #@171
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@174
    .line 207
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@176
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@178
    const-string/jumbo v2, "L"

    #@17b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17e
    .line 208
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@180
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@182
    const-string/jumbo v2, "ST"

    #@185
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@188
    .line 209
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@18a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18c
    const-string/jumbo v2, "SERIALNUMBER"

    #@18f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@192
    .line 210
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@194
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@196
    const-string/jumbo v2, "E"

    #@199
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19c
    .line 211
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@19e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a0
    const-string/jumbo v2, "DC"

    #@1a3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a6
    .line 212
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1a8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1aa
    const-string/jumbo v2, "UID"

    #@1ad
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b0
    .line 213
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1b2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b4
    const-string/jumbo v2, "STREET"

    #@1b7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ba
    .line 214
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1bc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1be
    const-string/jumbo v2, "SURNAME"

    #@1c1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c4
    .line 215
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1c6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c8
    const-string/jumbo v2, "GIVENNAME"

    #@1cb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ce
    .line 216
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1d0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d2
    const-string/jumbo v2, "INITIALS"

    #@1d5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d8
    .line 217
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1da
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1dc
    const-string/jumbo v2, "GENERATION"

    #@1df
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e2
    .line 218
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1e4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e6
    const-string/jumbo v2, "unstructuredAddress"

    #@1e9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ec
    .line 219
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1ee
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f0
    const-string/jumbo v2, "unstructuredName"

    #@1f3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f6
    .line 220
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1f8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1fa
    const-string/jumbo v2, "UniqueIdentifier"

    #@1fd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@200
    .line 221
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@202
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@204
    const-string/jumbo v2, "DN"

    #@207
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20a
    .line 222
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@20c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20e
    const-string/jumbo v2, "Pseudonym"

    #@211
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@214
    .line 223
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@216
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@218
    const-string/jumbo v2, "PostalAddress"

    #@21b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21e
    .line 224
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@220
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@222
    const-string/jumbo v2, "NameAtBirth"

    #@225
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@228
    .line 225
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@22a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22c
    const-string/jumbo v2, "CountryOfCitizenship"

    #@22f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@232
    .line 226
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@234
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@236
    const-string/jumbo v2, "CountryOfResidence"

    #@239
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23c
    .line 227
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@23e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@240
    const-string/jumbo v2, "Gender"

    #@243
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@246
    .line 228
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@248
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24a
    const-string/jumbo v2, "PlaceOfBirth"

    #@24d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@250
    .line 229
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@252
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@254
    const-string/jumbo v2, "DateOfBirth"

    #@257
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25a
    .line 230
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@25c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25e
    const-string/jumbo v2, "PostalCode"

    #@261
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@264
    .line 231
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@266
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@268
    const-string/jumbo v2, "BusinessCategory"

    #@26b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26e
    .line 232
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@270
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@272
    const-string/jumbo v2, "TelephoneNumber"

    #@275
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@278
    .line 233
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@27a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27c
    const-string/jumbo v2, "Name"

    #@27f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@282
    .line 235
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@284
    const-string/jumbo v1, "c"

    #@287
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@289
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28c
    .line 236
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@28e
    const-string/jumbo v1, "o"

    #@291
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@293
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@296
    .line 237
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@298
    const-string/jumbo v1, "t"

    #@29b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a0
    .line 238
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2a2
    const-string/jumbo v1, "ou"

    #@2a5
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2aa
    .line 239
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2ac
    const-string/jumbo v1, "cn"

    #@2af
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b4
    .line 240
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2b6
    const-string/jumbo v1, "l"

    #@2b9
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2bb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2be
    .line 241
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2c0
    const-string/jumbo v1, "st"

    #@2c3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c8
    .line 242
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2ca
    const-string/jumbo v1, "sn"

    #@2cd
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2cf
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d2
    .line 243
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2d4
    const-string/jumbo v1, "serialnumber"

    #@2d7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2dc
    .line 244
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2de
    const-string/jumbo v1, "street"

    #@2e1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e6
    .line 245
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2e8
    const-string/jumbo v1, "emailaddress"

    #@2eb
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ed
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f0
    .line 246
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2f2
    const-string/jumbo v1, "dc"

    #@2f5
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fa
    .line 247
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2fc
    const-string/jumbo v1, "e"

    #@2ff
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@301
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@304
    .line 248
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@306
    const-string/jumbo v1, "uid"

    #@309
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30e
    .line 249
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@310
    const-string/jumbo v1, "surname"

    #@313
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@315
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@318
    .line 250
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@31a
    const-string/jumbo v1, "givenname"

    #@31d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@31f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@322
    .line 251
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@324
    const-string/jumbo v1, "initials"

    #@327
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@329
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32c
    .line 252
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@32e
    const-string/jumbo v1, "generation"

    #@331
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@333
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@336
    .line 253
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@338
    const-string/jumbo v1, "unstructuredaddress"

    #@33b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@340
    .line 254
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@342
    const-string/jumbo v1, "unstructuredname"

    #@345
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@347
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34a
    .line 255
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@34c
    const-string/jumbo v1, "uniqueidentifier"

    #@34f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@351
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@354
    .line 256
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@356
    const-string/jumbo v1, "dn"

    #@359
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35e
    .line 257
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@360
    const-string/jumbo v1, "pseudonym"

    #@363
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@365
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@368
    .line 258
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@36a
    const-string/jumbo v1, "postaladdress"

    #@36d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@372
    .line 259
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@374
    const-string/jumbo v1, "nameofbirth"

    #@377
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@379
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37c
    .line 260
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@37e
    const-string/jumbo v1, "countryofcitizenship"

    #@381
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@383
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@386
    .line 261
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@388
    const-string/jumbo v1, "countryofresidence"

    #@38b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@390
    .line 262
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@392
    const-string/jumbo v1, "gender"

    #@395
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@397
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39a
    .line 263
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@39c
    const-string/jumbo v1, "placeofbirth"

    #@39f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a4
    .line 264
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3a6
    const-string/jumbo v1, "dateofbirth"

    #@3a9
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3ab
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ae
    .line 265
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3b0
    const-string/jumbo v1, "postalcode"

    #@3b3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b8
    .line 266
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3ba
    const-string/jumbo v1, "businesscategory"

    #@3bd
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3bf
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c2
    .line 267
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3c4
    const-string/jumbo v1, "telephonenumber"

    #@3c7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3cc
    .line 268
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3ce
    const-string/jumbo v1, "name"

    #@3d1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d6
    .line 274
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;

    #@3d8
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    #@3db
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@3dd
    .line 16
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;-><init>()V

    #@3
    .line 281
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->defaultSymbols:Ljava/util/Hashtable;

    #@b
    .line 282
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->defaultLookUp:Ljava/util/Hashtable;

    #@13
    .line 279
    return-void
.end method


# virtual methods
.method public attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p1, "attrName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->defaultLookUp:Ljava/util/Hashtable;

    #@2
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 287
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 289
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@12
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    #@15
    return-object v0

    #@16
    .line 291
    :cond_1
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 293
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@20
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    #@23
    return-object v0

    #@24
    .line 295
    :cond_2
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_3

    #@2c
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_3

    #@34
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_3

    #@3c
    .line 296
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    .line 295
    if-eqz v0, :cond_4

    #@44
    .line 298
    :cond_3
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@46
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    #@49
    return-object v0

    #@4a
    .line 301
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4d
    move-result-object v0

    #@4e
    return-object v0
.end method

.method public fromString(Ljava/lang/String;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 1
    .param p1, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 321
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public oidToAttrNames(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->defaultLookUp:Ljava/util/Hashtable;

    #@2
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->findAttrNamesForOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public oidToDisplayName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 306
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 327
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    #@6
    .line 329
    .local v1, "first":Z
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@9
    move-result-object v3

    #@a
    .line 331
    .local v3, "rdns":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@c
    if-ge v2, v4, :cond_1

    #@e
    .line 333
    if-eqz v1, :cond_0

    #@10
    .line 335
    const/4 v1, 0x0

    #@11
    .line 342
    :goto_1
    aget-object v4, v3, v2

    #@13
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->defaultSymbols:Ljava/util/Hashtable;

    #@15
    invoke-static {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendRDN(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V

    #@18
    .line 331
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 339
    :cond_0
    const/16 v4, 0x2c

    #@1d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@20
    goto :goto_1

    #@21
    .line 345
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    return-object v4
.end method
