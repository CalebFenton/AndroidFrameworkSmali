.class public Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;
.super Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.source "RFC4519Style.java"


# static fields
.field private static final DefaultLookUp:Ljava/util/Hashtable;

.field private static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

.field public static final businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field protected final defaultLookUp:Ljava/util/Hashtable;

.field protected final defaultSymbols:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    const-string/jumbo v1, "2.5.4.15"

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    const-string/jumbo v1, "2.5.4.6"

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    const-string/jumbo v1, "2.5.4.3"

    #@19
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    const-string/jumbo v1, "0.9.2342.19200300.100.1.25"

    #@23
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    const-string/jumbo v1, "2.5.4.13"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    const-string/jumbo v1, "2.5.4.27"

    #@37
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    const-string/jumbo v1, "2.5.4.49"

    #@41
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    const-string/jumbo v1, "2.5.4.46"

    #@4b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@52
    const-string/jumbo v1, "2.5.4.47"

    #@55
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5c
    const-string/jumbo v1, "2.5.4.23"

    #@5f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@66
    const-string/jumbo v1, "2.5.4.44"

    #@69
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6e
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@70
    const-string/jumbo v1, "2.5.4.42"

    #@73
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@76
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@78
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    const-string/jumbo v1, "2.5.4.51"

    #@7d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@80
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@82
    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@84
    const-string/jumbo v1, "2.5.4.43"

    #@87
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8c
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    const-string/jumbo v1, "2.5.4.25"

    #@91
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@94
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@96
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@98
    const-string/jumbo v1, "2.5.4.7"

    #@9b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@9e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a0
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a2
    const-string/jumbo v1, "2.5.4.31"

    #@a5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@aa
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ac
    const-string/jumbo v1, "2.5.4.41"

    #@af
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b4
    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b6
    const-string/jumbo v1, "2.5.4.10"

    #@b9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@bc
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@be
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c0
    const-string/jumbo v1, "2.5.4.11"

    #@c3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@c6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c8
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ca
    const-string/jumbo v1, "2.5.4.32"

    #@cd
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@d0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d4
    const-string/jumbo v1, "2.5.4.19"

    #@d7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@da
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dc
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@de
    const-string/jumbo v1, "2.5.4.16"

    #@e1
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@e4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e6
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e8
    const-string/jumbo v1, "2.5.4.17"

    #@eb
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@ee
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f0
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f2
    const-string/jumbo v1, "2.5.4.18"

    #@f5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@f8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fa
    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    const-string/jumbo v1, "2.5.4.28"

    #@ff
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@102
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@104
    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@106
    const-string/jumbo v1, "2.5.4.26"

    #@109
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@10c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10e
    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@110
    const-string/jumbo v1, "2.5.4.33"

    #@113
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@116
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@118
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    const-string/jumbo v1, "2.5.4.14"

    #@11d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@120
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@122
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@124
    const-string/jumbo v1, "2.5.4.34"

    #@127
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12c
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12e
    const-string/jumbo v1, "2.5.4.5"

    #@131
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@134
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@136
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@138
    const-string/jumbo v1, "2.5.4.4"

    #@13b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@13e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@140
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@142
    const-string/jumbo v1, "2.5.4.8"

    #@145
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@148
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14a
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14c
    const-string/jumbo v1, "2.5.4.9"

    #@14f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@152
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@154
    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@156
    const-string/jumbo v1, "2.5.4.20"

    #@159
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@15c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15e
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@160
    const-string/jumbo v1, "2.5.4.22"

    #@163
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@166
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@168
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16a
    const-string/jumbo v1, "2.5.4.21"

    #@16d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@170
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@172
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@174
    const-string/jumbo v1, "2.5.4.12"

    #@177
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@17a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17c
    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17e
    const-string/jumbo v1, "0.9.2342.19200300.100.1.1"

    #@181
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@184
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@186
    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@188
    const-string/jumbo v1, "2.5.4.50"

    #@18b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@18e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@190
    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@192
    const-string/jumbo v1, "2.5.4.35"

    #@195
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@198
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19a
    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19c
    const-string/jumbo v1, "2.5.4.24"

    #@19f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1a2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a4
    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a6
    const-string/jumbo v1, "2.5.4.45"

    #@1a9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1ac
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ae
    .line 64
    new-instance v0, Ljava/util/Hashtable;

    #@1b0
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1b3
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@1b5
    .line 69
    new-instance v0, Ljava/util/Hashtable;

    #@1b7
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1ba
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@1bc
    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@1be
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c0
    const-string/jumbo v2, "businessCategory"

    #@1c3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c6
    .line 74
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@1c8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ca
    const-string/jumbo v2, "c"

    #@1cd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d0
    .line 75
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@1d2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d4
    const-string/jumbo v2, "cn"

    #@1d7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1da
    .line 76
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@1dc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1de
    const-string/jumbo v2, "dc"

    #@1e1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e4
    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@1e6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e8
    const-string/jumbo v2, "description"

    #@1eb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ee
    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@1f0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f2
    const-string/jumbo v2, "destinationIndicator"

    #@1f5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f8
    .line 79
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@1fa
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1fc
    const-string/jumbo v2, "distinguishedName"

    #@1ff
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@202
    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@204
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@206
    const-string/jumbo v2, "dnQualifier"

    #@209
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20c
    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@20e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@210
    const-string/jumbo v2, "enhancedSearchGuide"

    #@213
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@216
    .line 82
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@218
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21a
    const-string/jumbo v2, "facsimileTelephoneNumber"

    #@21d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@220
    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@222
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@224
    const-string/jumbo v2, "generationQualifier"

    #@227
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22a
    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@22c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22e
    const-string/jumbo v2, "givenName"

    #@231
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@234
    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@236
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@238
    const-string/jumbo v2, "houseIdentifier"

    #@23b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23e
    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@240
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@242
    const-string/jumbo v2, "initials"

    #@245
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@248
    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@24a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24c
    const-string/jumbo v2, "internationalISDNNumber"

    #@24f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@252
    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@254
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@256
    const-string/jumbo v2, "l"

    #@259
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25c
    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@25e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@260
    const-string/jumbo v2, "member"

    #@263
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@266
    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@268
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26a
    const-string/jumbo v2, "name"

    #@26d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@270
    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@272
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@274
    const-string/jumbo v2, "o"

    #@277
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27a
    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@27c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27e
    const-string/jumbo v2, "ou"

    #@281
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@284
    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@286
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@288
    const-string/jumbo v2, "owner"

    #@28b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28e
    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@290
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@292
    const-string/jumbo v2, "physicalDeliveryOfficeName"

    #@295
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@298
    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@29a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29c
    const-string/jumbo v2, "postalAddress"

    #@29f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a2
    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2a4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a6
    const-string/jumbo v2, "postalCode"

    #@2a9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ac
    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2ae
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b0
    const-string/jumbo v2, "postOfficeBox"

    #@2b3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b6
    .line 98
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2b8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ba
    const-string/jumbo v2, "preferredDeliveryMethod"

    #@2bd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c0
    .line 99
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2c2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c4
    const-string/jumbo v2, "registeredAddress"

    #@2c7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ca
    .line 100
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2cc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ce
    const-string/jumbo v2, "roleOccupant"

    #@2d1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d4
    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2d6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d8
    const-string/jumbo v2, "searchGuide"

    #@2db
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2de
    .line 102
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2e0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e2
    const-string/jumbo v2, "seeAlso"

    #@2e5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e8
    .line 103
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2ea
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ec
    const-string/jumbo v2, "serialNumber"

    #@2ef
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f2
    .line 104
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2f4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f6
    const-string/jumbo v2, "sn"

    #@2f9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fc
    .line 105
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2fe
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@300
    const-string/jumbo v2, "st"

    #@303
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@306
    .line 106
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@308
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30a
    const-string/jumbo v2, "street"

    #@30d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@310
    .line 107
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@312
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@314
    const-string/jumbo v2, "telephoneNumber"

    #@317
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31a
    .line 108
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@31c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@31e
    const-string/jumbo v2, "teletexTerminalIdentifier"

    #@321
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@324
    .line 109
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@326
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@328
    const-string/jumbo v2, "telexNumber"

    #@32b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32e
    .line 110
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@330
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@332
    const-string/jumbo v2, "title"

    #@335
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@338
    .line 111
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@33a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33c
    const-string/jumbo v2, "uid"

    #@33f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@342
    .line 112
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@344
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@346
    const-string/jumbo v2, "uniqueMember"

    #@349
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34c
    .line 113
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@34e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@350
    const-string/jumbo v2, "userPassword"

    #@353
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@356
    .line 114
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@358
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35a
    const-string/jumbo v2, "x121Address"

    #@35d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@360
    .line 115
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@362
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@364
    const-string/jumbo v2, "x500UniqueIdentifier"

    #@367
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36a
    .line 117
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@36c
    const-string/jumbo v1, "businesscategory"

    #@36f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@371
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@374
    .line 118
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@376
    const-string/jumbo v1, "c"

    #@379
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@37b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37e
    .line 119
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@380
    const-string/jumbo v1, "cn"

    #@383
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@385
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@388
    .line 120
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@38a
    const-string/jumbo v1, "dc"

    #@38d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@392
    .line 121
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@394
    const-string/jumbo v1, "description"

    #@397
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@399
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39c
    .line 122
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@39e
    const-string/jumbo v1, "destinationindicator"

    #@3a1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a6
    .line 123
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@3a8
    const-string/jumbo v1, "distinguishedname"

    #@3ab
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3ad
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b0
    .line 124
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@3b2
    const-string/jumbo v1, "dnqualifier"

    #@3b5
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ba
    .line 125
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@3bc
    const-string/jumbo v1, "enhancedsearchguide"

    #@3bf
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c4
    .line 126
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@3c6
    const-string/jumbo v1, "facsimiletelephonenumber"

    #@3c9
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3cb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ce
    .line 127
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@3d0
    const-string/jumbo v1, "generationqualifier"

    #@3d3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d8
    .line 128
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@3da
    const-string/jumbo v1, "givenname"

    #@3dd
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3df
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e2
    .line 129
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@3e4
    const-string/jumbo v1, "houseidentifier"

    #@3e7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ec
    .line 130
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@3ee
    const-string/jumbo v1, "initials"

    #@3f1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3f3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f6
    .line 131
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@3f8
    const-string/jumbo v1, "internationalisdnnumber"

    #@3fb
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3fd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@400
    .line 132
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@402
    const-string/jumbo v1, "l"

    #@405
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@407
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40a
    .line 133
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@40c
    const-string/jumbo v1, "member"

    #@40f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@411
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@414
    .line 134
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@416
    const-string/jumbo v1, "name"

    #@419
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41e
    .line 135
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@420
    const-string/jumbo v1, "o"

    #@423
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@425
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@428
    .line 136
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@42a
    const-string/jumbo v1, "ou"

    #@42d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@42f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@432
    .line 137
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@434
    const-string/jumbo v1, "owner"

    #@437
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@439
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43c
    .line 138
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@43e
    const-string/jumbo v1, "physicaldeliveryofficename"

    #@441
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@443
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@446
    .line 139
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@448
    const-string/jumbo v1, "postaladdress"

    #@44b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@44d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@450
    .line 140
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@452
    const-string/jumbo v1, "postalcode"

    #@455
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@457
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45a
    .line 141
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@45c
    const-string/jumbo v1, "postofficebox"

    #@45f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@461
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@464
    .line 142
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@466
    const-string/jumbo v1, "preferreddeliverymethod"

    #@469
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46e
    .line 143
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@470
    const-string/jumbo v1, "registeredaddress"

    #@473
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@475
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@478
    .line 144
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@47a
    const-string/jumbo v1, "roleoccupant"

    #@47d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@47f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@482
    .line 145
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@484
    const-string/jumbo v1, "searchguide"

    #@487
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@489
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48c
    .line 146
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@48e
    const-string/jumbo v1, "seealso"

    #@491
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@493
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@496
    .line 147
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@498
    const-string/jumbo v1, "serialnumber"

    #@49b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a0
    .line 148
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4a2
    const-string/jumbo v1, "sn"

    #@4a5
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4aa
    .line 149
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4ac
    const-string/jumbo v1, "st"

    #@4af
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4b1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b4
    .line 150
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4b6
    const-string/jumbo v1, "street"

    #@4b9
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4bb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4be
    .line 151
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4c0
    const-string/jumbo v1, "telephonenumber"

    #@4c3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c8
    .line 152
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4ca
    const-string/jumbo v1, "teletexterminalidentifier"

    #@4cd
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4cf
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d2
    .line 153
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4d4
    const-string/jumbo v1, "telexnumber"

    #@4d7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4d9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4dc
    .line 154
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4de
    const-string/jumbo v1, "title"

    #@4e1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e6
    .line 155
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4e8
    const-string/jumbo v1, "uid"

    #@4eb
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4ed
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f0
    .line 156
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4f2
    const-string/jumbo v1, "uniquemember"

    #@4f5
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4f7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4fa
    .line 157
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4fc
    const-string/jumbo v1, "userpassword"

    #@4ff
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@501
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@504
    .line 158
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@506
    const-string/jumbo v1, "x121address"

    #@509
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50e
    .line 159
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@510
    const-string/jumbo v1, "x500uniqueidentifier"

    #@513
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@515
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@518
    .line 167
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;

    #@51a
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;-><init>()V

    #@51d
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@51f
    .line 13
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;-><init>()V

    #@3
    .line 174
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    #@b
    .line 175
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@d
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    #@13
    .line 172
    return-void
