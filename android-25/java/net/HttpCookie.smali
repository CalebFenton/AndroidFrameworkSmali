.class public final Ljava/net/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/HttpCookie$10;,
        Ljava/net/HttpCookie$11;,
        Ljava/net/HttpCookie$1;,
        Ljava/net/HttpCookie$2;,
        Ljava/net/HttpCookie$3;,
        Ljava/net/HttpCookie$4;,
        Ljava/net/HttpCookie$5;,
        Ljava/net/HttpCookie$6;,
        Ljava/net/HttpCookie$7;,
        Ljava/net/HttpCookie$8;,
        Ljava/net/HttpCookie$9;,
        Ljava/net/HttpCookie$CookieAttributeAssignor;
    }
.end annotation


# static fields
.field private static final COOKIE_DATE_FORMATS:[Ljava/lang/String;

.field static final GMT:Ljava/util/TimeZone;

.field private static final MAX_AGE_UNSPECIFIED:J = -0x1L

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

.field private static final SET_COOKIE:Ljava/lang/String; = "set-cookie:"

.field private static final SET_COOKIE2:Ljava/lang/String; = "set-cookie2:"

.field static assignors:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/HttpCookie$CookieAttributeAssignor;",
            ">;"
        }
    .end annotation
.end field

.field private static final tspecials:Ljava/lang/String; = ",;= \t"


# instance fields
.field private comment:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field public final header:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:J

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private portlist:Ljava/lang/String;

.field private secure:Z

.field private toDiscard:Z

.field private value:Ljava/lang/String;

.field private version:I

.field private whenCreated:J


