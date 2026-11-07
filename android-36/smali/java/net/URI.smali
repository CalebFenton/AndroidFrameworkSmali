.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o H_ALPHA:J

.field private static final greylist-max-o H_ALPHANUM:J

.field private static final greylist-max-o H_DASH:J

.field private static final greylist-max-o H_DIGIT:J = 0x0L

.field private static final greylist-max-o H_DOT:J

.field private static final greylist-max-o H_ESCAPED:J = 0x0L

.field private static final greylist-max-o H_HEX:J

.field private static final greylist-max-o H_LEFT_BRACKET:J

.field private static final greylist-max-o H_LOWALPHA:J

.field private static final greylist-max-o H_MARK:J

.field private static final greylist-max-o H_PATH:J

.field private static final greylist-max-o H_PCHAR:J

.field private static final greylist-max-o H_REG_NAME:J

.field private static final greylist-max-o H_RESERVED:J

.field private static final greylist-max-o H_SCHEME:J

.field private static final blacklist H_SCOPE_ID:J

.field private static final greylist-max-o H_SERVER:J

.field private static final greylist-max-o H_SERVER_PERCENT:J

.field private static final greylist-max-o H_UNDERSCORE:J

.field private static final greylist-max-o H_UNRESERVED:J

.field private static final greylist-max-o H_UPALPHA:J

.field private static final greylist-max-o H_URIC:J

.field private static final greylist-max-o H_URIC_NO_SLASH:J

.field private static final greylist-max-o H_USERINFO:J

.field private static final greylist-max-o L_ALPHA:J = 0x0L

.field private static final greylist-max-o L_ALPHANUM:J

.field private static final greylist-max-o L_DASH:J

.field private static final greylist-max-o L_DIGIT:J

.field private static final greylist-max-o L_DOT:J

.field private static final greylist-max-o L_ESCAPED:J = 0x1L

.field private static final greylist-max-o L_HEX:J

.field private static final greylist-max-o L_LEFT_BRACKET:J

.field private static final greylist-max-o L_LOWALPHA:J = 0x0L

.field private static final greylist-max-o L_MARK:J

.field private static final greylist-max-o L_PATH:J

.field private static final greylist-max-o L_PCHAR:J

.field private static final greylist-max-o L_REG_NAME:J

.field private static final greylist-max-o L_RESERVED:J

.field private static final greylist-max-o L_SCHEME:J

.field private static final blacklist L_SCOPE_ID:J

.field private static final greylist-max-o L_SERVER:J

.field private static final greylist-max-o L_SERVER_PERCENT:J

.field private static final greylist-max-o L_UNDERSCORE:J

.field private static final greylist-max-o L_UNRESERVED:J

.field private static final greylist-max-o L_UPALPHA:J = 0x0L

.field private static final greylist-max-o L_URIC:J

.field private static final greylist-max-o L_URIC_NO_SLASH:J

.field private static final greylist-max-o L_USERINFO:J

