.class public Lcom/android/org/bouncycastle/asn1/x509/X509Name;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X509Name.java"


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

.field public static final DefaultLookUp:Ljava/util/Hashtable;

.field public static DefaultReverse:Z

.field public static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final FALSE:Ljava/lang/Boolean;

.field public static final GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final OIDLookUp:Ljava/util/Hashtable;

.field public static final OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final RFC1779Symbols:Ljava/util/Hashtable;

.field public static final RFC2253Symbols:Ljava/util/Hashtable;

.field public static final SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SymbolLookUp:Ljava/util/Hashtable;

.field public static final T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final TRUE:Ljava/lang/Boolean;

.field public static final UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private added:Ljava/util/Vector;

.field private converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private ordering:Ljava/util/Vector;

.field private seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private values:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "2.5.4.6"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "2.5.4.10"

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    const-string/jumbo v1, "2.5.4.11"

    #@19
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    const-string/jumbo v1, "2.5.4.12"

    #@23
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    const-string/jumbo v1, "2.5.4.3"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    .line 74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    const-string/jumbo v1, "2.5.4.5"

    #@37
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    const-string/jumbo v1, "2.5.4.9"

    #@41
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a
    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c
    const-string/jumbo v1, "2.5.4.7"

    #@4f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@52
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56
    const-string/jumbo v1, "2.5.4.8"

    #@59
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@5c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5e
    .line 99
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@60
    const-string/jumbo v1, "2.5.4.4"

    #@63
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@66
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@68
    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6a
    const-string/jumbo v1, "2.5.4.42"

    #@6d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@70
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@72
    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@74
    const-string/jumbo v1, "2.5.4.43"

    #@77
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@7a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7c
    .line 102
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7e
    const-string/jumbo v1, "2.5.4.44"

    #@81
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@84
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@86
    .line 103
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@88
    const-string/jumbo v1, "2.5.4.45"

    #@8b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@90
    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@92
    .line 109
    const-string/jumbo v1, "2.5.4.15"

    #@95
    .line 108
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@98
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9a
    .line 114
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9c
    .line 115
    const-string/jumbo v1, "2.5.4.17"

    #@9f
    .line 114
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a4
    .line 120
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a6
    .line 121
    const-string/jumbo v1, "2.5.4.46"

    #@a9
    .line 120
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@ac
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ae
    .line 126
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b0
    .line 127
    const-string/jumbo v1, "2.5.4.65"

    #@b3
    .line 126
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b8
    .line 133
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    .line 134
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.1"

    #@bd
    .line 133
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c2
    .line 139
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c4
    .line 140
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.2"

    #@c7
    .line 139
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@ca
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cc
    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ce
    .line 146
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.3"

    #@d1
    .line 145
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@d4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d6
    .line 152
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d8
    .line 153
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.4"

    #@db
    .line 152
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@de
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e0
    .line 159
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e2
    .line 160
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.5"

    #@e5
    .line 159
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@e8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ea
    .line 166
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ec
    const-string/jumbo v1, "1.3.36.8.3.14"

    #@ef
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@f2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f4
    .line 172
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f6
    const-string/jumbo v1, "2.5.4.16"

    #@f9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@fc
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fe
    .line 177
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@100
    const-string/jumbo v1, "2.5.4.54"

    #@103
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@106
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DMD_NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@108
    .line 182
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10c
    .line 187
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@110
    .line 194
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@112
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@114
    .line 199
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@116
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@118
    .line 200
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11c
    .line 205
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@120
    .line 210
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@122
    const-string/jumbo v1, "0.9.2342.19200300.100.1.25"

    #@125
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@128
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12a
    .line 215
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12c
    const-string/jumbo v1, "0.9.2342.19200300.100.1.1"

    #@12f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@132
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@134
    .line 221
    const/4 v0, 0x0

    #@135
    sput-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    #@137
    .line 227
    new-instance v0, Ljava/util/Hashtable;

    #@139
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@13c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@13e
    .line 233
    new-instance v0, Ljava/util/Hashtable;

    #@140
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@143
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@145
    .line 239
    new-instance v0, Ljava/util/Hashtable;

    #@147
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@14a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    #@14c
    .line 244
    new-instance v0, Ljava/util/Hashtable;

    #@14e
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@151
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@153
    .line 250
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@155
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OIDLookUp:Ljava/util/Hashtable;

    #@157
    .line 256
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@159
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SymbolLookUp:Ljava/util/Hashtable;

    #@15b
    .line 259
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@15d
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    #@15f
    .line 260
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@161
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    #@163
    .line 265
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@165
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@167
    const-string/jumbo v2, "C"

    #@16a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16d
    .line 266
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@16f
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@171
    const-string/jumbo v2, "O"

    #@174
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@177
    .line 267
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@179
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17b
    const-string/jumbo v2, "T"

    #@17e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@181
    .line 268
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@183
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@185
    const-string/jumbo v2, "OU"

    #@188
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18b
    .line 269
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@18d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18f
    const-string/jumbo v2, "CN"

    #@192
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@195
    .line 270
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@197
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@199
    const-string/jumbo v2, "L"

    #@19c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19f
    .line 271
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1a1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a3
    const-string/jumbo v2, "ST"

    #@1a6
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a9
    .line 272
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1ab
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ad
    const-string/jumbo v2, "SERIALNUMBER"

    #@1b0
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b3
    .line 273
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1b5
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b7
    const-string/jumbo v2, "E"

    #@1ba
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bd
    .line 274
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1bf
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c1
    const-string/jumbo v2, "DC"

    #@1c4
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c7
    .line 275
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1c9
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1cb
    const-string/jumbo v2, "UID"

    #@1ce
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d1
    .line 276
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1d3
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d5
    const-string/jumbo v2, "STREET"

    #@1d8
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1db
    .line 277
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1dd
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1df
    const-string/jumbo v2, "SURNAME"

    #@1e2
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e5
    .line 278
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1e7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e9
    const-string/jumbo v2, "GIVENNAME"

    #@1ec
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ef
    .line 279
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1f1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f3
    const-string/jumbo v2, "INITIALS"

    #@1f6
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f9
    .line 280
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@1fb
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1fd
    const-string/jumbo v2, "GENERATION"

    #@200
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@203
    .line 281
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@205
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@207
    const-string/jumbo v2, "unstructuredAddress"

    #@20a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20d
    .line 282
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@20f
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@211
    const-string/jumbo v2, "unstructuredName"

    #@214
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@217
    .line 283
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@219
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21b
    const-string/jumbo v2, "UniqueIdentifier"

    #@21e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@221
    .line 284
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@223
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@225
    const-string/jumbo v2, "DN"

    #@228
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22b
    .line 285
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@22d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22f
    const-string/jumbo v2, "Pseudonym"

    #@232
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@235
    .line 286
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@237
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@239
    const-string/jumbo v2, "PostalAddress"

    #@23c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23f
    .line 287
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@241
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@243
    const-string/jumbo v2, "NameAtBirth"

    #@246
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@249
    .line 288
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@24b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24d
    const-string/jumbo v2, "CountryOfCitizenship"

    #@250
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@253
    .line 289
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@255
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@257
    const-string/jumbo v2, "CountryOfResidence"

    #@25a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25d
    .line 290
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@25f
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@261
    const-string/jumbo v2, "Gender"

    #@264
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@267
    .line 291
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@269
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26b
    const-string/jumbo v2, "PlaceOfBirth"

    #@26e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@271
    .line 292
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@273
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@275
    const-string/jumbo v2, "DateOfBirth"

    #@278
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27b
    .line 293
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@27d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27f
    const-string/jumbo v2, "PostalCode"

    #@282
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@285
    .line 294
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@287
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@289
    const-string/jumbo v2, "BusinessCategory"

    #@28c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28f
    .line 295
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@291
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@293
    const-string/jumbo v2, "TelephoneNumber"

    #@296
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@299
    .line 296
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@29b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29d
    const-string/jumbo v2, "Name"

    #@2a0
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a3
    .line 298
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@2a5
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a7
    const-string/jumbo v2, "C"

    #@2aa
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ad
    .line 299
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@2af
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b1
    const-string/jumbo v2, "O"

    #@2b4
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b7
    .line 300
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@2b9
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2bb
    const-string/jumbo v2, "OU"

    #@2be
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c1
    .line 301
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@2c3
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c5
    const-string/jumbo v2, "CN"

    #@2c8
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2cb
    .line 302
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@2cd
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2cf
    const-string/jumbo v2, "L"

    #@2d2
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d5
    .line 303
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@2d7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d9
    const-string/jumbo v2, "ST"

    #@2dc
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2df
    .line 304
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@2e1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e3
    const-string/jumbo v2, "STREET"

    #@2e6
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e9
    .line 305
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@2eb
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ed
    const-string/jumbo v2, "DC"

    #@2f0
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f3
    .line 306
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    #@2f5
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f7
    const-string/jumbo v2, "UID"

    #@2fa
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fd
    .line 308
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    #@2ff
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@301
    const-string/jumbo v2, "C"

    #@304
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@307
    .line 309
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    #@309
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30b
    const-string/jumbo v2, "O"

    #@30e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@311
    .line 310
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    #@313
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@315
    const-string/jumbo v2, "OU"

    #@318
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31b
    .line 311
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    #@31d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@31f
    const-string/jumbo v2, "CN"

    #@322
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@325
    .line 312
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    #@327
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@329
    const-string/jumbo v2, "L"

    #@32c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32f
    .line 313
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    #@331
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@333
    const-string/jumbo v2, "ST"

    #@336
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@339
    .line 314
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    #@33b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33d
    const-string/jumbo v2, "STREET"

    #@340
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@343
    .line 316
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@345
    const-string/jumbo v1, "c"

    #@348
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34d
    .line 317
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@34f
    const-string/jumbo v1, "o"

    #@352
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@354
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@357
    .line 318
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@359
    const-string/jumbo v1, "t"

    #@35c
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@361
    .line 319
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@363
    const-string/jumbo v1, "ou"

    #@366
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@368
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36b
    .line 320
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@36d
    const-string/jumbo v1, "cn"

    #@370
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@372
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@375
    .line 321
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@377
    const-string/jumbo v1, "l"

    #@37a
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@37c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37f
    .line 322
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@381
    const-string/jumbo v1, "st"

    #@384
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@386
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@389
    .line 323
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@38b
    const-string/jumbo v1, "sn"

    #@38e
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@390
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@393
    .line 324
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@395
    const-string/jumbo v1, "serialnumber"

    #@398
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@39a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39d
    .line 325
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@39f
    const-string/jumbo v1, "street"

    #@3a2
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a4
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a7
    .line 326
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@3a9
    const-string/jumbo v1, "emailaddress"

    #@3ac
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3ae
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b1
    .line 327
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@3b3
    const-string/jumbo v1, "dc"

    #@3b6
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b8
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3bb
    .line 328
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@3bd
    const-string/jumbo v1, "e"

    #@3c0
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c2
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c5
    .line 329
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@3c7
    const-string/jumbo v1, "uid"

    #@3ca
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3cc
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3cf
    .line 330
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@3d1
    const-string/jumbo v1, "surname"

    #@3d4
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d6
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d9
    .line 331
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@3db
    const-string/jumbo v1, "givenname"

    #@3de
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e0
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e3
    .line 332
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@3e5
    const-string/jumbo v1, "initials"

    #@3e8
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3ea
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ed
    .line 333
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@3ef
    const-string/jumbo v1, "generation"

    #@3f2
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3f4
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f7
    .line 334
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@3f9
    const-string/jumbo v1, "unstructuredaddress"

    #@3fc
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3fe
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@401
    .line 335
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@403
    const-string/jumbo v1, "unstructuredname"

    #@406
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@408
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40b
    .line 336
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@40d
    const-string/jumbo v1, "uniqueidentifier"

    #@410
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@412
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@415
    .line 337
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@417
    const-string/jumbo v1, "dn"

    #@41a
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41f
    .line 338
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@421
    const-string/jumbo v1, "pseudonym"

    #@424
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@426
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@429
    .line 339
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@42b
    const-string/jumbo v1, "postaladdress"

    #@42e
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@430
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@433
    .line 340
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@435
    const-string/jumbo v1, "nameofbirth"

    #@438
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43d
    .line 341
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@43f
    const-string/jumbo v1, "countryofcitizenship"

    #@442
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@444
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@447
    .line 342
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@449
    const-string/jumbo v1, "countryofresidence"

    #@44c
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@44e
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@451
    .line 343
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@453
    const-string/jumbo v1, "gender"

    #@456
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@458
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45b
    .line 344
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@45d
    const-string/jumbo v1, "placeofbirth"

    #@460
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@462
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@465
    .line 345
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@467
    const-string/jumbo v1, "dateofbirth"

    #@46a
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46f
    .line 346
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@471
    const-string/jumbo v1, "postalcode"

    #@474
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@476
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@479
    .line 347
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@47b
    const-string/jumbo v1, "businesscategory"

    #@47e
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@480
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@483
    .line 348
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@485
    const-string/jumbo v1, "telephonenumber"

    #@488
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48d
    .line 349
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@48f
    const-string/jumbo v1, "name"

    #@492
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@494
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@497
    .line 38
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 352
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@6
    .line 353
    new-instance v0, Ljava/util/Vector;

    #@8
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@d
    .line 354
    new-instance v0, Ljava/util/Vector;

    #@f
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@14
    .line 355
    new-instance v0, Ljava/util/Vector;

    #@16
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@1b
    .line 395
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 13
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 405
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 352
    const/4 v7, 0x0

    #@6
    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@8
    .line 353
    new-instance v7, Ljava/util/Vector;

    #@a
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    #@d
    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@f
    .line 354
    new-instance v7, Ljava/util/Vector;

    #@11
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    #@14
    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@16
    .line 355
    new-instance v7, Ljava/util/Vector;

    #@18
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    #@1b
    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@1d
    .line 408
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1f
    .line 410
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@22
    move-result-object v0

    #@23
    .line 412
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_6

    #@29
    .line 414
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2f
    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@32
    move-result-object v7

    #@33
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@36
    move-result-object v4

    #@37
    .line 416
    .local v4, "set":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/4 v2, 0x0

    #@38
    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@3b
    move-result v7

    #@3c
    if-ge v2, v7, :cond_0

    #@3e
    .line 418
    invoke-virtual {v4, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@41
    move-result-object v7

    #@42
    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@45
    move-result-object v7

    #@46
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@49
    move-result-object v3

    #@4a
    .line 420
    .local v3, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@4d
    move-result v7

    #@4e
    const/4 v10, 0x2

    #@4f
    if-eq v7, v10, :cond_1

    #@51
    .line 422
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@53
    const-string/jumbo v8, "badly sized pair"

    #@56
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v7

    #@5a
    .line 425
    :cond_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@5c
    invoke-virtual {v3, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5f
    move-result-object v10

    #@60
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v7, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@67
    .line 427
    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@6a
    move-result-object v6

    #@6b
    .line 428
    .local v6, "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v7, v6, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@6d
    if-eqz v7, :cond_2

    #@6f
    instance-of v7, v6, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    #@71
    if-eqz v7, :cond_3

    #@73
    .line 444
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@75
    new-instance v10, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v11, "#"

    #@7d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v10

    #@81
    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@84
    move-result-object v11

    #@85
    const-string/jumbo v12, "DER"

    #@88
    invoke-virtual {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    #@8b
    move-result-object v11

    #@8c
    invoke-static {v11}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@8f
    move-result-object v11

    #@90
    invoke-direct {p0, v11}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->bytesToString([B)Ljava/lang/String;

    #@93
    move-result-object v11

    #@94
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v10

    #@98
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v10

    #@9c
    invoke-virtual {v7, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9f
    .line 452
    .end local v6    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_1
    iget-object v10, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@a1
    if-eqz v2, :cond_5

    #@a3
    move v7, v8

    #@a4
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v10, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@ab
    .line 416
    add-int/lit8 v2, v2, 0x1

    #@ad
    goto :goto_0

    #@ae
    .line 430
    .restart local v6    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@b0
    .end local v6    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    #@b3
    move-result-object v5

    #@b4
    .line 431
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@b7
    move-result v7

    #@b8
    if-lez v7, :cond_4

    #@ba
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    #@bd
    move-result v7

    #@be
    const/16 v10, 0x23

    #@c0
    if-ne v7, v10, :cond_4

    #@c2
    .line 433
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@c4
    new-instance v10, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v11, "\\"

    #@cc
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v10

    #@d0
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v10

    #@d4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v10

    #@d8
    invoke-virtual {v7, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@db
    goto :goto_1

    #@dc
    .line 437
    :cond_4
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@de
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@e1
    goto :goto_1

    #@e2
    .line 447
    .end local v5    # "v":Ljava/lang/String;
    .restart local v6    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v1

    #@e3
    .line 448
    .local v1, "e1":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@e5
    const-string/jumbo v8, "cannot encode value"

    #@e8
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@eb
    throw v7

    #@ec
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v6    # "value":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_5
    move v7, v9

    #@ed
    .line 452
    goto :goto_2

    #@ee
    .line 406
    .end local v2    # "i":I
    .end local v3    # "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "set":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 598
    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    #@7
    .line 596
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 2
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "converter"    # Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@0
    .prologue
    .line 612
    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@4
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    #@7
    .line 610
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "attributes"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 473
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    #@4
    .line 471
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "ordering"    # Ljava/util/Vector;
    .param p2, "attributes"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 488
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    #@8
    .line 486
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 6
    .param p1, "ordering"    # Ljava/util/Vector;
    .param p2, "attributes"    # Ljava/util/Hashtable;
    .param p3, "converter"    # Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 503
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 352
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@6
    .line 353
    new-instance v3, Ljava/util/Vector;

    #@8
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@b
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@d
    .line 354
    new-instance v3, Ljava/util/Vector;

    #@f
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@12
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@14
    .line 355
    new-instance v3, Ljava/util/Vector;

    #@16
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@19
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@1b
    .line 508
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@1d
    .line 510
    if-eqz p1, :cond_0

    #@1f
    .line 512
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@23
    move-result v3

    #@24
    if-eq v1, v3, :cond_1

    #@26
    .line 514
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@28
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2f
    .line 515
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@31
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    #@33
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@36
    .line 512
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 520
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@3c
    move-result-object v0

    #@3d
    .line 522
    .local v0, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_1

    #@43
    .line 524
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@45
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@4c
    .line 525
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@4e
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    #@50
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@53
    goto :goto_1

    #@54
    .line 529
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    const/4 v1, 0x0

    #@55
    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@57
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@5a
    move-result v3

    #@5b
    if-eq v1, v3, :cond_3

    #@5d
    .line 531
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@5f
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@62
    move-result-object v2

    #@63
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@65
    .line 533
    .local v2, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    move-result-object v3

    #@69
    if-nez v3, :cond_2

    #@6b
    .line 535
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6d
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, "No attribute for object id - "

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    const-string/jumbo v5, " - passed to distinguished name"

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v3

    #@90
    .line 538
    :cond_2
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@92
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@99
    .line 529
    add-int/lit8 v1, v1, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 506
    .end local v2    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 1
    .param p1, "oids"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 550
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    #@8
    .line 548
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 3
    .param p1, "oids"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;
    .param p3, "converter"    # Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@0
    .prologue
    .line 560
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 352
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@6
    .line 353
    new-instance v1, Ljava/util/Vector;

    #@8
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@b
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@d
    .line 354
    new-instance v1, Ljava/util/Vector;

    #@f
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@12
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@14
    .line 355
    new-instance v1, Ljava/util/Vector;

    #@16
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@19
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@1b
    .line 565
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@1d
    .line 567
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@20
    move-result v1

    #@21
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    #@24
    move-result v2

    #@25
    if-eq v1, v2, :cond_0

    #@27
    .line 569
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v2, "oids vector must be same length as values."

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 572
    :cond_0
    const/4 v0, 0x0

    #@31
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@34
    move-result v1

    #@35
    if-ge v0, v1, :cond_1

    #@37
    .line 574
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@39
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@40
    .line 575
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@42
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@49
    .line 576
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@4b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    #@4d
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@50
    .line 572
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_0

    #@53
    .line 563
    :cond_1
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .param p1, "reverse"    # Z
    .param p2, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 626
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@2
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    #@5
    .line 624
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 1
    .param p1, "reverse"    # Z
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "converter"    # Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@0
    .prologue
    .line 642
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    #@2
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    #@5
    .line 640
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .locals 1
    .param p1, "reverse"    # Z
    .param p2, "lookUp"    # Ljava/util/Hashtable;
    .param p3, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 664
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    #@8
    .line 662
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 10
    .param p1, "reverse"    # Z
    .param p2, "lookUp"    # Ljava/util/Hashtable;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p4, "converter"    # Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@0
    .prologue
    .line 778
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 352
    const/4 v8, 0x0

    #@4
    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@6
    .line 353
    new-instance v8, Ljava/util/Vector;

    #@8
    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    #@b
    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@d
    .line 354
    new-instance v8, Ljava/util/Vector;

    #@f
    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    #@12
    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@14
    .line 355
    new-instance v8, Ljava/util/Vector;

    #@16
    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    #@19
    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@1b
    .line 784
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@1d
    .line 785
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    #@1f
    invoke-direct {v3, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;)V

    #@22
    .line 787
    .local v3, "nTok":Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    #@25
    move-result v8

    #@26
    if-eqz v8, :cond_2

    #@28
    .line 789
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    .line 791
    .local v6, "token":Ljava/lang/String;
    const/16 v8, 0x2b

    #@2e
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    #@31
    move-result v8

    #@32
    if-lez v8, :cond_1

    #@34
    .line 793
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    #@36
    const/16 v8, 0x2b

    #@38
    invoke-direct {v5, v6, v8}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    #@3b
    .line 795
    .local v5, "pTok":Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    #@41
    invoke-direct {p0, p2, v8, v9}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    #@44
    .line 797
    :goto_1
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_0

    #@4a
    .line 799
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    #@4d
    move-result-object v8

    #@4e
    sget-object v9, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    #@50
    invoke-direct {p0, p2, v8, v9}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    #@53
    goto :goto_1

    #@54
    .line 804
    .end local v5    # "pTok":Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
    :cond_1
    sget-object v8, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    #@56
    invoke-direct {p0, p2, v6, v8}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V

    #@59
    goto :goto_0

    #@5a
    .line 808
    .end local v6    # "token":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_5

    #@5c
    .line 810
    new-instance v4, Ljava/util/Vector;

    #@5e
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@61
    .line 811
    .local v4, "o":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    #@63
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    #@66
    .line 812
    .local v7, "v":Ljava/util/Vector;
    new-instance v0, Ljava/util/Vector;

    #@68
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@6b
    .line 814
    .local v0, "a":Ljava/util/Vector;
    const/4 v1, 0x1

    #@6c
    .line 816
    .local v1, "count":I
    const/4 v2, 0x0

    #@6d
    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@6f
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@72
    move-result v8

    #@73
    if-ge v2, v8, :cond_4

    #@75
    .line 818
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@77
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@7a
    move-result-object v8

    #@7b
    check-cast v8, Ljava/lang/Boolean;

    #@7d
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    #@80
    move-result v8

    #@81
    if-eqz v8, :cond_3

    #@83
    .line 820
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@85
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v4, v8, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@8c
    .line 821
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@8e
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v7, v8, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@95
    .line 822
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@97
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@9a
    move-result-object v8

    #@9b
    invoke-virtual {v0, v8, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@9e
    .line 823
    add-int/lit8 v1, v1, 0x1

    #@a0
    .line 816
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@a2
    goto :goto_2

    #@a3
    .line 827
    :cond_3
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@a5
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@a8
    move-result-object v8

    #@a9
    const/4 v9, 0x0

    #@aa
    invoke-virtual {v4, v8, v9}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@ad
    .line 828
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@af
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@b2
    move-result-object v8

    #@b3
    const/4 v9, 0x0

    #@b4
    invoke-virtual {v7, v8, v9}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@b7
    .line 829
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@b9
    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@bc
    move-result-object v8

    #@bd
    const/4 v9, 0x0

    #@be
    invoke-virtual {v0, v8, v9}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@c1
    .line 830
    const/4 v1, 0x1

    #@c2
    goto :goto_3

    #@c3
    .line 834
    :cond_4
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@c5
    .line 835
    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@c7
    .line 836
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@c9
    .line 782
    .end local v0    # "a":Ljava/util/Vector;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "o":Ljava/util/Vector;
    .end local v7    # "v":Ljava/util/Vector;
    :cond_5
    return-void
.end method

.method private addEntry(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "lookUp"    # Ljava/util/Hashtable;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "isAdded"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 845
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    #@2
    const/16 v4, 0x3d

    #@4
    invoke-direct {v2, p2, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    #@7
    .line 847
    .local v2, "vTok":Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 849
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    .line 851
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v5, "badly formatted directory string"

    #@16
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v4

    #@1a
    .line 854
    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 856
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21
    move-result-object v1

    #@22
    .line 858
    .local v1, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@24
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@27
    .line 859
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@29
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->unescape(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@30
    .line 860
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@32
    invoke-virtual {v4, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@35
    .line 840
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;
    .param p3, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x5c

    #@2
    const/16 v5, 0x20

    #@4
    .line 1232
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Ljava/lang/String;

    #@a
    .line 1234
    .local v2, "sym":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@c
    .line 1236
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 1243
    :goto_0
    const/16 v3, 0x3d

    #@11
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14
    .line 1245
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@17
    move-result v1

    #@18
    .line 1246
    .local v1, "start":I
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b
    .line 1247
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@1e
    move-result v0

    #@1f
    .line 1249
    .local v0, "end":I
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@22
    move-result v3

    #@23
    const/4 v4, 0x2

    #@24
    if-lt v3, v4, :cond_0

    #@26
    const/4 v3, 0x0

    #@27
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v3

    #@2b
    if-ne v3, v6, :cond_0

    #@2d
    const/4 v3, 0x1

    #@2e
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v3

    #@32
    const/16 v4, 0x23

    #@34
    if-ne v3, v4, :cond_0

    #@36
    .line 1251
    add-int/lit8 v1, v1, 0x2

    #@38
    .line 1254
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_2

    #@3a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@3d
    move-result v3

    #@3e
    if-ne v3, v5, :cond_2

    #@40
    .line 1256
    const-string/jumbo v3, "\\"

    #@43
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 1257
    add-int/lit8 v1, v1, 0x2

    #@48
    .line 1258
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 1240
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@52
    goto :goto_0

    #@53
    .line 1261
    .restart local v0    # "end":I
    .restart local v1    # "start":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    #@55
    if-le v0, v1, :cond_3

    #@57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@5a
    move-result v3

    #@5b
    if-ne v3, v5, :cond_3

    #@5d
    .line 1263
    invoke-virtual {p1, v0, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@60
    goto :goto_2

    #@61
    .line 1278
    :sswitch_0
    const-string/jumbo v3, "\\"

    #@64
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@67
    .line 1279
    add-int/lit8 v1, v1, 0x2

    #@69
    .line 1280
    add-int/lit8 v0, v0, 0x1

    #@6b
    .line 1266
    :cond_3
    :goto_3
    if-gt v1, v0, :cond_4

    #@6d
    .line 1268
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@70
    move-result v3

    #@71
    sparse-switch v3, :sswitch_data_0

    #@74
    .line 1283
    add-int/lit8 v1, v1, 0x1

    #@76
    .line 1284
    goto :goto_3

    #@77
    .line 1230
    :cond_4
    return-void

    #@78
    .line 1268
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private bytesToString([B)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 1369
    array-length v2, p1

    #@1
    new-array v0, v2, [C

    #@3
    .line 1371
    .local v0, "cs":[C
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 1373
    aget-byte v2, p1, v1

    #@9
    and-int/lit16 v2, v2, 0xff

    #@b
    int-to-char v2, v2

    #@c
    aput-char v2, v0, v1

    #@e
    .line 1371
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1376
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@13
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    #@16
    return-object v2
.end method

.method private canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1174
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1176
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    if-lez v2, :cond_0

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v2

    #@13
    const/16 v3, 0x23

    #@15
    if-ne v2, v3, :cond_0

    #@17
    .line 1178
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1a
    move-result-object v0

    #@1b
    .line 1180
    .local v0, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 1182
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1String;

    #@21
    .end local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1186
    :cond_0
    return-object v1
.end method

.method private decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lookUp"    # Ljava/util/Hashtable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    .line 672
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "OID."

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 674
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    const/4 v2, 0x4

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1c
    return-object v1

    #@1d
    .line 676
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v1

    #@21
    const/16 v2, 0x30

    #@23
    if-lt v1, v2, :cond_1

    #@25
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v1

    #@29
    const/16 v2, 0x39

    #@2b
    if-gt v1, v2, :cond_1

    #@2d
    .line 678
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f
    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@32
    return-object v1

    #@33
    .line 681
    :cond_1
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d
    .line 682
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_2

    #@3f
    .line 684
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v3, "Unknown object id - "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    const-string/jumbo v3, " - passed to distinguished name"

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v1

    #@60
    .line 687
    :cond_2
    return-object v0
.end method

.method private decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p1, "oValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1193
    const/4 v1, 0x1

    #@1
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1196
    :catch_0
    move-exception v0

    #@f
    .line 1197
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "unknown encoding in name: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method private equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1155
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1156
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1158
    .local v0, "oValue":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 1160
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 1161
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 1163
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 1165
    const/4 v2, 0x0

    #@1d
    return v2

    #@1e
    .line 1169
    :cond_0
    const/4 v2, 0x1

    #@1f
    return v2
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 373
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 379
    if-eqz p0, :cond_0

    #@3
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 381
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@9
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@a
    .line 383
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 385
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@10
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@12
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@15
    move-result-object v1

    #@16
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@1d
    return-object v0

    #@1e
    .line 387
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    if-eqz p0, :cond_3

    #@20
    .line 389
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@22
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@29
    return-object v0

    #@2a
    .line 392
    :cond_3
    return-object v1
.end method

.method private stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    const/4 v5, 0x0

    #@3
    .line 1204
    new-instance v3, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 1206
    .local v3, "res":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_2

    #@e
    .line 1208
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 1210
    .local v0, "c1":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@15
    .line 1212
    const/4 v2, 0x1

    #@16
    .local v2, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@19
    move-result v4

    #@1a
    if-ge v2, v4, :cond_2

    #@1c
    .line 1214
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    .line 1215
    .local v1, "c2":C
    if-ne v0, v6, :cond_0

    #@22
    if-eq v1, v6, :cond_1

    #@24
    .line 1217
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@27
    .line 1219
    :cond_1
    move v0, v1

    #@28
    .line 1212
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1223
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "k":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    return-object v4
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "elt"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v13, 0x22

    #@2
    const/16 v12, 0x5c

    #@4
    const/16 v11, 0x20

    #@6
    const/4 v10, 0x0

    #@7
    .line 692
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v9

    #@b
    if-eqz v9, :cond_0

    #@d
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v9

    #@11
    if-gez v9, :cond_1

    #@13
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v9

    #@17
    if-gez v9, :cond_1

    #@19
    .line 694
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1c
    move-result-object v9

    #@1d
    return-object v9

    #@1e
    .line 697
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@21
    move-result-object v2

    #@22
    .line 698
    .local v2, "elts":[C
    const/4 v3, 0x0

    #@23
    .line 699
    .local v3, "escaped":Z
    const/4 v7, 0x0

    #@24
    .line 700
    .local v7, "quoted":Z
    new-instance v0, Ljava/lang/StringBuffer;

    #@26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@29
    move-result v9

    #@2a
    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    #@2d
    .line 701
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    #@2e
    .line 705
    .local v8, "start":I
    aget-char v9, v2, v10

    #@30
    if-ne v9, v12, :cond_2

    #@32
    .line 707
    const/4 v9, 0x1

    #@33
    aget-char v9, v2, v9

    #@35
    const/16 v10, 0x23

    #@37
    if-ne v9, v10, :cond_2

    #@39
    .line 709
    const/4 v8, 0x2

    #@3a
    .line 710
    const-string/jumbo v9, "\\#"

    #@3d
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    .line 714
    :cond_2
    const/4 v6, 0x0

    #@41
    .line 715
    .local v6, "nonWhiteSpaceEncountered":Z
    const/4 v5, 0x0

    #@42
    .line 717
    .local v5, "lastEscaped":I
    move v4, v8

    #@43
    .local v4, "i":I
    :goto_0
    array-length v9, v2

    #@44
    if-eq v4, v9, :cond_c

    #@46
    .line 719
    aget-char v1, v2, v4

    #@48
    .line 721
    .local v1, "c":C
    if-eq v1, v11, :cond_3

    #@4a
    .line 723
    const/4 v6, 0x1

    #@4b
    .line 726
    :cond_3
    if-ne v1, v13, :cond_7

    #@4d
    .line 728
    if-nez v3, :cond_6

    #@4f
    .line 730
    if-eqz v7, :cond_5

    #@51
    const/4 v7, 0x0

    #@52
    .line 736
    :goto_1
    const/4 v3, 0x0

    #@53
    .line 717
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@55
    goto :goto_0

    #@56
    .line 730
    :cond_5
    const/4 v7, 0x1

    #@57
    goto :goto_1

    #@58
    .line 734
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5b
    goto :goto_1

    #@5c
    .line 738
    :cond_7
    if-ne v1, v12, :cond_8

    #@5e
    if-nez v3, :cond_8

    #@60
    if-eqz v7, :cond_a

    #@62
    .line 745
    :cond_8
    if-ne v1, v11, :cond_9

    #@64
    if-eqz v3, :cond_b

    #@66
    .line 749
    :cond_9
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@69
    .line 750
    const/4 v3, 0x0

    #@6a
    goto :goto_2

    #@6b
    .line 740
    :cond_a
    const/4 v3, 0x1

    #@6c
    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@6f
    move-result v5

    #@70
    goto :goto_2

    #@71
    .line 745
    :cond_b
    if-eqz v6, :cond_4

    #@73
    goto :goto_3

    #@74
    .line 754
    .end local v1    # "c":C
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@77
    move-result v9

    #@78
    if-lez v9, :cond_d

    #@7a
    .line 756
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@7d
    move-result v9

    #@7e
    add-int/lit8 v9, v9, -0x1

    #@80
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    #@83
    move-result v9

    #@84
    if-ne v9, v11, :cond_d

    #@86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@89
    move-result v9

    #@8a
    add-int/lit8 v9, v9, -0x1

    #@8c
    if-eq v5, v9, :cond_d

    #@8e
    .line 758
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@91
    move-result v9

    #@92
    add-int/lit8 v9, v9, -0x1

    #@94
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    #@97
    goto :goto_4

    #@98
    .line 762
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    return-object v9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 20
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1065
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p0

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1067
    const/16 v17, 0x1

    #@8
    return v17

    #@9
    .line 1070
    :cond_0
    move-object/from16 v0, p1

    #@b
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@d
    move/from16 v17, v0

    #@f
    if-nez v17, :cond_1

    #@11
    move-object/from16 v0, p1

    #@13
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@15
    move/from16 v17, v0

    #@17
    :goto_0
    if-nez v17, :cond_2

    #@19
    .line 1072
    const/16 v17, 0x0

    #@1b
    return v17

    #@1c
    .line 1070
    :cond_1
    const/16 v17, 0x1

    #@1e
    goto :goto_0

    #@1f
    :cond_2
    move-object/from16 v17, p1

    #@21
    .line 1075
    check-cast v17, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@23
    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@26
    move-result-object v3

    #@27
    .line 1077
    .local v3, "derO":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2a
    move-result-object v17

    #@2b
    move-object/from16 v0, v17

    #@2d
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v17

    #@31
    if-eqz v17, :cond_3

    #@33
    .line 1079
    const/16 v17, 0x1

    #@35
    return v17

    #@36
    .line 1086
    :cond_3
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result-object v14

    #@3a
    .line 1093
    .local v14, "other":Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@3e
    move-object/from16 v17, v0

    #@40
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    #@43
    move-result v13

    #@44
    .line 1095
    .local v13, "orderingSize":I
    iget-object v0, v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@46
    move-object/from16 v17, v0

    #@48
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    #@4b
    move-result v17

    #@4c
    move/from16 v0, v17

    #@4e
    if-eq v13, v0, :cond_4

    #@50
    .line 1097
    const/16 v17, 0x0

    #@52
    return v17

    #@53
    .line 1089
    .end local v13    # "orderingSize":I
    .end local v14    # "other":Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :catch_0
    move-exception v4

    #@54
    .line 1090
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const/16 v17, 0x0

    #@56
    return v17

    #@57
    .line 1100
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "orderingSize":I
    .restart local v14    # "other":Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :cond_4
    new-array v8, v13, [Z

    #@59
    .line 1103
    .local v8, "indexes":[Z
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@5d
    move-object/from16 v17, v0

    #@5f
    const/16 v18, 0x0

    #@61
    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@64
    move-result-object v17

    #@65
    iget-object v0, v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@67
    move-object/from16 v18, v0

    #@69
    const/16 v19, 0x0

    #@6b
    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@6e
    move-result-object v18

    #@6f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v17

    #@73
    if-eqz v17, :cond_6

    #@75
    .line 1105
    const/4 v15, 0x0

    #@76
    .line 1106
    .local v15, "start":I
    move v5, v13

    #@77
    .line 1107
    .local v5, "end":I
    const/4 v2, 0x1

    #@78
    .line 1116
    .local v2, "delta":I
    :goto_1
    move v7, v15

    #@79
    .local v7, "i":I
    :goto_2
    if-eq v7, v5, :cond_a

    #@7b
    .line 1118
    const/4 v6, 0x0

    #@7c
    .line 1119
    .local v6, "found":Z
    move-object/from16 v0, p0

    #@7e
    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@80
    move-object/from16 v17, v0

    #@82
    move-object/from16 v0, v17

    #@84
    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@87
    move-result-object v12

    #@88
    check-cast v12, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8a
    .line 1120
    .local v12, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@8e
    move-object/from16 v17, v0

    #@90
    move-object/from16 v0, v17

    #@92
    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@95
    move-result-object v16

    #@96
    check-cast v16, Ljava/lang/String;

    #@98
    .line 1122
    .local v16, "value":Ljava/lang/String;
    const/4 v9, 0x0

    #@99
    .local v9, "j":I
    :goto_3
    if-ge v9, v13, :cond_8

    #@9b
    .line 1124
    aget-boolean v17, v8, v9

    #@9d
    if-eqz v17, :cond_7

    #@9f
    .line 1122
    :cond_5
    add-int/lit8 v9, v9, 0x1

    #@a1
    goto :goto_3

    #@a2
    .line 1111
    .end local v2    # "delta":I
    .end local v5    # "end":I
    .end local v6    # "found":Z
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v12    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v15    # "start":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_6
    add-int/lit8 v15, v13, -0x1

    #@a4
    .line 1112
    .restart local v15    # "start":I
    const/4 v5, -0x1

    #@a5
    .line 1113
    .restart local v5    # "end":I
    const/4 v2, -0x1

    #@a6
    .restart local v2    # "delta":I
    goto :goto_1

    #@a7
    .line 1129
    .restart local v6    # "found":Z
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    .restart local v12    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v16    # "value":Ljava/lang/String;
    :cond_7
    iget-object v0, v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@a9
    move-object/from16 v17, v0

    #@ab
    move-object/from16 v0, v17

    #@ad
    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@b0
    move-result-object v10

    #@b1
    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b3
    .line 1131
    .local v10, "oOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v12, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result v17

    #@b7
    if-eqz v17, :cond_5

    #@b9
    .line 1133
    iget-object v0, v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@bb
    move-object/from16 v17, v0

    #@bd
    move-object/from16 v0, v17

    #@bf
    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@c2
    move-result-object v11

    #@c3
    check-cast v11, Ljava/lang/String;

    #@c5
    .line 1135
    .local v11, "oValue":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c7
    move-object/from16 v1, v16

    #@c9
    invoke-direct {v0, v1, v11}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    #@cc
    move-result v17

    #@cd
    if-eqz v17, :cond_5

    #@cf
    .line 1137
    const/16 v17, 0x1

    #@d1
    aput-boolean v17, v8, v9

    #@d3
    .line 1138
    const/4 v6, 0x1

    #@d4
    .line 1144
    .end local v10    # "oOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v11    # "oValue":Ljava/lang/String;
    :cond_8
    if-nez v6, :cond_9

    #@d6
    .line 1146
    const/16 v17, 0x0

    #@d8
    return v17

    #@d9
    .line 1116
    :cond_9
    add-int/2addr v7, v2

    #@da
    goto :goto_2

    #@db
    .line 1150
    .end local v6    # "found":Z
    .end local v9    # "j":I
    .end local v12    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v16    # "value":Ljava/lang/String;
    :cond_a
    const/16 v17, 0x1

    #@dd
    return v17
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "inOrder"    # Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 972
    if-nez p2, :cond_0

    #@4
    .line 974
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v9

    #@8
    return v9

    #@9
    .line 977
    :cond_0
    if-ne p1, p0, :cond_1

    #@b
    .line 979
    return v10

    #@c
    .line 982
    :cond_1
    instance-of v9, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@e
    if-nez v9, :cond_2

    #@10
    instance-of v9, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@12
    :goto_0
    if-nez v9, :cond_3

    #@14
    .line 984
    return v11

    #@15
    :cond_2
    move v9, v10

    #@16
    .line 982
    goto :goto_0

    #@17
    :cond_3
    move-object v9, p1

    #@18
    .line 987
    check-cast v9, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1a
    invoke-interface {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1d
    move-result-object v0

    #@1e
    .line 989
    .local v0, "derO":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v9

    #@26
    if-eqz v9, :cond_4

    #@28
    .line 991
    return v10

    #@29
    .line 998
    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v7

    #@2d
    .line 1005
    .local v7, "other":Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@2f
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    #@32
    move-result v6

    #@33
    .line 1007
    .local v6, "orderingSize":I
    iget-object v9, v7, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@35
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    #@38
    move-result v9

    #@39
    if-eq v6, v9, :cond_5

    #@3b
    .line 1009
    return v11

    #@3c
    .line 1001
    .end local v6    # "orderingSize":I
    .end local v7    # "other":Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :catch_0
    move-exception v1

    #@3d
    .line 1002
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v11

    #@3e
    .line 1012
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "orderingSize":I
    .restart local v7    # "other":Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :cond_5
    const/4 v2, 0x0

    #@3f
    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_8

    #@41
    .line 1014
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@43
    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@46
    move-result-object v5

    #@47
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49
    .line 1015
    .local v5, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v9, v7, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@4b
    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@4e
    move-result-object v3

    #@4f
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@51
    .line 1017
    .local v3, "oOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v9

    #@55
    if-eqz v9, :cond_6

    #@57
    .line 1019
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@59
    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5c
    move-result-object v8

    #@5d
    check-cast v8, Ljava/lang/String;

    #@5f
    .line 1020
    .local v8, "value":Ljava/lang/String;
    iget-object v9, v7, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@61
    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@64
    move-result-object v4

    #@65
    check-cast v4, Ljava/lang/String;

    #@67
    .line 1022
    .local v4, "oValue":Ljava/lang/String;
    invoke-direct {p0, v8, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    #@6a
    move-result v9

    #@6b
    if-nez v9, :cond_7

    #@6d
    .line 1024
    return v11

    #@6e
    .line 1029
    .end local v4    # "oValue":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_6
    return v11

    #@6f
    .line 1012
    .restart local v4    # "oValue":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@71
    goto :goto_1

    #@72
    .line 1033
    .end local v3    # "oOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "oValue":Ljava/lang/String;
    .end local v5    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v8    # "value":Ljava/lang/String;
    :cond_8
    return v10
.end method

.method public getOIDs()Ljava/util/Vector;
    .locals 3

    #@0
    .prologue
    .line 868
    new-instance v1, Ljava/util/Vector;

    #@2
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@5
    .line 870
    .local v1, "v":Ljava/util/Vector;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@8
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@b
    move-result v2

    #@c
    if-eq v0, v2, :cond_0

    #@e
    .line 872
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@10
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@17
    .line 870
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 875
    :cond_0
    return-object v1
.end method

.method public getValues()Ljava/util/Vector;
    .locals 3

    #@0
    .prologue
    .line 884
    new-instance v1, Ljava/util/Vector;

    #@2
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@5
    .line 886
    .local v1, "v":Ljava/util/Vector;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@8
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@b
    move-result v2

    #@c
    if-eq v0, v2, :cond_0

    #@e
    .line 888
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@10
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@17
    .line 886
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 891
    :cond_0
    return-object v1
.end method

.method public getValues(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/Vector;
    .locals 6
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 901
    new-instance v1, Ljava/util/Vector;

    #@3
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@6
    .line 903
    .local v1, "v":Ljava/util/Vector;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@9
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@c
    move-result v3

    #@d
    if-eq v0, v3, :cond_2

    #@f
    .line 905
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 907
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@1d
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/lang/String;

    #@23
    .line 909
    .local v2, "val":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@26
    move-result v3

    #@27
    const/4 v4, 0x2

    #@28
    if-le v3, v4, :cond_1

    #@2a
    const/4 v3, 0x0

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v3

    #@2f
    const/16 v4, 0x5c

    #@31
    if-ne v3, v4, :cond_1

    #@33
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v3

    #@37
    const/16 v4, 0x23

    #@39
    if-ne v3, v4, :cond_1

    #@3b
    .line 911
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@42
    .line 903
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 915
    .restart local v2    # "val":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@48
    goto :goto_1

    #@49
    .line 920
    .end local v2    # "val":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 1038
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1040
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    #@6
    return v2

    #@7
    .line 1043
    :cond_0
    const/4 v2, 0x1

    #@8
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    #@a
    .line 1046
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@d
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@10
    move-result v2

    #@11
    if-eq v0, v2, :cond_1

    #@13
    .line 1048
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@15
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/lang/String;

    #@1b
    .line 1050
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1051
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 1053
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    #@25
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@27
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    #@2e
    move-result v3

    #@2f
    xor-int/2addr v2, v3

    #@30
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    #@32
    .line 1054
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    #@34
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@37
    move-result v3

    #@38
    xor-int/2addr v2, v3

    #@39
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    #@3b
    .line 1046
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1057
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    #@40
    return v2
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 8

    #@0
    .prologue
    .line 925
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    if-nez v7, :cond_3

    #@4
    .line 927
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@6
    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@9
    .line 928
    .local v6, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@b
    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@e
    .line 929
    .local v3, "sVec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    #@f
    .line 931
    .local v1, "lstOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    #@10
    .end local v1    # "lstOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@12
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    #@15
    move-result v7

    #@16
    if-eq v0, v7, :cond_2

    #@18
    .line 933
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@1a
    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@1d
    .line 934
    .local v5, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@1f
    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25
    .line 936
    .local v2, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@28
    .line 938
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@2a
    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Ljava/lang/String;

    #@30
    .line 940
    .local v4, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    #@32
    invoke-virtual {v7, v2, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;->getConvertedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@39
    .line 942
    if-eqz v1, :cond_0

    #@3b
    .line 943
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@3d
    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@40
    move-result-object v7

    #@41
    check-cast v7, Ljava/lang/Boolean;

    #@43
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    #@46
    move-result v7

    #@47
    .line 942
    if-eqz v7, :cond_1

    #@49
    .line 945
    :cond_0
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@4b
    invoke-direct {v7, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@4e
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@51
    .line 955
    :goto_1
    move-object v1, v2

    #@52
    .line 931
    .local v1, "lstOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_0

    #@55
    .line 949
    .end local v1    # "lstOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@57
    invoke-direct {v7, v3}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@5a
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5d
    .line 950
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@5f
    .end local v3    # "sVec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@62
    .line 952
    .restart local v3    # "sVec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@64
    invoke-direct {v7, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@67
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@6a
    goto :goto_1

    #@6b
    .line 958
    .end local v2    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@6d
    invoke-direct {v7, v3}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@70
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@73
    .line 960
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@75
    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@78
    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@7a
    .line 963
    .end local v0    # "i":I
    .end local v3    # "sVec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@7c
    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1381
    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString(ZLjava/util/Hashtable;)Ljava/lang/String;
    .locals 8
    .param p1, "reverse"    # Z
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    #@0
    .prologue
    const/16 v7, 0x2c

    #@2
    .line 1305
    new-instance v1, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 1306
    .local v1, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/Vector;

    #@9
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@c
    .line 1307
    .local v2, "components":Ljava/util/Vector;
    const/4 v3, 0x1

    #@d
    .line 1309
    .local v3, "first":Z
    const/4 v0, 0x0

    #@e
    .line 1311
    .local v0, "ava":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@f
    .end local v0    # "ava":Ljava/lang/StringBuffer;
    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@11
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@14
    move-result v5

    #@15
    if-ge v4, v5, :cond_1

    #@17
    .line 1313
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    #@19
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Ljava/lang/Boolean;

    #@1f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 1315
    const/16 v5, 0x2b

    #@27
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a
    .line 1317
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@2c
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    .line 1318
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@34
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Ljava/lang/String;

    #@3a
    .line 1316
    invoke-direct {p0, v0, p2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@3d
    .line 1311
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1322
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@42
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@45
    .line 1324
    .local v0, "ava":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    #@47
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@4a
    move-result-object v5

    #@4b
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4d
    .line 1325
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    #@4f
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@52
    move-result-object v6

    #@53
    check-cast v6, Ljava/lang/String;

    #@55
    .line 1323
    invoke-direct {p0, v0, p2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@58
    .line 1326
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5b
    goto :goto_1

    #@5c
    .line 1330
    .end local v0    # "ava":Ljava/lang/StringBuffer;
    :cond_1
    if-eqz p1, :cond_3

    #@5e
    .line 1332
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@61
    move-result v5

    #@62
    add-int/lit8 v4, v5, -0x1

    #@64
    :goto_2
    if-ltz v4, :cond_5

    #@66
    .line 1334
    if-eqz v3, :cond_2

    #@68
    .line 1336
    const/4 v3, 0x0

    #@69
    .line 1343
    :goto_3
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@74
    .line 1332
    add-int/lit8 v4, v4, -0x1

    #@76
    goto :goto_2

    #@77
    .line 1340
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7a
    goto :goto_3

    #@7b
    .line 1348
    :cond_3
    const/4 v4, 0x0

    #@7c
    :goto_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@7f
    move-result v5

    #@80
    if-ge v4, v5, :cond_5

    #@82
    .line 1350
    if-eqz v3, :cond_4

    #@84
    .line 1352
    const/4 v3, 0x0

    #@85
    .line 1359
    :goto_5
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@90
    .line 1348
    add-int/lit8 v4, v4, 0x1

    #@92
    goto :goto_4

    #@93
    .line 1356
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@96
    goto :goto_5

    #@97
    .line 1363
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    return-object v5
.end method
