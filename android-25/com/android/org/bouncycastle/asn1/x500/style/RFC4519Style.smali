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
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    const-string/jumbo v1, "2.5.4.6"

    #@13
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    const-string/jumbo v1, "2.5.4.3"

    #@21
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c
    const-string/jumbo v1, "0.9.2342.19200300.100.1.25"

    #@2f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@32
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a
    const-string/jumbo v1, "2.5.4.13"

    #@3d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@40
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    move-result-object v0

    #@44
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    const-string/jumbo v1, "2.5.4.27"

    #@4b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@51
    move-result-object v0

    #@52
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@54
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56
    const-string/jumbo v1, "2.5.4.49"

    #@59
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@5c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f
    move-result-object v0

    #@60
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@62
    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    const-string/jumbo v1, "2.5.4.46"

    #@67
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@6a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d
    move-result-object v0

    #@6e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@70
    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@72
    const-string/jumbo v1, "2.5.4.47"

    #@75
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@78
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7b
    move-result-object v0

    #@7c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7e
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@80
    const-string/jumbo v1, "2.5.4.23"

    #@83
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@86
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@89
    move-result-object v0

    #@8a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8c
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8e
    const-string/jumbo v1, "2.5.4.44"

    #@91
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@94
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@97
    move-result-object v0

    #@98
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9a
    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9c
    const-string/jumbo v1, "2.5.4.42"

    #@9f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@a2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a5
    move-result-object v0

    #@a6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a8
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@aa
    const-string/jumbo v1, "2.5.4.51"

    #@ad
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@b0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b3
    move-result-object v0

    #@b4
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b6
    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b8
    const-string/jumbo v1, "2.5.4.43"

    #@bb
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@be
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c1
    move-result-object v0

    #@c2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c4
    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c6
    const-string/jumbo v1, "2.5.4.25"

    #@c9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@cc
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cf
    move-result-object v0

    #@d0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d2
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d4
    const-string/jumbo v1, "2.5.4.7"

    #@d7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@da
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dd
    move-result-object v0

    #@de
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e0
    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e2
    const-string/jumbo v1, "2.5.4.31"

    #@e5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@e8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@eb
    move-result-object v0

    #@ec
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ee
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f0
    const-string/jumbo v1, "2.5.4.41"

    #@f3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@f6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f9
    move-result-object v0

    #@fa
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fe
    const-string/jumbo v1, "2.5.4.10"

    #@101
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@104
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@107
    move-result-object v0

    #@108
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10a
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10c
    const-string/jumbo v1, "2.5.4.11"

    #@10f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@112
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@115
    move-result-object v0

    #@116
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@118
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@11a
    const-string/jumbo v1, "2.5.4.32"

    #@11d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@120
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@123
    move-result-object v0

    #@124
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@126
    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@128
    const-string/jumbo v1, "2.5.4.19"

    #@12b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@12e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@131
    move-result-object v0

    #@132
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@134
    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@136
    const-string/jumbo v1, "2.5.4.16"

    #@139
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@13c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13f
    move-result-object v0

    #@140
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@142
    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@144
    const-string/jumbo v1, "2.5.4.17"

    #@147
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@14a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14d
    move-result-object v0

    #@14e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@150
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@152
    const-string/jumbo v1, "2.5.4.18"

    #@155
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@158
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15b
    move-result-object v0

    #@15c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15e
    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@160
    const-string/jumbo v1, "2.5.4.28"

    #@163
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@166
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@169
    move-result-object v0

    #@16a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16c
    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16e
    const-string/jumbo v1, "2.5.4.26"

    #@171
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@174
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@177
    move-result-object v0

    #@178
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17a
    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17c
    const-string/jumbo v1, "2.5.4.33"

    #@17f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@182
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@185
    move-result-object v0

    #@186
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@188
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18a
    const-string/jumbo v1, "2.5.4.14"

    #@18d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@190
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@193
    move-result-object v0

    #@194
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@196
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@198
    const-string/jumbo v1, "2.5.4.34"

    #@19b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@19e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a1
    move-result-object v0

    #@1a2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a4
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a6
    const-string/jumbo v1, "2.5.4.5"

    #@1a9
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1ac
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1af
    move-result-object v0

    #@1b0
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b2
    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b4
    const-string/jumbo v1, "2.5.4.4"

    #@1b7
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1ba
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1bd
    move-result-object v0

    #@1be
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c0
    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c2
    const-string/jumbo v1, "2.5.4.8"

    #@1c5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1c8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1cb
    move-result-object v0

    #@1cc
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ce
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d0
    const-string/jumbo v1, "2.5.4.9"

    #@1d3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1d6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1d9
    move-result-object v0

    #@1da
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1dc
    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1de
    const-string/jumbo v1, "2.5.4.20"

    #@1e1
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1e4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e7
    move-result-object v0

    #@1e8
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ea
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1ec
    const-string/jumbo v1, "2.5.4.22"

    #@1ef
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1f2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f5
    move-result-object v0

    #@1f6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f8
    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1fa
    const-string/jumbo v1, "2.5.4.21"

    #@1fd
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@200
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@203
    move-result-object v0

    #@204
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@206
    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@208
    const-string/jumbo v1, "2.5.4.12"

    #@20b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@20e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@211
    move-result-object v0

    #@212
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@214
    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@216
    const-string/jumbo v1, "0.9.2342.19200300.100.1.1"

    #@219
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@21c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21f
    move-result-object v0

    #@220
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@222
    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@224
    const-string/jumbo v1, "2.5.4.50"

    #@227
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@22a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22d
    move-result-object v0

    #@22e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@230
    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@232
    const-string/jumbo v1, "2.5.4.35"

    #@235
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@238
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23b
    move-result-object v0

    #@23c
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23e
    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@240
    const-string/jumbo v1, "2.5.4.24"

    #@243
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@246
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@249
    move-result-object v0

    #@24a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24c
    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24e
    const-string/jumbo v1, "2.5.4.45"

    #@251
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@254
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@257
    move-result-object v0

    #@258
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25a
    .line 64
    new-instance v0, Ljava/util/Hashtable;

    #@25c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@25f
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@261
    .line 69
    new-instance v0, Ljava/util/Hashtable;

    #@263
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@266
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@268
    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@26a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26c
    const-string/jumbo v2, "businessCategory"

    #@26f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@272
    .line 74
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@274
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@276
    const-string/jumbo v2, "c"

    #@279
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27c
    .line 75
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@27e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@280
    const-string/jumbo v2, "cn"

    #@283
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@286
    .line 76
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@288
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28a
    const-string/jumbo v2, "dc"

    #@28d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@290
    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@292
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@294
    const-string/jumbo v2, "description"

    #@297
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29a
    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@29c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29e
    const-string/jumbo v2, "destinationIndicator"

    #@2a1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a4
    .line 79
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2a6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a8
    const-string/jumbo v2, "distinguishedName"

    #@2ab
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ae
    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2b0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2b2
    const-string/jumbo v2, "dnQualifier"

    #@2b5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b8
    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2ba
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2bc
    const-string/jumbo v2, "enhancedSearchGuide"

    #@2bf
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c2
    .line 82
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2c4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c6
    const-string/jumbo v2, "facsimileTelephoneNumber"

    #@2c9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2cc
    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2ce
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2d0
    const-string/jumbo v2, "generationQualifier"

    #@2d3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d6
    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2d8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2da
    const-string/jumbo v2, "givenName"

    #@2dd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e0
    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2e2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e4
    const-string/jumbo v2, "houseIdentifier"

    #@2e7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ea
    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2ec
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ee
    const-string/jumbo v2, "initials"

    #@2f1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f4
    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@2f6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2f8
    const-string/jumbo v2, "internationalISDNNumber"

    #@2fb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fe
    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@300
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@302
    const-string/jumbo v2, "l"

    #@305
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@308
    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@30a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30c
    const-string/jumbo v2, "member"

    #@30f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@312
    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@314
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@316
    const-string/jumbo v2, "name"

    #@319
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31c
    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@31e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@320
    const-string/jumbo v2, "o"

    #@323
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@326
    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@328
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32a
    const-string/jumbo v2, "ou"

    #@32d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@330
    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@332
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@334
    const-string/jumbo v2, "owner"

    #@337
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33a
    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@33c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@33e
    const-string/jumbo v2, "physicalDeliveryOfficeName"

    #@341
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@344
    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@346
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@348
    const-string/jumbo v2, "postalAddress"

    #@34b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34e
    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@350
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@352
    const-string/jumbo v2, "postalCode"

    #@355
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@358
    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@35a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35c
    const-string/jumbo v2, "postOfficeBox"

    #@35f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@362
    .line 98
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@364
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@366
    const-string/jumbo v2, "preferredDeliveryMethod"

    #@369
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36c
    .line 99
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@36e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@370
    const-string/jumbo v2, "registeredAddress"

    #@373
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@376
    .line 100
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@378
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@37a
    const-string/jumbo v2, "roleOccupant"

    #@37d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@380
    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@382
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@384
    const-string/jumbo v2, "searchGuide"

    #@387
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38a
    .line 102
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@38c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38e
    const-string/jumbo v2, "seeAlso"

    #@391
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@394
    .line 103
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@396
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@398
    const-string/jumbo v2, "serialNumber"

    #@39b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39e
    .line 104
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3a0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a2
    const-string/jumbo v2, "sn"

    #@3a5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a8
    .line 105
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3aa
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3ac
    const-string/jumbo v2, "st"

    #@3af
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b2
    .line 106
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3b4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3b6
    const-string/jumbo v2, "street"

    #@3b9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3bc
    .line 107
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3be
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c0
    const-string/jumbo v2, "telephoneNumber"

    #@3c3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c6
    .line 108
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3c8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3ca
    const-string/jumbo v2, "teletexTerminalIdentifier"

    #@3cd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d0
    .line 109
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3d2
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d4
    const-string/jumbo v2, "telexNumber"

    #@3d7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3da
    .line 110
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3dc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3de
    const-string/jumbo v2, "title"

    #@3e1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e4
    .line 111
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3e6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e8
    const-string/jumbo v2, "uid"

    #@3eb
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ee
    .line 112
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3f0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3f2
    const-string/jumbo v2, "uniqueMember"

    #@3f5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f8
    .line 113
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@3fa
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3fc
    const-string/jumbo v2, "userPassword"

    #@3ff
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@402
    .line 114
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@404
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@406
    const-string/jumbo v2, "x121Address"

    #@409
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40c
    .line 115
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    #@40e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@410
    const-string/jumbo v2, "x500UniqueIdentifier"

    #@413
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@416
    .line 117
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@418
    const-string/jumbo v1, "businesscategory"

    #@41b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@420
    .line 118
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@422
    const-string/jumbo v1, "c"

    #@425
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@427
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42a
    .line 119
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@42c
    const-string/jumbo v1, "cn"

    #@42f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@431
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@434
    .line 120
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@436
    const-string/jumbo v1, "dc"

    #@439
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43e
    .line 121
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@440
    const-string/jumbo v1, "description"

    #@443
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@445
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@448
    .line 122
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@44a
    const-string/jumbo v1, "destinationindicator"

    #@44d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@44f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@452
    .line 123
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@454
    const-string/jumbo v1, "distinguishedname"

    #@457
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@459
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45c
    .line 124
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@45e
    const-string/jumbo v1, "dnqualifier"

    #@461
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@463
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@466
    .line 125
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@468
    const-string/jumbo v1, "enhancedsearchguide"

    #@46b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@470
    .line 126
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@472
    const-string/jumbo v1, "facsimiletelephonenumber"

    #@475
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@477
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47a
    .line 127
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@47c
    const-string/jumbo v1, "generationqualifier"

    #@47f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@481
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@484
    .line 128
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@486
    const-string/jumbo v1, "givenname"

    #@489
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48e
    .line 129
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@490
    const-string/jumbo v1, "houseidentifier"

    #@493
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@495
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@498
    .line 130
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@49a
    const-string/jumbo v1, "initials"

    #@49d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@49f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a2
    .line 131
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4a4
    const-string/jumbo v1, "internationalisdnnumber"

    #@4a7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4ac
    .line 132
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4ae
    const-string/jumbo v1, "l"

    #@4b1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4b3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b6
    .line 133
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4b8
    const-string/jumbo v1, "member"

    #@4bb
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4bd
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c0
    .line 134
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4c2
    const-string/jumbo v1, "name"

    #@4c5
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4c7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4ca
    .line 135
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4cc
    const-string/jumbo v1, "o"

    #@4cf
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4d1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d4
    .line 136
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4d6
    const-string/jumbo v1, "ou"

    #@4d9
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4db
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4de
    .line 137
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4e0
    const-string/jumbo v1, "owner"

    #@4e3
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e8
    .line 138
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4ea
    const-string/jumbo v1, "physicaldeliveryofficename"

    #@4ed
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4ef
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f2
    .line 139
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4f4
    const-string/jumbo v1, "postaladdress"

    #@4f7
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4f9
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4fc
    .line 140
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@4fe
    const-string/jumbo v1, "postalcode"

    #@501
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@503
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@506
    .line 141
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@508
    const-string/jumbo v1, "postofficebox"

    #@50b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@510
    .line 142
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@512
    const-string/jumbo v1, "preferreddeliverymethod"

    #@515
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@517
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51a
    .line 143
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@51c
    const-string/jumbo v1, "registeredaddress"

    #@51f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@521
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@524
    .line 144
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@526
    const-string/jumbo v1, "roleoccupant"

    #@529
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@52b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52e
    .line 145
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@530
    const-string/jumbo v1, "searchguide"

    #@533
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@535
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@538
    .line 146
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@53a
    const-string/jumbo v1, "seealso"

    #@53d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@53f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@542
    .line 147
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@544
    const-string/jumbo v1, "serialnumber"

    #@547
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@549
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54c
    .line 148
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@54e
    const-string/jumbo v1, "sn"

    #@551
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@553
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@556
    .line 149
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@558
    const-string/jumbo v1, "st"

    #@55b
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@55d
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@560
    .line 150
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@562
    const-string/jumbo v1, "street"

    #@565
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@567
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56a
    .line 151
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@56c
    const-string/jumbo v1, "telephonenumber"

    #@56f
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@571
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@574
    .line 152
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@576
    const-string/jumbo v1, "teletexterminalidentifier"

    #@579
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@57b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57e
    .line 153
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@580
    const-string/jumbo v1, "telexnumber"

    #@583
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@585
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@588
    .line 154
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@58a
    const-string/jumbo v1, "title"

    #@58d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@58f
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@592
    .line 155
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@594
    const-string/jumbo v1, "uid"

    #@597
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@599
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59c
    .line 156
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@59e
    const-string/jumbo v1, "uniquemember"

    #@5a1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a6
    .line 157
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@5a8
    const-string/jumbo v1, "userpassword"

    #@5ab
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5ad
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b0
    .line 158
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@5b2
    const-string/jumbo v1, "x121address"

    #@5b5
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5b7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5ba
    .line 159
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    #@5bc
    const-string/jumbo v1, "x500uniqueidentifier"

    #@5bf
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5c1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c4
    .line 167
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;

    #@5c6
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;-><init>()V

    #@5c9
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@5cb
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
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 185
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

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
