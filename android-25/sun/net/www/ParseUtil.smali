.class public Lsun/net/www/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DASH:J

.field private static final H_DIGIT:J = 0x0L

.field private static final H_ESCAPED:J = 0x0L

.field private static final H_HEX:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_REG_NAME:J

.field private static final H_RESERVED:J

.field private static final H_SERVER:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final H_URIC:J

.field private static final H_USERINFO:J

.field private static final L_ALPHA:J = 0x0L

.field private static final L_ALPHANUM:J

.field private static final L_DASH:J

.field private static final L_DIGIT:J

.field private static final L_ESCAPED:J = 0x1L

.field private static final L_HEX:J

.field private static final L_LOWALPHA:J

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_REG_NAME:J

.field private static final L_RESERVED:J

.field private static final L_SERVER:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J

.field private static final L_URIC:J

.field private static final L_USERINFO:J

.field static encodedInPath:Ljava/util/BitSet;

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 12

    #@0
    .prologue
    const/16 v11, 0x61

    #@2
    const/16 v10, 0x41

    #@4
    const/16 v3, 0x20

    #@6
    const-wide/16 v8, 0x1

    #@8
    const-wide/16 v6, 0x0

    #@a
    const-class v1, Lsun/net/www/ParseUtil;

    #@c
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    const/4 v1, 0x0

    #@13
    :goto_0
    sput-boolean v1, Lsun/net/www/ParseUtil;->-assertionsDisabled:Z

    #@15
    .line 52
    new-instance v1, Ljava/util/BitSet;

    #@17
    const/16 v2, 0x100

    #@19
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    #@1c
    sput-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@1e
    .line 59
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@20
    const/16 v2, 0x3d

    #@22
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@25
    .line 60
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@27
    const/16 v2, 0x3b

    #@29
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@2c
    .line 61
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@2e
    const/16 v2, 0x3f

    #@30
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@33
    .line 62
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@35
    const/16 v2, 0x2f

    #@37
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@3a
    .line 66
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@3c
    const/16 v2, 0x23

    #@3e
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@41
    .line 67
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@43
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    #@46
    .line 68
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@48
    const/16 v2, 0x3c

    #@4a
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@4d
    .line 69
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@4f
    const/16 v2, 0x3e

    #@51
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@54
    .line 70
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@56
    const/16 v2, 0x25

    #@58
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@5b
    .line 71
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@5d
    const/16 v2, 0x22

    #@5f
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@62
    .line 72
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@64
    const/16 v2, 0x7b

    #@66
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@69
    .line 73
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@6b
    const/16 v2, 0x7d

    #@6d
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@70
    .line 74
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@72
    const/16 v2, 0x7c

    #@74
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@77
    .line 75
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@79
    const/16 v2, 0x5c

    #@7b
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@7e
    .line 76
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@80
    const/16 v2, 0x5e

    #@82
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@85
    .line 77
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@87
    const/16 v2, 0x5b

    #@89
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@8c
    .line 78
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@8e
    const/16 v2, 0x5d

    #@90
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@93
    .line 79
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@95
    const/16 v2, 0x60

    #@97
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@9a
    .line 82
    const/4 v0, 0x0

    #@9b
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    #@9d
    .line 83
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@9f
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    #@a2
    .line 82
    add-int/lit8 v0, v0, 0x1

    #@a4
    goto :goto_1

    #@a5
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    #@a6
    goto/16 :goto_0

    #@a8
    .line 84
    .restart local v0    # "i":I
    :cond_1
    sget-object v1, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@aa
    const/16 v2, 0x7f

    #@ac
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@af
    .line 507
    const/16 v1, 0x10

    #@b1
    new-array v1, v1, [C

    #@b3
    fill-array-data v1, :array_0

    #@b6
    sput-object v1, Lsun/net/www/ParseUtil;->hexDigits:[C

    #@b8
    .line 594
    const/16 v1, 0x30

    #@ba
    const/16 v2, 0x39

    #@bc
    invoke-static {v1, v2}, Lsun/net/www/ParseUtil;->lowMask(CC)J

    #@bf
    move-result-wide v2

    #@c0
    sput-wide v2, Lsun/net/www/ParseUtil;->L_DIGIT:J

    #@c2
    .line 599
    sget-wide v2, Lsun/net/www/ParseUtil;->L_DIGIT:J

    #@c4
    sput-wide v2, Lsun/net/www/ParseUtil;->L_HEX:J

    #@c6
    .line 600
    const/16 v1, 0x46

    #@c8
    invoke-static {v10, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    #@cb
    move-result-wide v2

    #@cc
    const/16 v1, 0x66

    #@ce
    invoke-static {v11, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    #@d1
    move-result-wide v4

    #@d2
    or-long/2addr v2, v4

    #@d3
    sput-wide v2, Lsun/net/www/ParseUtil;->H_HEX:J

    #@d5
    .line 606
    const/16 v1, 0x5a

    #@d7
    invoke-static {v10, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    #@da
    move-result-wide v2

    #@db
    sput-wide v2, Lsun/net/www/ParseUtil;->H_UPALPHA:J

    #@dd
    .line 612
    const/16 v1, 0x7a

    #@df
    invoke-static {v11, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    #@e2
    move-result-wide v2

    #@e3
    sput-wide v2, Lsun/net/www/ParseUtil;->H_LOWALPHA:J

    #@e5
    .line 616
    sget-wide v2, Lsun/net/www/ParseUtil;->H_LOWALPHA:J

    #@e7
    sget-wide v4, Lsun/net/www/ParseUtil;->H_UPALPHA:J

    #@e9
    or-long/2addr v2, v4

    #@ea
    sput-wide v2, Lsun/net/www/ParseUtil;->H_ALPHA:J

    #@ec
    .line 619
    sget-wide v2, Lsun/net/www/ParseUtil;->L_DIGIT:J

    #@ee
    or-long/2addr v2, v6

    #@ef
    sput-wide v2, Lsun/net/www/ParseUtil;->L_ALPHANUM:J

    #@f1
    .line 620
    sget-wide v2, Lsun/net/www/ParseUtil;->H_ALPHA:J

    #@f3
    or-long/2addr v2, v6

    #@f4
    sput-wide v2, Lsun/net/www/ParseUtil;->H_ALPHANUM:J

    #@f6
    .line 624
    const-string/jumbo v1, "-_.!~*\'()"

    #@f9
    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    #@fc
    move-result-wide v2

    #@fd
    sput-wide v2, Lsun/net/www/ParseUtil;->L_MARK:J

    #@ff
    .line 625
    const-string/jumbo v1, "-_.!~*\'()"

    #@102
    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    #@105
    move-result-wide v2

    #@106
    sput-wide v2, Lsun/net/www/ParseUtil;->H_MARK:J

    #@108
    .line 628
    sget-wide v2, Lsun/net/www/ParseUtil;->L_ALPHANUM:J

    #@10a
    sget-wide v4, Lsun/net/www/ParseUtil;->L_MARK:J

    #@10c
    or-long/2addr v2, v4

    #@10d
    sput-wide v2, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    #@10f
    .line 629
    sget-wide v2, Lsun/net/www/ParseUtil;->H_ALPHANUM:J

    #@111
    sget-wide v4, Lsun/net/www/ParseUtil;->H_MARK:J

    #@113
    or-long/2addr v2, v4

    #@114
    sput-wide v2, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    #@116
    .line 634
    const-string/jumbo v1, ";/?:@&=+$,[]"

    #@119
    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    #@11c
    move-result-wide v2

    #@11d
    sput-wide v2, Lsun/net/www/ParseUtil;->L_RESERVED:J

    #@11f
    .line 635
    const-string/jumbo v1, ";/?:@&=+$,[]"

    #@122
    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    #@125
    move-result-wide v2

    #@126
    sput-wide v2, Lsun/net/www/ParseUtil;->H_RESERVED:J

    #@128
    .line 643
    const-string/jumbo v1, "-"

    #@12b
    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    #@12e
    move-result-wide v2

    #@12f
    sput-wide v2, Lsun/net/www/ParseUtil;->L_DASH:J

    #@131
    .line 644
    const-string/jumbo v1, "-"

    #@134
    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    #@137
    move-result-wide v2

    #@138
    sput-wide v2, Lsun/net/www/ParseUtil;->H_DASH:J

    #@13a
    .line 647
    sget-wide v2, Lsun/net/www/ParseUtil;->L_RESERVED:J

    #@13c
    sget-wide v4, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    #@13e
    or-long/2addr v2, v4

    #@13f
    or-long/2addr v2, v8

    #@140
    sput-wide v2, Lsun/net/www/ParseUtil;->L_URIC:J

    #@142
    .line 648
    sget-wide v2, Lsun/net/www/ParseUtil;->H_RESERVED:J

    #@144
    sget-wide v4, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    #@146
    or-long/2addr v2, v4

    #@147
    or-long/2addr v2, v6

    #@148
    sput-wide v2, Lsun/net/www/ParseUtil;->H_URIC:J

    #@14a
    .line 653
    sget-wide v2, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    #@14c
    or-long/2addr v2, v8

    #@14d
    const-string/jumbo v1, ":@&=+$,"

    #@150
    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    #@153
    move-result-wide v4

    #@154
    or-long/2addr v2, v4

    #@155
    .line 652
    sput-wide v2, Lsun/net/www/ParseUtil;->L_PCHAR:J

    #@157
    .line 655
    sget-wide v2, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    #@159
    or-long/2addr v2, v6

    #@15a
    const-string/jumbo v1, ":@&=+$,"

    #@15d
    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    #@160
    move-result-wide v4

    #@161
    or-long/2addr v2, v4

    #@162
    .line 654
    sput-wide v2, Lsun/net/www/ParseUtil;->H_PCHAR:J

    #@164
    .line 658
    sget-wide v2, Lsun/net/www/ParseUtil;->L_PCHAR:J

    #@166
    const-string/jumbo v1, ";/"

    #@169
    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    #@16c
    move-result-wide v4

    #@16d
    or-long/2addr v2, v4

    #@16e
    sput-wide v2, Lsun/net/www/ParseUtil;->L_PATH:J

    #@170
    .line 659
    sget-wide v2, Lsun/net/www/ParseUtil;->H_PCHAR:J

    #@172
    const-string/jumbo v1, ";/"

    #@175
    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    #@178
    move-result-wide v4

    #@179
    or-long/2addr v2, v4

    #@17a
    sput-wide v2, Lsun/net/www/ParseUtil;->H_PATH:J

    #@17c
    .line 664
    sget-wide v2, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    #@17e
    or-long/2addr v2, v8

    #@17f
    const-string/jumbo v1, ";:&=+$,"

    #@182
    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    #@185
    move-result-wide v4

    #@186
    or-long/2addr v2, v4

    #@187
    .line 663
    sput-wide v2, Lsun/net/www/ParseUtil;->L_USERINFO:J

    #@189
    .line 666
    sget-wide v2, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    #@18b
    or-long/2addr v2, v6

    #@18c
    const-string/jumbo v1, ";:&=+$,"

    #@18f
    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    #@192
    move-result-wide v4

    #@193
    or-long/2addr v2, v4

    #@194
    .line 665
    sput-wide v2, Lsun/net/www/ParseUtil;->H_USERINFO:J

    #@196
    .line 671
    sget-wide v2, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    #@198
    or-long/2addr v2, v8

    #@199
    const-string/jumbo v1, "$,;:@&=+"

    #@19c
    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    #@19f
    move-result-wide v4

    #@1a0
    or-long/2addr v2, v4

    #@1a1
    .line 670
    sput-wide v2, Lsun/net/www/ParseUtil;->L_REG_NAME:J

    #@1a3
    .line 673
    sget-wide v2, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    #@1a5
    or-long/2addr v2, v6

    #@1a6
    const-string/jumbo v1, "$,;:@&=+"

    #@1a9
    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    #@1ac
    move-result-wide v4

    #@1ad
    or-long/2addr v2, v4

    #@1ae
    .line 672
    sput-wide v2, Lsun/net/www/ParseUtil;->H_REG_NAME:J

    #@1b0
    .line 677
    sget-wide v2, Lsun/net/www/ParseUtil;->L_USERINFO:J

    #@1b2
    sget-wide v4, Lsun/net/www/ParseUtil;->L_ALPHANUM:J

    #@1b4
    or-long/2addr v2, v4

    #@1b5
    sget-wide v4, Lsun/net/www/ParseUtil;->L_DASH:J

    #@1b7
    or-long/2addr v2, v4

    #@1b8
    const-string/jumbo v1, ".:@[]"

    #@1bb
    invoke-static {v1}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    #@1be
    move-result-wide v4

    #@1bf
    or-long/2addr v2, v4

    #@1c0
    .line 676
    sput-wide v2, Lsun/net/www/ParseUtil;->L_SERVER:J

    #@1c2
    .line 679
    sget-wide v2, Lsun/net/www/ParseUtil;->H_USERINFO:J

    #@1c4
    sget-wide v4, Lsun/net/www/ParseUtil;->H_ALPHANUM:J

    #@1c6
    or-long/2addr v2, v4

    #@1c7
    sget-wide v4, Lsun/net/www/ParseUtil;->H_DASH:J

    #@1c9
    or-long/2addr v2, v4

    #@1ca
    const-string/jumbo v1, ".:@[]"

    #@1cd
    invoke-static {v1}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    #@1d0
    move-result-wide v4

    #@1d1
    or-long/2addr v2, v4

    #@1d2
    .line 678
    sput-wide v2, Lsun/net/www/ParseUtil;->H_SERVER:J

    #@1d4
    .line 48
    return-void

    #@1d5
    .line 507
    nop

    #@1d6
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

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    #@0
    .prologue
    .line 392
    if-eqz p3, :cond_7

    #@2
    .line 393
    const-string/jumbo v4, "//"

    #@5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8
    .line 394
    if-eqz p2, :cond_0

    #@a
    .line 395
    sget-wide v4, Lsun/net/www/ParseUtil;->L_USERINFO:J

    #@c
    sget-wide v6, Lsun/net/www/ParseUtil;->H_USERINFO:J

    #@e
    invoke-static {p2, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 396
    const/16 v4, 0x40

    #@17
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1a
    .line 398
    :cond_0
    const/16 v4, 0x3a

    #@1c
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v4

    #@20
    if-ltz v4, :cond_1

    #@22
    .line 399
    const-string/jumbo v4, "["

    #@25
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_5

    #@2b
    .line 398
    :cond_1
    const/4 v3, 0x0

    #@2c
    .line 401
    .local v3, "needBrackets":Z
    :goto_0
    if-eqz v3, :cond_2

    #@2e
    const/16 v4, 0x5b

    #@30
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    .line 402
    :cond_2
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 403
    if-eqz v3, :cond_3

    #@38
    const/16 v4, 0x5d

    #@3a
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3d
    .line 404
    :cond_3
    const/4 v4, -0x1

    #@3e
    if-eq p4, v4, :cond_4

    #@40
    .line 405
    const/16 v4, 0x3a

    #@42
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@45
    .line 406
    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@48
    .line 390
    .end local v3    # "needBrackets":Z
    :cond_4
    :goto_1
    return-void

    #@49
    .line 400
    :cond_5
    const-string/jumbo v4, "]"

    #@4c
    invoke-virtual {p3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

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
    .line 408
    :cond_7
    if-eqz p1, :cond_4

    #@59
    .line 409
    const-string/jumbo v4, "//"

    #@5c
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 410
    const-string/jumbo v4, "["

    #@62
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_9

    #@68
    .line 411
    const-string/jumbo v4, "]"

    #@6b
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6e
    move-result v2

    #@6f
    .line 412
    .local v2, "end":I
    const/4 v4, -0x1

    #@70
    if-eq v2, v4, :cond_4

    #@72
    const-string/jumbo v4, ":"

    #@75
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@78
    move-result v4

    #@79
    const/4 v5, -0x1

    #@7a
    if-eq v4, v5, :cond_4

    #@7c
    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7f
    move-result v4

    #@80
    if-ne v2, v4, :cond_8

    #@82
    .line 415
    move-object v0, p1

    #@83
    .line 416
    .local v0, "dontquote":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@86
    .line 421
    .local v1, "doquote":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@89
    .line 423
    sget-wide v4, Lsun/net/www/ParseUtil;->L_REG_NAME:J

    #@8b
    sget-wide v6, Lsun/net/www/ParseUtil;->L_SERVER:J

    #@8d
    or-long/2addr v4, v6

    #@8e
    .line 424
    sget-wide v6, Lsun/net/www/ParseUtil;->H_REG_NAME:J

    #@90
    sget-wide v8, Lsun/net/www/ParseUtil;->H_SERVER:J

    #@92
    or-long/2addr v6, v8

    #@93
    .line 422
    invoke-static {v1, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9a
    goto :goto_1

    #@9b
    .line 418
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v2, 0x1

    #@9d
    const/4 v5, 0x0

    #@9e
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a1
    move-result-object v0

    #@a2
    .line 419
    .restart local v0    # "dontquote":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    #@a4
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    .restart local v1    # "doquote":Ljava/lang/String;
    goto :goto_3

    #@a9
    .line 428
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_9
    sget-wide v4, Lsun/net/www/ParseUtil;->L_REG_NAME:J

    #@ab
    sget-wide v6, Lsun/net/www/ParseUtil;->L_SERVER:J

    #@ad
    or-long/2addr v4, v6

    #@ae
    .line 429
    sget-wide v6, Lsun/net/www/ParseUtil;->H_REG_NAME:J

    #@b0
    sget-wide v8, Lsun/net/www/ParseUtil;->H_SERVER:J

    #@b2
    or-long/2addr v6, v8

    #@b3
    .line 427
    invoke-static {p1, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@b6
    move-result-object v4

    #@b7
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ba
    goto :goto_1
.end method

.method private static appendEncoded(Ljava/lang/StringBuffer;C)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # C

    #@0
    .prologue
    .line 491
    const/4 v1, 0x0

    #@1
    .line 493
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    #@4
    invoke-static {v3}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    #@7
    move-result-object v3

    #@8
    .line 494
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
    .line 493
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v1

    #@24
    .line 498
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 499
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@2d
    move-result v3

    #@2e
    and-int/lit16 v0, v3, 0xff

    #@30
    .line 500
    .local v0, "b":I
    const/16 v3, 0x80

    #@32
    if-lt v0, v3, :cond_1

    #@34
    .line 501
    int-to-byte v3, v0

    #@35
    invoke-static {p0, v3}, Lsun/net/www/ParseUtil;->appendEscape(Ljava/lang/StringBuffer;B)V

    #@38
    goto :goto_0

    #@39
    .line 495
    .end local v0    # "b":I
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    #@3a
    .line 496
    .local v2, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v3, Lsun/net/www/ParseUtil;->-assertionsDisabled:Z

    #@3c
    if-nez v3, :cond_0

    #@3e
    new-instance v3, Ljava/lang/AssertionError;

    #@40
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@43
    throw v3

    #@44
    .line 503
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
    .line 490
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
    .line 513
    const/16 v0, 0x25

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5
    .line 514
    sget-object v0, Lsun/net/www/ParseUtil;->hexDigits:[C

    #@7
    shr-int/lit8 v1, p1, 0x4

    #@9
    and-int/lit8 v1, v1, 0xf

    #@b
    aget-char v0, v0, v1

    #@d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@10
    .line 515
    sget-object v0, Lsun/net/www/ParseUtil;->hexDigits:[C

    #@12
    shr-int/lit8 v1, p1, 0x0

    #@14
    and-int/lit8 v1, v1, 0xf

    #@16
    aget-char v0, v0, v1

    #@18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1b
    .line 512
    return-void
.end method

.method private static appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 435
    if-eqz p1, :cond_0

    #@2
    .line 436
    const/16 v0, 0x23

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7
    .line 437
    sget-wide v0, Lsun/net/www/ParseUtil;->L_URIC:J

    #@9
    sget-wide v2, Lsun/net/www/ParseUtil;->H_URIC:J

    #@b
    invoke-static {p1, v0, v1, v2, v3}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 434
    :cond_0
    return-void
.end method

.method private static appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "opaquePart"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 354
    if-eqz p1, :cond_3

    #@3
    .line 358
    const-string/jumbo v3, "//["

    #@6
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 359
    const-string/jumbo v3, "]"

    #@f
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@12
    move-result v2

    #@13
    .line 360
    .local v2, "end":I
    if-eq v2, v4, :cond_0

    #@15
    const-string/jumbo v3, ":"

    #@18
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1b
    move-result v3

    #@1c
    if-eq v3, v4, :cond_0

    #@1e
    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@21
    move-result v3

    #@22
    if-ne v2, v3, :cond_1

    #@24
    .line 363
    move-object v0, p1

    #@25
    .line 364
    .local v0, "dontquote":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@28
    .line 369
    .local v1, "doquote":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 370
    sget-wide v4, Lsun/net/www/ParseUtil;->L_URIC:J

    #@2d
    sget-wide v6, Lsun/net/www/ParseUtil;->H_URIC:J

    #@2f
    invoke-static {v1, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@36
    .line 352
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_0
    :goto_1
    return-void

    #@37
    .line 366
    .restart local v2    # "end":I
    :cond_1
    add-int/lit8 v3, v2, 0x1

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 367
    .restart local v0    # "dontquote":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    #@40
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .restart local v1    # "doquote":Ljava/lang/String;
    goto :goto_0

    #@45
    .line 373
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_2
    sget-wide v4, Lsun/net/www/ParseUtil;->L_URIC:J

    #@47
    sget-wide v6, Lsun/net/www/ParseUtil;->H_URIC:J

    #@49
    invoke-static {p1, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    goto :goto_1

    #@51
    .line 376
    :cond_3
    invoke-static {p0, p2, p3, p4, p5}, Lsun/net/www/ParseUtil;->appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@54
    .line 377
    if-eqz p6, :cond_4

    #@56
    .line 378
    sget-wide v4, Lsun/net/www/ParseUtil;->L_PATH:J

    #@58
    sget-wide v6, Lsun/net/www/ParseUtil;->H_PATH:J

    #@5a
    invoke-static {p6, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@61
    .line 379
    :cond_4
    if-eqz p7, :cond_0

    #@63
    .line 380
    const/16 v3, 0x3f

    #@65
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@68
    .line 381
    sget-wide v4, Lsun/net/www/ParseUtil;->L_URIC:J

    #@6a
    sget-wide v6, Lsun/net/www/ParseUtil;->H_URIC:J

    #@6c
    invoke-static {p7, v4, v5, v6, v7}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@73
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
    .line 532
    if-eqz p1, :cond_0

    #@3
    .line 533
    if-eqz p2, :cond_0

    #@5
    .line 534
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
    .line 535
    new-instance v0, Ljava/net/URISyntaxException;

    #@15
    .line 536
    const-string/jumbo v1, "Relative path in absolute URI"

    #@18
    .line 535
    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 530
    :cond_0
    return-void
.end method

.method private static createURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 10
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 317
    const/4 v5, -0x1

    #@2
    move-object v0, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, v1

    #@5
    move-object v4, v1

    #@6
    move-object v6, p2

    #@7
    move-object v7, p3

    #@8
    move-object v8, p4

    #@9
    .line 316
    invoke-static/range {v0 .. v8}, Lsun/net/www/ParseUtil;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v9

    #@d
    .line 319
    .local v9, "s":Ljava/lang/String;
    invoke-static {v9, p0, p2}, Lsun/net/www/ParseUtil;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 320
    new-instance v0, Ljava/net/URI;

    #@12
    invoke-direct {v0, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@15
    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
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
    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v7

    #@8
    .line 175
    .local v7, "n":I
    if-eqz v7, :cond_0

    #@a
    invoke-virtual {p0, v14}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v10

    #@e
    if-gez v10, :cond_1

    #@10
    .line 176
    :cond_0
    return-object p0

    #@11
    .line 178
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    .line 179
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@19
    move-result-object v0

    #@1a
    .line 180
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@1d
    move-result-object v2

    #@1e
    .line 181
    .local v2, "cb":Ljava/nio/CharBuffer;
    const-string/jumbo v10, "UTF-8"

    #@21
    invoke-static {v10}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    #@24
    move-result-object v10

    #@25
    .line 182
    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@27
    .line 181
    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@2a
    move-result-object v10

    #@2b
    .line 183
    sget-object v13, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    #@2d
    .line 181
    invoke-virtual {v10, v13}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    #@30
    move-result-object v4

    #@31
    .line 185
    .local v4, "dec":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    .line 186
    .local v1, "c":C
    const/4 v6, 0x0

    #@36
    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_4

    #@38
    .line 187
    sget-boolean v10, Lsun/net/www/ParseUtil;->-assertionsDisabled:Z

    #@3a
    if-nez v10, :cond_3

    #@3c
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v10

    #@40
    if-ne v1, v10, :cond_2

    #@42
    move v10, v11

    #@43
    :goto_1
    if-nez v10, :cond_3

    #@45
    new-instance v10, Ljava/lang/AssertionError;

    #@47
    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    #@4a
    throw v10

    #@4b
    :cond_2
    move v10, v12

    #@4c
    goto :goto_1

    #@4d
    .line 188
    :cond_3
    if-eq v1, v14, :cond_6

    #@4f
    .line 189
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    .line 190
    add-int/lit8 v6, v6, 0x1

    #@54
    if-lt v6, v7, :cond_5

    #@56
    .line 223
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v10

    #@5a
    return-object v10

    #@5b
    .line 192
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v1

    #@5f
    goto :goto_0

    #@60
    .line 195
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@63
    .line 196
    move v9, v6

    #@64
    .line 198
    .local v9, "ui":I
    :cond_7
    sget-boolean v10, Lsun/net/www/ParseUtil;->-assertionsDisabled:Z

    #@66
    if-nez v10, :cond_9

    #@68
    sub-int v10, v7, v6

    #@6a
    const/4 v13, 0x2

    #@6b
    if-lt v10, v13, :cond_8

    #@6d
    move v10, v11

    #@6e
    :goto_2
    if-nez v10, :cond_9

    #@70
    new-instance v10, Ljava/lang/AssertionError;

    #@72
    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    #@75
    throw v10

    #@76
    :cond_8
    move v10, v12

    #@77
    goto :goto_2

    #@78
    .line 200
    :cond_9
    :try_start_0
    invoke-static {p0, v6}, Lsun/net/www/ParseUtil;->unescape(Ljava/lang/String;I)B

    #@7b
    move-result v10

    #@7c
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7f
    .line 204
    add-int/lit8 v6, v6, 0x3

    #@81
    .line 205
    if-lt v6, v7, :cond_a

    #@83
    .line 211
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@86
    .line 212
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    #@89
    .line 213
    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    #@8c
    .line 214
    invoke-virtual {v4, v0, v2, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    #@8f
    move-result-object v3

    #@90
    .line 215
    .local v3, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    #@93
    move-result v10

    #@94
    if-eqz v10, :cond_b

    #@96
    .line 216
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@98
    const-string/jumbo v11, "Error decoding percent encoded characters"

    #@9b
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v10

    #@9f
    .line 201
    .end local v3    # "cr":Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v5

    #@a0
    .line 202
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@a2
    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a5
    throw v10

    #@a6
    .line 207
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@a9
    move-result v1

    #@aa
    .line 208
    if-eq v1, v14, :cond_7

    #@ac
    goto :goto_3

    #@ad
    .line 217
    .restart local v3    # "cr":Ljava/nio/charset/CoderResult;
    :cond_b
    invoke-virtual {v4, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    #@b0
    move-result-object v3

    #@b1
    .line 218
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    #@b4
    move-result v10

    #@b5
    if-eqz v10, :cond_c

    #@b7
    .line 219
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@b9
    const-string/jumbo v11, "Error decoding percent encoded characters"

    #@bc
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v10

    #@c0
    .line 220
    :cond_c
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@c3
    move-result-object v10

    #@c4
    invoke-virtual {v10}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    #@c7
    move-result-object v10

    #@c8
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    goto/16 :goto_0
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static encodePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flag"    # Z

    #@0
    .prologue
    const/16 v12, 0x2f

    #@2
    const/4 v11, 0x0

    #@3
    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v9

    #@7
    mul-int/lit8 v9, v9, 0x2

    #@9
    add-int/lit8 v9, v9, 0x10

    #@b
    new-array v6, v9, [C

    #@d
    .line 106
    .local v6, "retCC":[C
    const/4 v7, 0x0

    #@e
    .line 107
    .local v7, "retLen":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@11
    move-result-object v5

    #@12
    .line 109
    .local v5, "pathCC":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v3

    #@16
    .line 110
    .local v3, "n":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    move v8, v7

    #@18
    .end local v7    # "retLen":I
    .local v8, "retLen":I
    :goto_0
    if-ge v2, v3, :cond_c

    #@1a
    .line 111
    aget-char v1, v5, v2

    #@1c
    .line 112
    .local v1, "c":C
    if-nez p1, :cond_3

    #@1e
    if-ne v1, v12, :cond_3

    #@20
    .line 113
    :cond_0
    add-int/lit8 v7, v8, 0x1

    #@22
    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    aput-char v12, v6, v8

    #@24
    .line 136
    :goto_1
    add-int/lit8 v9, v7, 0x9

    #@26
    array-length v10, v6

    #@27
    if-le v9, v10, :cond_2

    #@29
    .line 137
    array-length v9, v6

    #@2a
    mul-int/lit8 v9, v9, 0x2

    #@2c
    add-int/lit8 v4, v9, 0x10

    #@2e
    .line 138
    .local v4, "newLen":I
    if-gez v4, :cond_1

    #@30
    .line 139
    const v4, 0x7fffffff

    #@33
    .line 141
    :cond_1
    new-array v0, v4, [C

    #@35
    .line 142
    .local v0, "buf":[C
    invoke-static {v6, v11, v0, v11, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@38
    .line 143
    move-object v6, v0

    #@39
    .line 110
    .end local v0    # "buf":[C
    .end local v4    # "newLen":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3b
    move v8, v7

    #@3c
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    goto :goto_0

    #@3d
    .line 112
    :cond_3
    if-eqz p1, :cond_4

    #@3f
    sget-char v9, Ljava/io/File;->separatorChar:C

    #@41
    if-eq v1, v9, :cond_0

    #@43
    .line 115
    :cond_4
    const/16 v9, 0x7f

    #@45
    if-gt v1, v9, :cond_a

    #@47
    .line 116
    const/16 v9, 0x61

    #@49
    if-lt v1, v9, :cond_6

    #@4b
    const/16 v9, 0x7a

    #@4d
    if-gt v1, v9, :cond_6

    #@4f
    .line 119
    :cond_5
    add-int/lit8 v7, v8, 0x1

    #@51
    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    aput-char v1, v6, v8

    #@53
    goto :goto_1

    #@54
    .line 117
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_6
    const/16 v9, 0x41

    #@56
    if-lt v1, v9, :cond_7

    #@58
    const/16 v9, 0x5a

    #@5a
    if-le v1, v9, :cond_5

    #@5c
    .line 118
    :cond_7
    const/16 v9, 0x30

    #@5e
    if-lt v1, v9, :cond_8

    #@60
    const/16 v9, 0x39

    #@62
    if-le v1, v9, :cond_5

    #@64
    .line 121
    :cond_8
    sget-object v9, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    #@66
    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    #@69
    move-result v9

    #@6a
    if-eqz v9, :cond_9

    #@6c
    .line 122
    invoke-static {v6, v1, v8}, Lsun/net/www/ParseUtil;->escape([CCI)I

    #@6f
    move-result v7

    #@70
    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    goto :goto_1

    #@71
    .line 124
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_9
    add-int/lit8 v7, v8, 0x1

    #@73
    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    aput-char v1, v6, v8

    #@75
    goto :goto_1

    #@76
    .line 125
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_a
    const/16 v9, 0x7ff

    #@78
    if-le v1, v9, :cond_b

    #@7a
    .line 126
    shr-int/lit8 v9, v1, 0xc

    #@7c
    and-int/lit8 v9, v9, 0xf

    #@7e
    or-int/lit16 v9, v9, 0xe0

    #@80
    int-to-char v9, v9

    #@81
    invoke-static {v6, v9, v8}, Lsun/net/www/ParseUtil;->escape([CCI)I

    #@84
    move-result v7

    #@85
    .line 127
    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    shr-int/lit8 v9, v1, 0x6

    #@87
    and-int/lit8 v9, v9, 0x3f

    #@89
    or-int/lit16 v9, v9, 0x80

    #@8b
    int-to-char v9, v9

    #@8c
    invoke-static {v6, v9, v7}, Lsun/net/www/ParseUtil;->escape([CCI)I

    #@8f
    move-result v7

    #@90
    .line 128
    shr-int/lit8 v9, v1, 0x0

    #@92
    and-int/lit8 v9, v9, 0x3f

    #@94
    or-int/lit16 v9, v9, 0x80

    #@96
    int-to-char v9, v9

    #@97
    invoke-static {v6, v9, v7}, Lsun/net/www/ParseUtil;->escape([CCI)I

    #@9a
    move-result v7

    #@9b
    goto :goto_1

    #@9c
    .line 130
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_b
    shr-int/lit8 v9, v1, 0x6

    #@9e
    and-int/lit8 v9, v9, 0x1f

    #@a0
    or-int/lit16 v9, v9, 0xc0

    #@a2
    int-to-char v9, v9

    #@a3
    invoke-static {v6, v9, v8}, Lsun/net/www/ParseUtil;->escape([CCI)I

    #@a6
    move-result v7

    #@a7
    .line 131
    .end local v8    # "retLen":I
    .restart local v7    # "retLen":I
    shr-int/lit8 v9, v1, 0x0

    #@a9
    and-int/lit8 v9, v9, 0x3f

    #@ab
    or-int/lit16 v9, v9, 0x80

    #@ad
    int-to-char v9, v9

    #@ae
    invoke-static {v6, v9, v7}, Lsun/net/www/ParseUtil;->escape([CCI)I

    #@b1
    move-result v7

    #@b2
    goto/16 :goto_1

    #@b4
    .line 146
    .end local v1    # "c":C
    .end local v7    # "retLen":I
    .restart local v8    # "retLen":I
    :cond_c
    new-instance v9, Ljava/lang/String;

    #@b6
    invoke-direct {v9, v6, v11, v8}, Ljava/lang/String;-><init>([CII)V

    #@b9
    return-object v9
.end method

.method private static escape([CCI)I
    .locals 3
    .param p0, "cc"    # [C
    .param p1, "c"    # C
    .param p2, "index"    # I

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 154
    add-int/lit8 v0, p2, 0x1

    #@4
    .end local p2    # "index":I
    .local v0, "index":I
    const/16 v1, 0x25

    #@6
    aput-char v1, p0, p2

    #@8
    .line 155
    add-int/lit8 p2, v0, 0x1

    #@a
    .end local v0    # "index":I
    .restart local p2    # "index":I
    shr-int/lit8 v1, p1, 0x4

    #@c
    and-int/lit8 v1, v1, 0xf

    #@e
    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    #@11
    move-result v1

    #@12
    aput-char v1, p0, v0

    #@14
    .line 156
    add-int/lit8 v0, p2, 0x1

    #@16
    .end local p2    # "index":I
    .restart local v0    # "index":I
    and-int/lit8 v1, p1, 0xf

    #@18
    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    #@1b
    move-result v1

    #@1c
    aput-char v1, p0, p2

    #@1e
    .line 157
    return v0
.end method

.method public static fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 265
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 266
    const-string/jumbo v1, "/"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "/"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 269
    :cond_0
    const-string/jumbo v1, "/"

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_1

    #@2e
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, "/"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    .line 272
    :cond_1
    new-instance v1, Ljava/net/URL;

    #@4a
    const-string/jumbo v2, "file"

    #@4d
    const-string/jumbo v3, ""

    #@50
    invoke-direct {v1, v2, v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@53
    return-object v1
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
    .line 569
    const-wide/16 v4, 0x0

    #@6
    .line 570
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
    .line 571
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
    .line 572
    .local v2, "l":I
    move v1, v0

    #@1b
    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    #@1d
    .line 573
    const-wide/16 v6, 0x1

    #@1f
    shl-long/2addr v6, v1

    #@20
    or-long/2addr v4, v6

    #@21
    .line 572
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 574
    :cond_0
    return-wide v4
.end method

.method private static highMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    #@0
    .prologue
    .line 579
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .line 580
    .local v4, "n":I
    const-wide/16 v2, 0x0

    #@6
    .line 581
    .local v2, "m":J
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@9
    .line 582
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 583
    .local v0, "c":C
    const/16 v5, 0x40

    #@f
    if-lt v0, v5, :cond_0

    #@11
    const/16 v5, 0x80

    #@13
    if-ge v0, v5, :cond_0

    #@15
    .line 584
    add-int/lit8 v5, v0, -0x40

    #@17
    const-wide/16 v6, 0x1

    #@19
    shl-long/2addr v6, v5

    #@1a
    or-long/2addr v2, v6

    #@1b
    .line 581
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 586
    .end local v0    # "c":C
    :cond_1
    return-wide v2
.end method

.method private static isEscaped(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 482
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v2, p1, 0x2

    #@9
    if-gt v1, v2, :cond_1

    #@b
    .line 483
    :cond_0
    return v0

    #@c
    .line 485
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    const/16 v2, 0x25

    #@12
    if-ne v1, v2, :cond_2

    #@14
    .line 486
    add-int/lit8 v1, p1, 0x1

    #@16
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v1

    #@1a
    sget-wide v2, Lsun/net/www/ParseUtil;->L_HEX:J

    #@1c
    sget-wide v4, Lsun/net/www/ParseUtil;->H_HEX:J

    #@1e
    invoke-static {v1, v2, v3, v4, v5}, Lsun/net/www/ParseUtil;->match(CJJ)Z

    #@21
    move-result v1

    #@22
    .line 485
    if-eqz v1, :cond_2

    #@24
    .line 487
    add-int/lit8 v0, p1, 0x2

    #@26
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v0

    #@2a
    sget-wide v2, Lsun/net/www/ParseUtil;->L_HEX:J

    #@2c
    sget-wide v4, Lsun/net/www/ParseUtil;->H_HEX:J

    #@2e
    invoke-static {v0, v2, v3, v4, v5}, Lsun/net/www/ParseUtil;->match(CJJ)Z

    #@31
    move-result v0

    #@32
    .line 485
    :cond_2
    return v0
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
    .line 546
    const-wide/16 v4, 0x0

    #@5
    .line 547
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    #@8
    move-result v3

    #@9
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@c
    move-result v0

    #@d
    .line 548
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v3

    #@11
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v2

    #@15
    .line 549
    .local v2, "l":I
    move v1, v0

    #@16
    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    #@18
    .line 550
    const-wide/16 v6, 0x1

    #@1a
    shl-long/2addr v6, v1

    #@1b
    or-long/2addr v4, v6

    #@1c
    .line 549
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 551
    :cond_0
    return-wide v4
.end method

.method private static lowMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    #@0
    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    .line 557
    .local v4, "n":I
    const-wide/16 v2, 0x0

    #@6
    .line 558
    .local v2, "m":J
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@9
    .line 559
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 560
    .local v0, "c":C
    const/16 v5, 0x40

    #@f
    if-ge v0, v5, :cond_0

    #@11
    .line 561
    const-wide/16 v6, 0x1

    #@13
    shl-long/2addr v6, v0

    #@14
    or-long/2addr v2, v6

    #@15
    .line 558
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 563
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
    .line 520
    const/16 v2, 0x40

    #@8
    if-ge p0, v2, :cond_1

    #@a
    .line 521
    shl-long v2, v6, p0

    #@c
    and-long/2addr v2, p1

    #@d
    cmp-long v2, v2, v4

    #@f
    if-eqz v2, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0

    #@14
    .line 522
    :cond_1
    const/16 v2, 0x80

    #@16
    if-ge p0, v2, :cond_3

    #@18
    .line 523
    add-int/lit8 v2, p0, -0x40

    #@1a
    shl-long v2, v6, v2

    #@1c
    and-long/2addr v2, p3

    #@1d
    cmp-long v2, v2, v4

    #@1f
    if-eqz v2, :cond_2

    #@21
    :goto_1
    return v0

    #@22
    :cond_2
    move v0, v1

    #@23
    goto :goto_1

    #@24
    .line 524
    :cond_3
    return v1
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
    .line 445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 446
    .local v3, "n":I
    const/4 v4, 0x0

    #@6
    .line 447
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
    .line 448
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
    if-ge v2, v5, :cond_9

    #@17
    .line 449
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 450
    .local v1, "c":C
    const/16 v5, 0x80

    #@1d
    if-ge v1, v5, :cond_5

    #@1f
    .line 451
    invoke-static {v1, p1, p2, p3, p4}, Lsun/net/www/ParseUtil;->match(CJJ)Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_0

    #@25
    invoke-static {p0, v2}, Lsun/net/www/ParseUtil;->isEscaped(Ljava/lang/String;I)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_3

    #@2b
    .line 458
    :cond_0
    if-eqz v4, :cond_1

    #@2d
    .line 459
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 448
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_1

    #@33
    .line 447
    .end local v0    # "allowNonASCII":Z
    .end local v1    # "c":C
    .end local v2    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    const/4 v0, 0x0

    #@34
    .restart local v0    # "allowNonASCII":Z
    goto :goto_0

    #@35
    .line 452
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    :cond_3
    if-nez v4, :cond_4

    #@37
    .line 453
    new-instance v4, Ljava/lang/StringBuffer;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@3c
    .line 454
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    .line 456
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    int-to-byte v5, v1

    #@44
    invoke-static {v4, v5}, Lsun/net/www/ParseUtil;->appendEscape(Ljava/lang/StringBuffer;B)V

    #@47
    goto :goto_2

    #@48
    .line 461
    :cond_5
    if-eqz v0, :cond_8

    #@4a
    .line 462
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@4d
    move-result v5

    #@4e
    if-nez v5, :cond_6

    #@50
    .line 463
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    #@53
    move-result v5

    #@54
    .line 461
    if-eqz v5, :cond_8

    #@56
    .line 464
    :cond_6
    if-nez v4, :cond_7

    #@58
    .line 465
    new-instance v4, Ljava/lang/StringBuffer;

    #@5a
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@5d
    .line 466
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@64
    .line 468
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    invoke-static {v4, v1}, Lsun/net/www/ParseUtil;->appendEncoded(Ljava/lang/StringBuffer;C)V

    #@67
    goto :goto_2

    #@68
    .line 470
    :cond_8
    if-eqz v4, :cond_1

    #@6a
    .line 471
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6d
    goto :goto_2

    #@6e
    .line 474
    .end local v1    # "c":C
    :cond_9
    if-nez v4, :cond_a

    #@70
    .end local p0    # "s":Ljava/lang/String;
    :goto_3
    return-object p0

    #@71
    .restart local p0    # "s":Ljava/lang/String;
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@74
    move-result-object p0

    #@75
    goto :goto_3
.end method

.method private static toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "opaquePart"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 334
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    #@7
    .line 335
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a
    .line 336
    const/16 v2, 0x3a

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@f
    :cond_0
    move-object v2, p1

    #@10
    move-object v3, p2

    #@11
    move-object v4, p3

    #@12
    move-object v5, p4

    #@13
    move v6, p5

    #@14
    move-object v7, p6

    #@15
    move-object/from16 v8, p7

    #@17
    .line 338
    invoke-static/range {v1 .. v8}, Lsun/net/www/ParseUtil;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 341
    move-object/from16 v0, p8

    #@1c
    invoke-static {v1, v0}, Lsun/net/www/ParseUtil;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@1f
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    return-object v2
.end method

.method public static toURI(Ljava/net/URL;)Ljava/net/URI;
    .locals 9
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 277
    .local v3, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 278
    .local v0, "auth":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 279
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 280
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 281
    .local v5, "ref":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@16
    const-string/jumbo v7, "/"

    #@19
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v7

    #@1d
    if-eqz v7, :cond_2

    #@1f
    .line 288
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@21
    const-string/jumbo v7, ":-1"

    #@24
    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_1

    #@2a
    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2d
    move-result v7

    #@2e
    add-int/lit8 v7, v7, -0x3

    #@30
    const/4 v8, 0x0

    #@31
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 293
    :cond_1
    :try_start_0
    invoke-static {v3, v0, v2, v4, v5}, Lsun/net/www/ParseUtil;->createURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    move-result-object v6

    #@39
    .line 297
    :goto_1
    return-object v6

    #@3a
    .line 282
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "/"

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    goto :goto_0

    #@4f
    .line 294
    :catch_0
    move-exception v1

    #@50
    .line 295
    .local v1, "e":Ljava/net/URISyntaxException;
    const/4 v6, 0x0

    #@51
    .local v6, "uri":Ljava/net/URI;
    goto :goto_1
.end method

.method private static unescape(Ljava/lang/String;I)B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I

    #@0
    .prologue
    .line 164
    add-int/lit8 v0, p1, 0x1

    #@2
    add-int/lit8 v1, p1, 0x3

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0x10

    #@a
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    int-to-byte v0, v0

    #@f
    return v0
.end method


# virtual methods
.method public canonizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x2f

    #@2
    const/4 v4, 0x0

    #@3
    .line 230
    const/4 v0, 0x0

    #@4
    .line 231
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    .line 234
    .local v1, "lim":I
    :goto_0
    const-string/jumbo v2, "/../"

    #@b
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    if-ltz v0, :cond_1

    #@11
    .line 235
    add-int/lit8 v2, v0, -0x1

    #@13
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->lastIndexOf(II)I

    #@16
    move-result v1

    #@17
    if-ltz v1, :cond_0

    #@19
    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    add-int/lit8 v3, v0, 0x3

    #@28
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p1

    #@34
    goto :goto_0

    #@35
    .line 238
    :cond_0
    add-int/lit8 v2, v0, 0x3

    #@37
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3a
    move-result-object p1

    #@3b
    goto :goto_0

    #@3c
    .line 242
    :cond_1
    :goto_1
    const-string/jumbo v2, "/./"

    #@3f
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@42
    move-result v0

    #@43
    if-ltz v0, :cond_2

    #@45
    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    add-int/lit8 v3, v0, 0x2

    #@54
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object p1

    #@60
    goto :goto_1

    #@61
    .line 246
    :cond_2
    :goto_2
    const-string/jumbo v2, "/.."

    #@64
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_4

    #@6a
    .line 247
    const-string/jumbo v2, "/.."

    #@6d
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@70
    move-result v0

    #@71
    .line 248
    add-int/lit8 v2, v0, -0x1

    #@73
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->lastIndexOf(II)I

    #@76
    move-result v1

    #@77
    if-ltz v1, :cond_3

    #@79
    .line 249
    add-int/lit8 v2, v1, 0x1

    #@7b
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7e
    move-result-object p1

    #@7f
    goto :goto_2

    #@80
    .line 251
    :cond_3
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@83
    move-result-object p1

    #@84
    goto :goto_2

    #@85
    .line 255
    :cond_4
    const-string/jumbo v2, "/."

    #@88
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@8b
    move-result v2

    #@8c
    if-eqz v2, :cond_5

    #@8e
    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@91
    move-result v2

    #@92
    add-int/lit8 v2, v2, -0x1

    #@94
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@97
    move-result-object p1

    #@98
    .line 258
    :cond_5
    return-object p1
.end method
