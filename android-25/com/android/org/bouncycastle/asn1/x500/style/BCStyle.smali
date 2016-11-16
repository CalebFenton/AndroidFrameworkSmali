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
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    const-string/jumbo v1, "2.5.4.10"

    #@13
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    const-string/jumbo v1, "2.5.4.11"

    #@21
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c
    const-string/jumbo v1, "2.5.4.12"

    #@2f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@32
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a
    const-string/jumbo v1, "2.5.4.3"

    #@3d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@40
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    move-result-object v0

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    const-string/jumbo v1, "2.5.4.5"

    #@4b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@51
    move-result-object v0

    #@52
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56
    const-string/jumbo v1, "2.5.4.9"

    #@59
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@5c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    move-result-object v0

    #@60
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@62
    .line 57
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@66
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@68
    const-string/jumbo v1, "2.5.4.7"

    #@6b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@71
    move-result-object v0

    #@72
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@74
    .line 67
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@76
    const-string/jumbo v1, "2.5.4.8"

    #@79
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@7c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7f
    move-result-object v0

    #@80
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@82
    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@84
    const-string/jumbo v1, "2.5.4.4"

    #@87
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8d
    move-result-object v0

    #@8e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@90
    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@92
    const-string/jumbo v1, "2.5.4.42"

    #@95
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@98
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9b
    move-result-object v0

    #@9c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9e
    .line 74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a0
    const-string/jumbo v1, "2.5.4.43"

    #@a3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a9
    move-result-object v0

    #@aa
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ae
    const-string/jumbo v1, "2.5.4.44"

    #@b1
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b7
    move-result-object v0

    #@b8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@bc
    const-string/jumbo v1, "2.5.4.45"

    #@bf
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c5
    move-result-object v0

    #@c6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c8
    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ca
    .line 82
    const-string/jumbo v1, "2.5.4.15"

    #@cd
    .line 81
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@d0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d3
    move-result-object v0

    #@d4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d6
    .line 87
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d8
    .line 88
    const-string/jumbo v1, "2.5.4.17"

    #@db
    .line 87
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@de
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e1
    move-result-object v0

    #@e2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e4
    .line 93
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e6
    .line 94
    const-string/jumbo v1, "2.5.4.46"

    #@e9
    .line 93
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@ec
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ef
    move-result-object v0

    #@f0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f2
    .line 99
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f4
    .line 100
    const-string/jumbo v1, "2.5.4.65"

    #@f7
    .line 99
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@fa
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fd
    move-result-object v0

    #@fe
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@100
    .line 106
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@102
    .line 107
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.1"

    #@105
    .line 106
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@108
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10b
    move-result-object v0

    #@10c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10e
    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@110
    .line 113
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.2"

    #@113
    .line 112
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@116
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@119
    move-result-object v0

    #@11a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11c
    .line 118
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11e
    .line 119
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.3"

    #@121
    .line 118
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@124
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@127
    move-result-object v0

    #@128
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12a
    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12c
    .line 126
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.4"

    #@12f
    .line 125
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@132
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@135
    move-result-object v0

    #@136
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@138
    .line 132
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13a
    .line 133
    const-string/jumbo v1, "1.3.6.1.5.5.7.9.5"

    #@13d
    .line 132
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@140
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@143
    move-result-object v0

    #@144
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@146
    .line 139
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@148
    const-string/jumbo v1, "1.3.36.8.3.14"

    #@14b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@14e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@151
    move-result-object v0

    #@152
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@154
    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@156
    const-string/jumbo v1, "2.5.4.16"

    #@159
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@15c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15f
    move-result-object v0

    #@160
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@162
    .line 150
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@164
    const-string/jumbo v1, "2.5.4.54"

    #@167
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@16a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16d
    move-result-object v0

    #@16e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DMD_NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@170
    .line 155
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@172
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@174
    .line 160
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@176
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@178
    .line 166
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17c
    .line 171
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@180
    .line 172
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@182
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@184
    .line 177
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@186
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@188
    .line 182
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18a
    const-string/jumbo v1, "0.9.2342.19200300.100.1.25"

    #@18d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@190
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@192
    .line 187
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@194
    const-string/jumbo v1, "0.9.2342.19200300.100.1.1"

    #@197
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@19a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19c
    .line 193
    new-instance v0, Ljava/util/Hashtable;

    #@19e
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1a1
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1a3
    .line 198
    new-instance v0, Ljava/util/Hashtable;

    #@1a5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1a8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@1aa
    .line 202
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1ac
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ae
    const-string/jumbo v2, "C"

    #@1b1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b4
    .line 203
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1b6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b8
    const-string/jumbo v2, "O"

    #@1bb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1be
    .line 204
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1c0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c2
    const-string/jumbo v2, "T"

    #@1c5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c8
    .line 205
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1ca
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1cc
    const-string/jumbo v2, "OU"

    #@1cf
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d2
    .line 206
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1d4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d6
    const-string/jumbo v2, "CN"

    #@1d9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1dc
    .line 207
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1de
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e0
    const-string/jumbo v2, "L"

    #@1e3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e6
    .line 208
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1e8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ea
    const-string/jumbo v2, "ST"

    #@1ed
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f0
    .line 209
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1f2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f4
    const-string/jumbo v2, "SERIALNUMBER"

    #@1f7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fa
    .line 210
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@1fc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1fe
    const-string/jumbo v2, "E"

    #@201
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@204
    .line 211
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@206
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@208
    const-string/jumbo v2, "DC"

    #@20b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20e
    .line 212
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@210
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@212
    const-string/jumbo v2, "UID"

    #@215
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@218
    .line 213
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@21a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21c
    const-string/jumbo v2, "STREET"

    #@21f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@222
    .line 214
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@224
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@226
    const-string/jumbo v2, "SURNAME"

    #@229
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22c
    .line 215
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@22e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@230
    const-string/jumbo v2, "GIVENNAME"

    #@233
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@236
    .line 216
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@238
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23a
    const-string/jumbo v2, "INITIALS"

    #@23d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@240
    .line 217
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@242
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@244
    const-string/jumbo v2, "GENERATION"

    #@247
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24a
    .line 218
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@24c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24e
    const-string/jumbo v2, "unstructuredAddress"

    #@251
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@254
    .line 219
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@256
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@258
    const-string/jumbo v2, "unstructuredName"

    #@25b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25e
    .line 220
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@260
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@262
    const-string/jumbo v2, "UniqueIdentifier"

    #@265
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@268
    .line 221
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@26a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26c
    const-string/jumbo v2, "DN"

    #@26f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@272
    .line 222
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@274
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@276
    const-string/jumbo v2, "Pseudonym"

    #@279
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27c
    .line 223
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@27e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@280
    const-string/jumbo v2, "PostalAddress"

    #@283
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@286
    .line 224
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@288
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28a
    const-string/jumbo v2, "NameAtBirth"

    #@28d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@290
    .line 225
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@292
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@294
    const-string/jumbo v2, "CountryOfCitizenship"

    #@297
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29a
    .line 226
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@29c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29e
    const-string/jumbo v2, "CountryOfResidence"

    #@2a1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a4
    .line 227
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@2a6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a8
    const-string/jumbo v2, "Gender"

    #@2ab
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ae
    .line 228
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@2b0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b2
    const-string/jumbo v2, "PlaceOfBirth"

    #@2b5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b8
    .line 229
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@2ba
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2bc
    const-string/jumbo v2, "DateOfBirth"

    #@2bf
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c2
    .line 230
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@2c4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c6
    const-string/jumbo v2, "PostalCode"

    #@2c9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2cc
    .line 231
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@2ce
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d0
    const-string/jumbo v2, "BusinessCategory"

    #@2d3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d6
    .line 232
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@2d8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2da
    const-string/jumbo v2, "TelephoneNumber"

    #@2dd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e0
    .line 233
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultSymbols:Ljava/util/Hashtable;

    #@2e2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e4
    const-string/jumbo v2, "Name"

    #@2e7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ea
    .line 235
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2ec
    const-string/jumbo v1, "c"

    #@2ef
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->C:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f4
    .line 236
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@2f6
    const-string/jumbo v1, "o"

    #@2f9
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->O:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2fb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fe
    .line 237
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@300
    const-string/jumbo v1, "t"

    #@303
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->T:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@305
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@308
    .line 238
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@30a
    const-string/jumbo v1, "ou"

    #@30d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->OU:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@312
    .line 239
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@314
    const-string/jumbo v1, "cn"

    #@317
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->CN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@319
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31c
    .line 240
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@31e
    const-string/jumbo v1, "l"

    #@321
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->L:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@323
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@326
    .line 241
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@328
    const-string/jumbo v1, "st"

    #@32b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->ST:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@330
    .line 242
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@332
    const-string/jumbo v1, "sn"

    #@335
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@337
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33a
    .line 243
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@33c
    const-string/jumbo v1, "serialnumber"

    #@33f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@341
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@344
    .line 244
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@346
    const-string/jumbo v1, "street"

    #@349
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->STREET:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34e
    .line 245
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@350
    const-string/jumbo v1, "emailaddress"

    #@353
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@355
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@358
    .line 246
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@35a
    const-string/jumbo v1, "dc"

    #@35d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@362
    .line 247
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@364
    const-string/jumbo v1, "e"

    #@367
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->E:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@369
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36c
    .line 248
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@36e
    const-string/jumbo v1, "uid"

    #@371
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UID:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@373
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@376
    .line 249
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@378
    const-string/jumbo v1, "surname"

    #@37b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SURNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@37d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@380
    .line 250
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@382
    const-string/jumbo v1, "givenname"

    #@385
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@387
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38a
    .line 251
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@38c
    const-string/jumbo v1, "initials"

    #@38f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INITIALS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@391
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@394
    .line 252
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@396
    const-string/jumbo v1, "generation"

    #@399
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENERATION:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@39b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39e
    .line 253
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3a0
    const-string/jumbo v1, "unstructuredaddress"

    #@3a3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a8
    .line 254
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3aa
    const-string/jumbo v1, "unstructuredname"

    #@3ad
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3af
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b2
    .line 255
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3b4
    const-string/jumbo v1, "uniqueidentifier"

    #@3b7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3bc
    .line 256
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3be
    const-string/jumbo v1, "dn"

    #@3c1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c6
    .line 257
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3c8
    const-string/jumbo v1, "pseudonym"

    #@3cb
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3cd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d0
    .line 258
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3d2
    const-string/jumbo v1, "postaladdress"

    #@3d5
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3da
    .line 259
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3dc
    const-string/jumbo v1, "nameofbirth"

    #@3df
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e4
    .line 260
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3e6
    const-string/jumbo v1, "countryofcitizenship"

    #@3e9
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3eb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ee
    .line 261
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3f0
    const-string/jumbo v1, "countryofresidence"

    #@3f3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3f5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f8
    .line 262
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@3fa
    const-string/jumbo v1, "gender"

    #@3fd
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->GENDER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3ff
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@402
    .line 263
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@404
    const-string/jumbo v1, "placeofbirth"

    #@407
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@409
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40c
    .line 264
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@40e
    const-string/jumbo v1, "dateofbirth"

    #@411
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@413
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@416
    .line 265
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@418
    const-string/jumbo v1, "postalcode"

    #@41b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@420
    .line 266
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@422
    const-string/jumbo v1, "businesscategory"

    #@425
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@427
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42a
    .line 267
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@42c
    const-string/jumbo v1, "telephonenumber"

    #@42f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@431
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@434
    .line 268
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DefaultLookUp:Ljava/util/Hashtable;

    #@436
    const-string/jumbo v1, "name"

    #@439
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->NAME:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43e
    .line 274
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;

    #@440
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    #@443
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@445
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
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_3

    #@2c
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->SN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_3

    #@34
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_3

    #@3c
    .line 296
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

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
