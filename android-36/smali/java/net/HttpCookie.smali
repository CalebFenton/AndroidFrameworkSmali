.class public final Ljava/net/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/HttpCookie$CookieAttributeAssignor;
    }
.end annotation


# static fields
.field static final greylist-max-o GMT:Ljava/util/TimeZone;

.field private static final greylist-max-o MAX_AGE_UNSPECIFIED:J = -0x1L

.field private static final greylist-max-o RESERVED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o SET_COOKIE:Ljava/lang/String; = "set-cookie:"

.field private static final greylist-max-o SET_COOKIE2:Ljava/lang/String; = "set-cookie2:"

.field static final greylist-max-r assignors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/HttpCookie$CookieAttributeAssignor;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-r tspecials:Ljava/lang/String; = ",;= \t"


# instance fields
.field private greylist-max-r comment:Ljava/lang/String;

.field private greylist-max-r commentURL:Ljava/lang/String;

.field private greylist-max-r domain:Ljava/lang/String;

.field private final greylist-max-r header:Ljava/lang/String;

.field private greylist httpOnly:Z

.field private greylist-max-r maxAge:J

.field private final greylist-max-r name:Ljava/lang/String;

.field private greylist-max-r path:Ljava/lang/String;

.field private greylist-max-r portlist:Ljava/lang/String;

.field private greylist-max-r secure:Z

.field private greylist-max-r toDiscard:Z

.field private greylist-max-r value:Ljava/lang/String;

.field private greylist-max-r version:I

.field private final greylist whenCreated:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetwhenCreated(Ljava/net/HttpCookie;)J
    .registers 3

    iget-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 13

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    .line 64
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v2, "commenturl"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v3, "discard"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v4, "domain"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v5, "expires"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v6, "httponly"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v7, "max-age"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v8, "path"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v9, "port"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v10, "secure"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v11, "version"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 903
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    .line 906
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v12, Ljava/net/HttpCookie$1;

    invoke-direct {v12}, Ljava/net/HttpCookie$1;-><init>()V

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$2;

    invoke-direct {v1}, Ljava/net/HttpCookie$2;-><init>()V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$3;

    invoke-direct {v1}, Ljava/net/HttpCookie$3;-><init>()V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$4;

    invoke-direct {v1}, Ljava/net/HttpCookie$4;-><init>()V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$5;

    invoke-direct {v1}, Ljava/net/HttpCookie$5;-><init>()V

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$6;

    invoke-direct {v1}, Ljava/net/HttpCookie$6;-><init>()V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$7;

    invoke-direct {v1}, Ljava/net/HttpCookie$7;-><init>()V

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$8;

    invoke-direct {v1}, Ljava/net/HttpCookie$8;-><init>()V

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$9;

    invoke-direct {v1}, Ljava/net/HttpCookie$9;-><init>()V

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$10;

    invoke-direct {v1}, Ljava/net/HttpCookie$10;-><init>()V

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    new-instance v1, Ljava/net/HttpCookie$11;

    invoke-direct {v1}, Ljava/net/HttpCookie$11;-><init>()V

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie;->version:I

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p1}, Ljava/net/HttpCookie;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_37

    .line 173
    iput-object p1, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 175
    iput-boolean v0, p0, Ljava/net/HttpCookie;->toDiscard:Z

    .line 176
    iput-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    .line 181
    return-void

    .line 170
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal cookie name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    .line 1023
    invoke-static {p2}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1025
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie$CookieAttributeAssignor;

    .line 1026
    .local v0, "assignor":Ljava/net/HttpCookie$CookieAttributeAssignor;
    if-eqz v0, :cond_15

    .line 1027
    invoke-interface {v0, p0, p1, p2}, Ljava/net/HttpCookie$CookieAttributeAssignor;->assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_15
    return-void
.end method