.field private static final greylist-max-o hexDigits:[C

.field static final whitelist serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient greylist-max-o authority:Ljava/lang/String;

.field private volatile transient greylist-max-o decodedAuthority:Ljava/lang/String;

.field private volatile transient greylist-max-o decodedFragment:Ljava/lang/String;

.field private volatile transient greylist-max-o decodedPath:Ljava/lang/String;

.field private volatile transient greylist-max-o decodedQuery:Ljava/lang/String;

.field private volatile transient greylist-max-o decodedSchemeSpecificPart:Ljava/lang/String;

.field private volatile transient greylist-max-o decodedUserInfo:Ljava/lang/String;

.field private transient greylist fragment:Ljava/lang/String;

.field private volatile transient greylist-max-o hash:I

.field private transient greylist host:Ljava/lang/String;

.field private transient greylist-max-o path:Ljava/lang/String;

.field private transient greylist port:I

.field private transient greylist-max-r query:Ljava/lang/String;

.field private transient greylist-max-o scheme:Ljava/lang/String;

.field private volatile transient greylist-max-o schemeSpecificPart:Ljava/lang/String;

.field private volatile greylist string:Ljava/lang/String;

.field private transient greylist-max-o userInfo:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputauthority(Ljava/net/URI;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfragment(Ljava/net/URI;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputhost(Ljava/net/URI;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputpath(Ljava/net/URI;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputport(Ljava/net/URI;I)V
    .registers 2

    iput p1, p0, Ljava/net/URI;->port:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputquery(Ljava/net/URI;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputscheme(Ljava/net/URI;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputschemeSpecificPart(Ljava/net/URI;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputstring(Ljava/net/URI;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputuserInfo(Ljava/net/URI;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_ALPHA()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_ALPHANUM()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_DASH()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_DASH:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_DOT()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_DOT:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_HEX()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_HEX:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_PATH()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_PATH:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_REG_NAME()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_REG_NAME:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_SCHEME()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_SCHEME:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_SCOPE_ID()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_SCOPE_ID:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_SERVER()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_SERVER_PERCENT()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_UNDERSCORE()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_URIC()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_URIC:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetH_USERINFO()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_ALPHANUM()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_DASH()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_DASH:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_DIGIT()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_DOT()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_DOT:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_HEX()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_HEX:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_PATH()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_PATH:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_REG_NAME()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_REG_NAME:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_SCHEME()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_SCHEME:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_SCOPE_ID()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_SCOPE_ID:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_SERVER()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_SERVER_PERCENT()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_UNDERSCORE()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_URIC()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_URIC:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetL_USERINFO()J
    .registers 2

    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smmatch(CJJ)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 460
    nop

    .line 2568
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Ljava/net/URI;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DIGIT:J

    .line 2575
    const/16 v0, 0x5a

    const/16 v1, 0x41

    invoke-static {v1, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v2

    sput-wide v2, Ljava/net/URI;->H_UPALPHA:J

    .line 2581
    const/16 v0, 0x7a

    const/16 v2, 0x61

    invoke-static {v2, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v3

    sput-wide v3, Ljava/net/URI;->H_LOWALPHA:J

    .line 2585
    sget-wide v3, Ljava/net/URI;->H_LOWALPHA:J

    sget-wide v5, Ljava/net/URI;->H_UPALPHA:J

    or-long/2addr v3, v5

    sput-wide v3, Ljava/net/URI;->H_ALPHA:J

    .line 2588
    sget-wide v3, Ljava/net/URI;->L_DIGIT:J

    const-wide/16 v5, 0x0

    or-long/2addr v3, v5

    sput-wide v3, Ljava/net/URI;->L_ALPHANUM:J

    .line 2589
    sget-wide v3, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v3, v5

    sput-wide v3, Ljava/net/URI;->H_ALPHANUM:J

    .line 2593
    sget-wide v3, Ljava/net/URI;->L_DIGIT:J

    sput-wide v3, Ljava/net/URI;->L_HEX:J

    .line 2594
    const/16 v0, 0x46

    invoke-static {v1, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    const/16 v3, 0x66

    invoke-static {v2, v3}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_HEX:J

    .line 2598
    const-string v0, "-_.!~*\'()"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Ljava/net/URI;->L_MARK:J

    .line 2599
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_MARK:J

    .line 2602
    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    .line 2603
    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    .line 2608
    const-string v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Ljava/net/URI;->L_RESERVED:J

    .line 2609
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_RESERVED:J

    .line 2617
    sget-wide v0, Ljava/net/URI;->L_RESERVED:J

    sget-wide v2, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v2

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_URIC:J

    .line 2618
    sget-wide v0, Ljava/net/URI;->H_RESERVED:J

    sget-wide v7, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v7

    or-long/2addr v0, v5

    sput-wide v0, Ljava/net/URI;->H_URIC:J

    .line 2622
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v2

    .line 2623
    const-string v4, ":@&=+$,"

    invoke-static {v4}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->L_PCHAR:J

    .line 2624
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v5

    .line 2625
    invoke-static {v4}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->H_PCHAR:J

    .line 2628
    sget-wide v0, Ljava/net/URI;->L_PCHAR:J

    const-string v4, ";/"

    invoke-static {v4}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->L_PATH:J

    .line 2629
    sget-wide v0, Ljava/net/URI;->H_PCHAR:J

    invoke-static {v4}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->H_PATH:J

    .line 2632
    const-string v0, "-"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Ljava/net/URI;->L_DASH:J

    .line 2633
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DASH:J

    .line 2637
    const-string v0, "_"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Ljava/net/URI;->L_UNDERSCORE:J

    .line 2638
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    .line 2642
    const-string v0, "."

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Ljava/net/URI;->L_DOT:J

    .line 2643
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DOT:J

    .line 2647
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v2

    .line 2648
    const-string v4, ";:&=+$,"

    invoke-static {v4}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->L_USERINFO:J

    .line 2649
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v5

    .line 2650
    invoke-static {v4}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->H_USERINFO:J

    .line 2654
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v2

    .line 2655
    const-string v4, "$,;:@&=+"

    invoke-static {v4}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->L_REG_NAME:J

    .line 2656
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v5

    .line 2657
    invoke-static {v4}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->H_REG_NAME:J

    .line 2660
    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    sget-wide v7, Ljava/net/URI;->L_ALPHANUM:J

    or-long/2addr v0, v7

    sget-wide v7, Ljava/net/URI;->L_DASH:J

    or-long/2addr v0, v7

    .line 2661
    const-string v4, ".:@[]"

    invoke-static {v4}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->L_SERVER:J

    .line 2662
    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    sget-wide v7, Ljava/net/URI;->H_ALPHANUM:J

    or-long/2addr v0, v7

    sget-wide v7, Ljava/net/URI;->H_DASH:J

    or-long/2addr v0, v7

    .line 2663
    invoke-static {v4}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->H_SERVER:J

    .line 2667
    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    .line 2668
    const-string v4, "%"

    invoke-static {v4}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    .line 2669
    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    .line 2670
    invoke-static {v4}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    .line 2671
    const-string v0, "["

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    sput-wide v7, Ljava/net/URI;->L_LEFT_BRACKET:J

    .line 2672
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_LEFT_BRACKET:J

    .line 2675
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    or-long/2addr v0, v5

    const-string v4, "+-."

    invoke-static {v4}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->L_SCHEME:J

    .line 2676
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v0, v5

    invoke-static {v4}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Ljava/net/URI;->H_SCHEME:J

    .line 2680
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v2

    .line 2681
    const-string v2, ";?:@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v3

    or-long/2addr v0, v3

    sput-wide v0, Ljava/net/URI;->L_URIC_NO_SLASH:J

    .line 2682
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v5

    .line 2683
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_URIC_NO_SLASH:J

    .line 2687
    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    .line 2688
    const-string v2, "_."

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v3

    or-long/2addr v0, v3

    sput-wide v0, Ljava/net/URI;->L_SCOPE_ID:J

    .line 2689
    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    .line 2690
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_SCOPE_ID:J

    .line 2694
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_18e

    sput-object v0, Ljava/net/URI;->hexDigits:[C

    return-void

    nop

    :array_18e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 497
    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 498
    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 499
    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 497
    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 498
    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 499
    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 584
    new-instance v0, Ljava/net/URI$Parser;

    invoke-direct {v0, p0, p1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 585
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "ssp"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 497
    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 498
    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 499
    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 813
    new-instance v0, Ljava/net/URI$Parser;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v10, p3

    .end local p1    # "scheme":Ljava/lang/String;
    .end local p2    # "ssp":Ljava/lang/String;
    .end local p3    # "fragment":Ljava/lang/String;
    .local v2, "scheme":Ljava/lang/String;
    .local v3, "ssp":Ljava/lang/String;
    .local v10, "fragment":Ljava/lang/String;
    invoke-direct/range {v1 .. v10}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 816
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 817
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/URI;->port:I

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 496
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 498
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 499
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 665
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2, p1, p5}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    new-instance v3, Ljava/net/URI$Parser;

    invoke-direct {v3, p0, v2}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/URI$Parser;->parse(Z)V

    .line 670
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 770
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    .end local p1    # "scheme":Ljava/lang/String;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "path":Ljava/lang/String;
    .end local p4    # "fragment":Ljava/lang/String;
    .local v1, "scheme":Ljava/lang/String;
    .local v3, "host":Ljava/lang/String;
    .local v5, "path":Ljava/lang/String;
    .local v7, "fragment":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/URI;->port:I

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 496
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 498
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 499
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 738
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2, p1, p3}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance v3, Ljava/net/URI$Parser;

    invoke-direct {v3, p0, v2}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URI$Parser;->parse(Z)V

    .line 743
    return-void
.end method

.method private greylist-max-o appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .line 1830
    const/4 v0, 0x0

    const-string v1, "]"

    const-string v2, "["

    const-string v3, "//"

    const/4 v4, -0x1

    if-eqz p4, :cond_50

    .line 1831
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1832
    if-eqz p3, :cond_1f

    .line 1833
    sget-wide v5, Ljava/net/URI;->L_USERINFO:J

    sget-wide v7, Ljava/net/URI;->H_USERINFO:J

    invoke-static {p3, v5, v6, v7, v8}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1834
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1836
    :cond_1f
    const/16 v3, 0x3a

    invoke-virtual {p4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_35

    .line 1837
    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 1838
    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    nop

    .line 1839
    .local v0, "needBrackets":Z
    :goto_36
    if-eqz v0, :cond_3d

    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1840
    :cond_3d
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1841
    if-eqz v0, :cond_47

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1842
    :cond_47
    if-eq p5, v4, :cond_a9

    .line 1843
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1844
    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_a9

    .line 1846
    .end local v0    # "needBrackets":Z
    :cond_50
    if-eqz p2, :cond_a9

    .line 1847
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1848
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1850
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1851
    .local v1, "end":I
    move-object v2, p2

    .local v2, "doquote":Ljava/lang/String;
    const-string v3, ""

    .line 1852
    .local v3, "dontquote":Ljava/lang/String;
    if-eq v1, v4, :cond_82

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_82

    .line 1854
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_76

    .line 1855
    move-object v3, p2

    .line 1856
    const-string v2, ""

    goto :goto_82

    .line 1858
    :cond_76
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1859
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1862
    :cond_82
    :goto_82
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1863
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v4, v6

    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v6, v8

    invoke-static {v2, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1866
    .end local v1    # "end":I
    .end local v2    # "doquote":Ljava/lang/String;
    .end local v3    # "dontquote":Ljava/lang/String;
    goto :goto_aa

    .line 1867
    :cond_97
    sget-wide v0, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v2, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v0, v2

    sget-wide v2, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v4, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v2, v4

    invoke-static {p2, v0, v1, v2, v3}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_aa

    .line 1846
    :cond_a9
    :goto_a9
    nop

    .line 1872
    :goto_aa
    return-void
.end method

.method private static greylist-max-o appendEncoded(Ljava/lang/StringBuffer;C)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # C

    .line 2706
    const/4 v0, 0x0

    .line 2708
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {v1}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2709
    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_22
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_22} :catch_24

    move-object v0, v1

    .line 2712
    goto :goto_26

    .line 2710
    :catch_24
    move-exception v1

    .line 2711
    .local v1, "x":Ljava/nio/charset/CharacterCodingException;
    nop

    .line 2713
    .end local v1    # "x":Ljava/nio/charset/CharacterCodingException;
    :goto_26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2714
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 2715
    .local v1, "b":I
    const/16 v2, 0x80

    if-lt v1, v2, :cond_3b

    .line 2716
    int-to-byte v2, v1

    invoke-static {p0, v2}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_3f

    .line 2718
    :cond_3b
    int-to-char v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2719
    .end local v1    # "b":I
    :goto_3f
    goto :goto_26

    .line 2720
    :cond_40
    return-void
.end method

.method private static greylist-max-o appendEscape(Ljava/lang/StringBuffer;B)V
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .line 2700
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2701
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2702
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x0

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2703
    return-void
.end method

.method private greylist-max-o appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "fragment"    # Ljava/lang/String;

    .line 1916
    if-eqz p2, :cond_12

    .line 1917
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1918
    sget-wide v0, Ljava/net/URI;->L_URIC:J

    sget-wide v2, Ljava/net/URI;->H_URIC:J

    invoke-static {p2, v0, v1, v2, v3}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1920
    :cond_12
    return-void
.end method

.method private greylist-max-o appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;

    .line 1883
    if-eqz p2, :cond_57

    .line 1887
    const-string v0, "//["

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1888
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1889
    .local v0, "end":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_40

    .line 1891
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_25

    .line 1892
    move-object v1, p2

    .line 1893
    .local v1, "dontquote":Ljava/lang/String;
    const-string v2, ""

    .local v2, "doquote":Ljava/lang/String;
    goto :goto_32

    .line 1895
    .end local v1    # "dontquote":Ljava/lang/String;
    .end local v2    # "doquote":Ljava/lang/String;
    :cond_25
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1896
    .restart local v1    # "dontquote":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1898
    .restart local v2    # "doquote":Ljava/lang/String;
    :goto_32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1899
    sget-wide v3, Ljava/net/URI;->L_URIC:J

    sget-wide v5, Ljava/net/URI;->H_URIC:J

    invoke-static {v2, v3, v4, v5, v6}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1901
    .end local v0    # "end":I
    .end local v1    # "dontquote":Ljava/lang/String;
    .end local v2    # "doquote":Ljava/lang/String;
    :cond_40
    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    goto :goto_7f

    .line 1902
    :cond_46
    sget-wide v0, Ljava/net/URI;->L_URIC:J

    sget-wide v2, Ljava/net/URI;->H_URIC:J

    invoke-static {p2, v0, v1, v2, v3}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    goto :goto_7f

    .line 1905
    :cond_57
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .end local p1    # "sb":Ljava/lang/StringBuffer;
    .end local p3    # "authority":Ljava/lang/String;
    .end local p4    # "userInfo":Ljava/lang/String;
    .end local p5    # "host":Ljava/lang/String;
    .end local p6    # "port":I
    .local v2, "sb":Ljava/lang/StringBuffer;
    .local v3, "authority":Ljava/lang/String;
    .local v4, "userInfo":Ljava/lang/String;
    .local v5, "host":Ljava/lang/String;
    .local v6, "port":I
    invoke-direct/range {v1 .. v6}, Ljava/net/URI;->appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1906
    if-eqz p7, :cond_6d

    .line 1907
    sget-wide p3, Ljava/net/URI;->L_PATH:J

    sget-wide p5, Ljava/net/URI;->H_PATH:J

    invoke-static {p7, p3, p4, p5, p6}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1908
    :cond_6d
    if-eqz p8, :cond_7f

    .line 1909
    const/16 p1, 0x3f

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1910
    sget-wide p3, Ljava/net/URI;->L_URIC:J

    sget-wide p5, Ljava/net/URI;->H_URIC:J

    invoke-static {p8, p3, p4, p5, p6}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1913
    :cond_7f
    :goto_7f
    return-void
.end method

.method private static greylist-max-o checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1816
    if-eqz p1, :cond_1c

    .line 1817
    if-eqz p2, :cond_1c

    .line 1818
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_14

    goto :goto_1c

    .line 1819
    :cond_14
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "Relative path in absolute URI"

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1822
    :cond_1c
    :goto_1c
    return-void
.end method

.method private static greylist-max-o compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .line 1776
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 1777
    :cond_4
    if-eqz p0, :cond_f

    .line 1778
    if-eqz p1, :cond_d

    .line 1779
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1781
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 1783
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method private static greylist-max-o compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .line 1789
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 1790
    :cond_4
    if-eqz p0, :cond_34

    .line 1791
    if-eqz p1, :cond_32

    .line 1792
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1793
    .local v0, "sn":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1794
    .local v1, "tn":I
    if-ge v0, v1, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    .line 1795
    .local v2, "n":I
    :goto_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_2f

    .line 1796
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    sub-int/2addr v4, v5

    .line 1797
    .local v4, "c":I
    if-eqz v4, :cond_2c

    .line 1798
    return v4

    .line 1795
    .end local v4    # "c":I
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1800
    .end local v3    # "i":I
    :cond_2f
    sub-int v3, v0, v1

    return v3

    .line 1802
    .end local v0    # "sn":I
    .end local v1    # "tn":I
    .end local v2    # "n":I
    :cond_32
    const/4 v0, 0x1

    return v0

    .line 1804
    :cond_34
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist test-api create(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 846
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 847
    :catch_6
    move-exception v0

    .line 848
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o decode(CC)B
    .registers 4
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .line 2806
    invoke-static {p0}, Ljava/net/URI;->decode(C)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    .line 2807
    invoke-static {p1}, Ljava/net/URI;->decode(C)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 2806
    return v0
.end method

.method private static greylist-max-o decode(C)I
    .registers 2
    .param p0, "c"    # C

    .line 2795
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 2796
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 2797
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 2798
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 2799
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 2800
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 2801
    :cond_25
    nop

    .line 2802
    const/4 v0, -0x1

    return v0
.end method

.method private static greylist-max-o decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "s"    # Ljava/lang/String;

    .line 2818
    if-nez p0, :cond_3

    .line 2819
    return-object p0

    .line 2820
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2821
    .local v0, "n":I
    if-nez v0, :cond_a

    .line 2822
    return-object p0

    .line 2823
    :cond_a
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_13

    .line 2824
    return-object p0

    .line 2826
    :cond_13
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2827
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2828
    .local v3, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 2829
    .local v4, "cb":Ljava/nio/CharBuffer;
    const-string v5, "UTF-8"

    invoke-static {v5}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2830
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2831
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    .line 2834
    .local v5, "dec":Ljava/nio/charset/CharsetDecoder;
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2835
    .local v6, "c":C
    const/4 v7, 0x0

    .line 2837
    .local v7, "betweenBrackets":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_39
    if-ge v8, v0, :cond_9c

    .line 2838
    nop

    .line 2839
    const/16 v9, 0x5b

    if-ne v6, v9, :cond_42

    .line 2840
    const/4 v7, 0x1

    goto :goto_49

    .line 2841
    :cond_42
    if-eqz v7, :cond_49

    const/16 v9, 0x5d

    if-ne v6, v9, :cond_49

    .line 2842
    const/4 v7, 0x0

    .line 2844
    :cond_49
    :goto_49
    if-ne v6, v1, :cond_8f

    if-eqz v7, :cond_4e

    goto :goto_8f

    .line 2851
    :cond_4e
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2852
    move v9, v8

    .line 2854
    .local v9, "ui":I
    :cond_52
    nop

    .line 2855
    const/4 v10, 0x1

    add-int/2addr v8, v10

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/2addr v8, v10

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v11, v12}, Ljava/net/URI;->decode(CC)B

    move-result v11

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2856
    add-int/2addr v8, v10

    if-lt v8, v0, :cond_69

    .line 2857
    goto :goto_70

    .line 2858
    :cond_69
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2859
    if-eq v6, v1, :cond_52

    .line 2860
    nop

    .line 2862
    :goto_70
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2863
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 2864
    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 2865
    invoke-virtual {v5, v3, v4, v10}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v10

    .line 2866
    .local v10, "cr":Ljava/nio/charset/CoderResult;
    nop

    .line 2867
    invoke-virtual {v5, v4}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v10

    .line 2868
    nop

    .line 2869
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2870
    .end local v9    # "ui":I
    .end local v10    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_39

    .line 2845
    :cond_8f
    :goto_8f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2846
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v0, :cond_97

    .line 2847
    goto :goto_9c

    .line 2848
    :cond_97
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2849
    goto :goto_39

    .line 2872
    .end local v8    # "i":I
    :cond_9c
    :goto_9c
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o defineSchemeSpecificPart()V
    .registers 11

    .line 1945
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    .line 1946
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v0

    .line 1947
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget v7, p0, Ljava/net/URI;->port:I

    .line 1948
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v9

    .line 1947
    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_2b

    return-void

    .line 1950
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1951
    return-void
.end method

.method private greylist-max-o defineString()V
    .registers 6

    .line 1954
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    .line 1956
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1957
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    const/16 v2, 0x3a

    if-eqz v1, :cond_18

    .line 1958
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1959
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1961
    :cond_18
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1962
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a1

    .line 1964
    :cond_25
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    const-string v3, "//"

    if-eqz v1, :cond_7c

    .line 1965
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1966
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_3c

    .line 1967
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1968
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1970
    :cond_3c
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_5a

    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 1971
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 1972
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    const/4 v1, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    .line 1973
    .local v1, "needBrackets":Z
    :goto_5b
    if-eqz v1, :cond_62

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1974
    :cond_62
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1975
    if-eqz v1, :cond_6e

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1976
    :cond_6e
    iget v3, p0, Ljava/net/URI;->port:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_89

    .line 1977
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1978
    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_89

    .line 1980
    .end local v1    # "needBrackets":Z
    :cond_7c
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_89

    .line 1981
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1982
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8a

    .line 1980
    :cond_89
    :goto_89
    nop

    .line 1984
    :goto_8a
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_93

    .line 1985
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1986
    :cond_93
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_a1

    .line 1987
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1988
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1991
    :cond_a1
    :goto_a1
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_af

    .line 1992
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1993
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1995
    :cond_af
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1996
    return-void
.end method

.method private static greylist-max-o encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 2762
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2763
    .local v0, "n":I
    if-nez v0, :cond_7

    .line 2764
    return-object p0

    .line 2767
    :cond_7
    const/4 v1, 0x0

    .line 2768
    .local v1, "i":I
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_4c

    .line 2769
    nop

    .line 2774
    .end local v1    # "i":I
    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 2775
    .local v1, "ns":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2777
    .local v2, "bb":Ljava/nio/ByteBuffer;
    :try_start_18
    const-string v4, "UTF-8"

    invoke-static {v4}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    .line 2778
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_26
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_18 .. :try_end_26} :catch_28

    move-object v2, v4

    .line 2781
    goto :goto_2a

    .line 2779
    :catch_28
    move-exception v4

    .line 2780
    .local v4, "x":Ljava/nio/charset/CharacterCodingException;
    nop

    .line 2783
    .end local v4    # "x":Ljava/nio/charset/CharacterCodingException;
    :goto_2a
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2784
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_2f
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 2785
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 2786
    .local v5, "b":I
    if-lt v5, v3, :cond_42

    .line 2787
    int-to-byte v6, v5

    invoke-static {v4, v6}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_46

    .line 2789
    :cond_42
    int-to-char v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2790
    .end local v5    # "b":I
    :goto_46
    goto :goto_2f

    .line 2791
    :cond_47
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2770
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .local v1, "i":I
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_8

    .line 2771
    return-object p0
.end method

.method private static greylist-max-o equal(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .line 1694
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1695
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_6a

    if-eqz p1, :cond_6a

    .line 1696
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_14

    .line 1697
    return v1

    .line 1698
    :cond_14
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_21

    .line 1699
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1700
    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1701
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    if-ge v4, v3, :cond_69

    .line 1702
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1703
    .local v5, "c":C
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1704
    .local v6, "d":C
    if-eq v5, v2, :cond_38

    .line 1705
    if-eq v5, v6, :cond_35

    .line 1706
    return v1

    .line 1707
    :cond_35
    add-int/lit8 v4, v4, 0x1

    .line 1708
    goto :goto_26

    .line 1710
    :cond_38
    if-eq v6, v2, :cond_3b

    .line 1711
    return v1

    .line 1712
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    .line 1713
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/net/URI;->toLower(C)I

    move-result v7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/net/URI;->toLower(C)I

    move-result v8

    if-eq v7, v8, :cond_50

    .line 1714
    return v1

    .line 1715
    :cond_50
    add-int/lit8 v4, v4, 0x1

    .line 1716
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/net/URI;->toLower(C)I

    move-result v7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/net/URI;->toLower(C)I

    move-result v8

    if-eq v7, v8, :cond_65

    .line 1717
    return v1

    .line 1718
    :cond_65
    nop

    .end local v5    # "c":C
    .end local v6    # "d":C
    add-int/lit8 v4, v4, 0x1

    .line 1719
    goto :goto_26

    .line 1720
    .end local v4    # "i":I
    :cond_69
    return v0

    .line 1722
    .end local v3    # "n":I
    :cond_6a
    return v1
.end method

.method private static greylist-max-o equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .line 1727
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1728
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    .line 1729
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1730
    .local v2, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_14

    .line 1731
    return v1

    .line 1732
    :cond_14
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_2d

    .line 1733
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    if-eq v4, v5, :cond_2a

    .line 1734
    return v1

    .line 1732
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1736
    .end local v3    # "i":I
    :cond_2d
    return v0

    .line 1738
    .end local v2    # "n":I
    :cond_2e
    return v1
.end method

.method private static greylist-max-o hash(ILjava/lang/String;)I
    .registers 4
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .line 1742
    if-nez p1, :cond_3

    return p0

    .line 1743
    :cond_3
    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_13

    mul-int/lit8 v0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_17

    .line 1744
    :cond_13
    invoke-static {p0, p1}, Ljava/net/URI;->normalizedHash(ILjava/lang/String;)I

    move-result v0

    .line 1743
    :goto_17
    return v0
.end method

.method private static greylist-max-o hashIgnoringCase(ILjava/lang/String;)I
    .registers 7
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .line 1767
    if-nez p1, :cond_3

    return p0

    .line 1768
    :cond_3
    move v0, p0

    .line 1769
    .local v0, "h":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1770
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_1a

    .line 1771
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    add-int v0, v3, v4

    .line 1770
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1772
    .end local v2    # "i":I
    :cond_1a
    return v0
.end method

.method private static greylist-max-o highMask(CC)J
    .registers 9
    .param p0, "first"    # C
    .param p1, "last"    # C

    .line 2544
    const-wide/16 v0, 0x0

    .line 2545
    .local v0, "m":J
    const/16 v2, 0x7f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v4

    .line 2546
    .local v3, "f":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v4

    .line 2547
    .local v2, "l":I
    move v4, v3

    .local v4, "i":I
    :goto_19
    if-gt v4, v2, :cond_22

    .line 2548
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 2547
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 2549
    .end local v4    # "i":I
    :cond_22
    return-wide v0
.end method

.method private static greylist-max-o highMask(Ljava/lang/String;)J
    .registers 9
    .param p0, "chars"    # Ljava/lang/String;

    .line 2520
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2521
    .local v0, "n":I
    const-wide/16 v1, 0x0

    .line 2522
    .local v1, "m":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_1f

    .line 2523
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2524
    .local v4, "c":C
    const/16 v5, 0x40

    if-lt v4, v5, :cond_1c

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1c

    .line 2525
    add-int/lit8 v5, v4, -0x40

    const-wide/16 v6, 0x1

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    .line 2522
    .end local v4    # "c":C
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2527
    .end local v3    # "i":I
    :cond_1f
    return-wide v1
.end method

.method private static greylist-max-o join([C[I)I
    .registers 10
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .line 2309
    array-length v0, p1

    .line 2310
    .local v0, "ns":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 2311
    .local v1, "end":I
    const/4 v2, 0x0

    .line 2313
    .local v2, "p":I
    aget-char v3, p0, v2

    const/16 v4, 0x2f

    if-nez v3, :cond_10

    .line 2315
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p":I
    .local v3, "p":I
    aput-char v4, p0, v2

    move v2, v3

    .line 2318
    .end local v3    # "p":I
    .restart local v2    # "p":I
    :cond_10
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_4f

    .line 2319
    aget v5, p1, v3

    .line 2320
    .local v5, "q":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_19

    .line 2322
    goto :goto_46

    .line 2324
    :cond_19
    if-ne v2, v5, :cond_2c

    .line 2326
    :goto_1b
    if-gt v2, v1, :cond_24

    aget-char v6, p0, v2

    if-eqz v6, :cond_24

    .line 2327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2328
    :cond_24
    if-gt v2, v1, :cond_46

    .line 2330
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "p":I
    .local v6, "p":I
    aput-char v4, p0, v2

    move v2, v6

    goto :goto_46

    .line 2332
    .end local v6    # "p":I
    .restart local v2    # "p":I
    :cond_2c
    if-ge v2, v5, :cond_49

    .line 2334
    :goto_2e
    if-gt v5, v1, :cond_3f

    aget-char v6, p0, v5

    if-eqz v6, :cond_3f

    .line 2335
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "p":I
    .restart local v6    # "p":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "q":I
    .local v7, "q":I
    aget-char v5, p0, v5

    aput-char v5, p0, v2

    move v2, v6

    move v5, v7

    goto :goto_2e

    .line 2336
    .end local v6    # "p":I
    .end local v7    # "q":I
    .restart local v2    # "p":I
    .restart local v5    # "q":I
    :cond_3f
    if-gt v5, v1, :cond_46

    .line 2338
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "p":I
    .restart local v6    # "p":I
    aput-char v4, p0, v2

    move v2, v6

    .line 2318
    .end local v5    # "q":I
    .end local v6    # "p":I
    .restart local v2    # "p":I
    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2341
    .restart local v5    # "q":I
    :cond_49
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4

    .line 2344
    .end local v3    # "i":I
    .end local v5    # "q":I
    :cond_4f
    return v2
.end method

.method private static greylist-max-o lowMask(CC)J
    .registers 9
    .param p0, "first"    # C
    .param p1, "last"    # C

    .line 2533
    const-wide/16 v0, 0x0

    .line 2534
    .local v0, "m":J
    const/16 v2, 0x3f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2535
    .local v3, "f":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2536
    .local v2, "l":I
    move v4, v3

    .local v4, "i":I
    :goto_16
    if-gt v4, v2, :cond_1f

    .line 2537
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 2536
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2538
    .end local v4    # "i":I
    :cond_1f
    return-wide v0
.end method

.method private static greylist-max-o lowMask(Ljava/lang/String;)J
    .registers 8
    .param p0, "chars"    # Ljava/lang/String;

    .line 2508
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2509
    .local v0, "n":I
    const-wide/16 v1, 0x0

    .line 2510
    .local v1, "m":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_18

    .line 2511
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2512
    .local v4, "c":C
    const/16 v5, 0x40

    if-ge v4, v5, :cond_15

    .line 2513
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v1, v5

    .line 2510
    .end local v4    # "c":C
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2515
    .end local v3    # "i":I
    :cond_18
    return-wide v1
.end method

.method private static greylist-max-o match(CJJ)Z
    .registers 12
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .line 2554
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2555
    return v0

    .line 2556
    :cond_4
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const/16 v6, 0x40

    if-ge p0, v6, :cond_15

    .line 2557
    shl-long/2addr v4, p0

    and-long/2addr v4, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_14

    move v0, v1

    :cond_14
    return v0

    .line 2558
    :cond_15
    const/16 v6, 0x80

    if-ge p0, v6, :cond_23

    .line 2559
    add-int/lit8 v6, p0, -0x40

    shl-long/2addr v4, v6

    and-long/2addr v4, p3

    cmp-long v2, v4, v2

    if-eqz v2, :cond_22

    move v0, v1

    :cond_22
    return v0

    .line 2560
    :cond_23
    return v0
.end method

.method private static greylist-max-o maybeAddLeadingDot([C[I)V
    .registers 8
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .line 2417
    const/4 v0, 0x0

    aget-char v1, p0, v0

    if-nez v1, :cond_6

    .line 2419
    return-void

    .line 2421
    :cond_6
    array-length v1, p1

    .line 2422
    .local v1, "ns":I
    const/4 v2, 0x0

    .line 2423
    .local v2, "f":I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 2424
    aget v3, p1, v2

    if-ltz v3, :cond_f

    .line 2425
    goto :goto_12

    .line 2426
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2428
    :cond_12
    :goto_12
    if-ge v2, v1, :cond_3c

    if-nez v2, :cond_17

    goto :goto_3c

    .line 2433
    :cond_17
    aget v3, p1, v2

    .line 2434
    .local v3, "p":I
    :goto_19
    array-length v4, p0

    if-ge v3, v4, :cond_29

    aget-char v4, p0, v3

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_29

    aget-char v4, p0, v3

    if-eqz v4, :cond_29

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 2435
    :cond_29
    array-length v4, p0

    if-ge v3, v4, :cond_3b

    aget-char v4, p0, v3

    if-nez v4, :cond_31

    goto :goto_3b

    .line 2441
    :cond_31
    const/16 v4, 0x2e

    aput-char v4, p0, v0

    .line 2442
    const/4 v4, 0x1

    aput-char v0, p0, v4

    .line 2443
    aput v0, p1, v0

    .line 2444
    return-void

    .line 2437
    :cond_3b
    :goto_3b
    return-void

    .line 2431
    .end local v3    # "p":I
    :cond_3c
    :goto_3c
    return-void
.end method

.method private static greylist-max-o needsNormalization(Ljava/lang/String;)I
    .registers 8
    .param p0, "path"    # Ljava/lang/String;

    .line 2203
    const/4 v0, 0x1

    .line 2204
    .local v0, "normal":Z
    const/4 v1, 0x0

    .line 2205
    .local v1, "ns":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 2206
    .local v2, "end":I
    const/4 v4, 0x0

    .line 2209
    .local v4, "p":I
    :goto_9
    const/16 v5, 0x2f

    if-gt v4, v2, :cond_17

    .line 2210
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_14

    goto :goto_17

    .line 2211
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2213
    :cond_17
    :goto_17
    if-le v4, v3, :cond_1a

    const/4 v0, 0x0

    .line 2216
    :cond_1a
    :goto_1a
    if-gt v4, v2, :cond_5f

    .line 2219
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_43

    if-eq v4, v2, :cond_42

    add-int/lit8 v3, v4, 0x1

    .line 2221
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_42

    add-int/lit8 v3, v4, 0x1

    .line 2222
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_43

    add-int/lit8 v3, v4, 0x1

    if-eq v3, v2, :cond_42

    add-int/lit8 v3, v4, 0x2

    .line 2224
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_43

    .line 2225
    :cond_42
    const/4 v0, 0x0

    .line 2227
    :cond_43
    add-int/lit8 v1, v1, 0x1

    .line 2230
    :goto_45
    if-gt v4, v2, :cond_1a

    .line 2231
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .local v3, "p":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_51

    .line 2232
    move v4, v3

    goto :goto_45

    .line 2231
    :cond_51
    move v4, v3

    .line 2235
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_52
    if-gt v4, v2, :cond_1a

    .line 2236
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_5b

    goto :goto_1a

    .line 2237
    :cond_5b
    const/4 v0, 0x0

    .line 2238
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 2245
    :cond_5f
    if-eqz v0, :cond_63

    const/4 v3, -0x1

    goto :goto_64

    :cond_63
    move v3, v1

    :goto_64
    return v3
.end method

.method private static greylist-max-o normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "ps"    # Ljava/lang/String;

    .line 2456
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .param p0, "ps"    # Ljava/lang/String;
    .param p1, "removeLeading"    # Z

    .line 2462
    invoke-static {p0}, Ljava/net/URI;->needsNormalization(Ljava/lang/String;)I

    move-result v0

    .line 2463
    .local v0, "ns":I
    if-gez v0, :cond_7

    .line 2465
    return-object p0

    .line 2467
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2470
    .local v1, "path":[C
    new-array v2, v0, [I

    .line 2471
    .local v2, "segs":[I
    invoke-static {v1, v2}, Ljava/net/URI;->split([C[I)V

    .line 2476
    invoke-static {v1, v2, p1}, Ljava/net/URI;->removeDots([C[IZ)V

    .line 2479
    invoke-static {v1, v2}, Ljava/net/URI;->maybeAddLeadingDot([C[I)V

    .line 2482
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/net/URI;->join([C[I)I

    move-result v5

    invoke-direct {v3, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 2483
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2485
    return-object p0

    .line 2487
    :cond_27
    return-object v3
.end method

.method private static greylist-max-o normalize(Ljava/net/URI;)Ljava/net/URI;
    .registers 4
    .param p0, "u"    # Ljava/net/URI;

    .line 2119
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_42

    .line 2122
    :cond_13
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2123
    .local v0, "np":Ljava/lang/String;
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-ne v0, v1, :cond_1e

    .line 2124
    return-object p0

    .line 2126
    :cond_1e
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    .line 2127
    .local v1, "v":Ljava/net/URI;
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2128
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2129
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2130
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2131
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2132
    iget v2, p0, Ljava/net/URI;->port:I

    iput v2, v1, Ljava/net/URI;->port:I

    .line 2133
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2134
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2135
    return-object v1

    .line 2120
    .end local v0    # "np":Ljava/lang/String;
    .end local v1    # "v":Ljava/net/URI;
    :cond_42
    :goto_42
    return-object p0
.end method

.method private static greylist-max-o normalizedHash(ILjava/lang/String;)I
    .registers 8
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .line 1749
    const/4 v0, 0x0

    .line 1750
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1751
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1752
    .local v2, "ch":C
    mul-int/lit8 v3, v0, 0x1f

    add-int/2addr v3, v2

    .line 1753
    .end local v0    # "h":I
    .local v3, "h":I
    const/16 v0, 0x25

    if-ne v2, v0, :cond_2c

    .line 1757
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_15
    add-int/lit8 v4, v1, 0x3

    if-ge v0, v4, :cond_28

    .line 1758
    mul-int/lit8 v4, v3, 0x1f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toUpper(C)I

    move-result v5

    add-int v3, v4, v5

    .line 1757
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1759
    .end local v0    # "i":I
    :cond_28
    add-int/lit8 v1, v1, 0x2

    move v0, v3

    goto :goto_2d

    .line 1753
    :cond_2c
    move v0, v3

    .line 1750
    .end local v2    # "ch":C
    .end local v3    # "h":I
    .local v0, "h":I
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1762
    .end local v1    # "index":I
    :cond_30
    mul-int/lit8 v1, p0, 0x7f

    add-int/2addr v1, v0

    return v1
.end method

.method private static greylist-max-o quote(Ljava/lang/String;JJ)Ljava/lang/String;
    .registers 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .line 2726
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2727
    .local v0, "n":I
    const/4 v1, 0x0

    .line 2728
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    move v2, v3

    .line 2729
    .local v2, "allowNonASCII":Z
    :goto_12
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6a

    .line 2730
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2731
    .local v5, "c":C
    const/16 v6, 0x80

    if-ge v5, v6, :cond_41

    .line 2732
    invoke-static {v5, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 2733
    if-nez v1, :cond_36

    .line 2734
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v6

    .line 2735
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2737
    :cond_36
    int-to-byte v6, v5

    invoke-static {v1, v6}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_67

    .line 2739
    :cond_3b
    if-eqz v1, :cond_67

    .line 2740
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_67

    .line 2742
    :cond_41
    if-eqz v2, :cond_62

    .line 2743
    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 2744
    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 2745
    :cond_4f
    if-nez v1, :cond_5e

    .line 2746
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v6

    .line 2747
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2749
    :cond_5e
    invoke-static {v1, v5}, Ljava/net/URI;->appendEncoded(Ljava/lang/StringBuffer;C)V

    goto :goto_67

    .line 2751
    :cond_62
    if-eqz v1, :cond_67

    .line 2752
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2729
    .end local v5    # "c":C
    :cond_67
    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2755
    .end local v4    # "i":I
    :cond_6a
    if-nez v1, :cond_6e

    move-object v3, p0

    goto :goto_72

    :cond_6e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_72
    return-object v3
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1655
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 1656
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1658
    :try_start_6
    new-instance v0, Ljava/net/URI$Parser;

    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V
    :try_end_11
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_11} :catch_13

    .line 1663
    nop

    .line 1664
    return-void

    .line 1659
    :catch_13
    move-exception v0

    .line 1660
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Invalid URI"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v1, "y":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1662
    throw v1
.end method

.method private static greylist-max-o relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .registers 7
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    .line 2146
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_68

    .line 2148
    :cond_d
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2149
    invoke-static {v0, v1}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_67

    .line 2152
    :cond_22
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2153
    .local v0, "bp":Ljava/lang/String;
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2154
    .local v1, "cp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 2162
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_48

    .line 2163
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2166
    :cond_48
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 2167
    return-object p1

    .line 2170
    :cond_4f
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2}, Ljava/net/URI;-><init>()V

    .line 2171
    .local v2, "v":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2172
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2173
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2174
    return-object v2

    .line 2150
    .end local v0    # "bp":Ljava/lang/String;
    .end local v1    # "cp":Ljava/lang/String;
    .end local v2    # "v":Ljava/net/URI;
    :cond_67
    :goto_67
    return-object p1

    .line 2147
    :cond_68
    :goto_68
    return-object p1
.end method

.method private static greylist-max-o removeDots([C[IZ)V
    .registers 13
    .param p0, "path"    # [C
    .param p1, "segs"    # [I
    .param p2, "removeLeading"    # Z

    .line 2354
    array-length v0, p1

    .line 2355
    .local v0, "ns":I
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2357
    .local v1, "end":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v0, :cond_6c

    .line 2358
    const/4 v4, 0x0

    .line 2362
    .local v4, "dots":I
    :cond_8
    aget v5, p1, v3

    .line 2363
    .local v5, "p":I
    aget-char v6, p0, v5

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_2e

    .line 2364
    if-ne v5, v1, :cond_14

    .line 2365
    const/4 v4, 0x1

    .line 2366
    goto :goto_33

    .line 2367
    :cond_14
    add-int/lit8 v6, v5, 0x1

    aget-char v6, p0, v6

    if-nez v6, :cond_1c

    .line 2368
    const/4 v4, 0x1

    .line 2369
    goto :goto_33

    .line 2370
    :cond_1c
    add-int/lit8 v6, v5, 0x1

    aget-char v6, p0, v6

    if-ne v6, v7, :cond_2e

    add-int/lit8 v6, v5, 0x1

    if-eq v6, v1, :cond_2c

    add-int/lit8 v6, v5, 0x2

    aget-char v6, p0, v6

    if-nez v6, :cond_2e

    .line 2373
    :cond_2c
    const/4 v4, 0x2

    .line 2374
    goto :goto_33

    .line 2377
    :cond_2e
    nop

    .end local v5    # "p":I
    add-int/lit8 v3, v3, 0x1

    .line 2378
    if-lt v3, v0, :cond_8

    .line 2379
    :goto_33
    if-gt v3, v0, :cond_6c

    if-nez v4, :cond_38

    .line 2380
    goto :goto_6c

    .line 2382
    :cond_38
    const/4 v5, -0x1

    if-ne v4, v2, :cond_3e

    .line 2384
    aput v5, p1, v3

    goto :goto_69

    .line 2389
    :cond_3e
    add-int/lit8 v6, v3, -0x1

    .local v6, "j":I
    :goto_40
    if-ltz v6, :cond_4a

    .line 2390
    aget v8, p1, v6

    if-eq v8, v5, :cond_47

    goto :goto_4a

    .line 2389
    :cond_47
    add-int/lit8 v6, v6, -0x1

    goto :goto_40

    .line 2392
    :cond_4a
    :goto_4a
    if-ltz v6, :cond_63

    .line 2393
    aget v8, p1, v6

    .line 2394
    .local v8, "q":I
    aget-char v9, p0, v8

    if-ne v9, v7, :cond_5e

    add-int/lit8 v9, v8, 0x1

    aget-char v9, p0, v9

    if-ne v9, v7, :cond_5e

    add-int/lit8 v7, v8, 0x2

    aget-char v7, p0, v7

    if-eqz v7, :cond_68

    .line 2397
    :cond_5e
    aput v5, p1, v3

    .line 2398
    aput v5, p1, v6

    goto :goto_68

    .line 2404
    .end local v8    # "q":I
    :cond_63
    if-eqz p2, :cond_68

    .line 2405
    aput v5, p1, v3

    goto :goto_69

    .line 2404
    :cond_68
    :goto_68
    nop

    .line 2357
    .end local v4    # "dots":I
    .end local v6    # "j":I
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2409
    .end local v3    # "i":I
    :cond_6c
    :goto_6c
    return-void
.end method

.method private static greylist-max-o resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .registers 6
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    .line 2038
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_e9

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_e9

    .line 2042
    :cond_e
    iget-object v0, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v0, :cond_5d

    iget-object v0, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v0, :cond_5d

    iget-object v0, p1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2043
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v0, :cond_5d

    .line 2045
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2046
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2047
    return-object p0

    .line 2049
    :cond_37
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 2050
    .local v0, "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2051
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2052
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2053
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2054
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2055
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2056
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2057
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2058
    return-object v0

    .line 2062
    .end local v0    # "ru":Ljava/net/URI;
    :cond_5d
    iget-object v0, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_62

    .line 2063
    return-object p1

    .line 2065
    :cond_62
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 2066
    .restart local v0    # "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2067
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2068
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2071
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_d0

    .line 2072
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2073
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2074
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2075
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2079
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_c0

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_94

    goto :goto_c0

    .line 2089
    :cond_94
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b1

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_b1

    .line 2097
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_e8

    .line 2100
    :cond_b1
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/net/URI;->resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_e8

    .line 2086
    :cond_c0
    :goto_c0
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2087
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_cb

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    goto :goto_cd

    :cond_cb
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    :goto_cd
    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    goto :goto_e8

    .line 2103
    :cond_d0
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2104
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2105
    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2106
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2107
    iget v1, p1, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2108
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2112
    :goto_e8
    return-object v0

    .line 2039
    .end local v0    # "ru":Ljava/net/URI;
    :cond_e9
    :goto_e9
    return-object p1
.end method

.method private static greylist-max-o resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "absolute"    # Z

    .line 2005
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2006
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2007
    .local v1, "cn":I
    const-string v2, ""

    .line 2009
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v1, :cond_18

    .line 2011
    if-ltz v0, :cond_34

    .line 2012
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    .line 2014
    :cond_18
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2016
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-ltz v0, :cond_2d

    .line 2017
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2019
    :cond_2d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2020
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2026
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_34
    :goto_34
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 2031
    .local v3, "np":Ljava/lang/String;
    return-object v3
.end method

.method private static greylist-max-o split([C[I)V
    .registers 9
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .line 2260
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 2261
    .local v0, "end":I
    const/4 v1, 0x0

    .line 2262
    .local v1, "p":I
    const/4 v2, 0x0

    .line 2265
    .local v2, "i":I
    :goto_5
    const/4 v3, 0x0

    const/16 v4, 0x2f

    if-gt v1, v0, :cond_14

    .line 2266
    aget-char v5, p0, v1

    if-eq v5, v4, :cond_f

    goto :goto_14

    .line 2267
    :cond_f
    aput-char v3, p0, v1

    .line 2268
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2271
    :cond_14
    :goto_14
    if-gt v1, v0, :cond_3d

    .line 2274
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "p":I
    .local v6, "p":I
    aput v1, p1, v2

    move v1, v6

    .line 2277
    .end local v6    # "p":I
    .restart local v1    # "p":I
    :goto_1d
    if-gt v1, v0, :cond_3b

    .line 2278
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "p":I
    .local v2, "p":I
    aget-char v1, p0, v1

    if-eq v1, v4, :cond_27

    .line 2279
    move v1, v2

    goto :goto_1d

    .line 2280
    :cond_27
    add-int/lit8 v1, v2, -0x1

    aput-char v3, p0, v1

    move v1, v2

    .line 2283
    .end local v2    # "p":I
    .restart local v1    # "p":I
    :goto_2c
    if-gt v1, v0, :cond_39

    .line 2284
    aget-char v2, p0, v1

    if-eq v2, v4, :cond_33

    goto :goto_39

    .line 2285
    :cond_33
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "p":I
    .restart local v2    # "p":I
    aput-char v3, p0, v1

    move v1, v2

    goto :goto_2c

    .line 2271
    .end local v2    # "p":I
    .restart local v1    # "p":I
    :cond_39
    :goto_39
    move v2, v5

    goto :goto_14

    .line 2277
    :cond_3b
    move v2, v5

    goto :goto_14

    .line 2291
    .end local v5    # "i":I
    .local v2, "i":I
    :cond_3d
    array-length v3, p1

    if-ne v2, v3, :cond_41

    .line 2293
    return-void

    .line 2292
    :cond_41
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method private static greylist-max-o toLower(C)I
    .registers 2
    .param p0, "c"    # C

    .line 1681
    const/16 v0, 0x41

    if-lt p0, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_b

    .line 1682
    add-int/lit8 v0, p0, 0x20

    return v0

    .line 1683
    :cond_b
    return p0
.end method

.method private greylist-max-o toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "fragment"    # Ljava/lang/String;

    .line 1932
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v0

    .line 1933
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_10

    .line 1934
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1935
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1937
    :cond_10
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1940
    move-object/from16 v0, p9

    invoke-direct {p0, v2, v0}, Ljava/net/URI;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static greylist-max-o toUpper(C)I
    .registers 2
    .param p0, "c"    # C

    .line 1688
    const/16 v0, 0x61

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_b

    .line 1689
    add-int/lit8 v0, p0, -0x20

    return v0

    .line 1690
    :cond_b
    return p0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1638
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1639
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1640
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 460
    check-cast p1, Ljava/net/URI;

    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/net/URI;)I
    .registers 5
    .param p1, "that"    # Ljava/net/URI;

    .line 1544
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "c":I
    if-eqz v0, :cond_c

    .line 1545
    return v1

    .line 1547
    :cond_c
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1548
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1550
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-eqz v0, :cond_24

    .line 1552
    return v1

    .line 1553
    :cond_24
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1555
    :cond_2d
    const/4 v0, 0x1

    return v0

    .line 1556
    :cond_2f
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1557
    const/4 v0, -0x1

    return v0

    .line 1561
    :cond_37
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v0, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v0, :cond_60

    .line 1563
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-eqz v0, :cond_4b

    .line 1564
    return v1

    .line 1565
    :cond_4b
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-eqz v0, :cond_57

    .line 1566
    return v1

    .line 1567
    :cond_57
    iget v0, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int/2addr v0, v2

    move v1, v0

    if-eqz v0, :cond_6c

    .line 1568
    return v1

    .line 1576
    :cond_60
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-eqz v0, :cond_6c

    return v1

    .line 1579
    :cond_6c
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-eqz v0, :cond_78

    return v1

    .line 1580
    :cond_78
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-eqz v0, :cond_84

    return v1

    .line 1581
    :cond_84
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "ob"    # Ljava/lang/Object;

    .line 1410
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1411
    return v0

    .line 1412
    :cond_4
    instance-of v1, p1, Ljava/net/URI;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1413
    return v2

    .line 1414
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/net/URI;

    .line 1415
    .local v1, "that":Ljava/net/URI;
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->isOpaque()Z

    move-result v4

    if-eq v3, v4, :cond_18

    return v2

    .line 1416
    :cond_18
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    return v2

    .line 1417
    :cond_23
    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v2

    .line 1420
    :cond_2e
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1421
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, v1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1424
    :cond_3d
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    return v2

    .line 1425
    :cond_48
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    return v2

    .line 1428
    :cond_53
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-ne v3, v4, :cond_5a

    return v0

    .line 1429
    :cond_5a
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_7b

    .line 1431
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    return v2

    .line 1432
    :cond_69
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_74

    return v2

    .line 1433
    :cond_74
    iget v3, p0, Ljava/net/URI;->port:I

    iget v4, v1, Ljava/net/URI;->port:I

    if-eq v3, v4, :cond_91

    return v2

    .line 1434
    :cond_7b
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_8a

    .line 1436
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_91

    return v2

    .line 1437
    :cond_8a
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eq v3, v4, :cond_91

    .line 1438
    return v2

    .line 1441
    :cond_91
    return v0
.end method

.method public whitelist test-api getAuthority()Ljava/lang/String;
    .registers 2

    .line 1192
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1193
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 1194
    :cond_c
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getFragment()Ljava/lang/String;
    .registers 2

    .line 1364
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1365
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 1366
    :cond_10
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getHost()Ljava/lang/String;
    .registers 2

    .line 1264
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPath()Ljava/lang/String;
    .registers 2

    .line 1306
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1307
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 1308
    :cond_10
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPort()I
    .registers 2

    .line 1277
    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public whitelist test-api getQuery()Ljava/lang/String;
    .registers 2

    .line 1335
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1336
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 1337
    :cond_10
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRawAuthority()Ljava/lang/String;
    .registers 2

    .line 1178
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRawFragment()Ljava/lang/String;
    .registers 2

    .line 1350
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRawPath()Ljava/lang/String;
    .registers 2

    .line 1292
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRawQuery()Ljava/lang/String;
    .registers 2

    .line 1321
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRawSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .line 1143
    invoke-direct {p0}, Ljava/net/URI;->defineSchemeSpecificPart()V

    .line 1144
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getRawUserInfo()Ljava/lang/String;
    .registers 2

    .line 1208
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getScheme()Ljava/lang/String;
    .registers 2

    .line 1104
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .line 1159
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1160
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 1161
    :cond_e
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getUserInfo()Ljava/lang/String;
    .registers 2

    .line 1222
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1223
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 1224
    :cond_10
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1452
    iget v0, p0, Ljava/net/URI;->hash:I

    if-eqz v0, :cond_7

    .line 1453
    iget v0, p0, Ljava/net/URI;->hash:I

    return v0

    .line 1454
    :cond_7
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    .line 1455
    .local v0, "h":I
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1456
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1457
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    goto :goto_49

    .line 1459
    :cond_21
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1460
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1461
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 1462
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1463
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    .line 1464
    iget v1, p0, Ljava/net/URI;->port:I

    mul-int/lit16 v1, v1, 0x79d

    add-int/2addr v0, v1

    goto :goto_49

    .line 1466
    :cond_43
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1469
    :goto_49
    iput v0, p0, Ljava/net/URI;->hash:I

    .line 1470
    return v0
.end method

.method public whitelist test-api isAbsolute()Z
    .registers 2

    .line 1115
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api isOpaque()Z
    .registers 2

    .line 1129
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api normalize()Ljava/net/URI;
    .registers 2

    .line 953
    invoke-static {p0}, Ljava/net/URI;->normalize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parseServerAuthority()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 908
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v0, :cond_18

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_18

    .line 910
    :cond_9
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 911
    new-instance v0, Ljava/net/URI$Parser;

    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 912
    return-object p0

    .line 909
    :cond_18
    :goto_18
    return-object p0
.end method

.method public whitelist test-api relativize(Ljava/net/URI;)Ljava/net/URI;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .line 1062
    invoke-static {p0, p1}, Ljava/net/URI;->relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api resolve(Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1032
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api resolve(Ljava/net/URI;)Ljava/net/URI;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .line 1011
    invoke-static {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toASCIIString()Ljava/lang/String;
    .registers 2

    .line 1617
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1618
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1599
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1600
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toURL()Ljava/net/URL;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1083
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1085
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1084
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
