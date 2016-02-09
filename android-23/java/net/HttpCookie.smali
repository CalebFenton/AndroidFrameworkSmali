.class public final Ljava/net/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/HttpCookie$CookieParser;
    }
.end annotation


# static fields
.field private static final RESERVED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comment:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private domain:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:J

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private portList:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static synthetic -get0(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ljava/net/HttpCookie;)J
    .locals 2

    #@0
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Ljava/net/HttpCookie;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Ljava/net/HttpCookie;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ljava/net/HttpCookie;->httpOnly:Z

    #@2
    return p1
.end method

.method static synthetic -set5(Ljava/net/HttpCookie;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    #@2
    return-wide p1
.end method

.method static synthetic -set6(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set8(Ljava/net/HttpCookie;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    #@2
    return p1
.end method

.method static synthetic -set9(Ljava/net/HttpCookie;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Ljava/net/HttpCookie;Ljava/util/Date;)V
    .locals 0
    .param p1, "expires"    # Ljava/util/Date;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/net/HttpCookie;->setExpires(Ljava/util/Date;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 67
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@7
    .line 70
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@9
    const-string/jumbo v1, "comment"

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 71
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@11
    const-string/jumbo v1, "commenturl"

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 72
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@19
    const-string/jumbo v1, "discard"

    #@1c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    .line 73
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@21
    const-string/jumbo v1, "domain"

    #@24
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    .line 74
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@29
    const-string/jumbo v1, "expires"

    #@2c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 75
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@31
    const-string/jumbo v1, "httponly"

    #@34
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 76
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@39
    const-string/jumbo v1, "max-age"

    #@3c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    .line 77
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@41
    const-string/jumbo v1, "path"

    #@44
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@47
    .line 78
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@49
    const-string/jumbo v1, "port"

    #@4c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4f
    .line 79
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@51
    const-string/jumbo v1, "secure"

    #@54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@57
    .line 80
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@59
    const-string/jumbo v1, "version"

    #@5c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5f
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 443
    const-wide/16 v2, -0x1

    #@5
    iput-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    #@7
    .line 450
    const/4 v1, 0x1

    #@8
    iput v1, p0, Ljava/net/HttpCookie;->version:I

    #@a
    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 463
    .local v0, "ntrim":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/net/HttpCookie;->isValidName(Ljava/lang/String;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 464
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Invalid name: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 467
    :cond_0
    iput-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    #@30
    .line 468
    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    #@32
    .line 461
    return-void
.end method

.method private appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 751
    if-eqz p3, :cond_0

    #@2
    if-eqz p1, :cond_0

    #@4
    .line 752
    const-string/jumbo v0, ";$"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 753
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 754
    const-string/jumbo v0, "=\""

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 755
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 756
    const-string/jumbo v0, "\""

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 750
    :cond_0
    return-void
.end method

.method public static domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "domainPattern"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 93
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 94
    :cond_0
    return v3

    #@7
    .line 97
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@9
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 98
    .local v0, "a":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@f
    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 104
    .local v1, "b":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_3

    #@19
    invoke-static {v0, v3}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_2

    #@1f
    invoke-static {v0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_3

    #@25
    .line 105
    :cond_2
    return v2

    #@26
    .line 107
    :cond_3
    invoke-static {v0, v3}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_4

    #@2c
    .line 108
    const-string/jumbo v2, ".local"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    return v2

    #@34
    .line 116
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@37
    move-result v4

    #@38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@3b
    move-result v5

    #@3c
    add-int/lit8 v5, v5, 0x1

    #@3e
    if-ne v4, v5, :cond_5

    #@40
    .line 117
    const-string/jumbo v4, "."

    #@43
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@46
    move-result v4

    #@47
    .line 116
    if-eqz v4, :cond_5

    #@49
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@4c
    move-result v4

    #@4d
    .line 116
    if-eqz v4, :cond_5

    #@4f
    .line 119
    invoke-static {v1, v2}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    #@52
    move-result v4

    #@53
    .line 116
    if-eqz v4, :cond_5

    #@55
    .line 120
    return v2

    #@56
    .line 128
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@59
    move-result v4

    #@5a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@5d
    move-result v5

    #@5e
    if-le v4, v5, :cond_8

    #@60
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@63
    move-result v4

    #@64
    .line 128
    if-eqz v4, :cond_8

    #@66
    .line 130
    const-string/jumbo v3, "."

    #@69
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_6

    #@6f
    invoke-static {v1, v2}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    #@72
    move-result v3

    #@73
    if-nez v3, :cond_7

    #@75
    :cond_6
    const-string/jumbo v2, ".local"

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v2

    #@7c
    .line 128
    :cond_7
    :goto_0
    return v2

    #@7d
    :cond_8
    move v2, v3

    #@7e
    goto :goto_0
.end method

.method private static isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "firstCharacter"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 187
    const/16 v2, 0x2e

    #@3
    add-int/lit8 v3, p1, 0x1

    #@5
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    #@8
    move-result v0

    #@9
    .line 188
    .local v0, "dotPosition":I
    const/4 v2, -0x1

    #@a
    if-eq v0, v2, :cond_0

    #@c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    if-ge v0, v2, :cond_0

    #@14
    const/4 v1, 0x1

    #@15
    :cond_0
    return v1
.end method

.method private isValidName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "n"    # Ljava/lang/String;

    #@0
    .prologue
    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    const-string/jumbo v3, "$"

    #@9
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 476
    sget-object v3, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@11
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@13
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    .line 475
    if-eqz v3, :cond_3

    #@1d
    :cond_0
    const/4 v1, 0x0

    #@1e
    .line 477
    .local v1, "isValid":Z
    :goto_0
    if-eqz v1, :cond_2

    #@20
    .line 478
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@24
    move-result v3

    #@25
    if-ge v0, v3, :cond_2

    #@27
    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v2

    #@2b
    .line 482
    .local v2, "nameChar":C
    if-ltz v2, :cond_1

    #@2d
    .line 483
    const/16 v3, 0x7f

    #@2f
    if-lt v2, v3, :cond_4

    #@31
    .line 487
    :cond_1
    const/4 v1, 0x0

    #@32
    .line 492
    .end local v0    # "i":I
    .end local v2    # "nameChar":C
    :cond_2
    return v1

    #@33
    .line 475
    .end local v1    # "isValid":Z
    :cond_3
    const/4 v1, 0x1

    #@34
    .restart local v1    # "isValid":Z
    goto :goto_0

    #@35
    .line 484
    .restart local v0    # "i":I
    .restart local v2    # "nameChar":C
    :cond_4
    const/16 v3, 0x3b

    #@37
    if-eq v2, v3, :cond_1

    #@39
    .line 485
    const/16 v3, 0x2c

    #@3b
    if-eq v2, v3, :cond_1

    #@3d
    .line 486
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_5

    #@43
    const/16 v3, 0x20

    #@45
    if-ne v2, v3, :cond_1

    #@47
    .line 478
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_1
.end method

.method private static matchablePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    if-nez p0, :cond_0

    #@2
    .line 169
    const-string/jumbo v0, "/"

    #@5
    return-object v0

    #@6
    .line 170
    :cond_0
    const-string/jumbo v0, "/"

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 171
    return-object p0

    #@10
    .line 173
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, "/"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 209
    new-instance v0, Ljava/net/HttpCookie$CookieParser;

    #@2
    invoke-direct {v0, p0}, Ljava/net/HttpCookie$CookieParser;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Ljava/net/HttpCookie$CookieParser;->parse()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method static pathMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .locals 3
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 140
    .local v1, "uriPath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 141
    .local v0, "cookiePath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@13
    move-result v2

    #@14
    return v2
.end method

.method static portMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .locals 2
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 158
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 160
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, ","

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    .line 161
    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    #@1a
    move-result v1

    #@1b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    return v0
.end method

.method static secureMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .locals 2
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getSecure()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "https"

    #@9
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method private setExpires(Ljava/util/Date;)V
    .locals 4
    .param p1, "expires"    # Ljava/util/Date;

    #@0
    .prologue
    .line 630
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    sub-long/2addr v0, v2

    #@9
    const-wide/16 v2, 0x3e8

    #@b
    div-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    #@e
    .line 629
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 678
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 679
    :catch_0
    move-exception v0

    #@6
    .line 680
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@b
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 690
    if-ne p1, p0, :cond_0

    #@3
    .line 691
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 693
    :cond_0
    instance-of v2, p1, Ljava/net/HttpCookie;

    #@7
    if-eqz v2, :cond_3

    #@9
    move-object v0, p1

    #@a
    .line 694
    check-cast v0, Ljava/net/HttpCookie;

    #@c
    .line 695
    .local v0, "that":Ljava/net/HttpCookie;
    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 696
    iget-object v2, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@1a
    if-eqz v2, :cond_2

    #@1c
    iget-object v2, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@1e
    iget-object v3, v0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    .line 695
    if-eqz v2, :cond_1

    #@26
    .line 697
    :goto_0
    iget-object v1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@28
    iget-object v2, v0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@2a
    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    .line 695
    :cond_1
    return v1

    #@2f
    .line 696
    :cond_2
    iget-object v2, v0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@31
    if-nez v2, :cond_1

    #@33
    goto :goto_0

    #@34
    .line 699
    .end local v0    # "that":Ljava/net/HttpCookie;
    :cond_3
    return v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 506
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDiscard()Z
    .locals 1

    #@0
    .prologue
    .line 513
    iget-boolean v0, p0, Ljava/net/HttpCookie;->discard:Z

    #@2
    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMaxAge()J
    .locals 2

    #@0
    .prologue
    .line 527
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    #@2
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 534
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPortlist()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 552
    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    #@0
    .prologue
    .line 559
    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    #@2
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 573
    iget v0, p0, Ljava/net/HttpCookie;->version:I

    #@2
    return v0
.end method

.method public hasExpired()Z
    .locals 6

    #@0
    .prologue
    .line 582
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    #@2
    const-wide/16 v4, -0x1

    #@4
    cmp-long v1, v2, v4

    #@6
    if-nez v1, :cond_0

    #@8
    .line 583
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 586
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 587
    .local v0, "expired":Z
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    #@d
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-gtz v1, :cond_1

    #@13
    .line 588
    const/4 v0, 0x1

    #@14
    .line 590
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 710
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    #@3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@5
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@c
    move-result v2

    #@d
    .line 711
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@f
    if-nez v0, :cond_0

    #@11
    move v0, v1

    #@12
    .line 710
    :goto_0
    add-int/2addr v0, v2

    #@13
    .line 712
    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@15
    if-nez v2, :cond_1

    #@17
    .line 710
    :goto_1
    add-int/2addr v0, v1

    #@18
    return v0

    #@19
    .line 711
    :cond_0
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@1b
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@24
    move-result v0

    #@25
    goto :goto_0

    #@26
    .line 712
    :cond_1
    iget-object v1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@28
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@2b
    move-result v1

    #@2c
    goto :goto_1
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 597
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    #@2
    .line 596
    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "commentURL"    # Ljava/lang/String;

    #@0
    .prologue
    .line 604
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    #@2
    .line 603
    return-void
.end method

.method public setDiscard(Z)V
    .locals 0
    .param p1, "discard"    # Z

    #@0
    .prologue
    .line 611
    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    #@2
    .line 610
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 619
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@5
    .line 618
    return-void

    #@6
    .line 619
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public setMaxAge(J)V
    .locals 1
    .param p1, "deltaSeconds"    # J

    #@0
    .prologue
    .line 626
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    #@2
    .line 625
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 638
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@2
    .line 637
    return-void
.end method

.method public setPortlist(Ljava/lang/String;)V
    .locals 0
    .param p1, "portList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 645
    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    #@2
    .line 644
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    #@0
    .prologue
    .line 652
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    #@2
    .line 651
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 661
    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    #@2
    .line 658
    return-void
.end method

.method public setVersion(I)V
    .locals 3
    .param p1, "newVersion"    # I

    #@0
    .prologue
    .line 670
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Bad version: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 673
    :cond_0
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    #@21
    .line 669
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 734
    iget v1, p0, Ljava/net/HttpCookie;->version:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 738
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    .line 739
    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    #@28
    .line 738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 740
    const-string/jumbo v2, "="

    #@2f
    .line 738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 741
    const-string/jumbo v2, "\""

    #@36
    .line 738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 742
    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    #@3c
    .line 738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 743
    const-string/jumbo v2, "\""

    #@43
    .line 738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 744
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Path"

    #@4a
    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@4c
    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@4f
    .line 745
    const-string/jumbo v1, "Domain"

    #@52
    iget-object v2, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@54
    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@57
    .line 746
    const-string/jumbo v1, "Port"

    #@5a
    iget-object v2, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    #@5c
    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@5f
    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    return-object v1
.end method