.method public static whitelist test-api domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;

    .line 661
    const/4 v0, 0x0

    if-eqz p0, :cond_90

    if-nez p1, :cond_7

    goto/16 :goto_90

    .line 665
    :cond_7
    const-string v1, ".local"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 666
    .local v2, "isLocalDomain":Z
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 667
    .local v4, "embeddedDotInDomain":I
    const/4 v5, 0x1

    if-nez v4, :cond_1a

    .line 668
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 669
    :cond_1a
    const/4 v6, -0x1

    if-nez v2, :cond_27

    if-eq v4, v6, :cond_26

    .line 671
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne v4, v7, :cond_27

    .line 672
    :cond_26
    return v0

    .line 676
    :cond_27
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 677
    .local v7, "firstDotInHost":I
    if-ne v7, v6, :cond_47

    if-nez v2, :cond_46

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 680
    :cond_46
    return v5

    .line 683
    :cond_47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 684
    .local v1, "domainLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    .line 685
    .local v8, "lengthDiff":I
    if-nez v8, :cond_57

    .line 687
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 689
    :cond_57
    if-lez v8, :cond_79

    .line 691
    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, "H":Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 698
    .local v6, "D":Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_78

    const-string v9, "."

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_75

    invoke-static {p0, v5}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_77

    :cond_75
    if-eqz v2, :cond_78

    :cond_77
    move v0, v5

    :cond_78
    return v0

    .line 702
    .end local v3    # "H":Ljava/lang/String;
    .end local v6    # "D":Ljava/lang/String;
    :cond_79
    if-ne v8, v6, :cond_8f

    .line 704
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_8d

    .line 705
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    move v0, v5

    goto :goto_8e

    :cond_8d
    nop

    .line 704
    :goto_8e
    return v0

    .line 708
    :cond_8f
    return v0

    .line 662
    .end local v1    # "domainLength":I
    .end local v2    # "isLocalDomain":Z
    .end local v4    # "embeddedDotInDomain":I
    .end local v7    # "firstDotInHost":I
    .end local v8    # "lengthDiff":I
    :cond_90
    :goto_90
    return v0
.end method

.method private static greylist-max-o equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .line 1165
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 1166
    :cond_4
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 1167
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1169
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o guessCookieVersion(Ljava/lang/String;)I
    .registers 4
    .param p0, "header"    # Ljava/lang/String;

    .line 1132
    const/4 v0, 0x0

    .line 1134
    .local v0, "version":I
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1135
    const-string v1, "expires="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 1137
    const/4 v0, 0x0

    goto :goto_2d

    .line 1138
    :cond_10
    const-string v1, "version="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 1140
    const/4 v0, 0x1

    goto :goto_2d

    .line 1141
    :cond_1a
    const-string v1, "max-age"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_24

    .line 1143
    const/4 v0, 0x1

    goto :goto_2d

    .line 1144
    :cond_24
    const-string v1, "set-cookie2:"

    invoke-static {p0, v1}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1146
    const/4 v0, 0x1

    .line 1149
    :cond_2d
    :goto_2d
    return v0
.end method

.method private greylist-max-o header()Ljava/lang/String;
    .registers 2

    .line 1056
    iget-object v0, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    return-object v0
.end method

