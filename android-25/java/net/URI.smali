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
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DASH:J

.field private static final H_DIGIT:J = 0x0L

.field private static final H_DOT:J

.field private static final H_ESCAPED:J = 0x0L

.field private static final H_HEX:J

.field private static final H_LEFT_BRACKET:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_REG_NAME:J

.field private static final H_RESERVED:J

.field private static final H_SCHEME:J

.field private static final H_SERVER:J

.field private static final H_SERVER_PERCENT:J

.field private static final H_UNDERSCORE:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final H_URIC:J

.field private static final H_URIC_NO_SLASH:J

.field private static final H_USERINFO:J

.field private static final L_ALPHA:J = 0x0L

.field private static final L_ALPHANUM:J

.field private static final L_DASH:J

.field private static final L_DIGIT:J

.field private static final L_DOT:J

.field private static final L_ESCAPED:J = 0x1L

.field private static final L_HEX:J

.field private static final L_LEFT_BRACKET:J

.field private static final L_LOWALPHA:J = 0x0L

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_REG_NAME:J

.field private static final L_RESERVED:J

.field private static final L_SCHEME:J

.field private static final L_SERVER:J

.field private static final L_SERVER_PERCENT:J

.field private static final L_UNDERSCORE:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J = 0x0L

.field private static final L_URIC:J

.field private static final L_URIC_NO_SLASH:J

.field private static final L_USERINFO:J

