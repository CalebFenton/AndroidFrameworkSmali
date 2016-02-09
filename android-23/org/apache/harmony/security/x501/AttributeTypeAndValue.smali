.class public final Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
.super Ljava/lang/Object;
.source "AttributeTypeAndValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;,
        Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final CAPACITY:I = 0xa

.field private static final CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field public static final DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field public static final EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final KNOWN_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final RFC1779_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final RFC2253_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final RFC2459_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final SIZE:I = 0xa

.field private static final ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field public static final attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private final value:Lorg/apache/harmony/security/x501/AttributeValue;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/x501/AttributeValue;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x7

    #@1
    const/16 v11, 0xa

    #@3
    const/4 v10, 0x5

    #@4
    const/4 v9, 0x4

    #@5
    const/4 v8, 0x2

    #@6
    .line 48
    new-instance v4, Ljava/util/HashMap;

    #@8
    invoke-direct {v4, v11}, Ljava/util/HashMap;-><init>(I)V

    #@b
    .line 47
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@d
    .line 52
    new-instance v4, Ljava/util/HashMap;

    #@f
    const/16 v5, 0x1e

    #@11
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    #@14
    .line 51
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    #@16
    .line 56
    new-instance v4, Ljava/util/HashMap;

    #@18
    invoke-direct {v4, v11}, Ljava/util/HashMap;-><init>(I)V

    #@1b
    .line 55
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    #@1d
    .line 60
    new-instance v4, Ljava/util/HashMap;

    #@1f
    invoke-direct {v4, v11}, Ljava/util/HashMap;-><init>(I)V

    #@22
    .line 59
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@24
    .line 64
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@26
    const/4 v5, 0x6

    #@27
    filled-new-array {v8, v10, v9, v5}, [I

    #@2a
    move-result-object v5

    #@2b
    const-string/jumbo v6, "C"

    #@2e
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@30
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@33
    .line 63
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@35
    .line 68
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@37
    const/4 v5, 0x3

    #@38
    filled-new-array {v8, v10, v9, v5}, [I

    #@3b
    move-result-object v5

    #@3c
    const-string/jumbo v6, "CN"

    #@3f
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@41
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@44
    .line 67
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@46
    .line 71
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@48
    .line 72
    new-array v5, v12, [I

    #@4a
    fill-array-data v5, :array_0

    #@4d
    const-string/jumbo v6, "DC"

    #@50
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    #@52
    .line 71
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@55
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@57
    .line 76
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@59
    const/16 v5, 0x2e

    #@5b
    filled-new-array {v8, v10, v9, v5}, [I

    #@5e
    move-result-object v5

    #@5f
    const-string/jumbo v6, "DNQ"

    #@62
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@64
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@67
    .line 75
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@69
    .line 79
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@6b
    const/16 v5, 0x2e

    #@6d
    filled-new-array {v8, v10, v9, v5}, [I

    #@70
    move-result-object v5

    #@71
    const-string/jumbo v6, "DNQUALIFIER"

    #@74
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@76
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@79
    .line 78
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@7b
    .line 82
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@7d
    .line 83
    new-array v5, v12, [I

    #@7f
    fill-array-data v5, :array_1

    #@82
    const-string/jumbo v6, "EMAILADDRESS"

    #@85
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@87
    .line 82
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@8a
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@8c
    .line 87
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@8e
    const/16 v5, 0x2c

    #@90
    filled-new-array {v8, v10, v9, v5}, [I

    #@93
    move-result-object v5

    #@94
    const-string/jumbo v6, "GENERATION"

    #@97
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@99
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@9c
    .line 86
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@9e
    .line 91
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@a0
    const/16 v5, 0x2a

    #@a2
    filled-new-array {v8, v10, v9, v5}, [I

    #@a5
    move-result-object v5

    #@a6
    const-string/jumbo v6, "GIVENNAME"

    #@a9
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@ab
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@ae
    .line 90
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@b0
    .line 95
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@b2
    const/16 v5, 0x2b

    #@b4
    filled-new-array {v8, v10, v9, v5}, [I

    #@b7
    move-result-object v5

    #@b8
    const-string/jumbo v6, "INITIALS"

    #@bb
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@bd
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@c0
    .line 94
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@c2
    .line 99
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@c4
    filled-new-array {v8, v10, v9, v12}, [I

    #@c7
    move-result-object v5

    #@c8
    const-string/jumbo v6, "L"

    #@cb
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@cd
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@d0
    .line 98
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@d2
    .line 103
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@d4
    filled-new-array {v8, v10, v9, v11}, [I

    #@d7
    move-result-object v5

    #@d8
    const-string/jumbo v6, "O"

    #@db
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@dd
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@e0
    .line 102
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@e2
    .line 107
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@e4
    const/16 v5, 0xb

    #@e6
    filled-new-array {v8, v10, v9, v5}, [I

    #@e9
    move-result-object v5

    #@ea
    const-string/jumbo v6, "OU"

    #@ed
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@ef
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@f2
    .line 106
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@f4
    .line 111
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@f6
    filled-new-array {v8, v10, v9, v10}, [I

    #@f9
    move-result-object v5

    #@fa
    const-string/jumbo v6, "SERIALNUMBER"

    #@fd
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@ff
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@102
    .line 110
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@104
    .line 115
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@106
    const/16 v5, 0x8

    #@108
    filled-new-array {v8, v10, v9, v5}, [I

    #@10b
    move-result-object v5

    #@10c
    const-string/jumbo v6, "ST"

    #@10f
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@111
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@114
    .line 114
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@116
    .line 119
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@118
    const/16 v5, 0x9

    #@11a
    filled-new-array {v8, v10, v9, v5}, [I

    #@11d
    move-result-object v5

    #@11e
    const-string/jumbo v6, "STREET"

    #@121
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@123
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@126
    .line 118
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@128
    .line 123
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@12a
    filled-new-array {v8, v10, v9, v9}, [I

    #@12d
    move-result-object v5

    #@12e
    const-string/jumbo v6, "SURNAME"

    #@131
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@133
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@136
    .line 122
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@138
    .line 127
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@13a
    const/16 v5, 0xc

    #@13c
    filled-new-array {v8, v10, v9, v5}, [I

    #@13f
    move-result-object v5

    #@140
    const-string/jumbo v6, "T"

    #@143
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@145
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@148
    .line 126
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@14a
    .line 130
    new-instance v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@14c
    .line 131
    new-array v5, v12, [I

    #@14e
    fill-array-data v5, :array_2

    #@151
    const-string/jumbo v6, "UID"

    #@154
    sget-object v7, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    #@156
    .line 130
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    #@159
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@15b
    .line 140
    const-class v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@15d
    filled-new-array {v11, v11}, [I

    #@160
    move-result-object v5

    #@161
    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@164
    move-result-object v4

    #@165
    check-cast v4, [[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@167
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@169
    .line 143
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@16b
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@16d
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@170
    move-result-object v5

    #@171
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@173
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@176
    .line 144
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@178
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@17a
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@17d
    move-result-object v5

    #@17e
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@180
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@183
    .line 145
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@185
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@187
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@18a
    move-result-object v5

    #@18b
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@18d
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@190
    .line 146
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@192
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@194
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@197
    move-result-object v5

    #@198
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@19a
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19d
    .line 147
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@19f
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1a1
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@1a4
    move-result-object v5

    #@1a5
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1a7
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1aa
    .line 148
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@1ac
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1ae
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@1b1
    move-result-object v5

    #@1b2
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1b4
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b7
    .line 149
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@1b9
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1bb
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@1be
    move-result-object v5

    #@1bf
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1c1
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c4
    .line 151
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    #@1c6
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@1c8
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@1cb
    .line 152
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    #@1cd
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1cf
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@1d2
    move-result-object v5

    #@1d3
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1d5
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d8
    .line 153
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    #@1da
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1dc
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@1df
    move-result-object v5

    #@1e0
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1e2
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e5
    .line 155
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@1e7
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1e9
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@1ec
    move-result-object v5

    #@1ed
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1ef
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f2
    .line 156
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@1f4
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1f6
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@1f9
    move-result-object v5

    #@1fa
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1fc
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ff
    .line 157
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@201
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@203
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@206
    move-result-object v5

    #@207
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@209
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20c
    .line 158
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@20e
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@210
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@213
    move-result-object v5

    #@214
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@216
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@219
    .line 159
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@21b
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@21d
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@220
    move-result-object v5

    #@221
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@223
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@226
    .line 160
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@228
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@22a
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@22d
    move-result-object v5

    #@22e
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@230
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@233
    .line 161
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@235
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@237
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@23a
    move-result-object v5

    #@23b
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@23d
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@240
    .line 162
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@242
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@244
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@247
    move-result-object v5

    #@248
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@24a
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24d
    .line 163
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@24f
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@251
    invoke-virtual {v5}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@254
    move-result-object v5

    #@255
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@257
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25a
    .line 166
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    #@25c
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@25f
    move-result-object v4

    #@260
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@263
    move-result-object v3

    #@264
    .local v3, "objectIdentifier$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@267
    move-result v4

    #@268
    if-eqz v4, :cond_0

    #@26a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26d
    move-result-object v2

    #@26e
    check-cast v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@270
    .line 167
    .local v2, "objectIdentifier":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    invoke-static {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V

    #@273
    goto :goto_0

    #@274
    .line 171
    .end local v2    # "objectIdentifier":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_0
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@276
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@279
    move-result-object v4

    #@27a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27d
    move-result-object v1

    #@27e
    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@281
    move-result v4

    #@282
    if-eqz v4, :cond_2

    #@284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@287
    move-result-object v0

    #@288
    check-cast v0, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@28a
    .line 173
    .local v0, "o":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@28c
    if-eq v0, v4, :cond_1

    #@28e
    .line 174
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V

    #@291
    goto :goto_1

    #@292
    .line 178
    .end local v0    # "o":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_2
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    #@294
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    #@296
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@299
    .line 179
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    #@29b
    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    #@29d
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@2a0
    .line 330
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;

    #@2a2
    const/16 v5, 0x13

    #@2a4
    invoke-direct {v4, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;-><init>(I)V

    #@2a7
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2a9
    .line 408
    new-instance v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;

    #@2ab
    new-array v5, v8, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2ad
    .line 409
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@2b0
    move-result-object v6

    #@2b1
    const/4 v7, 0x0

    #@2b2
    aput-object v6, v5, v7

    #@2b4
    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2b6
    const/4 v7, 0x1

    #@2b7
    aput-object v6, v5, v7

    #@2b9
    .line 408
    invoke-direct {v4, v5}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@2bc
    sput-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@2be
    .line 44
    return-void

    #@2bf
    .line 72
    nop

    #@2c0
    :array_0
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x19
    .end array-data

    #@2d2
    .line 83
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x1
    .end array-data

    #@2e4
    .line 131
    :array_2
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/x501/AttributeValue;)V
    .locals 0
    .param p1, "oid"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .param p2, "value"    # Lorg/apache/harmony/security/x501/AttributeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 233
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@5
    .line 234
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@7
    .line 232
    return-void
.end method

.method private constructor <init>([ILorg/apache/harmony/security/x501/AttributeValue;)V
    .locals 1
    .param p1, "oid"    # [I
    .param p2, "value"    # Lorg/apache/harmony/security/x501/AttributeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 216
    invoke-static {p1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@6
    move-result-object v0

    #@7
    .line 217
    .local v0, "thisOid":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    if-nez v0, :cond_0

    #@9
    .line 218
    new-instance v0, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@b
    .end local v0    # "thisOid":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    #@e
    .line 220
    .restart local v0    # "thisOid":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_0
    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@10
    .line 221
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@12
    .line 215
    return-void
.end method

.method synthetic constructor <init>([ILorg/apache/harmony/security/x501/AttributeValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)V
    .locals 0
    .param p1, "oid"    # [I
    .param p2, "value"    # Lorg/apache/harmony/security/x501/AttributeValue;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>([ILorg/apache/harmony/security/x501/AttributeValue;)V

    #@3
    return-void
.end method

.method private static addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V
    .locals 7
    .param p0, "oid"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@0
    .prologue
    .line 444
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    #@3
    move-result-object v3

    #@4
    .line 445
    .local v3, "newOid":[I
    invoke-static {v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->hashIntArray([I)I

    #@7
    move-result v4

    #@8
    rem-int/lit8 v1, v4, 0xa

    #@a
    .line 448
    .local v1, "index":I
    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@c
    aget-object v2, v4, v1

    #@e
    .line 449
    .local v2, "list":[Lorg/apache/harmony/security/utils/ObjectIdentifier;
    const/4 v0, 0x0

    #@f
    .line 450
    .local v0, "i":I
    :goto_0
    aget-object v4, v2, v0

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 452
    aget-object v4, v2, v0

    #@15
    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    #@18
    move-result-object v4

    #@19
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 453
    new-instance v4, Ljava/lang/Error;

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "ObjectIdentifier: invalid static initialization; duplicate OIDs: "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    .line 454
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    .line 454
    const-string/jumbo v6, " "

    #@38
    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    .line 454
    aget-object v6, v2, v0

    #@3e
    invoke-virtual {v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@4d
    throw v4

    #@4e
    .line 450
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_0

    #@51
    .line 459
    :cond_1
    const/16 v4, 0x9

    #@53
    if-ne v0, v4, :cond_2

    #@55
    .line 460
    new-instance v4, Ljava/lang/Error;

    #@57
    const-string/jumbo v5, "ObjectIdentifier: invalid static initialization; small OID pool capacity"

    #@5a
    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@5d
    throw v4

    #@5e
    .line 463
    :cond_2
    aput-object p0, v2, v0

    #@60
    .line 443
    return-void
.end method

.method private static getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 5
    .param p0, "oid"    # [I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 427
    invoke-static {p0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->hashIntArray([I)I

    #@4
    move-result v3

    #@5
    rem-int/lit8 v1, v3, 0xa

    #@7
    .line 430
    .local v1, "index":I
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@9
    aget-object v2, v3, v1

    #@b
    .line 431
    .local v2, "list":[Lorg/apache/harmony/security/utils/ObjectIdentifier;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    aget-object v3, v2, v0

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 432
    aget-object v3, v2, v0

    #@12
    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    #@15
    move-result-object v3

    #@16
    invoke-static {p0, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 433
    aget-object v3, v2, v0

    #@1e
    return-object v3

    #@1f
    .line 431
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 436
    :cond_1
    return-object v4
.end method

.method public static getObjectIdentifier(Ljava/lang/String;)Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 5
    .param p0, "sOid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 192
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@4
    move-result v2

    #@5
    const/16 v3, 0x30

    #@7
    if-lt v2, v3, :cond_1

    #@9
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v2

    #@d
    const/16 v3, 0x39

    #@f
    if-gt v2, v3, :cond_1

    #@11
    .line 193
    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    #@14
    move-result-object v0

    #@15
    .line 194
    .local v0, "array":[I
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@18
    move-result-object v1

    #@19
    .line 195
    .local v1, "thisOid":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    if-nez v1, :cond_0

    #@1b
    .line 196
    new-instance v1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@1d
    .end local v1    # "thisOid":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    invoke-direct {v1, v0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    #@20
    .line 198
    .restart local v1    # "thisOid":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_0
    return-object v1

    #@21
    .line 201
    .end local v0    # "array":[I
    .end local v1    # "thisOid":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    :cond_1
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    #@23
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@25
    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@2f
    .line 202
    .restart local v1    # "thisOid":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    if-nez v1, :cond_2

    #@31
    .line 203
    new-instance v2, Ljava/io/IOException;

    #@33
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v4, "Unrecognizable attribute name: "

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2

    #@4b
    .line 205
    :cond_2
    return-object v1
.end method

.method private static hashIntArray([I)I
    .locals 4
    .param p0, "oid"    # [I

    #@0
    .prologue
    .line 470
    const/4 v1, 0x0

    #@1
    .line 471
    .local v1, "intHash":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@3
    if-ge v0, v2, :cond_0

    #@5
    const/4 v2, 0x4

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 472
    aget v2, p0, v0

    #@a
    mul-int/lit8 v3, v0, 0x8

    #@c
    shl-int/2addr v2, v3

    #@d
    add-int/2addr v1, v2

    #@e
    .line 471
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 474
    :cond_0
    const v2, 0x7fffffff

    #@14
    and-int/2addr v2, v1

    #@15
    return v2
.end method


# virtual methods
.method public appendName(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "attrFormat"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v5, 0x3d

    #@2
    .line 243
    const/4 v1, 0x0

    #@3
    .line 244
    .local v1, "hexFormat":Z
    const-string/jumbo v3, "RFC1779"

    #@6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_3

    #@c
    .line 245
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@e
    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@10
    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getGroup()Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    if-ne v3, v4, :cond_0

    #@16
    .line 246
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@18
    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 251
    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 252
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@24
    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@26
    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@28
    invoke-virtual {v4}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    if-ne v3, v4, :cond_1

    #@2e
    .line 253
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@30
    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 242
    :goto_1
    return-void

    #@3e
    .line 248
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@40
    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toOIDString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    goto :goto_0

    #@48
    .line 254
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@4a
    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@4c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@4f
    move-result v3

    #@50
    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@52
    iget-object v4, v4, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    #@54
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@57
    move-result v4

    #@58
    if-eq v3, v4, :cond_2

    #@5a
    .line 256
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@5c
    invoke-virtual {v3, p2}, Lorg/apache/harmony/security/x501/AttributeValue;->appendQEString(Ljava/lang/StringBuilder;)V

    #@5f
    goto :goto_1

    #@60
    .line 258
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@62
    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@64
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    goto :goto_1

    #@68
    .line 261
    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@6a
    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getGroup()Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    .line 263
    .local v0, "group":Ljava/lang/Object;
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    #@70
    if-eq v3, v0, :cond_4

    #@72
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    #@74
    if-ne v3, v0, :cond_7

    #@76
    .line 264
    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@78
    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 266
    const-string/jumbo v3, "CANONICAL"

    #@82
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v3

    #@86
    if-eqz v3, :cond_5

    #@88
    .line 270
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@8a
    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    #@8d
    move-result v2

    #@8e
    .line 271
    .local v2, "tag":I
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@90
    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    #@93
    move-result v3

    #@94
    if-nez v3, :cond_5

    #@96
    .line 272
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@98
    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    #@9b
    move-result v3

    #@9c
    if-eqz v3, :cond_6

    #@9e
    .line 283
    .end local v2    # "tag":I
    :cond_5
    :goto_2
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a1
    .line 285
    if-eqz v1, :cond_8

    #@a3
    .line 286
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@a5
    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    goto :goto_1

    #@ad
    .line 273
    .restart local v2    # "tag":I
    :cond_6
    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    #@af
    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    #@b2
    move-result v3

    #@b3
    if-nez v3, :cond_5

    #@b5
    .line 274
    const/4 v1, 0x1

    #@b6
    goto :goto_2

    #@b7
    .line 279
    .end local v2    # "tag":I
    :cond_7
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@b9
    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toString()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    .line 280
    const/4 v1, 0x1

    #@c1
    goto :goto_2

    #@c2
    .line 288
    :cond_8
    const-string/jumbo v3, "CANONICAL"

    #@c5
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v3

    #@c9
    if-eqz v3, :cond_9

    #@cb
    .line 289
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@cd
    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeCanonical()Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    goto/16 :goto_1

    #@d6
    .line 290
    :cond_9
    const-string/jumbo v3, "RFC2253"

    #@d9
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v3

    #@dd
    if-eqz v3, :cond_a

    #@df
    .line 291
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@e1
    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getRFC2253String()Ljava/lang/String;

    #@e4
    move-result-object v3

    #@e5
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    goto/16 :goto_1

    #@ea
    .line 293
    :cond_a
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@ec
    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    #@ee
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    goto/16 :goto_1
.end method

.method public getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getValue()Lorg/apache/harmony/security/x501/AttributeValue;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    #@2
    return-object v0
.end method