.method private static greylist-max-o isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "firstCharacter"    # I

    .line 713
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 714
    .local v0, "dotPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method private static greylist-max-o isToken(Ljava/lang/String;)Z
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .line 817
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 818
    return v1

    .line 821
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 823
    .local v0, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_31

    .line 824
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 826
    .local v3, "c":C
    const/16 v4, 0x20

    if-lt v3, v4, :cond_30

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_30

    const-string v4, ",;= \t"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2d

    goto :goto_30

    .line 823
    .end local v3    # "c":C
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 827
    .restart local v3    # "c":C
    :cond_30
    :goto_30
    return v1

    .line 829
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_31
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist test-api parse(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o parse(Ljava/lang/String;Z)Ljava/util/List;
    .registers 9
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "retainHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-static {p0}, Ljava/net/HttpCookie;->guessCookieVersion(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, "version":I
    const-string v1, "set-cookie2:"

    invoke-static {p0, v1}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    .line 217
    :cond_15
    const-string v1, "set-cookie:"

    invoke-static {p0, v1}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 218
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 221
    :cond_25
    :goto_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-nez v0, :cond_38

    .line 227
    invoke-static {p0, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    move-result-object v2

    .line 228
    .local v2, "cookie":Ljava/net/HttpCookie;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 229
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    goto :goto_58

    .line 234
    :cond_38
    invoke-static {p0}, Ljava/net/HttpCookie;->splitMultiCookies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 235
    .local v2, "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 236
    .local v4, "cookieStr":Ljava/lang/String;
    invoke-static {v4, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    move-result-object v5

    .line 237
    .local v5, "cookie":Ljava/net/HttpCookie;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 238
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v4    # "cookieStr":Ljava/lang/String;
    .end local v5    # "cookie":Ljava/net/HttpCookie;
    goto :goto_40

    .line 242
    .end local v2    # "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_58
    :goto_58
    return-object v1
.end method

.method private static greylist-max-o parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;
    .registers 13
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "retainHeader"    # Z

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "cookie":Ljava/net/HttpCookie;
    const/4 v1, 0x0

    .line 849
    .local v1, "namevaluePair":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v2, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :try_start_9
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 855
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 856
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_6e

    .line 857
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 858
    .local v7, "name":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 859
    .local v8, "value":Ljava/lang/String;
    if-eqz p1, :cond_36

    .line 860
    new-instance v9, Ljava/net/HttpCookie;

    .line 861
    invoke-static {v8}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10, p0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .local v9, "cookie":Ljava/net/HttpCookie;
    goto :goto_3f

    .line 864
    .end local v9    # "cookie":Ljava/net/HttpCookie;
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_36
    new-instance v9, Ljava/net/HttpCookie;

    .line 865
    invoke-static {v8}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_3f} :catch_76

    .line 866
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v9    # "cookie":Ljava/net/HttpCookie;
    :goto_3f
    nop

    .line 872
    .end local v4    # "index":I
    nop

    .line 875
    :goto_41
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 876
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 877
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 879
    .local v0, "index":I
    if-eq v0, v5, :cond_64

    .line 880
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 881
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .local v7, "value":Ljava/lang/String;
    goto :goto_69

    .line 883
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_64
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 884
    .restart local v4    # "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 888
    .restart local v7    # "value":Ljava/lang/String;
    :goto_69
    invoke-static {v9, v4, v7}, Ljava/net/HttpCookie;->assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .end local v0    # "index":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_41

    .line 891
    :cond_6d
    return-object v9

    .line 868
    .end local v9    # "cookie":Ljava/net/HttpCookie;
    .local v0, "cookie":Ljava/net/HttpCookie;
    .local v4, "index":I
    :cond_6e
    :try_start_6e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid cookie name-value pair"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "namevaluePair":Ljava/lang/String;
    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .end local p0    # "header":Ljava/lang/String;
    .end local p1    # "retainHeader":Z
    throw v3
    :try_end_76
    .catch Ljava/util/NoSuchElementException; {:try_start_6e .. :try_end_76} :catch_76

    .line 870
    .end local v4    # "index":I
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    .restart local v1    # "namevaluePair":Ljava/lang/String;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local p0    # "header":Ljava/lang/String;
    .restart local p1    # "retainHeader":Z
    :catch_76
    move-exception v3

    .line 871
    .local v3, "ignored":Ljava/util/NoSuchElementException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Empty cookie header string"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static greylist-max-o splitMultiCookies(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1199
    .local v1, "quoteCount":I
    const/4 v2, 0x0

    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "q":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2c

    .line 1200
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1201
    .local v4, "c":C
    const/16 v5, 0x22

    if-ne v4, v5, :cond_18

    add-int/lit8 v1, v1, 0x1

    .line 1202
    :cond_18
    const/16 v5, 0x2c

    if-ne v4, v5, :cond_29

    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_29

    .line 1204
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    add-int/lit8 v3, v2, 0x1

    .line 1199
    .end local v4    # "c":C
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1209
    :cond_2c
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    return-object v0
.end method

.method private static greylist-max-o startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # Ljava/lang/String;

    .line 1173
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    if-nez p1, :cond_6

    goto :goto_21

    .line 1175
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_20

    .line 1176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1177
    const/4 v0, 0x1

    return v0

    .line 1180
    :cond_20
    return v0

    .line 1173
    :cond_21
    :goto_21
    return v0
.end method

.method private static greylist-max-o stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 1153
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_28

    .line 1154
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_28

    .line 1155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1157
    :cond_28
    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_4d

    .line 1158
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4d

    .line 1159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1161
    :cond_4d
    return-object p0
.end method

.method private greylist-max-o toNetscapeHeaderString()Ljava/lang/String;
    .registers 3

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o toRFC2965HeaderString()Ljava/lang/String;
    .registers 5

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1074
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1076
    const-string v1, ";$Path=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1077
    :cond_37
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 1078
    const-string v1, ";$Domain=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1079
    :cond_4e
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 1080
    const-string v1, ";$Port=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1082
    :cond_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 790
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 791
    :catch_5
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 746
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 747
    return v0

    .line 748
    :cond_4
    instance-of v1, p1, Ljava/net/HttpCookie;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 749
    return v2

    .line 750
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/net/HttpCookie;

    .line 756
    .local v1, "other":Ljava/net/HttpCookie;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 757
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 758
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v2

    .line 756
    :goto_39
    return v0
.end method

.method public whitelist test-api getComment()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getCommentURL()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDiscard()Z
    .registers 2

    .line 342
    iget-boolean v0, p0, Ljava/net/HttpCookie;->toDiscard:Z

    return v0
.end method

.method public whitelist test-api getDomain()Ljava/lang/String;
    .registers 2

    .line 402
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMaxAge()J
    .registers 3

    .line 437
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 513
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPath()Ljava/lang/String;
    .registers 2

    .line 472
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPortlist()Ljava/lang/String;
    .registers 2

    .line 367
    iget-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSecure()Z
    .registers 2

    .line 503
    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    return v0
.end method

.method public whitelist test-api getValue()Ljava/lang/String;
    .registers 2

    .line 542
    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 2

    .line 557
    iget v0, p0, Ljava/net/HttpCookie;->version:I

    return v0
.end method

.method public whitelist test-api hasExpired()Z
    .registers 8

    .line 254
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 259
    :cond_a
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-nez v0, :cond_14

    return v2

    .line 261
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Ljava/net/HttpCookie;->whenCreated:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 262
    .local v3, "deltaSecond":J
    iget-wide v5, p0, Ljava/net/HttpCookie;->maxAge:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_25

    .line 263
    return v1

    .line 265
    :cond_25
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 775
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 776
    .local v0, "h1":I
    iget-object v1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    iget-object v1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 777
    .local v1, "h2":I
    :goto_1b
    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 779
    .local v2, "h3":I
    :cond_25
    add-int v3, v0, v1

    add-int/2addr v3, v2

    return v3
.end method

.method public whitelist test-api isHttpOnly()Z
    .registers 2

    .line 592
    iget-boolean v0, p0, Ljava/net/HttpCookie;->httpOnly:Z

    return v0
.end method

.method public whitelist test-api setComment(Ljava/lang/String;)V
    .registers 2
    .param p1, "purpose"    # Ljava/lang/String;

    .line 279
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public whitelist test-api setCommentURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "purpose"    # Ljava/lang/String;

    .line 305
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public whitelist test-api setDiscard(Z)V
    .registers 2
    .param p1, "discard"    # Z

    .line 331
    iput-boolean p1, p0, Ljava/net/HttpCookie;->toDiscard:Z

    .line 332
    return-void
.end method

.method public whitelist test-api setDomain(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 387
    if-eqz p1, :cond_9

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    goto :goto_b

    .line 390
    :cond_9
    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    .line 391
    :goto_b
    return-void
.end method

.method public whitelist test-api setHttpOnly(Z)V
    .registers 2
    .param p1, "httpOnly"    # Z

    .line 607
    iput-boolean p1, p0, Ljava/net/HttpCookie;->httpOnly:Z

    .line 608
    return-void
.end method

.method public whitelist test-api setMaxAge(J)V
    .registers 3
    .param p1, "expiry"    # J

    .line 425
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 426
    return-void
.end method

.method public whitelist test-api setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 459
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public whitelist test-api setPortlist(Ljava/lang/String;)V
    .registers 2
    .param p1, "ports"    # Ljava/lang/String;

    .line 356
    iput-object p1, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public whitelist test-api setSecure(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 489
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    .line 490
    return-void
.end method

.method public whitelist test-api setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "newValue"    # Ljava/lang/String;

    .line 531
    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public whitelist test-api setVersion(I)V
    .registers 4
    .param p1, "v"    # I

    .line 575
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 576
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cookie version should be 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_e
    :goto_e
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    .line 580
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 727
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_b

    .line 728
    invoke-direct {p0}, Ljava/net/HttpCookie;->toRFC2965HeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 730
    :cond_b
    invoke-direct {p0}, Ljava/net/HttpCookie;->toNetscapeHeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