.end method


# virtual methods
.method public attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p1, "attrName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

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
    .line 180
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 182
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@a
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0

    #@e
    .line 184
    :cond_0
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 185
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    .line 184
    if-eqz v0, :cond_2

    #@2e
    .line 187
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    #@30
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    #@33
    return-object v0

    #@34
    .line 190
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

.method public fromString(Ljava/lang/String;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .locals 5
    .param p1, "dirName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 211
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@3
    move-result-object v2

    #@4
    .line 212
    .local v2, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v3, v2

    #@5
    new-array v1, v3, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@7
    .line 214
    .local v1, "res":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@9
    if-eq v0, v3, :cond_0

    #@b
    .line 216
    array-length v3, v1

    #@c
    sub-int/2addr v3, v0

    #@d
    add-int/lit8 v3, v3, -0x1

    #@f
    aget-object v4, v2, v0

    #@11
    aput-object v4, v1, v3

    #@13
    .line 214
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 219
    :cond_0
    return-object v1
.end method

.method public oidToAttrNames(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .locals 1
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

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
    .line 195
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

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
    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 226
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    #@6
    .line 228
    .local v1, "first":Z
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@9
    move-result-object v3

    #@a
    .line 230
    .local v3, "rdns":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v4, v3

    #@b
    add-int/lit8 v2, v4, -0x1

    #@d
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@f
    .line 232
    if-eqz v1, :cond_0

    #@11
    .line 234
    const/4 v1, 0x0

    #@12
    .line 241
    :goto_1
    aget-object v4, v3, v2

    #@14
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    #@16
    invoke-static {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendRDN(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V

    #@19
    .line 230
    add-int/lit8 v2, v2, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 238
    :cond_0
    const/16 v4, 0x2c

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@21
    goto :goto_1

    #@22
    .line 244
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    return-object v4
.end method
