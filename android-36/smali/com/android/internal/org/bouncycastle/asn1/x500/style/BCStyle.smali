.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;
.super Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.source "BCStyle.java"


# static fields
.field public static final blacklist BUSINESS_CATEGORY:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist C:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist CN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist COUNTRY_OF_CITIZENSHIP:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist COUNTRY_OF_RESIDENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DATE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DESCRIPTION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DMD_NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist DN_QUALIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private static final blacklist DefaultLookUp:Ljava/util/Hashtable;

.field private static final blacklist DefaultSymbols:Ljava/util/Hashtable;

.field public static final blacklist E:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GENDER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GENERATION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist GIVENNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist INITIALS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

.field public static final blacklist L:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist NAME_AT_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist O:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ORGANIZATION_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist OU:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PLACE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist POSTAL_ADDRESS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist POSTAL_CODE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist PSEUDONYM:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ROLE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SERIALNUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ST:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist STREET:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist SURNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist T:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist TELEPHONE_NUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UNIQUE_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UnstructuredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist UnstructuredName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field protected final blacklist defaultLookUp:Ljava/util/Hashtable;

.field protected final blacklist defaultSymbols:Ljava/util/Hashtable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2.5.4.9"

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->SERIALNUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 79
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.13"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DESCRIPTION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.65"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.72"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->ROLE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 110
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 115
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 126
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 138
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8.3.14"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 144
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 149
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.5.4.54"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DMD_NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 154
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 159
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 165
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_organizationIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->ORGANIZATION_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 171
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 176
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 177
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 182
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 187
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 192
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 198
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    .line 203
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    .line 207
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->SERIALNUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SERIALNUMBER"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SURNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GIVENNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "INITIALS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "GENERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DESCRIPTION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DESCRIPTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->ROLE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ROLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "unstructuredAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "unstructuredName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "UniqueIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "Pseudonym"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "PostalAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "NameAtBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "CountryOfCitizenship"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "CountryOfResidence"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "Gender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "PlaceOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DateOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "PostalCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "BusinessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "TelephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->ORGANIZATION_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "organizationIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "c"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "o"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "t"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "ou"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "cn"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "l"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "st"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "sn"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "serialnumber"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->SERIALNUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "street"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "emailaddress"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dc"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "e"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "uid"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "surname"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "givenname"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "initials"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "generation"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "description"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DESCRIPTION:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "role"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->ROLE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "unstructuredaddress"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "unstructuredname"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "uniqueidentifier"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dn"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "pseudonym"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "postaladdress"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "nameatbirth"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofcitizenship"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofresidence"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "gender"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "placeofbirth"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dateofbirth"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "postalcode"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "businesscategory"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "telephonenumber"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "name"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "organizationidentifier"

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->ORGANIZATION_IDENTIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 291
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;-><init>()V

    .line 292
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->defaultSymbols:Ljava/util/Hashtable;

    .line 293
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->defaultLookUp:Ljava/util/Hashtable;

    .line 294
    return-void
.end method


# virtual methods
.method public blacklist attrNameToOID(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p1, "attrName"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4b

    .line 302
    :cond_11
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 304
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 306
    :cond_1f
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->SERIALNUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 307
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_45

    .line 312
    :cond_40
    invoke-super {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 309
    :cond_45
    :goto_45
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 300
    :cond_4b
    :goto_4b
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist fromString(Ljava/lang/String;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    .registers 3
    .param p1, "dirName"    # Ljava/lang/String;

    .line 332
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNsFromString(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    return-object v0
.end method

.method public blacklist oidToAttrNames(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 322
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->findAttrNamesForOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist oidToDisplayName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 3
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 317
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->defaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist toString(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
    .registers 8
    .param p1, "name"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 340
    .local v1, "first":Z
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    .line 342
    .local v2, "rdns":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    array-length v4, v2

    if-ge v3, v4, :cond_21

    .line 344
    if-eqz v1, :cond_12

    .line 346
    const/4 v1, 0x0

    goto :goto_17

    .line 350
    :cond_12
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 353
    :goto_17
    aget-object v4, v2, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->defaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/IETFUtils;->appendRDN(Ljava/lang/StringBuffer;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 356
    .end local v3    # "i":I
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