# direct methods
.method static synthetic -wrap0(Ljava/net/HttpCookie;Ljava/lang/String;)J
    .locals 2
    .param p1, "dateString"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/net/HttpCookie;->expiryDate2DeltaSeconds(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@7
    .line 71
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@9
    const-string/jumbo v1, "comment"

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 72
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@11
    const-string/jumbo v1, "commenturl"

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 73
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@19
    const-string/jumbo v1, "discard"

    #@1c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    .line 74
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@21
    const-string/jumbo v1, "domain"

    #@24
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    .line 75
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@29
    const-string/jumbo v1, "expires"

    #@2c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 76
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@31
    const-string/jumbo v1, "httponly"

    #@34
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 77
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@39
    const-string/jumbo v1, "max-age"

    #@3c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    .line 78
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@41
    const-string/jumbo v1, "path"

    #@44
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@47
    .line 79
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@49
    const-string/jumbo v1, "port"

    #@4c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4f
    .line 80
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@51
    const-string/jumbo v1, "secure"

    #@54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@57
    .line 81
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@59
    const-string/jumbo v1, "version"

    #@5c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5f
    .line 135
    const/4 v0, 0x6

    #@60
    new-array v0, v0, [Ljava/lang/String;

    #@62
    .line 136
    const-string/jumbo v1, "EEE\',\' dd-MMM-yyyy HH:mm:ss \'GMT\'"

    #@65
    const/4 v2, 0x0

    #@66
    aput-object v1, v0, v2

    #@68
    .line 137
    const-string/jumbo v1, "EEE\',\' dd MMM yyyy HH:mm:ss \'GMT\'"

    #@6b
    const/4 v2, 0x1

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 138
    const-string/jumbo v1, "EEE MMM dd yyyy HH:mm:ss \'GMT\'Z"

    #@71
    const/4 v2, 0x2

    #@72
    aput-object v1, v0, v2

    #@74
    .line 139
    const-string/jumbo v1, "EEE\',\' dd-MMM-yy HH:mm:ss \'GMT\'"

    #@77
    const/4 v2, 0x3

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 140
    const-string/jumbo v1, "EEE\',\' dd MMM yy HH:mm:ss \'GMT\'"

    #@7d
    const/4 v2, 0x4

    #@7e
    aput-object v1, v0, v2

    #@80
    .line 141
    const-string/jumbo v1, "EEE MMM dd yy HH:mm:ss \'GMT\'Z"

    #@83
    const/4 v2, 0x5

    #@84
    aput-object v1, v0, v2

    #@86
    .line 135
    sput-object v0, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    #@88
    .line 1034
    const/4 v0, 0x0

    #@89
    sput-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@8b
    .line 1036
    new-instance v0, Ljava/util/HashMap;

    #@8d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@90
    sput-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@92
    .line 1037
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@94
    const-string/jumbo v1, "comment"

    #@97
    new-instance v2, Ljava/net/HttpCookie$1;

    #@99
    invoke-direct {v2}, Ljava/net/HttpCookie$1;-><init>()V

    #@9c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    .line 1042
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@a1
    const-string/jumbo v1, "commenturl"

    #@a4
    new-instance v2, Ljava/net/HttpCookie$2;

    #@a6
    invoke-direct {v2}, Ljava/net/HttpCookie$2;-><init>()V

    #@a9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    .line 1047
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@ae
    const-string/jumbo v1, "discard"

    #@b1
    new-instance v2, Ljava/net/HttpCookie$3;

    #@b3
    invoke-direct {v2}, Ljava/net/HttpCookie$3;-><init>()V

    #@b6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b9
    .line 1052
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@bb
    const-string/jumbo v1, "domain"

    #@be
    new-instance v2, Ljava/net/HttpCookie$4;

    #@c0
    invoke-direct {v2}, Ljava/net/HttpCookie$4;-><init>()V

    #@c3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    .line 1057
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@c8
    const-string/jumbo v1, "max-age"

    #@cb
    new-instance v2, Ljava/net/HttpCookie$5;

    #@cd
    invoke-direct {v2}, Ljava/net/HttpCookie$5;-><init>()V

    #@d0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    .line 1067
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@d5
    const-string/jumbo v1, "path"

    #@d8
    new-instance v2, Ljava/net/HttpCookie$6;

    #@da
    invoke-direct {v2}, Ljava/net/HttpCookie$6;-><init>()V

    #@dd
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e0
    .line 1072
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@e2
    const-string/jumbo v1, "port"

    #@e5
    new-instance v2, Ljava/net/HttpCookie$7;

    #@e7
    invoke-direct {v2}, Ljava/net/HttpCookie$7;-><init>()V

    #@ea
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    .line 1077
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@ef
    const-string/jumbo v1, "secure"

    #@f2
    new-instance v2, Ljava/net/HttpCookie$8;

    #@f4
    invoke-direct {v2}, Ljava/net/HttpCookie$8;-><init>()V

    #@f7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fa
    .line 1082
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@fc
    const-string/jumbo v1, "httponly"

    #@ff
    new-instance v2, Ljava/net/HttpCookie$9;

    #@101
    invoke-direct {v2}, Ljava/net/HttpCookie$9;-><init>()V

    #@104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@107
    .line 1087
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@109
    const-string/jumbo v1, "version"

    #@10c
    new-instance v2, Ljava/net/HttpCookie$10;

    #@10e
    invoke-direct {v2}, Ljava/net/HttpCookie$10;-><init>()V

    #@111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@114
    .line 1097
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@116
    const-string/jumbo v1, "expires"

    #@119
    new-instance v2, Ljava/net/HttpCookie$11;

    #@11b
    invoke-direct {v2}, Ljava/net/HttpCookie$11;-><init>()V

    #@11e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@121
    .line 1158
    const-string/jumbo v0, "GMT"

    #@124
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@127
    move-result-object v0

    #@128
    sput-object v0, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    #@12a
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 184
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 102
    const-wide/16 v0, -0x1

    #@6
    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    #@8
    .line 107
    const/4 v0, 0x1

    #@9
    iput v0, p0, Ljava/net/HttpCookie;->version:I

    #@b
    .line 121
    const-wide/16 v0, 0x0

    #@d
    iput-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    #@f
    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    invoke-static {p1}, Ljava/net/HttpCookie;->isToken(Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v0

    #@23
    const/16 v1, 0x24

    #@25
    if-ne v0, v1, :cond_1

    #@27
    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v1, "Illegal cookie name"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 194
    :cond_1
    iput-object p1, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    #@32
    .line 195
    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    #@34
    .line 196
    iput-boolean v2, p0, Ljava/net/HttpCookie;->toDiscard:Z

    #@36
    .line 197
    iput-boolean v2, p0, Ljava/net/HttpCookie;->secure:Z

    #@38
    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3b
    move-result-wide v0

    #@3c
    iput-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    #@3e
    .line 200
    const/4 v0, 0x0

    #@3f
    iput-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    #@41
    .line 201
    iput-object p3, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    #@43
    .line 188
    return-void
.end method

.method private static assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1110
    invoke-static {p2}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p2

    #@4
    .line 1112
    sget-object v1, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/net/HttpCookie$CookieAttributeAssignor;

    #@10
    .line 1113
    .local v0, "assignor":Ljava/net/HttpCookie$CookieAttributeAssignor;
    if-eqz v0, :cond_0

    #@12
    .line 1114
    invoke-interface {v0, p0, p1, p2}, Ljava/net/HttpCookie$CookieAttributeAssignor;->assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 1107
    :cond_0
    return-void
.end method

.method public static domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    const/16 v10, 0x2e

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 792
    if-eqz p0, :cond_0

    #@7
    if-nez p1, :cond_1

    #@9
    .line 793
    :cond_0
    return v8

    #@a
    .line 796
    :cond_1
    const-string/jumbo v9, ".local"

    #@d
    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v5

    #@11
    .line 797
    .local v5, "isLocalDomain":Z
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    #@14
    move-result v3

    #@15
    .line 798
    .local v3, "embeddedDotInDomain":I
    if-nez v3, :cond_2

    #@17
    .line 799
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->indexOf(II)I

    #@1a
    move-result v3

    #@1b
    .line 800
    :cond_2
    if-nez v5, :cond_4

    #@1d
    .line 801
    if-eq v3, v11, :cond_3

    #@1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@22
    move-result v9

    #@23
    add-int/lit8 v9, v9, -0x1

    #@25
    if-ne v3, v9, :cond_4

    #@27
    .line 802
    :cond_3
    return v8

    #@28
    .line 805
    :cond_4
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    #@2b
    move-result v4

    #@2c
    .line 806
    .local v4, "firstDotInHost":I
    if-ne v4, v11, :cond_5

    #@2e
    if-eqz v5, :cond_5

    #@30
    .line 807
    return v7

    #@31
    .line 809
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@34
    move-result v2

    #@35
    .line 810
    .local v2, "domainLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@38
    move-result v9

    #@39
    sub-int v6, v9, v2

    #@3b
    .line 811
    .local v6, "lengthDiff":I
    if-nez v6, :cond_6

    #@3d
    .line 813
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@40
    move-result v7

    #@41
    return v7

    #@42
    .line 815
    :cond_6
    if-lez v6, :cond_a

    #@44
    .line 817
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 818
    .local v1, "H":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 822
    .local v0, "D":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4f
    move-result v9

    #@50
    if-eqz v9, :cond_9

    #@52
    const-string/jumbo v8, "."

    #@55
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@58
    move-result v8

    #@59
    if-eqz v8, :cond_7

    #@5b
    invoke-static {p0, v7}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    #@5e
    move-result v8

    #@5f
    if-nez v8, :cond_8

    #@61
    .end local v5    # "isLocalDomain":Z
    :cond_7
    :goto_0
    return v5

    #@62
    .restart local v5    # "isLocalDomain":Z
    :cond_8
    move v5, v7

    #@63
    goto :goto_0

    #@64
    :cond_9
    move v5, v8

    #@65
    goto :goto_0

    #@66
    .line 826
    .end local v0    # "D":Ljava/lang/String;
    .end local v1    # "H":Ljava/lang/String;
    :cond_a
    if-ne v6, v11, :cond_c

    #@68
    .line 828
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@6b
    move-result v9

    #@6c
    if-ne v9, v10, :cond_b

    #@6e
    .line 829
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@75
    move-result v8

    #@76
    .line 828
    :cond_b
    return v8

    #@77
    .line 832
    :cond_c
    return v8
.end method

.method private static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1236
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 1237
    :cond_0
    if-eqz p0, :cond_1

    #@6
    if-eqz p1, :cond_1

    #@8
    .line 1238
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 1240
    :cond_1
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method private expiryDate2DeltaSeconds(Ljava/lang/String;)J
    .locals 14
    .param p1, "dateString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1168
    new-instance v0, Ljava/util/GregorianCalendar;

    #@4
    sget-object v1, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    #@6
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    #@9
    .line 1169
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v9, 0x0

    #@a
    .local v9, "i":I
    :goto_0
    sget-object v1, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    #@c
    array-length v1, v1

    #@d
    if-ge v9, v1, :cond_2

    #@f
    .line 1170
    new-instance v7, Ljava/text/SimpleDateFormat;

    #@11
    sget-object v1, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    #@13
    aget-object v1, v1, v9

    #@15
    .line 1171
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@17
    .line 1170
    invoke-direct {v7, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@1a
    .line 1172
    .local v7, "df":Ljava/text/SimpleDateFormat;
    const/16 v1, 0x7b2

    #@1c
    move v4, v2

    #@1d
    move v5, v2

    #@1e
    move v6, v2

    #@1f
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    #@22
    .line 1173
    sget-object v1, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    #@24
    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@27
    .line 1174
    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    #@2a
    .line 1175
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    #@31
    .line 1177
    :try_start_0
    invoke-virtual {v7, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@38
    .line 1178
    sget-object v1, Ljava/net/HttpCookie;->COOKIE_DATE_FORMATS:[Ljava/lang/String;

    #@3a
    aget-object v1, v1, v9

    #@3c
    const-string/jumbo v4, "yyyy"

    #@3f
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@42
    move-result v1

    #@43
    if-nez v1, :cond_0

    #@45
    .line 1181
    const/4 v1, 0x1

    #@46
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@49
    move-result v10

    #@4a
    .line 1182
    .local v10, "year":I
    rem-int/lit8 v10, v10, 0x64

    #@4c
    .line 1183
    const/16 v1, 0x46

    #@4e
    if-ge v10, v1, :cond_1

    #@50
    .line 1184
    add-int/lit16 v10, v10, 0x7d0

    #@52
    .line 1188
    :goto_1
    const/4 v1, 0x1

    #@53
    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    #@56
    .line 1190
    .end local v10    # "year":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@59
    move-result-wide v4

    #@5a
    iget-wide v12, p0, Ljava/net/HttpCookie;->whenCreated:J

    #@5c
    sub-long/2addr v4, v12

    #@5d
    const-wide/16 v12, 0x3e8

    #@5f
    div-long v2, v4, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    return-wide v2

    #@62
    .line 1186
    .restart local v10    # "year":I
    :cond_1
    add-int/lit16 v10, v10, 0x76c

    #@64
    goto :goto_1

    #@65
    .line 1191
    .end local v10    # "year":I
    :catch_0
    move-exception v8

    #@66
    .line 1169
    .local v8, "e":Ljava/lang/Exception;
    add-int/lit8 v9, v9, 0x1

    #@68
    goto :goto_0

    #@69
    .line 1195
    .end local v7    # "df":Ljava/text/SimpleDateFormat;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v2, 0x0

    #@6b
    return-wide v2
.end method

.method private static guessCookieVersion(Ljava/lang/String;)I
    .locals 3
    .param p0, "header"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 1203
    const/4 v0, 0x0

    #@2
    .line 1205
    .local v0, "version":I
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object p0

    #@6
    .line 1206
    const-string/jumbo v1, "expires="

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 1208
    const/4 v0, 0x0

    #@10
    .line 1220
    :cond_0
    :goto_0
    return v0

    #@11
    .line 1209
    :cond_1
    const-string/jumbo v1, "version="

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    if-eq v1, v2, :cond_2

    #@1a
    .line 1211
    const/4 v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1212
    :cond_2
    const-string/jumbo v1, "max-age"

    #@1f
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    if-eq v1, v2, :cond_3

    #@25
    .line 1214
    const/4 v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1215
    :cond_3
    const-string/jumbo v1, "set-cookie2:"

    #@2a
    invoke-static {p0, v1}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 1217
    const/4 v0, 0x1

    #@31
    goto :goto_0
.end method

.method private header()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1125
    iget-object v0, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "firstCharacter"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 837
    const/16 v2, 0x2e

    #@3
    add-int/lit8 v3, p1, 0x1

    #@5
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    #@8
    move-result v0

    #@9
    .line 838
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

.method private static isToken(Ljava/lang/String;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 948
    sget-object v3, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    #@3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@5
    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 949
    return v5

    #@10
    .line 953
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v2

    #@14
    .line 955
    .local v2, "len":I
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@17
    .line 956
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 958
    .local v0, "c":C
    const/16 v3, 0x20

    #@1d
    if-lt v0, v3, :cond_1

    #@1f
    const/16 v3, 0x7f

    #@21
    if-lt v0, v3, :cond_2

    #@23
    .line 959
    :cond_1
    return v5

    #@24
    .line 958
    :cond_2
    const-string/jumbo v3, ",;= \t"

    #@27
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    #@2a
    move-result v3

    #@2b
    const/4 v4, -0x1

    #@2c
    if-ne v3, v4, :cond_1

    #@2e
    .line 955
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 961
    .end local v0    # "c":C
    :cond_3
    const/4 v3, 0x1

    #@32
    return v3
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
    .line 223
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;Z)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "retainHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 234
    invoke-static {p0}, Ljava/net/HttpCookie;->guessCookieVersion(Ljava/lang/String;)I

    #@4
    move-result v5

    #@5
    .line 237
    .local v5, "version":I
    const-string/jumbo v6, "set-cookie2:"

    #@8
    invoke-static {p0, v6}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_2

    #@e
    .line 238
    const-string/jumbo v6, "set-cookie2:"

    #@11
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@14
    move-result v6

    #@15
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object p0

    #@19
    .line 244
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 248
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-nez v5, :cond_3

    #@20
    .line 250
    invoke-static {p0, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    #@23
    move-result-object v0

    #@24
    .line 251
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0, v7}, Ljava/net/HttpCookie;->setVersion(I)V

    #@27
    .line 252
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 265
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_1
    return-object v4

    #@2b
    .line 239
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_2
    const-string/jumbo v6, "set-cookie:"

    #@2e
    invoke-static {p0, v6}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_0

    #@34
    .line 240
    const-string/jumbo v6, "set-cookie:"

    #@37
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@3a
    move-result v6

    #@3b
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object p0

    #@3f
    goto :goto_0

    #@40
    .line 257
    .restart local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_3
    invoke-static {p0}, Ljava/net/HttpCookie;->splitMultiCookies(Ljava/lang/String;)Ljava/util/List;

    #@43
    move-result-object v3

    #@44
    .line 258
    .local v3, "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v2

    #@48
    .local v2, "cookieStr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v6

    #@4c
    if-eqz v6, :cond_1

    #@4e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Ljava/lang/String;

    #@54
    .line 259
    .local v1, "cookieStr":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    #@57
    move-result-object v0

    #@58
    .line 260
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    const/4 v6, 0x1

    #@59
    invoke-virtual {v0, v6}, Ljava/net/HttpCookie;->setVersion(I)V

    #@5c
    .line 261
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5f
    goto :goto_1
.end method

.method private static parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;
    .locals 11
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "retainHeader"    # Z

    #@0
    .prologue
    const/16 v10, 0x3d

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v8, -0x1

    #@4
    .line 978
    const/4 v0, 0x0

    #@5
    .line 979
    .local v0, "cookie":Ljava/net/HttpCookie;
    const/4 v4, 0x0

    #@6
    .line 981
    .local v4, "namevaluePair":Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    #@8
    const-string/jumbo v7, ";"

    #@b
    invoke-direct {v5, p0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 986
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    .line 987
    .local v4, "namevaluePair":Ljava/lang/String;
    const/16 v7, 0x3d

    #@14
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v2

    #@18
    .line 988
    .local v2, "index":I
    if-eq v2, v8, :cond_1

    #@1a
    .line 989
    const/4 v7, 0x0

    #@1b
    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 990
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    #@25
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    .line 991
    .local v6, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@2f
    .line 992
    new-instance v0, Ljava/net/HttpCookie;

    #@31
    .line 993
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    invoke-static {v6}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    .line 992
    invoke-direct {v0, v3, v7, p0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 1007
    .end local v6    # "value":Ljava/lang/String;
    .local v0, "cookie":Ljava/net/HttpCookie;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_3

    #@3e
    .line 1008
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 1009
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    #@45
    move-result v2

    #@46
    .line 1011
    if-eq v2, v8, :cond_2

    #@48
    .line 1012
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 1013
    add-int/lit8 v7, v2, 0x1

    #@52
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    .line 1020
    :goto_1
    invoke-static {v0, v3, v6}, Ljava/net/HttpCookie;->assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    goto :goto_0

    #@5e
    .line 996
    .local v0, "cookie":Ljava/net/HttpCookie;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/HttpCookie;

    #@60
    .line 997
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    invoke-static {v6}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    .line 996
    invoke-direct {v0, v3, v7}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    .local v0, "cookie":Ljava/net/HttpCookie;
    goto :goto_0

    #@68
    .line 1000
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .local v0, "cookie":Ljava/net/HttpCookie;
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@6a
    const-string/jumbo v8, "Invalid cookie name-value pair"

    #@6d
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@70
    throw v7
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    #@71
    .line 1002
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v2    # "index":I
    .end local v4    # "namevaluePair":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@72
    .line 1003
    .local v1, "ignored":Ljava/util/NoSuchElementException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@74
    const-string/jumbo v8, "Empty cookie header string"

    #@77
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v7

    #@7b
    .line 1015
    .end local v1    # "ignored":Ljava/util/NoSuchElementException;
    .local v0, "cookie":Ljava/net/HttpCookie;
    .restart local v2    # "index":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "namevaluePair":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    .line 1016
    const/4 v6, 0x0

    #@80
    .local v6, "value":Ljava/lang/String;
    goto :goto_1

    #@81
    .line 1023
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static splitMultiCookies(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1266
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1267
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@6
    .line 1270
    .local v4, "quoteCount":I
    const/4 v2, 0x0

    #@7
    .local v2, "p":I
    const/4 v3, 0x0

    #@8
    .local v3, "q":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v5

    #@c
    if-ge v2, v5, :cond_2

    #@e
    .line 1271
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 1272
    .local v0, "c":C
    const/16 v5, 0x22

    #@14
    if-ne v0, v5, :cond_0

    #@16
    add-int/lit8 v4, v4, 0x1

    #@18
    .line 1273
    :cond_0
    const/16 v5, 0x2c

    #@1a
    if-ne v0, v5, :cond_1

    #@1c
    rem-int/lit8 v5, v4, 0x2

    #@1e
    if-nez v5, :cond_1

    #@20
    .line 1274
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 1275
    add-int/lit8 v3, v2, 0x1

    #@29
    .line 1270
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1279
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    .line 1281
    return-object v1
.end method

.method private static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1244
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    :cond_0
    return v2

    #@6
    .line 1246
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    if-lt v0, v1, :cond_2

    #@10
    .line 1247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    .line 1246
    if-eqz v0, :cond_2

    #@1e
    .line 1248
    const/4 v0, 0x1

    #@1f
    return v0

    #@20
    .line 1251
    :cond_2
    return v2
.end method

.method private static stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x27

    #@2
    const/16 v4, 0x22

    #@4
    const/4 v3, 0x2

    #@5
    const/4 v2, 0x1

    #@6
    const/4 v1, 0x0

    #@7
    .line 1224
    if-eqz p0, :cond_0

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    if-le v0, v3, :cond_0

    #@f
    .line 1225
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    if-ne v0, v4, :cond_0

    #@15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v0

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v0

    #@1f
    if-ne v0, v4, :cond_0

    #@21
    .line 1226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@24
    move-result v0

    #@25
    add-int/lit8 v0, v0, -0x1

    #@27
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 1228
    :cond_0
    if-eqz p0, :cond_1

    #@2e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@31
    move-result v0

    #@32
    if-le v0, v3, :cond_1

    #@34
    .line 1229
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v0

    #@38
    if-ne v0, v5, :cond_1

    #@3a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3d
    move-result v0

    #@3e
    add-int/lit8 v0, v0, -0x1

    #@40
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@43
    move-result v0

    #@44
    if-ne v0, v5, :cond_1

    #@46
    .line 1230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@49
    move-result v0

    #@4a
    add-int/lit8 v0, v0, -0x1

    #@4c
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0

    #@51
    .line 1232
    :cond_1
    return-object p0
.end method

.method private toNetscapeHeaderString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1135
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, "="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 1137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method private toRFC2965HeaderString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x22

    #@2
    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1147
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "=\""

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 1148
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 1149
    const-string/jumbo v1, ";$Path=\""

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 1150
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    if-eqz v1, :cond_1

    #@3f
    .line 1151
    const-string/jumbo v1, ";$Domain=\""

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 1152
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    if-eqz v1, :cond_2

    #@57
    .line 1153
    const-string/jumbo v1, ";$Port=\""

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@69
    .line 1155
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 918
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 919
    :catch_0
    move-exception v0

    #@6
    .line 920
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 872
    if-ne p1, p0, :cond_0

    #@3
    .line 873
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 874
    :cond_0
    instance-of v2, p1, Ljava/net/HttpCookie;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 875
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 876
    check-cast v0, Ljava/net/HttpCookie;

    #@d
    .line 882
    .local v0, "other":Ljava/net/HttpCookie;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-static {v2, v3}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 883
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@26
    move-result v2

    #@27
    .line 882
    if-eqz v2, :cond_2

    #@29
    .line 884
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    .line 882
    :cond_2
    return v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDiscard()Z
    .locals 1

    #@0
    .prologue
    .line 393
    iget-boolean v0, p0, Ljava/net/HttpCookie;->toDiscard:Z

    #@2
    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMaxAge()J
    .locals 2

    #@0
    .prologue
    .line 514
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    #@2
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPortlist()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    #@0
    .prologue
    .line 603
    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    #@2
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 685
    iget v0, p0, Ljava/net/HttpCookie;->version:I

    #@2
    return v0
.end method

.method public hasExpired()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 281
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v2, v2, v4

    #@8
    if-nez v2, :cond_0

    #@a
    return v7

    #@b
    .line 286
    :cond_0
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    #@d
    const-wide/16 v4, -0x1

    #@f
    cmp-long v2, v2, v4

    #@11
    if-nez v2, :cond_1

    #@13
    return v6

    #@14
    .line 288
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v2

    #@18
    iget-wide v4, p0, Ljava/net/HttpCookie;->whenCreated:J

    #@1a
    sub-long/2addr v2, v4

    #@1b
    const-wide/16 v4, 0x3e8

    #@1d
    div-long v0, v2, v4

    #@1f
    .line 289
    .local v0, "deltaSecond":J
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    #@21
    cmp-long v2, v0, v2

    #@23
    if-lez v2, :cond_2

    #@25
    .line 290
    return v7

    #@26
    .line 292
    :cond_2
    return v6
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 903
    iget-object v3, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    .line 904
    .local v0, "h1":I
    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@c
    if-eqz v3, :cond_0

    #@e
    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@10
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@17
    move-result v1

    #@18
    .line 905
    .local v1, "h2":I
    :goto_0
    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@1a
    if-eqz v3, :cond_1

    #@1c
    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@1e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@21
    move-result v2

    #@22
    .line 907
    .local v2, "h3":I
    :goto_1
    add-int v3, v0, v1

    #@24
    add-int/2addr v3, v2

    #@25
    return v3

    #@26
    .line 904
    .end local v1    # "h2":I
    .end local v2    # "h3":I
    :cond_0
    const/4 v1, 0x0

    #@27
    .restart local v1    # "h2":I
    goto :goto_0

    #@28
    .line 905
    :cond_1
    const/4 v2, 0x0

    #@29
    goto :goto_1
.end method

.method public isHttpOnly()Z
    .locals 1

    #@0
    .prologue
    .line 725
    iget-boolean v0, p0, Ljava/net/HttpCookie;->httpOnly:Z

    #@2
    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpose"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    #@2
    .line 309
    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpose"    # Ljava/lang/String;

    #@0
    .prologue
    .line 346
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    #@2
    .line 345
    return-void
.end method

.method public setDiscard(Z)V
    .locals 0
    .param p1, "discard"    # Z

    #@0
    .prologue
    .line 378
    iput-boolean p1, p0, Ljava/net/HttpCookie;->toDiscard:Z

    #@2
    .line 377
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 446
    if-eqz p1, :cond_0

    #@2
    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@8
    .line 445
    :goto_0
    return-void

    #@9
    .line 449
    :cond_0
    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    #@b
    goto :goto_0
.end method

.method public setHttpOnly(Z)V
    .locals 0
    .param p1, "httpOnly"    # Z

    #@0
    .prologue
    .line 739
    iput-boolean p1, p0, Ljava/net/HttpCookie;->httpOnly:Z

    #@2
    .line 737
    return-void
.end method

.method public setMaxAge(J)V
    .locals 1
    .param p1, "expiry"    # J

    #@0
    .prologue
    .line 493
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    #@2
    .line 492
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 542
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    #@2
    .line 541
    return-void
.end method

.method public setPortlist(Ljava/lang/String;)V
    .locals 0
    .param p1, "ports"    # Ljava/lang/String;

    #@0
    .prologue
    .line 407
    iput-object p1, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    #@2
    .line 406
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 584
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    #@2
    .line 583
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 645
    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    #@2
    .line 644
    return-void
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "v"    # I

    #@0
    .prologue
    .line 708
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 709
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "cookie version should be 0 or 1"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 712
    :cond_0
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    #@10
    .line 707
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 851
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getVersion()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 852
    invoke-direct {p0}, Ljava/net/HttpCookie;->toRFC2965HeaderString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 854
    :cond_0
    invoke-direct {p0}, Ljava/net/HttpCookie;->toNetscapeHeaderString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