.field private static final hexDigits:[C

.field static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient authority:Ljava/lang/String;

.field private volatile transient decodedAuthority:Ljava/lang/String;

.field private volatile transient decodedFragment:Ljava/lang/String;

.field private volatile transient decodedPath:Ljava/lang/String;

.field private volatile transient decodedQuery:Ljava/lang/String;

.field private volatile transient decodedSchemeSpecificPart:Ljava/lang/String;

.field private volatile transient decodedUserInfo:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private volatile transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private volatile transient schemeSpecificPart:Ljava/lang/String;

.field private volatile string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static synthetic -get0()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    #@2
    return-wide v0
.end method

.method static synthetic -get10()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    #@2
    return-wide v0
.end method

.method static synthetic -get11()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_URIC:J

    #@2
    return-wide v0
.end method

.method static synthetic -get12()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    #@2
    return-wide v0
.end method

.method static synthetic -get13()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    #@2
    return-wide v0
.end method

.method static synthetic -get14()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_DASH:J

    #@2
    return-wide v0
.end method

.method static synthetic -get15()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    #@2
    return-wide v0
.end method

.method static synthetic -get16()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_DOT:J

    #@2
    return-wide v0
.end method

.method static synthetic -get17()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_HEX:J

    #@2
    return-wide v0
.end method

.method static synthetic -get18()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_PATH:J

    #@2
    return-wide v0
.end method

.method static synthetic -get19()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_REG_NAME:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_DASH:J

    #@2
    return-wide v0
.end method

.method static synthetic -get20()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_SCHEME:J

    #@2
    return-wide v0
.end method

.method static synthetic -get21()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    #@2
    return-wide v0
.end method

.method static synthetic -get22()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    #@2
    return-wide v0
.end method

.method static synthetic -get23()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    #@2
    return-wide v0
.end method

.method static synthetic -get24()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_URIC:J

    #@2
    return-wide v0
.end method

.method static synthetic -get25()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_DOT:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_HEX:J

    #@2
    return-wide v0
.end method

.method static synthetic -get5()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_PATH:J

    #@2
    return-wide v0
.end method

.method static synthetic -get6()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_REG_NAME:J

    #@2
    return-wide v0
.end method

.method static synthetic -get7()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_SCHEME:J

    #@2
    return-wide v0
.end method

.method static synthetic -get8()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    #@2
    return-wide v0
.end method

.method static synthetic -get9()J
    .locals 2

    #@0
    sget-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Ljava/net/URI;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/net/URI;->port:I

    #@2
    return p1
.end method

.method static synthetic -set5(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set8(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(CJJ)Z
    .locals 1
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x61

    #@2
    const/16 v8, 0x41

    #@4
    const-wide/16 v6, 0x1

    #@6
    const-wide/16 v4, 0x0

    #@8
    const-class v0, Ljava/net/URI;

    #@a
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    :goto_0
    sput-boolean v0, Ljava/net/URI;->-assertionsDisabled:Z

    #@13
    .line 2532
    const/16 v0, 0x30

    #@15
    const/16 v1, 0x39

    #@17
    invoke-static {v0, v1}, Ljava/net/URI;->lowMask(CC)J

    #@1a
    move-result-wide v0

    #@1b
    sput-wide v0, Ljava/net/URI;->L_DIGIT:J

    #@1d
    .line 2539
    const/16 v0, 0x5a

    #@1f
    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    #@22
    move-result-wide v0

    #@23
    sput-wide v0, Ljava/net/URI;->H_UPALPHA:J

    #@25
    .line 2545
    const/16 v0, 0x7a

    #@27
    invoke-static {v9, v0}, Ljava/net/URI;->highMask(CC)J

    #@2a
    move-result-wide v0

    #@2b
    sput-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    #@2d
    .line 2549
    sget-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    #@2f
    sget-wide v2, Ljava/net/URI;->H_UPALPHA:J

    #@31
    or-long/2addr v0, v2

    #@32
    sput-wide v0, Ljava/net/URI;->H_ALPHA:J

    #@34
    .line 2552
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    #@36
    or-long/2addr v0, v4

    #@37
    sput-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    #@39
    .line 2553
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    #@3b
    or-long/2addr v0, v4

    #@3c
    sput-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    #@3e
    .line 2557
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    #@40
    sput-wide v0, Ljava/net/URI;->L_HEX:J

    #@42
    .line 2558
    const/16 v0, 0x46

    #@44
    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    #@47
    move-result-wide v0

    #@48
    const/16 v2, 0x66

    #@4a
    invoke-static {v9, v2}, Ljava/net/URI;->highMask(CC)J

    #@4d
    move-result-wide v2

    #@4e
    or-long/2addr v0, v2

    #@4f
    sput-wide v0, Ljava/net/URI;->H_HEX:J

    #@51
    .line 2562
    const-string/jumbo v0, "-_.!~*\'()"

    #@54
    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@57
    move-result-wide v0

    #@58
    sput-wide v0, Ljava/net/URI;->L_MARK:J

    #@5a
    .line 2563
    const-string/jumbo v0, "-_.!~*\'()"

    #@5d
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@60
    move-result-wide v0

    #@61
    sput-wide v0, Ljava/net/URI;->H_MARK:J

    #@63
    .line 2566
    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    #@65
    sget-wide v2, Ljava/net/URI;->L_MARK:J

    #@67
    or-long/2addr v0, v2

    #@68
    sput-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    #@6a
    .line 2567
    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    #@6c
    sget-wide v2, Ljava/net/URI;->H_MARK:J

    #@6e
    or-long/2addr v0, v2

    #@6f
    sput-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    #@71
    .line 2572
    const-string/jumbo v0, ";/?:@&=+$,[]"

    #@74
    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@77
    move-result-wide v0

    #@78
    sput-wide v0, Ljava/net/URI;->L_RESERVED:J

    #@7a
    .line 2573
    const-string/jumbo v0, ";/?:@&=+$,[]"

    #@7d
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@80
    move-result-wide v0

    #@81
    sput-wide v0, Ljava/net/URI;->H_RESERVED:J

    #@83
    .line 2581
    sget-wide v0, Ljava/net/URI;->L_RESERVED:J

    #@85
    sget-wide v2, Ljava/net/URI;->L_UNRESERVED:J

    #@87
    or-long/2addr v0, v2

    #@88
    or-long/2addr v0, v6

    #@89
    sput-wide v0, Ljava/net/URI;->L_URIC:J

    #@8b
    .line 2582
    sget-wide v0, Ljava/net/URI;->H_RESERVED:J

    #@8d
    sget-wide v2, Ljava/net/URI;->H_UNRESERVED:J

    #@8f
    or-long/2addr v0, v2

    #@90
    or-long/2addr v0, v4

    #@91
    sput-wide v0, Ljava/net/URI;->H_URIC:J

    #@93
    .line 2587
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    #@95
    or-long/2addr v0, v6

    #@96
    const-string/jumbo v2, ":@&=+$,"

    #@99
    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@9c
    move-result-wide v2

    #@9d
    or-long/2addr v0, v2

    #@9e
    .line 2586
    sput-wide v0, Ljava/net/URI;->L_PCHAR:J

    #@a0
    .line 2589
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    #@a2
    or-long/2addr v0, v4

    #@a3
    const-string/jumbo v2, ":@&=+$,"

    #@a6
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@a9
    move-result-wide v2

    #@aa
    or-long/2addr v0, v2

    #@ab
    .line 2588
    sput-wide v0, Ljava/net/URI;->H_PCHAR:J

    #@ad
    .line 2592
    sget-wide v0, Ljava/net/URI;->L_PCHAR:J

    #@af
    const-string/jumbo v2, ";/"

    #@b2
    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@b5
    move-result-wide v2

    #@b6
    or-long/2addr v0, v2

    #@b7
    sput-wide v0, Ljava/net/URI;->L_PATH:J

    #@b9
    .line 2593
    sget-wide v0, Ljava/net/URI;->H_PCHAR:J

    #@bb
    const-string/jumbo v2, ";/"

    #@be
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@c1
    move-result-wide v2

    #@c2
    or-long/2addr v0, v2

    #@c3
    sput-wide v0, Ljava/net/URI;->H_PATH:J

    #@c5
    .line 2596
    const-string/jumbo v0, "-"

    #@c8
    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@cb
    move-result-wide v0

    #@cc
    sput-wide v0, Ljava/net/URI;->L_DASH:J

    #@ce
    .line 2597
    const-string/jumbo v0, "-"

    #@d1
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@d4
    move-result-wide v0

    #@d5
    sput-wide v0, Ljava/net/URI;->H_DASH:J

    #@d7
    .line 2600
    const-string/jumbo v0, "_"

    #@da
    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@dd
    move-result-wide v0

    #@de
    sput-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    #@e0
    .line 2601
    const-string/jumbo v0, "_"

    #@e3
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@e6
    move-result-wide v0

    #@e7
    sput-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    #@e9
    .line 2604
    const-string/jumbo v0, "."

    #@ec
    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@ef
    move-result-wide v0

    #@f0
    sput-wide v0, Ljava/net/URI;->L_DOT:J

    #@f2
    .line 2605
    const-string/jumbo v0, "."

    #@f5
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@f8
    move-result-wide v0

    #@f9
    sput-wide v0, Ljava/net/URI;->H_DOT:J

    #@fb
    .line 2610
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    #@fd
    or-long/2addr v0, v6

    #@fe
    const-string/jumbo v2, ";:&=+$,"

    #@101
    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@104
    move-result-wide v2

    #@105
    or-long/2addr v0, v2

    #@106
    .line 2609
    sput-wide v0, Ljava/net/URI;->L_USERINFO:J

    #@108
    .line 2612
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    #@10a
    or-long/2addr v0, v4

    #@10b
    const-string/jumbo v2, ";:&=+$,"

    #@10e
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@111
    move-result-wide v2

    #@112
    or-long/2addr v0, v2

    #@113
    .line 2611
    sput-wide v0, Ljava/net/URI;->H_USERINFO:J

    #@115
    .line 2617
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    #@117
    or-long/2addr v0, v6

    #@118
    const-string/jumbo v2, "$,;:@&=+"

    #@11b
    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@11e
    move-result-wide v2

    #@11f
    or-long/2addr v0, v2

    #@120
    .line 2616
    sput-wide v0, Ljava/net/URI;->L_REG_NAME:J

    #@122
    .line 2619
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    #@124
    or-long/2addr v0, v4

    #@125
    const-string/jumbo v2, "$,;:@&=+"

    #@128
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@12b
    move-result-wide v2

    #@12c
    or-long/2addr v0, v2

    #@12d
    .line 2618
    sput-wide v0, Ljava/net/URI;->H_REG_NAME:J

    #@12f
    .line 2623
    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    #@131
    sget-wide v2, Ljava/net/URI;->L_ALPHANUM:J

    #@133
    or-long/2addr v0, v2

    #@134
    sget-wide v2, Ljava/net/URI;->L_DASH:J

    #@136
    or-long/2addr v0, v2

    #@137
    const-string/jumbo v2, ".:@[]"

    #@13a
    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@13d
    move-result-wide v2

    #@13e
    or-long/2addr v0, v2

    #@13f
    .line 2622
    sput-wide v0, Ljava/net/URI;->L_SERVER:J

    #@141
    .line 2625
    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    #@143
    sget-wide v2, Ljava/net/URI;->H_ALPHANUM:J

    #@145
    or-long/2addr v0, v2

    #@146
    sget-wide v2, Ljava/net/URI;->H_DASH:J

    #@148
    or-long/2addr v0, v2

    #@149
    const-string/jumbo v2, ".:@[]"

    #@14c
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@14f
    move-result-wide v2

    #@150
    or-long/2addr v0, v2

    #@151
    .line 2624
    sput-wide v0, Ljava/net/URI;->H_SERVER:J

    #@153
    .line 2630
    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    #@155
    const-string/jumbo v2, "%"

    #@158
    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@15b
    move-result-wide v2

    #@15c
    or-long/2addr v0, v2

    #@15d
    .line 2629
    sput-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    #@15f
    .line 2632
    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    #@161
    const-string/jumbo v2, "%"

    #@164
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@167
    move-result-wide v2

    #@168
    or-long/2addr v0, v2

    #@169
    .line 2631
    sput-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    #@16b
    .line 2633
    const-string/jumbo v0, "["

    #@16e
    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@171
    move-result-wide v0

    #@172
    sput-wide v0, Ljava/net/URI;->L_LEFT_BRACKET:J

    #@174
    .line 2634
    const-string/jumbo v0, "["

    #@177
    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@17a
    move-result-wide v0

    #@17b
    sput-wide v0, Ljava/net/URI;->H_LEFT_BRACKET:J

    #@17d
    .line 2637
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    #@17f
    or-long/2addr v0, v4

    #@180
    const-string/jumbo v2, "+-."

    #@183
    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@186
    move-result-wide v2

    #@187
    or-long/2addr v0, v2

    #@188
    sput-wide v0, Ljava/net/URI;->L_SCHEME:J

    #@18a
    .line 2638
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    #@18c
    or-long/2addr v0, v4

    #@18d
    const-string/jumbo v2, "+-."

    #@190
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@193
    move-result-wide v2

    #@194
    or-long/2addr v0, v2

    #@195
    sput-wide v0, Ljava/net/URI;->H_SCHEME:J

    #@197
    .line 2643
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    #@199
    or-long/2addr v0, v6

    #@19a
    const-string/jumbo v2, ";?:@&=+$,"

    #@19d
    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    #@1a0
    move-result-wide v2

    #@1a1
    or-long/2addr v0, v2

    #@1a2
    .line 2642
    sput-wide v0, Ljava/net/URI;->L_URIC_NO_SLASH:J

    #@1a4
    .line 2645
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    #@1a6
    or-long/2addr v0, v4

    #@1a7
    const-string/jumbo v2, ";?:@&=+$,"

    #@1aa
    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    #@1ad
    move-result-wide v2

    #@1ae
    or-long/2addr v0, v2

    #@1af
    .line 2644
    sput-wide v0, Ljava/net/URI;->H_URIC_NO_SLASH:J

    #@1b1
    .line 2650
    const/16 v0, 0x10

    #@1b3
    new-array v0, v0, [C

    #@1b5
    fill-array-data v0, :array_0

    #@1b8
    sput-object v0, Ljava/net/URI;->hexDigits:[C

    #@1ba
    .line 466
    return-void

    #@1bb
    :cond_0
    const/4 v0, 0x1

    #@1bc
    goto/16 :goto_0

    #@1be
    .line 2650
    :array_0
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

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 488
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/net/URI;->port:I

    #@7
    .line 499
    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    #@9
    .line 500
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    #@b
    .line 501
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    #@d
    .line 502
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    #@f
    .line 503
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    #@11
    .line 504
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    #@13
    .line 517
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 488
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/net/URI;->port:I

    #@7
    .line 499
    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    #@9
    .line 500
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    #@b
    .line 501
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    #@d
    .line 502
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    #@f
    .line 503
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    #@11
    .line 504
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    #@13
    .line 589
    new-instance v0, Ljava/net/URI$Parser;

    #@15
    invoke-direct {v0, p0, p1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    #@1c
    .line 588
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "ssp"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 488
    iput v6, p0, Ljava/net/URI;->port:I

    #@7
    .line 499
    iput-object v3, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    #@9
    .line 500
    iput-object v3, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    #@b
    .line 501
    iput-object v3, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    #@d
    .line 502
    iput-object v3, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    #@f
    .line 503
    iput-object v3, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    #@11
    .line 504
    iput-object v3, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    #@13
    .line 818
    new-instance v10, Ljava/net/URI$Parser;

    #@15
    move-object v0, p0

    #@16
    move-object v1, p1

    #@17
    move-object v2, p2

    #@18
    move-object v4, v3

    #@19
    move-object v5, v3

    #@1a
    move-object v7, v3

    #@1b
    move-object v8, v3

    #@1c
    move-object v9, p3

    #@1d
    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {v10, p0, v0}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    #@24
    .line 821
    const/4 v0, 0x0

    #@25
    .line 818
    invoke-virtual {v10, v0}, Ljava/net/URI$Parser;->parse(Z)V

    #@28
    .line 816
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
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

    #@0
    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 488
    const/4 v1, -0x1

    #@4
    iput v1, p0, Ljava/net/URI;->port:I

    #@6
    .line 499
    const/4 v1, 0x0

    #@7
    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    #@9
    .line 500
    const/4 v1, 0x0

    #@a
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    #@c
    .line 501
    const/4 v1, 0x0

    #@d
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    #@f
    .line 502
    const/4 v1, 0x0

    #@10
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    #@12
    .line 503
    const/4 v1, 0x0

    #@13
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    #@15
    .line 504
    const/4 v1, 0x0

    #@16
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    #@18
    .line 670
    const/4 v3, 0x0

    #@19
    .line 671
    const/4 v4, 0x0

    #@1a
    move-object v1, p0

    #@1b
    move-object v2, p1

    #@1c
    move-object v5, p2

    #@1d
    move-object v6, p3

    #@1e
    move/from16 v7, p4

    #@20
    move-object/from16 v8, p5

    #@22
    move-object/from16 v9, p6

    #@24
    move-object/from16 v10, p7

    #@26
    .line 670
    invoke-direct/range {v1 .. v10}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v11

    #@2a
    .line 673
    .local v11, "s":Ljava/lang/String;
    move-object/from16 v0, p5

    #@2c
    invoke-static {v11, p1, v0}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 674
    new-instance v1, Ljava/net/URI$Parser;

    #@31
    invoke-direct {v1, p0, v11}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    #@34
    const/4 v2, 0x1

    #@35
    invoke-virtual {v1, v2}, Ljava/net/URI$Parser;->parse(Z)V

    #@38
    .line 668
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 775
    const/4 v4, -0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v3, p2

    #@5
    move-object v5, p3

    #@6
    move-object v6, v2

    #@7
    move-object v7, p4

    #@8
    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 773
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
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

    #@0
    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 488
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/net/URI;->port:I

    #@6
    .line 499
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    #@9
    .line 500
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    #@c
    .line 501
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    #@f
    .line 502
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    #@12
    .line 503
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    #@15
    .line 504
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    #@18
    .line 743
    const/4 v2, 0x0

    #@19
    .line 744
    const/4 v4, 0x0

    #@1a
    const/4 v5, 0x0

    #@1b
    const/4 v6, -0x1

    #@1c
    move-object v0, p0

    #@1d
    move-object v1, p1

    #@1e
    move-object v3, p2

    #@1f
    move-object v7, p3

    #@20
    move-object v8, p4

    #@21
    move-object/from16 v9, p5

    #@23
    .line 743
    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v10

    #@27
    .line 746
    .local v10, "s":Ljava/lang/String;
    invoke-static {v10, p1, p3}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 747
    new-instance v0, Ljava/net/URI$Parser;

    #@2c
    invoke-direct {v0, p0, v10}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    #@2f
    const/4 v1, 0x0

    #@30
    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    #@33
    .line 741
    return-void
.end method

.method private appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    #@0
    .prologue
    .line 1809
    if-eqz p4, :cond_7

    #@2
    .line 1810
    const-string/jumbo v4, "//"

    #@5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8
    .line 1811
    if-eqz p3, :cond_0

    #@a
    .line 1812
    sget-wide v4, Ljava/net/URI;->L_USERINFO:J

    #@c
    sget-wide v6, Ljava/net/URI;->H_USERINFO:J

    #@e
    invoke-static {p3, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 1813
    const/16 v4, 0x40

    #@17
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1a
    .line 1815
    :cond_0
    const/16 v4, 0x3a

    #@1c
    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v4

    #@20
    if-ltz v4, :cond_1

    #@22
    .line 1816
    const-string/jumbo v4, "["

    #@25
    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_5

    #@2b
    .line 1815
    :cond_1
    const/4 v3, 0x0

    #@2c
    .line 1818
    .local v3, "needBrackets":Z
    :goto_0
    if-eqz v3, :cond_2

    #@2e
    const/16 v4, 0x5b

    #@30
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    .line 1819
    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 1820
    if-eqz v3, :cond_3

    #@38
    const/16 v4, 0x5d

    #@3a
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3d
    .line 1821
    :cond_3
    const/4 v4, -0x1

    #@3e
    if-eq p5, v4, :cond_4

    #@40
    .line 1822
    const/16 v4, 0x3a

    #@42
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@45
    .line 1823
    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@48
    .line 1807
    .end local v3    # "needBrackets":Z
    :cond_4
    :goto_1
    return-void

    #@49
    .line 1817
    :cond_5
    const-string/jumbo v4, "]"

    #@4c
    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_6

    #@52
    const/4 v4, 0x0

    #@53
    :goto_2
    move v3, v4

    #@54
    goto :goto_0

    #@55
    :cond_6
    const/4 v4, 0x1

    #@56
    goto :goto_2

    #@57
    .line 1825
    :cond_7
    if-eqz p2, :cond_4

    #@59
    .line 1826
    const-string/jumbo v4, "//"

    #@5c
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 1827
    const-string/jumbo v4, "["

    #@62
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_a

    #@68
    .line 1829
    const-string/jumbo v4, "]"

    #@6b
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6e
    move-result v2

    #@6f
    .line 1830
    .local v2, "end":I
    move-object v1, p2

    #@70
    .local v1, "doquote":Ljava/lang/String;
    const-string/jumbo v0, ""

    #@73
    .line 1831
    .local v0, "dontquote":Ljava/lang/String;
    const/4 v4, -0x1

    #@74
    if-eq v2, v4, :cond_8

    #@76
    const-string/jumbo v4, ":"

    #@79
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7c
    move-result v4

    #@7d
    const/4 v5, -0x1

    #@7e
    if-eq v4, v5, :cond_8

    #@80
    .line 1833
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@83
    move-result v4

    #@84
    if-ne v2, v4, :cond_9

    #@86
    .line 1834
    move-object v0, p2

    #@87
    .line 1835
    const-string/jumbo v1, ""

    #@8a
    .line 1841
    :cond_8
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8d
    .line 1843
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    #@8f
    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    #@91
    or-long/2addr v4, v6

    #@92
    .line 1844
    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    #@94
    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    #@96
    or-long/2addr v6, v8

    #@97
    .line 1842
    invoke-static {v1, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9e
    goto :goto_1

    #@9f
    .line 1837
    :cond_9
    add-int/lit8 v4, v2, 0x1

    #@a1
    const/4 v5, 0x0

    #@a2
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a5
    move-result-object v0

    #@a6
    .line 1838
    add-int/lit8 v4, v2, 0x1

    #@a8
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ab
    move-result-object v1

    #@ac
    goto :goto_3

    #@ad
    .line 1847
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_a
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    #@af
    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    #@b1
    or-long/2addr v4, v6

    #@b2
    .line 1848
    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    #@b4
    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    #@b6
    or-long/2addr v6, v8

    #@b7
    .line 1846
    invoke-static {p2, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@ba
    move-result-object v4

    #@bb
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@be
    goto :goto_1
.end method

.method private static appendEncoded(Ljava/lang/StringBuffer;C)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # C

    #@0
    .prologue
    .line 2662
    const/4 v1, 0x0

    #@1
    .line 2664
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    #@4
    invoke-static {v3}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    #@7
    move-result-object v3

    #@8
    .line 2665
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, ""

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@1f
    move-result-object v4

    #@20
    .line 2664
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v1

    #@24
    .line 2669
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 2670
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@2d
    move-result v3

    #@2e
    and-int/lit16 v0, v3, 0xff

    #@30
    .line 2671
    .local v0, "b":I
    const/16 v3, 0x80

    #@32
    if-lt v0, v3, :cond_1

    #@34
    .line 2672
    int-to-byte v3, v0

    #@35
    invoke-static {p0, v3}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    #@38
    goto :goto_0

    #@39
    .line 2666
    .end local v0    # "b":I
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    #@3a
    .line 2667
    .local v2, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v3, Ljava/net/URI;->-assertionsDisabled:Z

    #@3c
    if-nez v3, :cond_0

    #@3e
    new-instance v3, Ljava/lang/AssertionError;

    #@40
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@43
    throw v3

    #@44
    .line 2674
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "b":I
    :cond_1
    int-to-char v3, v0

    #@45
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@48
    goto :goto_0

    #@49
    .line 2661
    .end local v0    # "b":I
    :cond_2
    return-void
.end method

.method private static appendEscape(Ljava/lang/StringBuffer;B)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    #@0
    .prologue
    .line 2656
    const/16 v0, 0x25

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5
    .line 2657
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    #@7
    shr-int/lit8 v1, p1, 0x4

    #@9
    and-int/lit8 v1, v1, 0xf

    #@b
    aget-char v0, v0, v1

    #@d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@10
    .line 2658
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    #@12
    shr-int/lit8 v1, p1, 0x0

    #@14
    and-int/lit8 v1, v1, 0xf

    #@16
    aget-char v0, v0, v1

    #@18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b
    .line 2655
    return-void
.end method

.method private appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1895
    if-eqz p2, :cond_0

    #@2
    .line 1896
    const/16 v0, 0x23

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7
    .line 1897
    sget-wide v0, Ljava/net/URI;->L_URIC:J

    #@9
    sget-wide v2, Ljava/net/URI;->H_URIC:J

    #@b
    invoke-static {p2, v0, v1, v2, v3}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 1894
    :cond_0
    return-void
.end method

.method private appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1862
    if-eqz p2, :cond_3

    #@2
    .line 1866
    const-string/jumbo v2, "//["

    #@5
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 1867
    const-string/jumbo v2, "]"

    #@e
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11
    move-result v10

    #@12
    .line 1868
    .local v10, "end":I
    const/4 v2, -0x1

    #@13
    if-eq v10, v2, :cond_0

    #@15
    const-string/jumbo v2, ":"

    #@18
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1b
    move-result v2

    #@1c
    const/4 v3, -0x1

    #@1d
    if-eq v2, v3, :cond_0

    #@1f
    .line 1870
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@22
    move-result v2

    #@23
    if-ne v10, v2, :cond_1

    #@25
    .line 1871
    move-object v8, p2

    #@26
    .line 1872
    .local v8, "dontquote":Ljava/lang/String;
    const-string/jumbo v9, ""

    #@29
    .line 1877
    .local v9, "doquote":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 1878
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    #@2e
    sget-wide v4, Ljava/net/URI;->H_URIC:J

    #@30
    invoke-static {v9, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 1860
    .end local v8    # "dontquote":Ljava/lang/String;
    .end local v9    # "doquote":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_0
    :goto_1
    return-void

    #@38
    .line 1874
    .restart local v10    # "end":I
    :cond_1
    add-int/lit8 v2, v10, 0x1

    #@3a
    const/4 v3, 0x0

    #@3b
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    .line 1875
    .restart local v8    # "dontquote":Ljava/lang/String;
    add-int/lit8 v2, v10, 0x1

    #@41
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@44
    move-result-object v9

    #@45
    .restart local v9    # "doquote":Ljava/lang/String;
    goto :goto_0

    #@46
    .line 1881
    .end local v8    # "dontquote":Ljava/lang/String;
    .end local v9    # "doquote":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_2
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    #@48
    sget-wide v4, Ljava/net/URI;->H_URIC:J

    #@4a
    invoke-static {p2, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    goto :goto_1

    #@52
    :cond_3
    move-object v2, p0

    #@53
    move-object v3, p1

    #@54
    move-object v4, p3

    #@55
    move-object v5, p4

    #@56
    move-object/from16 v6, p5

    #@58
    move/from16 v7, p6

    #@5a
    .line 1884
    invoke-direct/range {v2 .. v7}, Ljava/net/URI;->appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@5d
    .line 1885
    if-eqz p7, :cond_4

    #@5f
    .line 1886
    sget-wide v2, Ljava/net/URI;->L_PATH:J

    #@61
    sget-wide v4, Ljava/net/URI;->H_PATH:J

    #@63
    move-object/from16 v0, p7

    #@65
    invoke-static {v0, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6c
    .line 1887
    :cond_4
    if-eqz p8, :cond_0

    #@6e
    .line 1888
    const/16 v2, 0x3f

    #@70
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@73
    .line 1889
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    #@75
    sget-wide v4, Ljava/net/URI;->H_URIC:J

    #@77
    move-object/from16 v0, p8

    #@79
    invoke-static {v0, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@80
    goto :goto_1
.end method

.method private static checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1795
    if-eqz p1, :cond_0

    #@3
    .line 1796
    if-eqz p2, :cond_0

    #@5
    .line 1797
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-lez v0, :cond_0

    #@b
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    const/16 v1, 0x2f

    #@11
    if-eq v0, v1, :cond_0

    #@13
    .line 1798
    new-instance v0, Ljava/net/URISyntaxException;

    #@15
    .line 1799
    const-string/jumbo v1, "Relative path in absolute URI"

    #@18
    .line 1798
    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1793
    :cond_0
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1755
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 1756
    :cond_0
    if-eqz p0, :cond_2

    #@6
    .line 1757
    if-eqz p1, :cond_1

    #@8
    .line 1758
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 1760
    :cond_1
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 1762
    :cond_2
    const/4 v0, -0x1

    #@10
    return v0
.end method

.method private static compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1768
    if-ne p0, p1, :cond_0

    #@3
    return v5

    #@4
    .line 1769
    :cond_0
    if-eqz p0, :cond_5

    #@6
    .line 1770
    if-eqz p1, :cond_4

    #@8
    .line 1771
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v3

    #@c
    .line 1772
    .local v3, "sn":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    .line 1773
    .local v4, "tn":I
    if-ge v3, v4, :cond_1

    #@12
    move v2, v3

    #@13
    .line 1774
    .local v2, "n":I
    :goto_0
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@16
    .line 1775
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v5

    #@1a
    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    #@1d
    move-result v5

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v6

    #@22
    invoke-static {v6}, Ljava/net/URI;->toLower(C)I

    #@25
    move-result v6

    #@26
    sub-int v0, v5, v6

    #@28
    .line 1776
    .local v0, "c":I
    if-eqz v0, :cond_2

    #@2a
    .line 1777
    return v0

    #@2b
    .line 1773
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    move v2, v4

    #@2c
    .restart local v2    # "n":I
    goto :goto_0

    #@2d
    .line 1774
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 1779
    .end local v0    # "c":I
    :cond_3
    sub-int v5, v3, v4

    #@32
    return v5

    #@33
    .line 1781
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "sn":I
    .end local v4    # "tn":I
    :cond_4
    const/4 v5, 0x1

    #@34
    return v5

    #@35
    .line 1783
    :cond_5
    const/4 v5, -0x1

    #@36
    return v5
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 851
    :try_start_0
    new-instance v1, Ljava/net/URI;

    #@2
    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 852
    :catch_0
    move-exception v0

    #@7
    .line 853
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method private static decode(CC)B
    .locals 2
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    #@0
    .prologue
    .line 2762
    invoke-static {p0}, Ljava/net/URI;->decode(C)I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0xf

    #@6
    shl-int/lit8 v0, v0, 0x4

    #@8
    .line 2763
    invoke-static {p1}, Ljava/net/URI;->decode(C)I

    #@b
    move-result v1

    #@c
    and-int/lit8 v1, v1, 0xf

    #@e
    shl-int/lit8 v1, v1, 0x0

    #@10
    .line 2762
    or-int/2addr v0, v1

    #@11
    int-to-byte v0, v0

    #@12
    return v0
.end method

.method private static decode(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2751
    const/16 v0, 0x30

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 2752
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 2753
    :cond_0
    const/16 v0, 0x61

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 2754
    add-int/lit8 v0, p0, -0x61

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 2755
    :cond_1
    const/16 v0, 0x41

    #@1a
    if-lt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x46

    #@1e
    if-gt p0, v0, :cond_2

    #@20
    .line 2756
    add-int/lit8 v0, p0, -0x41

    #@22
    add-int/lit8 v0, v0, 0xa

    #@24
    return v0

    #@25
    .line 2757
    :cond_2
    sget-boolean v0, Ljava/net/URI;->-assertionsDisabled:Z

    #@27
    if-nez v0, :cond_3

    #@29
    new-instance v0, Ljava/lang/AssertionError;

    #@2b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@2e
    throw v0

    #@2f
    .line 2758
    :cond_3
    const/4 v0, -0x1

    #@30
    return v0
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v14, 0x25

    #@2
    const/4 v11, 0x1

    #@3
    const/4 v12, 0x0

    #@4
    .line 2774
    if-nez p0, :cond_0

    #@6
    .line 2775
    return-object p0

    #@7
    .line 2776
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v7

    #@b
    .line 2777
    .local v7, "n":I
    if-nez v7, :cond_1

    #@d
    .line 2778
    return-object p0

    #@e
    .line 2779
    :cond_1
    invoke-virtual {p0, v14}, Ljava/lang/String;->indexOf(I)I

    #@11
    move-result v10

    #@12
    if-gez v10, :cond_2

    #@14
    .line 2780
    return-object p0

    #@15
    .line 2782
    :cond_2
    new-instance v8, Ljava/lang/StringBuffer;

    #@17
    invoke-direct {v8, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    #@1a
    .line 2783
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1d
    move-result-object v0

    #@1e
    .line 2784
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@21
    move-result-object v3

    #@22
    .line 2785
    .local v3, "cb":Ljava/nio/CharBuffer;
    const-string/jumbo v10, "UTF-8"

    #@25
    invoke-static {v10}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    #@28
    move-result-object v10

    #@29
    .line 2786
    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@2b
    .line 2785
    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@2e
    move-result-object v10

    #@2f
    .line 2787
    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@31
    .line 2785
    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@34
    move-result-object v5

    #@35
    .line 2790
    .local v5, "dec":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v2

    #@39
    .line 2791
    .local v2, "c":C
    const/4 v1, 0x0

    #@3a
    .line 2793
    .local v1, "betweenBrackets":Z
    const/4 v6, 0x0

    #@3b
    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_7

    #@3d
    .line 2794
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    #@3f
    if-nez v10, :cond_4

    #@41
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v10

    #@45
    if-ne v2, v10, :cond_3

    #@47
    move v10, v11

    #@48
    :goto_1
    if-nez v10, :cond_4

    #@4a
    new-instance v10, Ljava/lang/AssertionError;

    #@4c
    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    #@4f
    throw v10

    #@50
    :cond_3
    move v10, v12

    #@51
    goto :goto_1

    #@52
    .line 2795
    :cond_4
    const/16 v10, 0x5b

    #@54
    if-ne v2, v10, :cond_8

    #@56
    .line 2796
    const/4 v1, 0x1

    #@57
    .line 2800
    :cond_5
    :goto_2
    if-ne v2, v14, :cond_6

    #@59
    if-eqz v1, :cond_a

    #@5b
    .line 2801
    :cond_6
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5e
    .line 2802
    add-int/lit8 v6, v6, 0x1

    #@60
    if-lt v6, v7, :cond_9

    #@62
    .line 2828
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@65
    move-result-object v10

    #@66
    return-object v10

    #@67
    .line 2797
    :cond_8
    if-eqz v1, :cond_5

    #@69
    const/16 v10, 0x5d

    #@6b
    if-ne v2, v10, :cond_5

    #@6d
    .line 2798
    const/4 v1, 0x0

    #@6e
    goto :goto_2

    #@6f
    .line 2804
    :cond_9
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@72
    move-result v2

    #@73
    goto :goto_0

    #@74
    .line 2807
    :cond_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@77
    .line 2808
    move v9, v6

    #@78
    .line 2810
    .local v9, "ui":I
    :cond_b
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    #@7a
    if-nez v10, :cond_d

    #@7c
    sub-int v10, v7, v6

    #@7e
    const/4 v13, 0x2

    #@7f
    if-lt v10, v13, :cond_c

    #@81
    move v10, v11

    #@82
    :goto_3
    if-nez v10, :cond_d

    #@84
    new-instance v10, Ljava/lang/AssertionError;

    #@86
    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    #@89
    throw v10

    #@8a
    :cond_c
    move v10, v12

    #@8b
    goto :goto_3

    #@8c
    .line 2811
    :cond_d
    add-int/lit8 v6, v6, 0x1

    #@8e
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@91
    move-result v10

    #@92
    add-int/lit8 v6, v6, 0x1

    #@94
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@97
    move-result v13

    #@98
    invoke-static {v10, v13}, Ljava/net/URI;->decode(CC)B

    #@9b
    move-result v10

    #@9c
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@9f
    .line 2812
    add-int/lit8 v6, v6, 0x1

    #@a1
    if-lt v6, v7, :cond_e

    #@a3
    .line 2818
    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@a6
    .line 2819
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    #@a9
    .line 2820
    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@ac
    .line 2821
    invoke-virtual {v5, v0, v3, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@af
    move-result-object v4

    #@b0
    .line 2822
    .local v4, "cr":Ljava/nio/charset/CoderResult;
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    #@b2
    if-nez v10, :cond_f

    #@b4
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@b7
    move-result v10

    #@b8
    if-nez v10, :cond_f

    #@ba
    new-instance v10, Ljava/lang/AssertionError;

    #@bc
    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    #@bf
    throw v10

    #@c0
    .line 2814
    .end local v4    # "cr":Ljava/nio/charset/CoderResult;
    :cond_e
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@c3
    move-result v2

    #@c4
    .line 2815
    if-eq v2, v14, :cond_b

    #@c6
    goto :goto_4

    #@c7
    .line 2823
    .restart local v4    # "cr":Ljava/nio/charset/CoderResult;
    :cond_f
    invoke-virtual {v5, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@ca
    move-result-object v4

    #@cb
    .line 2824
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    #@cd
    if-nez v10, :cond_10

    #@cf
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    #@d2
    move-result v10

    #@d3
    if-nez v10, :cond_10

    #@d5
    new-instance v10, Ljava/lang/AssertionError;

    #@d7
    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    #@da
    throw v10

    #@db
    .line 2825
    :cond_10
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@de
    move-result-object v10

    #@df
    invoke-virtual {v10}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@e2
    move-result-object v10

    #@e3
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e6
    goto/16 :goto_0
.end method

.method private defineSchemeSpecificPart()V
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1924
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    return-void

    #@6
    .line 1925
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    .line 1926
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 1927
    iget-object v5, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@15
    iget v6, p0, Ljava/net/URI;->port:I

    #@17
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    #@1e
    move-result-object v8

    #@1f
    move-object v0, p0

    #@20
    .line 1926
    invoke-direct/range {v0 .. v8}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@23
    .line 1928
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_1

    #@29
    return-void

    #@2a
    .line 1929
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@30
    .line 1923
    return-void
.end method

.method private defineString()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x3a

    #@2
    const/4 v2, 0x0

    #@3
    .line 1933
    iget-object v3, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@5
    if-eqz v3, :cond_0

    #@7
    return-void

    #@8
    .line 1935
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@d
    .line 1936
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 1937
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 1938
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    .line 1940
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_4

    #@1f
    .line 1941
    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 1970
    :cond_2
    :goto_0
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 1971
    const/16 v2, 0x23

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2d
    .line 1972
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    .line 1974
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    iput-object v2, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@38
    .line 1932
    return-void

    #@39
    .line 1943
    :cond_4
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@3b
    if-eqz v3, :cond_d

    #@3d
    .line 1944
    const-string/jumbo v3, "//"

    #@40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    .line 1945
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@45
    if-eqz v3, :cond_5

    #@47
    .line 1946
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    .line 1947
    const/16 v3, 0x40

    #@4e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@51
    .line 1949
    :cond_5
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@53
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@56
    move-result v3

    #@57
    if-ltz v3, :cond_6

    #@59
    .line 1950
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@5b
    const-string/jumbo v4, "["

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_b

    #@64
    :cond_6
    move v0, v2

    #@65
    .line 1952
    .local v0, "needBrackets":Z
    :goto_1
    if-eqz v0, :cond_7

    #@67
    const/16 v2, 0x5b

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6c
    .line 1953
    :cond_7
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@71
    .line 1954
    if-eqz v0, :cond_8

    #@73
    const/16 v2, 0x5d

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@78
    .line 1955
    :cond_8
    iget v2, p0, Ljava/net/URI;->port:I

    #@7a
    const/4 v3, -0x1

    #@7b
    if-eq v2, v3, :cond_9

    #@7d
    .line 1956
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@80
    .line 1957
    iget v2, p0, Ljava/net/URI;->port:I

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@85
    .line 1963
    .end local v0    # "needBrackets":Z
    :cond_9
    :goto_2
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@87
    if-eqz v2, :cond_a

    #@89
    .line 1964
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8e
    .line 1965
    :cond_a
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@90
    if-eqz v2, :cond_2

    #@92
    .line 1966
    const/16 v2, 0x3f

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@97
    .line 1967
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9c
    goto :goto_0

    #@9d
    .line 1951
    :cond_b
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@9f
    const-string/jumbo v4, "]"

    #@a2
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@a5
    move-result v3

    #@a6
    if-eqz v3, :cond_c

    #@a8
    :goto_3
    move v0, v2

    #@a9
    goto :goto_1

    #@aa
    :cond_c
    const/4 v2, 0x1

    #@ab
    goto :goto_3

    #@ac
    .line 1959
    :cond_d
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@ae
    if-eqz v2, :cond_9

    #@b0
    .line 1960
    const-string/jumbo v2, "//"

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b6
    .line 1961
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@b8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bb
    goto :goto_2
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v9, 0x80

    #@2
    .line 2718
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    .line 2719
    .local v3, "n":I
    if-nez v3, :cond_0

    #@8
    .line 2720
    return-object p0

    #@9
    .line 2723
    :cond_0
    const/4 v2, 0x0

    #@a
    .line 2724
    .local v2, "i":I
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v7

    #@e
    if-lt v7, v9, :cond_3

    #@10
    .line 2730
    sget-object v7, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    #@12
    invoke-static {p0, v7}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    .line 2731
    .local v4, "ns":Ljava/lang/String;
    const/4 v1, 0x0

    #@17
    .line 2733
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string/jumbo v7, "UTF-8"

    #@1a
    invoke-static {v7}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    #@1d
    move-result-object v7

    #@1e
    .line 2734
    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@21
    move-result-object v8

    #@22
    .line 2733
    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v1

    #@26
    .line 2739
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@2b
    .line 2740
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_5

    #@31
    .line 2741
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@34
    move-result v7

    #@35
    and-int/lit16 v0, v7, 0xff

    #@37
    .line 2742
    .local v0, "b":I
    if-lt v0, v9, :cond_4

    #@39
    .line 2743
    int-to-byte v7, v0

    #@3a
    invoke-static {v5, v7}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    #@3d
    goto :goto_0

    #@3e
    .line 2726
    .end local v0    # "b":I
    .end local v4    # "ns":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@40
    if-lt v2, v3, :cond_1

    #@42
    .line 2727
    return-object p0

    #@43
    .line 2735
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    .restart local v4    # "ns":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@44
    .line 2736
    .local v6, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v7, Ljava/net/URI;->-assertionsDisabled:Z

    #@46
    if-nez v7, :cond_2

    #@48
    new-instance v7, Ljava/lang/AssertionError;

    #@4a
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@4d
    throw v7

    #@4e
    .line 2745
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "b":I
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    int-to-char v7, v0

    #@4f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@52
    goto :goto_0

    #@53
    .line 2747
    .end local v0    # "b":I
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    return-object v7
.end method

.method private static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/16 v7, 0x25

    #@3
    const/4 v6, 0x0

    #@4
    .line 1692
    if-ne p0, p1, :cond_0

    #@6
    return v8

    #@7
    .line 1693
    :cond_0
    if-eqz p0, :cond_9

    #@9
    if-eqz p1, :cond_9

    #@b
    .line 1694
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v4

    #@f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v5

    #@13
    if-eq v4, v5, :cond_1

    #@15
    .line 1695
    return v6

    #@16
    .line 1696
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    #@19
    move-result v4

    #@1a
    if-gez v4, :cond_2

    #@1c
    .line 1697
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v4

    #@20
    return v4

    #@21
    .line 1698
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@24
    move-result v3

    #@25
    .line 1699
    .local v3, "n":I
    const/4 v2, 0x0

    #@26
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_8

    #@28
    .line 1700
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v0

    #@2c
    .line 1701
    .local v0, "c":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v1

    #@30
    .line 1702
    .local v1, "d":C
    if-eq v0, v7, :cond_4

    #@32
    .line 1703
    if-eq v0, v1, :cond_3

    #@34
    .line 1704
    return v6

    #@35
    .line 1705
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@37
    .line 1706
    goto :goto_0

    #@38
    .line 1708
    :cond_4
    if-eq v1, v7, :cond_5

    #@3a
    .line 1709
    return v6

    #@3b
    .line 1710
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@3d
    .line 1711
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v4

    #@41
    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    #@44
    move-result v4

    #@45
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v5

    #@49
    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    #@4c
    move-result v5

    #@4d
    if-eq v4, v5, :cond_6

    #@4f
    .line 1712
    return v6

    #@50
    .line 1713
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@52
    .line 1714
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v4

    #@56
    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    #@59
    move-result v4

    #@5a
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@5d
    move-result v5

    #@5e
    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    #@61
    move-result v5

    #@62
    if-eq v4, v5, :cond_7

    #@64
    .line 1715
    return v6

    #@65
    .line 1716
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_0

    #@68
    .line 1718
    .end local v0    # "c":C
    .end local v1    # "d":C
    :cond_8
    return v8

    #@69
    .line 1720
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_9
    return v6
.end method

.method private static equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1725
    if-ne p0, p1, :cond_0

    #@4
    return v5

    #@5
    .line 1726
    :cond_0
    if-eqz p0, :cond_4

    #@7
    if-eqz p1, :cond_4

    #@9
    .line 1727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    .line 1728
    .local v1, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    if-eq v2, v1, :cond_1

    #@13
    .line 1729
    return v4

    #@14
    .line 1730
    :cond_1
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@17
    .line 1731
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v2

    #@1b
    invoke-static {v2}, Ljava/net/URI;->toLower(C)I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v3

    #@23
    invoke-static {v3}, Ljava/net/URI;->toLower(C)I

    #@26
    move-result v3

    #@27
    if-eq v2, v3, :cond_2

    #@29
    .line 1732
    return v4

    #@2a
    .line 1730
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1734
    :cond_3
    return v5

    #@2e
    .line 1736
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    return v4
.end method

.method private static hash(ILjava/lang/String;)I
    .locals 2
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1740
    if-nez p1, :cond_0

    #@2
    return p0

    #@3
    .line 1741
    :cond_0
    mul-int/lit8 v0, p0, 0x7f

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@8
    move-result v1

    #@9
    add-int/2addr v0, v1

    #@a
    return v0
.end method

.method private static hashIgnoringCase(ILjava/lang/String;)I
    .locals 5
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1746
    if-nez p1, :cond_0

    #@2
    return p0

    #@3
    .line 1747
    :cond_0
    move v0, p0

    #@4
    .line 1748
    .local v0, "h":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 1749
    .local v2, "n":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@b
    .line 1750
    mul-int/lit8 v3, v0, 0x1f

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v4

    #@11
    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    #@14
    move-result v4

    #@15
    add-int v0, v3, v4

    #@17
    .line 1749
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1751
    :cond_1
    return v0
.end method

.method private static highMask(CC)J
    .locals 8
    .param p0, "first"    # C
    .param p1, "last"    # C

    #@0
    .prologue
    const/16 v7, 0x7f

    #@2
    const/16 v6, 0x40

    #@4
    .line 2508
    const-wide/16 v4, 0x0

    #@6
    .line 2509
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v3

    #@a
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v3

    #@e
    add-int/lit8 v0, v3, -0x40

    #@10
    .line 2510
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    #@13
    move-result v3

    #@14
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@17
    move-result v3

    #@18
    add-int/lit8 v2, v3, -0x40

    #@1a
    .line 2511
    .local v2, "l":I
    move v1, v0

    #@1b
    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    #@1d
    .line 2512
    const-wide/16 v6, 0x1

    #@1f
    shl-long/2addr v6, v1

    #@20
    or-long/2addr v4, v6

    #@21
    .line 2511
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2513
    :cond_0
    return-wide v4
.end method

.method private static highMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2484
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .line 2485
    .local v4, "n":I
    const-wide/16 v2, 0x0

    #@6
    .line 2486
    .local v2, "m":J
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@9
    .line 2487
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 2488
    .local v0, "c":C
    const/16 v5, 0x40

    #@f
    if-lt v0, v5, :cond_0

    #@11
    const/16 v5, 0x80

    #@13
    if-ge v0, v5, :cond_0

    #@15
    .line 2489
    add-int/lit8 v5, v0, -0x40

    #@17
    const-wide/16 v6, 0x1

    #@19
    shl-long/2addr v6, v5

    #@1a
    or-long/2addr v2, v6

    #@1b
    .line 2486
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2491
    .end local v0    # "c":C
    :cond_1
    return-wide v2
.end method

.method private static join([C[I)I
    .locals 10
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    #@0
    .prologue
    const/16 v9, 0x2f

    #@2
    const/4 v8, 0x0

    #@3
    .line 2280
    array-length v2, p1

    #@4
    .line 2281
    .local v2, "ns":I
    array-length v7, p0

    #@5
    add-int/lit8 v0, v7, -0x1

    #@7
    .line 2282
    .local v0, "end":I
    const/4 v3, 0x0

    #@8
    .line 2284
    .local v3, "p":I
    aget-char v7, p0, v3

    #@a
    if-nez v7, :cond_0

    #@c
    .line 2286
    const/4 v3, 0x1

    #@d
    aput-char v9, p0, v8

    #@f
    .line 2289
    :cond_0
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    #@12
    .line 2290
    aget v5, p1, v1

    #@14
    .line 2291
    .local v5, "q":I
    const/4 v7, -0x1

    #@15
    if-ne v5, v7, :cond_1

    #@17
    .line 2289
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2295
    :cond_1
    if-ne v3, v5, :cond_3

    #@1c
    move v4, v3

    #@1d
    .line 2297
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_2
    if-gt v4, v0, :cond_2

    #@1f
    aget-char v7, p0, v4

    #@21
    if-eqz v7, :cond_2

    #@23
    .line 2298
    add-int/lit8 v3, v4, 0x1

    #@25
    .end local v4    # "p":I
    .restart local v3    # "p":I
    move v4, v3

    #@26
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    #@27
    .line 2299
    :cond_2
    if-gt v4, v0, :cond_8

    #@29
    .line 2301
    add-int/lit8 v3, v4, 0x1

    #@2b
    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, p0, v4

    #@2d
    goto :goto_1

    #@2e
    .line 2303
    :cond_3
    if-ge v3, v5, :cond_5

    #@30
    :goto_3
    move v6, v5

    #@31
    .end local v5    # "q":I
    .local v6, "q":I
    move v4, v3

    #@32
    .line 2305
    .end local v3    # "p":I
    .restart local v4    # "p":I
    if-gt v6, v0, :cond_4

    #@34
    aget-char v7, p0, v6

    #@36
    if-eqz v7, :cond_4

    #@38
    .line 2306
    add-int/lit8 v3, v4, 0x1

    #@3a
    .end local v4    # "p":I
    .restart local v3    # "p":I
    add-int/lit8 v5, v6, 0x1

    #@3c
    .end local v6    # "q":I
    .restart local v5    # "q":I
    aget-char v7, p0, v6

    #@3e
    aput-char v7, p0, v4

    #@40
    goto :goto_3

    #@41
    .line 2307
    .end local v3    # "p":I
    .end local v5    # "q":I
    .restart local v4    # "p":I
    .restart local v6    # "q":I
    :cond_4
    if-gt v6, v0, :cond_7

    #@43
    .line 2309
    add-int/lit8 v3, v4, 0x1

    #@45
    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, p0, v4

    #@47
    move v5, v6

    #@48
    .end local v6    # "q":I
    .restart local v5    # "q":I
    goto :goto_1

    #@49
    .line 2312
    :cond_5
    new-instance v7, Ljava/lang/InternalError;

    #@4b
    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    #@4e
    throw v7

    #@4f
    .line 2315
    .end local v5    # "q":I
    :cond_6
    return v3

    #@50
    .end local v3    # "p":I
    .restart local v4    # "p":I
    .restart local v6    # "q":I
    :cond_7
    move v5, v6

    #@51
    .end local v6    # "q":I
    .restart local v5    # "q":I
    move v3, v4

    #@52
    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_1

    #@53
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_8
    move v3, v4

    #@54
    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_1
.end method

.method private static lowMask(CC)J
    .locals 8
    .param p0, "first"    # C
    .param p1, "last"    # C

    #@0
    .prologue
    const/16 v7, 0x3f

    #@2
    const/4 v6, 0x0

    #@3
    .line 2497
    const-wide/16 v4, 0x0

    #@5
    .line 2498
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    #@8
    move-result v3

    #@9
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@c
    move-result v0

    #@d
    .line 2499
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v3

    #@11
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v2

    #@15
    .line 2500
    .local v2, "l":I
    move v1, v0

    #@16
    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    #@18
    .line 2501
    const-wide/16 v6, 0x1

    #@1a
    shl-long/2addr v6, v1

    #@1b
    or-long/2addr v4, v6

    #@1c
    .line 2500
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2502
    :cond_0
    return-wide v4
.end method

.method private static lowMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .line 2473
    .local v4, "n":I
    const-wide/16 v2, 0x0

    #@6
    .line 2474
    .local v2, "m":J
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@9
    .line 2475
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 2476
    .local v0, "c":C
    const/16 v5, 0x40

    #@f
    if-ge v0, v5, :cond_0

    #@11
    .line 2477
    const-wide/16 v6, 0x1

    #@13
    shl-long/2addr v6, v0

    #@14
    or-long/2addr v2, v6

    #@15
    .line 2474
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 2479
    .end local v0    # "c":C
    :cond_1
    return-wide v2
.end method

.method private static match(CJJ)Z
    .locals 9
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    const-wide/16 v4, 0x0

    #@4
    const/4 v0, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    .line 2518
    if-nez p0, :cond_0

    #@8
    .line 2519
    return v1

    #@9
    .line 2520
    :cond_0
    const/16 v2, 0x40

    #@b
    if-ge p0, v2, :cond_2

    #@d
    .line 2521
    shl-long v2, v6, p0

    #@f
    and-long/2addr v2, p1

    #@10
    cmp-long v2, v2, v4

    #@12
    if-eqz v2, :cond_1

    #@14
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    goto :goto_0

    #@17
    .line 2522
    :cond_2
    const/16 v2, 0x80

    #@19
    if-ge p0, v2, :cond_4

    #@1b
    .line 2523
    add-int/lit8 v2, p0, -0x40

    #@1d
    shl-long v2, v6, v2

    #@1f
    and-long/2addr v2, p3

    #@20
    cmp-long v2, v2, v4

    #@22
    if-eqz v2, :cond_3

    #@24
    :goto_1
    return v0

    #@25
    :cond_3
    move v0, v1

    #@26
    goto :goto_1

    #@27
    .line 2524
    :cond_4
    return v1
.end method

.method private static maybeAddLeadingDot([C[I)V
    .locals 6
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2385
    aget-char v3, p0, v5

    #@3
    if-nez v3, :cond_0

    #@5
    .line 2387
    return-void

    #@6
    .line 2389
    :cond_0
    array-length v1, p1

    #@7
    .line 2390
    .local v1, "ns":I
    const/4 v0, 0x0

    #@8
    .line 2391
    .local v0, "f":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 2392
    aget v3, p1, v0

    #@c
    if-ltz v3, :cond_3

    #@e
    .line 2396
    :cond_1
    if-ge v0, v1, :cond_2

    #@10
    if-nez v0, :cond_4

    #@12
    .line 2399
    :cond_2
    return-void

    #@13
    .line 2394
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2401
    :cond_4
    aget v2, p1, v0

    #@18
    .line 2402
    .local v2, "p":I
    :goto_1
    array-length v3, p0

    #@19
    if-ge v2, v3, :cond_5

    #@1b
    aget-char v3, p0, v2

    #@1d
    const/16 v4, 0x3a

    #@1f
    if-eq v3, v4, :cond_5

    #@21
    aget-char v3, p0, v2

    #@23
    if-eqz v3, :cond_5

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_1

    #@28
    .line 2403
    :cond_5
    array-length v3, p0

    #@29
    if-ge v2, v3, :cond_6

    #@2b
    aget-char v3, p0, v2

    #@2d
    if-nez v3, :cond_7

    #@2f
    .line 2405
    :cond_6
    return-void

    #@30
    .line 2409
    :cond_7
    const/16 v3, 0x2e

    #@32
    aput-char v3, p0, v5

    #@34
    .line 2410
    const/4 v3, 0x1

    #@35
    aput-char v5, p0, v3

    #@37
    .line 2411
    aput v5, p1, v5

    #@39
    .line 2383
    return-void
.end method

.method private static needsNormalization(Ljava/lang/String;)I
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x2e

    #@2
    const/16 v6, 0x2f

    #@4
    .line 2174
    const/4 v1, 0x1

    #@5
    .line 2175
    .local v1, "normal":Z
    const/4 v2, 0x0

    #@6
    .line 2176
    .local v2, "ns":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    add-int/lit8 v0, v5, -0x1

    #@c
    .line 2177
    .local v0, "end":I
    const/4 v3, 0x0

    #@d
    .line 2180
    .local v3, "p":I
    :goto_0
    if-gt v3, v0, :cond_0

    #@f
    .line 2181
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v5

    #@13
    if-eq v5, v6, :cond_4

    #@15
    .line 2184
    :cond_0
    const/4 v5, 0x1

    #@16
    if-le v3, v5, :cond_1

    #@18
    const/4 v1, 0x0

    #@19
    .line 2187
    :cond_1
    :goto_1
    if-gt v3, v0, :cond_7

    #@1b
    .line 2190
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v5

    #@1f
    if-ne v5, v7, :cond_3

    #@21
    .line 2191
    if-eq v3, v0, :cond_2

    #@23
    .line 2192
    add-int/lit8 v5, v3, 0x1

    #@25
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v5

    #@29
    if-eq v5, v6, :cond_2

    #@2b
    .line 2193
    add-int/lit8 v5, v3, 0x1

    #@2d
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v5

    #@31
    if-ne v5, v7, :cond_3

    #@33
    .line 2194
    add-int/lit8 v5, v3, 0x1

    #@35
    if-eq v5, v0, :cond_2

    #@37
    .line 2195
    add-int/lit8 v5, v3, 0x2

    #@39
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v5

    #@3d
    if-ne v5, v6, :cond_3

    #@3f
    .line 2196
    :cond_2
    const/4 v1, 0x0

    #@40
    .line 2198
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@42
    move v4, v3

    #@43
    .line 2201
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_2
    if-gt v4, v0, :cond_9

    #@45
    .line 2202
    add-int/lit8 v3, v4, 0x1

    #@47
    .end local v4    # "p":I
    .restart local v3    # "p":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v5

    #@4b
    if-eq v5, v6, :cond_6

    #@4d
    move v4, v3

    #@4e
    .line 2203
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    #@4f
    .line 2182
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@51
    goto :goto_0

    #@52
    .line 2208
    :cond_5
    const/4 v1, 0x0

    #@53
    .line 2209
    add-int/lit8 v3, v3, 0x1

    #@55
    .line 2206
    :cond_6
    if-gt v3, v0, :cond_1

    #@57
    .line 2207
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@5a
    move-result v5

    #@5b
    if-eq v5, v6, :cond_5

    #@5d
    goto :goto_1

    #@5e
    .line 2216
    :cond_7
    if-eqz v1, :cond_8

    #@60
    const/4 v2, -0x1

    #@61
    .end local v2    # "ns":I
    :cond_8
    return v2

    #@62
    .end local v3    # "p":I
    .restart local v2    # "ns":I
    .restart local v4    # "p":I
    :cond_9
    move v3, v4

    #@63
    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ps"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2422
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "ps"    # Ljava/lang/String;
    .param p1, "removeLeading"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2428
    invoke-static {p0}, Ljava/net/URI;->needsNormalization(Ljava/lang/String;)I

    #@4
    move-result v0

    #@5
    .line 2429
    .local v0, "ns":I
    if-gez v0, :cond_0

    #@7
    .line 2431
    return-object p0

    #@8
    .line 2433
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@b
    move-result-object v1

    #@c
    .line 2436
    .local v1, "path":[C
    new-array v3, v0, [I

    #@e
    .line 2437
    .local v3, "segs":[I
    invoke-static {v1, v3}, Ljava/net/URI;->split([C[I)V

    #@11
    .line 2440
    invoke-static {v1, v3, p1}, Ljava/net/URI;->removeDots([C[IZ)V

    #@14
    .line 2443
    invoke-static {v1, v3}, Ljava/net/URI;->maybeAddLeadingDot([C[I)V

    #@17
    .line 2446
    new-instance v2, Ljava/lang/String;

    #@19
    invoke-static {v1, v3}, Ljava/net/URI;->join([C[I)I

    #@1c
    move-result v4

    #@1d
    invoke-direct {v2, v1, v5, v4}, Ljava/lang/String;-><init>([CII)V

    #@20
    .line 2447
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 2449
    return-object p0

    #@27
    .line 2451
    :cond_1
    return-object v2
.end method

.method private static normalize(Ljava/net/URI;)Ljava/net/URI;
    .locals 3
    .param p0, "u"    # Ljava/net/URI;

    #@0
    .prologue
    .line 2091
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 2092
    :cond_0
    return-object p0

    #@b
    .line 2091
    :cond_1
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 2094
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@15
    invoke-static {v2}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 2095
    .local v0, "np":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@1b
    if-ne v0, v2, :cond_2

    #@1d
    .line 2096
    return-object p0

    #@1e
    .line 2098
    :cond_2
    new-instance v1, Ljava/net/URI;

    #@20
    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    #@23
    .line 2099
    .local v1, "v":Ljava/net/URI;
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@25
    iput-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@27
    .line 2100
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@29
    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2b
    .line 2101
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@2d
    iput-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@2f
    .line 2102
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@31
    iput-object v2, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@33
    .line 2103
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@35
    iput-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    #@37
    .line 2104
    iget v2, p0, Ljava/net/URI;->port:I

    #@39
    iput v2, v1, Ljava/net/URI;->port:I

    #@3b
    .line 2105
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    #@3d
    .line 2106
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@3f
    iput-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    #@41
    .line 2107
    return-object v1
.end method

.method private static quote(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2682
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 2683
    .local v3, "n":I
    const/4 v4, 0x0

    #@6
    .line 2684
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x1

    #@8
    and-long/2addr v6, p1

    #@9
    const-wide/16 v8, 0x0

    #@b
    cmp-long v5, v6, v8

    #@d
    if-eqz v5, :cond_2

    #@f
    const/4 v0, 0x1

    #@10
    .line 2685
    .local v0, "allowNonASCII":Z
    :goto_0
    const/4 v2, 0x0

    #@11
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v5

    #@15
    if-ge v2, v5, :cond_8

    #@17
    .line 2686
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 2687
    .local v1, "c":C
    const/16 v5, 0x80

    #@1d
    if-ge v1, v5, :cond_4

    #@1f
    .line 2688
    invoke-static {v1, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_3

    #@25
    .line 2689
    if-nez v4, :cond_0

    #@27
    .line 2690
    new-instance v4, Ljava/lang/StringBuffer;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@2c
    .line 2691
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 2693
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    int-to-byte v5, v1

    #@34
    invoke-static {v4, v5}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    #@37
    .line 2685
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 2684
    .end local v0    # "allowNonASCII":Z
    .end local v1    # "c":C
    .end local v2    # "i":I
    .local v4, "sb":Ljava/lang/StringBuffer;
    :cond_2
    const/4 v0, 0x0

    #@3b
    .restart local v0    # "allowNonASCII":Z
    goto :goto_0

    #@3c
    .line 2695
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    :cond_3
    if-eqz v4, :cond_1

    #@3e
    .line 2696
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@41
    goto :goto_2

    #@42
    .line 2698
    :cond_4
    if-eqz v0, :cond_7

    #@44
    .line 2699
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@47
    move-result v5

    #@48
    if-nez v5, :cond_5

    #@4a
    .line 2700
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    #@4d
    move-result v5

    #@4e
    .line 2698
    if-eqz v5, :cond_7

    #@50
    .line 2701
    :cond_5
    if-nez v4, :cond_6

    #@52
    .line 2702
    new-instance v4, Ljava/lang/StringBuffer;

    #@54
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@57
    .line 2703
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    .line 2705
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    invoke-static {v4, v1}, Ljava/net/URI;->appendEncoded(Ljava/lang/StringBuffer;C)V

    #@61
    goto :goto_2

    #@62
    .line 2707
    :cond_7
    if-eqz v4, :cond_1

    #@64
    .line 2708
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@67
    goto :goto_2

    #@68
    .line 2711
    .end local v1    # "c":C
    :cond_8
    if-nez v4, :cond_9

    #@6a
    .end local p0    # "s":Ljava/lang/String;
    :goto_3
    return-object p0

    #@6b
    .restart local p0    # "s":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@6e
    move-result-object p0

    #@6f
    goto :goto_3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1660
    const/4 v2, -0x1

    #@1
    iput v2, p0, Ljava/net/URI;->port:I

    #@3
    .line 1661
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@6
    .line 1663
    :try_start_0
    new-instance v2, Ljava/net/URI$Parser;

    #@8
    iget-object v3, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@a
    invoke-direct {v2, p0, v3}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v2, v3}, Ljava/net/URI$Parser;->parse(Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1658
    return-void

    #@12
    .line 1664
    :catch_0
    move-exception v0

    #@13
    .line 1665
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/InvalidObjectException;

    #@15
    const-string/jumbo v2, "Invalid URI"

    #@18
    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@1b
    .line 1666
    .local v1, "y":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1e
    .line 1667
    throw v1
.end method

.method private static relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    #@0
    .prologue
    const/16 v5, 0x2f

    #@2
    .line 2118
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 2119
    :cond_0
    return-object p1

    #@f
    .line 2120
    :cond_1
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@11
    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@13
    invoke-static {v3, v4}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_3

    #@19
    .line 2121
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@1b
    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@1d
    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 2124
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@25
    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 2125
    .local v0, "bp":Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@2b
    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 2126
    .local v1, "cp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    if-nez v3, :cond_4

    #@35
    .line 2133
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    #@38
    move-result v3

    #@39
    const/4 v4, -0x1

    #@3a
    if-eq v3, v4, :cond_2

    #@3c
    .line 2134
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@3f
    move-result v3

    #@40
    add-int/lit8 v3, v3, 0x1

    #@42
    const/4 v4, 0x0

    #@43
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    .line 2137
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4a
    move-result v3

    #@4b
    if-nez v3, :cond_4

    #@4d
    .line 2138
    return-object p1

    #@4e
    .line 2122
    .end local v0    # "bp":Ljava/lang/String;
    .end local v1    # "cp":Ljava/lang/String;
    :cond_3
    return-object p1

    #@4f
    .line 2141
    .restart local v0    # "bp":Ljava/lang/String;
    .restart local v1    # "cp":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/net/URI;

    #@51
    invoke-direct {v2}, Ljava/net/URI;-><init>()V

    #@54
    .line 2142
    .local v2, "v":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@57
    move-result v3

    #@58
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    #@5e
    .line 2143
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@60
    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    #@62
    .line 2144
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@64
    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@66
    .line 2145
    return-object v2
.end method

.method private static removeDots([C[IZ)V
    .locals 10
    .param p0, "path"    # [C
    .param p1, "segs"    # [I
    .param p2, "removeLeading"    # Z

    #@0
    .prologue
    const/16 v9, 0x2e

    #@2
    const/4 v8, -0x1

    #@3
    .line 2323
    array-length v4, p1

    #@4
    .line 2324
    .local v4, "ns":I
    array-length v7, p0

    #@5
    add-int/lit8 v1, v7, -0x1

    #@7
    .line 2326
    .local v1, "end":I
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@a
    .line 2327
    const/4 v0, 0x0

    #@b
    .line 2331
    .local v0, "dots":I
    :goto_1
    aget v5, p1, v2

    #@d
    .line 2332
    .local v5, "p":I
    aget-char v7, p0, v5

    #@f
    if-ne v7, v9, :cond_5

    #@11
    .line 2333
    if-ne v5, v1, :cond_2

    #@13
    .line 2334
    const/4 v0, 0x1

    #@14
    .line 2348
    :cond_0
    :goto_2
    if-gt v2, v4, :cond_1

    #@16
    if-nez v0, :cond_6

    #@18
    .line 2322
    .end local v0    # "dots":I
    .end local v5    # "p":I
    :cond_1
    return-void

    #@19
    .line 2336
    .restart local v0    # "dots":I
    .restart local v5    # "p":I
    :cond_2
    add-int/lit8 v7, v5, 0x1

    #@1b
    aget-char v7, p0, v7

    #@1d
    if-nez v7, :cond_3

    #@1f
    .line 2337
    const/4 v0, 0x1

    #@20
    .line 2338
    goto :goto_2

    #@21
    .line 2339
    :cond_3
    add-int/lit8 v7, v5, 0x1

    #@23
    aget-char v7, p0, v7

    #@25
    if-ne v7, v9, :cond_5

    #@27
    .line 2340
    add-int/lit8 v7, v5, 0x1

    #@29
    if-eq v7, v1, :cond_4

    #@2b
    .line 2341
    add-int/lit8 v7, v5, 0x2

    #@2d
    aget-char v7, p0, v7

    #@2f
    if-nez v7, :cond_5

    #@31
    .line 2342
    :cond_4
    const/4 v0, 0x2

    #@32
    .line 2343
    goto :goto_2

    #@33
    .line 2346
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@35
    .line 2347
    if-ge v2, v4, :cond_0

    #@37
    goto :goto_1

    #@38
    .line 2351
    :cond_6
    const/4 v7, 0x1

    #@39
    if-ne v0, v7, :cond_8

    #@3b
    .line 2353
    aput v8, p1, v2

    #@3d
    .line 2326
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 2358
    :cond_8
    add-int/lit8 v3, v2, -0x1

    #@42
    .local v3, "j":I
    :goto_4
    if-ltz v3, :cond_9

    #@44
    .line 2359
    aget v7, p1, v3

    #@46
    if-eq v7, v8, :cond_b

    #@48
    .line 2361
    :cond_9
    if-ltz v3, :cond_d

    #@4a
    .line 2362
    aget v6, p1, v3

    #@4c
    .line 2363
    .local v6, "q":I
    aget-char v7, p0, v6

    #@4e
    if-ne v7, v9, :cond_a

    #@50
    .line 2364
    add-int/lit8 v7, v6, 0x1

    #@52
    aget-char v7, p0, v7

    #@54
    if-eq v7, v9, :cond_c

    #@56
    .line 2366
    :cond_a
    :goto_5
    aput v8, p1, v2

    #@58
    .line 2367
    aput v8, p1, v3

    #@5a
    goto :goto_3

    #@5b
    .line 2358
    .end local v6    # "q":I
    :cond_b
    add-int/lit8 v3, v3, -0x1

    #@5d
    goto :goto_4

    #@5e
    .line 2365
    .restart local v6    # "q":I
    :cond_c
    add-int/lit8 v7, v6, 0x2

    #@60
    aget-char v7, p0, v7

    #@62
    if-eqz v7, :cond_7

    #@64
    goto :goto_5

    #@65
    .line 2369
    .end local v6    # "q":I
    :cond_d
    if-eqz p2, :cond_7

    #@67
    .line 2373
    aput v8, p1, v2

    #@69
    goto :goto_3
.end method

.method private static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 4
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2015
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 2016
    :cond_0
    return-object p1

    #@e
    .line 2019
    :cond_1
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@10
    if-nez v1, :cond_3

    #@12
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@14
    if-nez v1, :cond_3

    #@16
    .line 2020
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@18
    const-string/jumbo v2, ""

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 2019
    if-eqz v1, :cond_3

    #@21
    .line 2020
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 2021
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@27
    if-nez v1, :cond_3

    #@29
    .line 2022
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 2023
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2f
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    .line 2022
    if-eqz v1, :cond_2

    #@37
    .line 2024
    return-object p0

    #@38
    .line 2026
    :cond_2
    new-instance v0, Ljava/net/URI;

    #@3a
    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    #@3d
    .line 2027
    .local v0, "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@3f
    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@41
    .line 2028
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@43
    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@45
    .line 2029
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@47
    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@49
    .line 2030
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@4b
    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@4d
    .line 2031
    iget v1, p0, Ljava/net/URI;->port:I

    #@4f
    iput v1, v0, Ljava/net/URI;->port:I

    #@51
    .line 2032
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@53
    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    #@55
    .line 2033
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@57
    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@59
    .line 2034
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@5b
    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    #@5d
    .line 2035
    return-object v0

    #@5e
    .line 2039
    .end local v0    # "ru":Ljava/net/URI;
    :cond_3
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@60
    if-eqz v1, :cond_4

    #@62
    .line 2040
    return-object p1

    #@63
    .line 2042
    :cond_4
    new-instance v0, Ljava/net/URI;

    #@65
    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    #@68
    .line 2043
    .restart local v0    # "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@6a
    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@6c
    .line 2044
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@6e
    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    #@70
    .line 2045
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@72
    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@74
    .line 2048
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@76
    if-nez v1, :cond_9

    #@78
    .line 2049
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@7a
    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@7c
    .line 2050
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@7e
    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@80
    .line 2051
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@82
    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@84
    .line 2052
    iget v1, p0, Ljava/net/URI;->port:I

    #@86
    iput v1, v0, Ljava/net/URI;->port:I

    #@88
    .line 2054
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@8a
    if-eqz v1, :cond_5

    #@8c
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@8e
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@91
    move-result v1

    #@92
    if-eqz v1, :cond_7

    #@94
    .line 2061
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@96
    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    #@98
    .line 2062
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@9a
    if-eqz v1, :cond_6

    #@9c
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@9e
    :goto_0
    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    #@a0
    .line 2084
    :goto_1
    return-object v0

    #@a1
    .line 2062
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@a3
    goto :goto_0

    #@a4
    .line 2063
    :cond_7
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@a6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a9
    move-result v1

    #@aa
    if-lez v1, :cond_8

    #@ac
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@ae
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@b1
    move-result v1

    #@b2
    const/16 v2, 0x2f

    #@b4
    if-ne v1, v2, :cond_8

    #@b6
    .line 2069
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@b8
    const/4 v2, 0x1

    #@b9
    invoke-static {v1, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    #@bc
    move-result-object v1

    #@bd
    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    #@bf
    goto :goto_1

    #@c0
    .line 2072
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@c2
    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@c4
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    #@c7
    move-result v3

    #@c8
    invoke-static {v1, v2, v3}, Ljava/net/URI;->resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    #@cb
    move-result-object v1

    #@cc
    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    #@ce
    goto :goto_1

    #@cf
    .line 2075
    :cond_9
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@d1
    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@d3
    .line 2076
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    #@d5
    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@d7
    .line 2077
    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@d9
    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@db
    .line 2078
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    #@dd
    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@df
    .line 2079
    iget v1, p1, Ljava/net/URI;->port:I

    #@e1
    iput v1, v0, Ljava/net/URI;->port:I

    #@e3
    .line 2080
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@e5
    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    #@e7
    goto :goto_1
.end method

.method private static resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "absolute"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1984
    const/16 v5, 0x2f

    #@3
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@6
    move-result v1

    #@7
    .line 1985
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    .line 1986
    .local v0, "cn":I
    const-string/jumbo v3, ""

    #@e
    .line 1988
    .local v3, "path":Ljava/lang/String;
    if-nez v0, :cond_1

    #@10
    .line 1990
    if-ltz v1, :cond_0

    #@12
    .line 1991
    add-int/lit8 v5, v1, 0x1

    #@14
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 2003
    :cond_0
    :goto_0
    const/4 v5, 0x1

    #@19
    invoke-static {v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 2008
    .local v2, "np":Ljava/lang/String;
    return-object v2

    #@1e
    .line 1993
    .end local v2    # "np":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    #@20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@23
    move-result v5

    #@24
    add-int/2addr v5, v0

    #@25
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@28
    .line 1995
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-ltz v1, :cond_2

    #@2a
    .line 1996
    add-int/lit8 v5, v1, 0x1

    #@2c
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 1998
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 1999
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    goto :goto_0
.end method

.method private static split([C[I)V
    .locals 8
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    #@0
    .prologue
    const/16 v7, 0x2f

    #@2
    const/4 v6, 0x0

    #@3
    .line 2231
    array-length v5, p0

    #@4
    add-int/lit8 v0, v5, -0x1

    #@6
    .line 2232
    .local v0, "end":I
    const/4 v3, 0x0

    #@7
    .line 2233
    .local v3, "p":I
    const/4 v1, 0x0

    #@8
    .line 2236
    .local v1, "i":I
    :goto_0
    if-gt v3, v0, :cond_3

    #@a
    .line 2237
    aget-char v5, p0, v3

    #@c
    if-eq v5, v7, :cond_0

    #@e
    move v2, v1

    #@f
    .end local v1    # "i":I
    .local v2, "i":I
    move v4, v3

    #@10
    .line 2242
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_1
    if-gt v4, v0, :cond_5

    #@12
    .line 2245
    add-int/lit8 v1, v2, 0x1

    #@14
    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v3, v4, 0x1

    #@16
    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput v4, p1, v2

    #@18
    move v4, v3

    #@19
    .line 2248
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_2
    if-gt v4, v0, :cond_7

    #@1b
    .line 2249
    add-int/lit8 v3, v4, 0x1

    #@1d
    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v5, p0, v4

    #@1f
    if-eq v5, v7, :cond_1

    #@21
    move v4, v3

    #@22
    .line 2250
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    #@23
    .line 2238
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_0
    aput-char v6, p0, v3

    #@25
    .line 2239
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2251
    :cond_1
    add-int/lit8 v5, v3, -0x1

    #@2a
    aput-char v6, p0, v5

    #@2c
    move v4, v3

    #@2d
    .line 2254
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_3
    if-gt v4, v0, :cond_2

    #@2f
    .line 2255
    aget-char v5, p0, v4

    #@31
    if-eq v5, v7, :cond_4

    #@33
    :cond_2
    move v3, v4

    #@34
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_3
    :goto_4
    move v2, v1

    #@35
    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    #@36
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    #@37
    .line 2256
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v3, v4, 0x1

    #@39
    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v6, p0, v4

    #@3b
    move v4, v3

    #@3c
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_3

    #@3d
    .line 2262
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    array-length v5, p1

    #@3e
    if-eq v2, v5, :cond_6

    #@40
    .line 2263
    new-instance v5, Ljava/lang/InternalError;

    #@42
    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    #@45
    throw v5

    #@46
    .line 2230
    :cond_6
    return-void

    #@47
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_7
    move v3, v4

    #@48
    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_4
.end method

.method private static toLower(C)I
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 1686
    const/16 v0, 0x41

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 1687
    add-int/lit8 v0, p0, 0x20

    #@a
    return v0

    #@b
    .line 1688
    :cond_0
    return p0
.end method

.method private toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1911
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1912
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    #@7
    .line 1913
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a
    .line 1914
    const/16 v1, 0x3a

    #@c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@f
    :cond_0
    move-object v1, p0

    #@10
    move-object v3, p2

    #@11
    move-object v4, p3

    #@12
    move-object v5, p4

    #@13
    move-object v6, p5

    #@14
    move/from16 v7, p6

    #@16
    move-object/from16 v8, p7

    #@18
    move-object/from16 v9, p8

    #@1a
    .line 1916
    invoke-direct/range {v1 .. v9}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 1919
    move-object/from16 v0, p9

    #@1f
    invoke-direct {p0, v2, v0}, Ljava/net/URI;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@22
    .line 1920
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1643
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    #@3
    .line 1644
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@6
    .line 1641
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1546
    check-cast p1, Ljava/net/URI;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .locals 3
    .param p1, "that"    # Ljava/net/URI;

    #@0
    .prologue
    .line 1549
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@2
    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@4
    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .local v0, "c":I
    if-eqz v0, :cond_0

    #@a
    .line 1550
    return v0

    #@b
    .line 1552
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_3

    #@11
    .line 1553
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 1555
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@19
    .line 1556
    iget-object v2, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@1b
    .line 1555
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1557
    return v0

    #@22
    .line 1558
    :cond_1
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@24
    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@26
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    move-result v1

    #@2a
    return v1

    #@2b
    .line 1560
    :cond_2
    const/4 v1, 0x1

    #@2c
    return v1

    #@2d
    .line 1561
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_4

    #@33
    .line 1562
    const/4 v1, -0x1

    #@34
    return v1

    #@35
    .line 1566
    :cond_4
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@37
    if-eqz v1, :cond_7

    #@39
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    #@3b
    if-eqz v1, :cond_7

    #@3d
    .line 1568
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@3f
    iget-object v2, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@41
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_5

    #@47
    .line 1569
    return v0

    #@48
    .line 1570
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@4a
    iget-object v2, p1, Ljava/net/URI;->host:Ljava/lang/String;

    #@4c
    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_6

    #@52
    .line 1571
    return v0

    #@53
    .line 1572
    :cond_6
    iget v1, p0, Ljava/net/URI;->port:I

    #@55
    iget v2, p1, Ljava/net/URI;->port:I

    #@57
    sub-int v0, v1, v2

    #@59
    if-eqz v0, :cond_8

    #@5b
    .line 1573
    return v0

    #@5c
    .line 1581
    :cond_7
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@5e
    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    #@60
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    move-result v0

    #@64
    if-eqz v0, :cond_8

    #@66
    return v0

    #@67
    .line 1584
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@69
    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    #@6b
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    move-result v0

    #@6f
    if-eqz v0, :cond_9

    #@71
    return v0

    #@72
    .line 1585
    :cond_9
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@74
    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    #@76
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    move-result v0

    #@7a
    if-eqz v0, :cond_a

    #@7c
    return v0

    #@7d
    .line 1586
    :cond_a
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@7f
    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@81
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    move-result v1

    #@85
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1415
    if-ne p1, p0, :cond_0

    #@4
    .line 1416
    return v4

    #@5
    .line 1417
    :cond_0
    instance-of v1, p1, Ljava/net/URI;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 1418
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 1419
    check-cast v0, Ljava/net/URI;

    #@d
    .line 1420
    .local v0, "that":Ljava/net/URI;
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    #@10
    move-result v1

    #@11
    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    #@14
    move-result v2

    #@15
    if-eq v1, v2, :cond_2

    #@17
    return v3

    #@18
    .line 1421
    :cond_2
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@1a
    iget-object v2, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@1c
    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_3

    #@22
    return v3

    #@23
    .line 1422
    :cond_3
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@25
    iget-object v2, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@27
    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_4

    #@2d
    return v3

    #@2e
    .line 1425
    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_5

    #@34
    .line 1426
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@36
    iget-object v2, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@38
    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    #@3b
    move-result v1

    #@3c
    return v1

    #@3d
    .line 1429
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@3f
    iget-object v2, v0, Ljava/net/URI;->path:Ljava/lang/String;

    #@41
    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    #@44
    move-result v1

    #@45
    if-nez v1, :cond_6

    #@47
    return v3

    #@48
    .line 1430
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@4a
    iget-object v2, v0, Ljava/net/URI;->query:Ljava/lang/String;

    #@4c
    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_7

    #@52
    return v3

    #@53
    .line 1433
    :cond_7
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@55
    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@57
    if-ne v1, v2, :cond_8

    #@59
    return v4

    #@5a
    .line 1434
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@5c
    if-eqz v1, :cond_b

    #@5e
    .line 1436
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@60
    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@62
    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    #@65
    move-result v1

    #@66
    if-nez v1, :cond_9

    #@68
    return v3

    #@69
    .line 1437
    :cond_9
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@6b
    iget-object v2, v0, Ljava/net/URI;->host:Ljava/lang/String;

    #@6d
    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    #@70
    move-result v1

    #@71
    if-nez v1, :cond_a

    #@73
    return v3

    #@74
    .line 1438
    :cond_a
    iget v1, p0, Ljava/net/URI;->port:I

    #@76
    iget v2, v0, Ljava/net/URI;->port:I

    #@78
    if-eq v1, v2, :cond_d

    #@7a
    return v3

    #@7b
    .line 1439
    :cond_b
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@7d
    if-eqz v1, :cond_c

    #@7f
    .line 1441
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@81
    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@83
    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    #@86
    move-result v1

    #@87
    if-nez v1, :cond_d

    #@89
    return v3

    #@8a
    .line 1442
    :cond_c
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@8c
    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@8e
    if-eq v1, v2, :cond_d

    #@90
    .line 1443
    return v3

    #@91
    .line 1446
    :cond_d
    return v4
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1197
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1198
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@6
    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    #@c
    .line 1199
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    #@e
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1369
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1370
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@a
    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    #@10
    .line 1371
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1269
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1311
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1312
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@a
    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    #@10
    .line 1313
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 1282
    iget v0, p0, Ljava/net/URI;->port:I

    #@2
    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1340
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1341
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@a
    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    #@10
    .line 1342
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1183
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1355
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1297
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1326
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1148
    invoke-direct {p0}, Ljava/net/URI;->defineSchemeSpecificPart()V

    #@3
    .line 1149
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1213
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1109
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1164
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1165
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    #@e
    .line 1166
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    #@10
    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1227
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1228
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@a
    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    #@10
    .line 1229
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1457
    iget v1, p0, Ljava/net/URI;->hash:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1458
    iget v1, p0, Ljava/net/URI;->hash:I

    #@7
    return v1

    #@8
    .line 1459
    :cond_0
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@a
    invoke-static {v2, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 1460
    .local v0, "h":I
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    #@10
    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    #@13
    move-result v0

    #@14
    .line 1461
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1462
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    #@1c
    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    #@1f
    move-result v0

    #@20
    .line 1474
    :goto_0
    iput v0, p0, Ljava/net/URI;->hash:I

    #@22
    .line 1475
    return v0

    #@23
    .line 1464
    :cond_1
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@25
    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    #@28
    move-result v0

    #@29
    .line 1465
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    #@2b
    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    #@2e
    move-result v0

    #@2f
    .line 1466
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 1467
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    #@35
    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    #@38
    move-result v0

    #@39
    .line 1468
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@3b
    invoke-static {v0, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    #@3e
    move-result v0

    #@3f
    .line 1469
    iget v1, p0, Ljava/net/URI;->port:I

    #@41
    mul-int/lit16 v1, v1, 0x79d

    #@43
    add-int/2addr v0, v1

    #@44
    goto :goto_0

    #@45
    .line 1471
    :cond_2
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@47
    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    #@4a
    move-result v0

    #@4b
    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 1

    #@0
    .prologue
    .line 1120
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    #@0
    .prologue
    .line 1134
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public normalize()Ljava/net/URI;
    .locals 1

    #@0
    .prologue
    .line 958
    invoke-static {p0}, Ljava/net/URI;->normalize(Ljava/net/URI;)Ljava/net/URI;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 913
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 914
    :cond_0
    return-object p0

    #@9
    .line 915
    :cond_1
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    #@c
    .line 916
    new-instance v0, Ljava/net/URI$Parser;

    #@e
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@10
    invoke-direct {v0, p0, v1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    #@17
    .line 917
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 1067
    invoke-static {p0, p1}, Ljava/net/URI;->relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1037
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 1016
    invoke-static {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toASCIIString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1622
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    #@3
    .line 1623
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@5
    invoke-static {v0}, Ljava/net/URI;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1604
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    #@3
    .line 1605
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1088
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1089
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "URI is not absolute"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1090
    :cond_0
    new-instance v0, Ljava/net/URL;

    #@11
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@18
    return-object v0
.end method
