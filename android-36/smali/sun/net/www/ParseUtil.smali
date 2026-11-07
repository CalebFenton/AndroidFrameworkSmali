.class public Lsun/net/www/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist H_ALPHA:J

.field private static final blacklist H_ALPHANUM:J

.field private static final blacklist H_DASH:J

.field private static final blacklist H_DIGIT:J = 0x0L

.field private static final blacklist H_ESCAPED:J = 0x0L

.field private static final blacklist H_HEX:J

.field private static final blacklist H_LOWALPHA:J

.field private static final blacklist H_MARK:J

.field private static final blacklist H_PATH:J

.field private static final blacklist H_PCHAR:J

.field private static final blacklist H_REG_NAME:J

.field private static final blacklist H_RESERVED:J

.field private static final blacklist H_SERVER:J

.field private static final blacklist H_UNRESERVED:J

.field private static final blacklist H_UPALPHA:J

.field private static final blacklist H_URIC:J

.field private static final blacklist H_USERINFO:J

.field private static final blacklist L_ALPHA:J = 0x0L

.field private static final blacklist L_ALPHANUM:J

.field private static final blacklist L_DASH:J

.field private static final blacklist L_DIGIT:J

.field private static final blacklist L_ESCAPED:J = 0x1L

.field private static final blacklist L_HEX:J

.field private static final blacklist L_LOWALPHA:J

.field private static final blacklist L_MARK:J

.field private static final blacklist L_PATH:J

.field private static final blacklist L_PCHAR:J

.field private static final blacklist L_REG_NAME:J

.field private static final blacklist L_RESERVED:J

.field private static final blacklist L_SERVER:J

.field private static final blacklist L_UNRESERVED:J

.field private static final blacklist L_UPALPHA:J

.field private static final blacklist L_URIC:J

.field private static final blacklist L_USERINFO:J

.field static blacklist encodedInPath:Ljava/util/BitSet;

.field private static final blacklist hexDigits:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 48
    nop

    .line 52
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    .line 59
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 60
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 61
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 62
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 66
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 67
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 68
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 69
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 70
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 71
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 72
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 73
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 74
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 75
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 76
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 77
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 78
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 79
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_89
    if-ge v0, v1, :cond_93

    .line 83
    sget-object v2, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 84
    .end local v0    # "i":I
    :cond_93
    sget-object v0, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 507
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1a8

    sput-object v0, Lsun/net/www/ParseUtil;->hexDigits:[C

    .line 594
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lsun/net/www/ParseUtil;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/net/www/ParseUtil;->L_DIGIT:J

    .line 599
    sget-wide v0, Lsun/net/www/ParseUtil;->L_DIGIT:J

    sput-wide v0, Lsun/net/www/ParseUtil;->L_HEX:J

    .line 600
    const/16 v0, 0x41

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    move-result-wide v1

    const/16 v3, 0x66

    const/16 v4, 0x61

    invoke-static {v4, v3}, Lsun/net/www/ParseUtil;->highMask(CC)J

    move-result-wide v5

    or-long/2addr v1, v5

    sput-wide v1, Lsun/net/www/ParseUtil;->H_HEX:J

    .line 606
    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lsun/net/www/ParseUtil;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/net/www/ParseUtil;->H_UPALPHA:J

    .line 612
    const/16 v0, 0x7a

    invoke-static {v4, v0}, Lsun/net/www/ParseUtil;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/net/www/ParseUtil;->H_LOWALPHA:J

    .line 616
    sget-wide v0, Lsun/net/www/ParseUtil;->H_LOWALPHA:J

    sget-wide v2, Lsun/net/www/ParseUtil;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/net/www/ParseUtil;->H_ALPHA:J

    .line 619
    sget-wide v0, Lsun/net/www/ParseUtil;->L_DIGIT:J

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    sput-wide v0, Lsun/net/www/ParseUtil;->L_ALPHANUM:J

    .line 620
    sget-wide v0, Lsun/net/www/ParseUtil;->H_ALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/net/www/ParseUtil;->H_ALPHANUM:J

    .line 624
    const-string v0, "-_.!~*\'()"

    invoke-static {v0}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lsun/net/www/ParseUtil;->L_MARK:J

    .line 625
    invoke-static {v0}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lsun/net/www/ParseUtil;->H_MARK:J

    .line 628
    sget-wide v0, Lsun/net/www/ParseUtil;->L_ALPHANUM:J

    sget-wide v4, Lsun/net/www/ParseUtil;->L_MARK:J

    or-long/2addr v0, v4

    sput-wide v0, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    .line 629
    sget-wide v0, Lsun/net/www/ParseUtil;->H_ALPHANUM:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_MARK:J

    or-long/2addr v0, v4

    sput-wide v0, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    .line 634
    const-string v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lsun/net/www/ParseUtil;->L_RESERVED:J

    .line 635
    invoke-static {v0}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lsun/net/www/ParseUtil;->H_RESERVED:J

    .line 643
    const-string v0, "-"

    invoke-static {v0}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lsun/net/www/ParseUtil;->L_DASH:J

    .line 644
    invoke-static {v0}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lsun/net/www/ParseUtil;->H_DASH:J

    .line 647
    sget-wide v0, Lsun/net/www/ParseUtil;->L_RESERVED:J

    sget-wide v4, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x1

    or-long/2addr v0, v4

    sput-wide v0, Lsun/net/www/ParseUtil;->L_URIC:J

    .line 648
    sget-wide v0, Lsun/net/www/ParseUtil;->H_RESERVED:J

    sget-wide v6, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    or-long/2addr v0, v6

    or-long/2addr v0, v2

    sput-wide v0, Lsun/net/www/ParseUtil;->H_URIC:J

    .line 652
    sget-wide v0, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    or-long/2addr v0, v4

    .line 653
    const-string v6, ":@&=+$,"

    invoke-static {v6}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Lsun/net/www/ParseUtil;->L_PCHAR:J

    .line 654
    sget-wide v0, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    or-long/2addr v0, v2

    .line 655
    invoke-static {v6}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v6

    or-long/2addr v0, v6

    sput-wide v0, Lsun/net/www/ParseUtil;->H_PCHAR:J

    .line 658
    sget-wide v0, Lsun/net/www/ParseUtil;->L_PCHAR:J

    const-string v6, ";/"

    invoke-static {v6}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Lsun/net/www/ParseUtil;->L_PATH:J

    .line 659
    sget-wide v0, Lsun/net/www/ParseUtil;->H_PCHAR:J

    invoke-static {v6}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v6

    or-long/2addr v0, v6

    sput-wide v0, Lsun/net/www/ParseUtil;->H_PATH:J

    .line 663
    sget-wide v0, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    or-long/2addr v0, v4

    .line 664
    const-string v6, ";:&=+$,"

    invoke-static {v6}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v7

    or-long/2addr v0, v7

    sput-wide v0, Lsun/net/www/ParseUtil;->L_USERINFO:J

    .line 665
    sget-wide v0, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    or-long/2addr v0, v2

    .line 666
    invoke-static {v6}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v6

    or-long/2addr v0, v6

    sput-wide v0, Lsun/net/www/ParseUtil;->H_USERINFO:J

    .line 670
    sget-wide v0, Lsun/net/www/ParseUtil;->L_UNRESERVED:J

    or-long/2addr v0, v4

    .line 671
    const-string v4, "$,;:@&=+"

    invoke-static {v4}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v5

    or-long/2addr v0, v5

    sput-wide v0, Lsun/net/www/ParseUtil;->L_REG_NAME:J

    .line 672
    sget-wide v0, Lsun/net/www/ParseUtil;->H_UNRESERVED:J

    or-long/2addr v0, v2

    .line 673
    invoke-static {v4}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/net/www/ParseUtil;->H_REG_NAME:J

    .line 676
    sget-wide v0, Lsun/net/www/ParseUtil;->L_USERINFO:J

    sget-wide v2, Lsun/net/www/ParseUtil;->L_ALPHANUM:J

    or-long/2addr v0, v2

    sget-wide v2, Lsun/net/www/ParseUtil;->L_DASH:J

    or-long/2addr v0, v2

    .line 677
    const-string v2, ".:@[]"

    invoke-static {v2}, Lsun/net/www/ParseUtil;->lowMask(Ljava/lang/String;)J

    move-result-wide v3

    or-long/2addr v0, v3

    sput-wide v0, Lsun/net/www/ParseUtil;->L_SERVER:J

    .line 678
    sget-wide v0, Lsun/net/www/ParseUtil;->H_USERINFO:J

    sget-wide v3, Lsun/net/www/ParseUtil;->H_ALPHANUM:J

    or-long/2addr v0, v3

    sget-wide v3, Lsun/net/www/ParseUtil;->H_DASH:J

    or-long/2addr v0, v3

    .line 679
    invoke-static {v2}, Lsun/net/www/ParseUtil;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/net/www/ParseUtil;->H_SERVER:J

    .line 678
    return-void

    :array_1a8
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

.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .line 392
    const/4 v0, 0x0

    const-string v1, "]"

    const-string v2, "["

    const-string v3, "//"

    const/4 v4, -0x1

    if-eqz p3, :cond_50

    .line 393
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    if-eqz p2, :cond_1f

    .line 395
    sget-wide v5, Lsun/net/www/ParseUtil;->L_USERINFO:J

    sget-wide v7, Lsun/net/www/ParseUtil;->H_USERINFO:J

    invoke-static {p2, v5, v6, v7, v8}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 398
    :cond_1f
    const/16 v3, 0x3a

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_35

    .line 399
    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 400
    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    nop

    .line 401
    .local v0, "needBrackets":Z
    :goto_36
    if-eqz v0, :cond_3d

    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 402
    :cond_3d
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    if-eqz v0, :cond_47

    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    :cond_47
    if-eq p4, v4, :cond_a6

    .line 405
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_a6

    .line 408
    .end local v0    # "needBrackets":Z
    :cond_50
    if-eqz p1, :cond_a6

    .line 409
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 411
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 412
    .local v1, "end":I
    if-eq v1, v4, :cond_93

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_93

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_73

    .line 415
    move-object v0, p1

    .line 416
    .local v0, "dontquote":Ljava/lang/String;
    const-string v2, ""

    .local v2, "doquote":Ljava/lang/String;
    goto :goto_7f

    .line 418
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v2    # "doquote":Ljava/lang/String;
    :cond_73
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 419
    .restart local v0    # "dontquote":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    .restart local v2    # "doquote":Ljava/lang/String;
    :goto_7f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    sget-wide v3, Lsun/net/www/ParseUtil;->L_REG_NAME:J

    sget-wide v5, Lsun/net/www/ParseUtil;->L_SERVER:J

    or-long/2addr v3, v5

    sget-wide v5, Lsun/net/www/ParseUtil;->H_REG_NAME:J

    sget-wide v7, Lsun/net/www/ParseUtil;->H_SERVER:J

    or-long/2addr v5, v7

    invoke-static {v2, v3, v4, v5, v6}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "end":I
    .end local v2    # "doquote":Ljava/lang/String;
    :cond_93
    goto :goto_a7

    .line 427
    :cond_94
    sget-wide v0, Lsun/net/www/ParseUtil;->L_REG_NAME:J

    sget-wide v2, Lsun/net/www/ParseUtil;->L_SERVER:J

    or-long/2addr v0, v2

    sget-wide v2, Lsun/net/www/ParseUtil;->H_REG_NAME:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_SERVER:J

    or-long/2addr v2, v4

    invoke-static {p1, v0, v1, v2, v3}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a7

    .line 408
    :cond_a6
    :goto_a6
    nop

    .line 432
    :goto_a7
    return-void
.end method

.method private static blacklist appendEncoded(Ljava/lang/StringBuffer;C)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # C

    .line 491
    const/4 v0, 0x0

    .line 493
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

    .line 494
    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_22
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_22} :catch_24

    move-object v0, v1

    .line 497
    goto :goto_26

    .line 495
    :catch_24
    move-exception v1

    .line 496
    .local v1, "x":Ljava/nio/charset/CharacterCodingException;
    nop

    .line 498
    .end local v1    # "x":Ljava/nio/charset/CharacterCodingException;
    :goto_26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 499
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 500
    .local v1, "b":I
    const/16 v2, 0x80

    if-lt v1, v2, :cond_3b

    .line 501
    int-to-byte v2, v1

    invoke-static {p0, v2}, Lsun/net/www/ParseUtil;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_3f

    .line 503
    :cond_3b
    int-to-char v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 504
    .end local v1    # "b":I
    :goto_3f
    goto :goto_26

    .line 505
    :cond_40
    return-void
.end method

.method private static blacklist appendEscape(Ljava/lang/StringBuffer;B)V
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .line 513
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 514
    sget-object v0, Lsun/net/www/ParseUtil;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    sget-object v0, Lsun/net/www/ParseUtil;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x0

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 516
    return-void
.end method

.method private static blacklist appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "fragment"    # Ljava/lang/String;

    .line 435
    if-eqz p1, :cond_12

    .line 436
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 437
    sget-wide v0, Lsun/net/www/ParseUtil;->L_URIC:J

    sget-wide v2, Lsun/net/www/ParseUtil;->H_URIC:J

    invoke-static {p1, v0, v1, v2, v3}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    :cond_12
    return-void
.end method

.method private static blacklist appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "opaquePart"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;

    .line 354
    if-eqz p1, :cond_4d

    .line 358
    const-string v0, "//["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 359
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, "end":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_40

    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_25

    .line 363
    move-object v1, p1

    .line 364
    .local v1, "dontquote":Ljava/lang/String;
    const-string v2, ""

    .local v2, "doquote":Ljava/lang/String;
    goto :goto_32

    .line 366
    .end local v1    # "dontquote":Ljava/lang/String;
    .end local v2    # "doquote":Ljava/lang/String;
    :cond_25
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 367
    .restart local v1    # "dontquote":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    .restart local v2    # "doquote":Ljava/lang/String;
    :goto_32
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    sget-wide v3, Lsun/net/www/ParseUtil;->L_URIC:J

    sget-wide v5, Lsun/net/www/ParseUtil;->H_URIC:J

    invoke-static {v2, v3, v4, v5, v6}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    .end local v0    # "end":I
    .end local v1    # "dontquote":Ljava/lang/String;
    .end local v2    # "doquote":Ljava/lang/String;
    :cond_40
    goto :goto_6f

    .line 373
    :cond_41
    sget-wide v0, Lsun/net/www/ParseUtil;->L_URIC:J

    sget-wide v2, Lsun/net/www/ParseUtil;->H_URIC:J

    invoke-static {p1, v0, v1, v2, v3}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6f

    .line 376
    :cond_4d
    invoke-static {p0, p2, p3, p4, p5}, Lsun/net/www/ParseUtil;->appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    if-eqz p6, :cond_5d

    .line 378
    sget-wide v0, Lsun/net/www/ParseUtil;->L_PATH:J

    sget-wide v2, Lsun/net/www/ParseUtil;->H_PATH:J

    invoke-static {p6, v0, v1, v2, v3}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    :cond_5d
    if-eqz p7, :cond_6f

    .line 380
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    sget-wide v0, Lsun/net/www/ParseUtil;->L_URIC:J

    sget-wide v2, Lsun/net/www/ParseUtil;->H_URIC:J

    invoke-static {p7, v0, v1, v2, v3}, Lsun/net/www/ParseUtil;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    :cond_6f
    :goto_6f
    return-void
.end method

.method private static blacklist checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 532
    if-eqz p1, :cond_1c

    .line 533
    if-eqz p2, :cond_1c

    .line 534
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_14

    goto :goto_1c

    .line 535
    :cond_14
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "Relative path in absolute URI"

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_1c
    :goto_1c
    return-void
.end method

.method private static blacklist createURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .registers 14
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

    .line 316
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .end local p0    # "scheme":Ljava/lang/String;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "query":Ljava/lang/String;
    .end local p4    # "fragment":Ljava/lang/String;
    .local v0, "scheme":Ljava/lang/String;
    .local v2, "authority":Ljava/lang/String;
    .local v6, "path":Ljava/lang/String;
    .local v7, "query":Ljava/lang/String;
    .local v8, "fragment":Ljava/lang/String;
    invoke-static/range {v0 .. v8}, Lsun/net/www/ParseUtil;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 319
    .local p0, "s":Ljava/lang/String;
    invoke-static {p0, v0, v6}, Lsun/net/www/ParseUtil;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static greylist decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "s"    # Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 175
    .local v0, "n":I
    if-eqz v0, :cond_a4

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_10

    goto/16 :goto_a4

    .line 178
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 179
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 180
    .local v3, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 181
    .local v4, "cb":Ljava/nio/CharBuffer;
    const-string v5, "UTF-8"

    invoke-static {v5}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 182
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 183
    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    .line 185
    .local v5, "dec":Ljava/nio/charset/CharsetDecoder;
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 186
    .local v6, "c":C
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35
    if-ge v7, v0, :cond_9f

    .line 187
    nop

    .line 188
    if-eq v6, v1, :cond_47

    .line 189
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v0, :cond_42

    .line 191
    goto :goto_9f

    .line 192
    :cond_42
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 193
    goto :goto_35

    .line 195
    :cond_47
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 196
    move v8, v7

    .line 198
    .local v8, "ui":I
    :cond_4b
    nop

    .line 200
    :try_start_4c
    invoke-static {p0, v7}, Lsun/net/www/ParseUtil;->unescape(Ljava/lang/String;I)B

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_53} :catch_98

    .line 203
    nop

    .line 204
    add-int/lit8 v7, v7, 0x3

    .line 205
    if-lt v7, v0, :cond_59

    .line 206
    goto :goto_60

    .line 207
    :cond_59
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 208
    if-eq v6, v1, :cond_4b

    .line 209
    nop

    .line 211
    :goto_60
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 212
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 214
    const/4 v9, 0x1

    invoke-virtual {v5, v3, v4, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v9

    .line 215
    .local v9, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v9}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v10

    const-string v11, "Error decoding percent encoded characters"

    if-nez v10, :cond_92

    .line 217
    invoke-virtual {v5, v4}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v9

    .line 218
    invoke-virtual {v9}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v10

    if-nez v10, :cond_8c

    .line 220
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .end local v8    # "ui":I
    .end local v9    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_35

    .line 219
    .restart local v8    # "ui":I
    .restart local v9    # "cr":Ljava/nio/charset/CoderResult;
    :cond_8c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    .end local v9    # "cr":Ljava/nio/charset/CoderResult;
    :catch_98
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 223
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "i":I
    .end local v8    # "ui":I
    :cond_9f
    :goto_9f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 176
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "bb":Ljava/nio/ByteBuffer;
    .end local v4    # "cb":Ljava/nio/CharBuffer;
    .end local v5    # "dec":Ljava/nio/charset/CharsetDecoder;
    .end local v6    # "c":C
    :cond_a4
    :goto_a4
    return-object p0
.end method

.method public static blacklist encodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist encodePath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flag"    # Z

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    .line 106
    .local v0, "retCC":[C
    const/4 v1, 0x0

    .line 107
    .local v1, "retLen":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 109
    .local v2, "pathCC":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 110
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    const/4 v5, 0x0

    if-ge v4, v3, :cond_b6

    .line 111
    aget-char v6, v2, v4

    .line 112
    .local v6, "c":C
    const/16 v7, 0x2f

    if-nez p1, :cond_1f

    if-eq v6, v7, :cond_25

    :cond_1f
    if-eqz p1, :cond_2c

    sget-char v8, Ljava/io/File;->separatorChar:C

    if-ne v6, v8, :cond_2c

    .line 113
    :cond_25
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "retLen":I
    .local v8, "retLen":I
    aput-char v7, v0, v1

    move v1, v8

    goto/16 :goto_9d

    .line 115
    .end local v8    # "retLen":I
    .restart local v1    # "retLen":I
    :cond_2c
    const/16 v7, 0x7f

    if-gt v6, v7, :cond_61

    .line 116
    const/16 v7, 0x61

    if-lt v6, v7, :cond_38

    const/16 v7, 0x7a

    if-le v6, v7, :cond_48

    :cond_38
    const/16 v7, 0x41

    if-lt v6, v7, :cond_40

    const/16 v7, 0x5a

    if-le v6, v7, :cond_48

    :cond_40
    const/16 v7, 0x30

    if-lt v6, v7, :cond_4e

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4e

    .line 119
    :cond_48
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "retLen":I
    .local v7, "retLen":I
    aput-char v6, v0, v1

    move v1, v7

    goto :goto_9d

    .line 121
    .end local v7    # "retLen":I
    .restart local v1    # "retLen":I
    :cond_4e
    sget-object v7, Lsun/net/www/ParseUtil;->encodedInPath:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 122
    invoke-static {v0, v6, v1}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v1

    goto :goto_9d

    .line 124
    :cond_5b
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "retLen":I
    .restart local v7    # "retLen":I
    aput-char v6, v0, v1

    move v1, v7

    goto :goto_9d

    .line 125
    .end local v7    # "retLen":I
    .restart local v1    # "retLen":I
    :cond_61
    const/16 v7, 0x7ff

    if-le v6, v7, :cond_87

    .line 126
    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-char v7, v7

    invoke-static {v0, v7, v1}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v1

    .line 127
    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-char v7, v7

    invoke-static {v0, v7, v1}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v1

    .line 128
    shr-int/lit8 v7, v6, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-char v7, v7

    invoke-static {v0, v7, v1}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v1

    goto :goto_9d

    .line 130
    :cond_87
    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-char v7, v7

    invoke-static {v0, v7, v1}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v1

    .line 131
    shr-int/lit8 v7, v6, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-char v7, v7

    invoke-static {v0, v7, v1}, Lsun/net/www/ParseUtil;->escape([CCI)I

    move-result v1

    .line 136
    :goto_9d
    add-int/lit8 v7, v1, 0x9

    array-length v8, v0

    if-le v7, v8, :cond_b2

    .line 137
    array-length v7, v0

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x10

    .line 138
    .local v7, "newLen":I
    if-gez v7, :cond_ac

    .line 139
    const v7, 0x7fffffff

    .line 141
    :cond_ac
    new-array v8, v7, [C

    .line 142
    .local v8, "buf":[C
    invoke-static {v0, v5, v8, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    move-object v0, v8

    .line 110
    .end local v6    # "c":C
    .end local v7    # "newLen":I
    .end local v8    # "buf":[C
    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    .line 146
    .end local v4    # "i":I
    :cond_b6
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private static blacklist escape([CCI)I
    .registers 6
    .param p0, "cc"    # [C
    .param p1, "c"    # C
    .param p2, "index"    # I

    .line 154
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .local v0, "index":I
    const/16 v1, 0x25

    aput-char v1, p0, p2

    .line 155
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, p0, v0

    .line 156
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .restart local v0    # "index":I
    and-int/lit8 v1, p1, 0xf

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, p0, p2

    .line 157
    return v0
.end method

.method public static greylist fileToEncodedURL(Ljava/io/File;)Ljava/net/URL;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_3e
    new-instance v1, Ljava/net/URL;

    const-string v2, "file"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static blacklist highMask(CC)J
    .registers 9
    .param p0, "first"    # C
    .param p1, "last"    # C

    .line 569
    const-wide/16 v0, 0x0

    .line 570
    .local v0, "m":J
    const/16 v2, 0x7f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v4

    .line 571
    .local v3, "f":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v4

    .line 572
    .local v2, "l":I
    move v4, v3

    .local v4, "i":I
    :goto_19
    if-gt v4, v2, :cond_22

    .line 573
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 572
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 574
    .end local v4    # "i":I
    :cond_22
    return-wide v0
.end method

.method private static blacklist highMask(Ljava/lang/String;)J
    .registers 9
    .param p0, "chars"    # Ljava/lang/String;

    .line 579
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 580
    .local v0, "n":I
    const-wide/16 v1, 0x0

    .line 581
    .local v1, "m":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_1f

    .line 582
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 583
    .local v4, "c":C
    const/16 v5, 0x40

    if-lt v4, v5, :cond_1c

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1c

    .line 584
    add-int/lit8 v5, v4, -0x40

    const-wide/16 v6, 0x1

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    .line 581
    .end local v4    # "c":C
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 586
    .end local v3    # "i":I
    :cond_1f
    return-wide v1
.end method

.method private static blacklist isEscaped(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 482
    const/4 v0, 0x0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p1, 0x2

    if-gt v1, v2, :cond_c

    goto :goto_38

    .line 485
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_36

    add-int/lit8 v1, p1, 0x1

    .line 486
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-wide v2, Lsun/net/www/ParseUtil;->L_HEX:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_HEX:J

    invoke-static {v1, v2, v3, v4, v5}, Lsun/net/www/ParseUtil;->match(CJJ)Z

    move-result v1

    if-eqz v1, :cond_36

    add-int/lit8 v1, p1, 0x2

    .line 487
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-wide v2, Lsun/net/www/ParseUtil;->L_HEX:J

    sget-wide v4, Lsun/net/www/ParseUtil;->H_HEX:J

    invoke-static {v1, v2, v3, v4, v5}, Lsun/net/www/ParseUtil;->match(CJJ)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    nop

    .line 485
    :goto_37
    return v0

    .line 483
    :cond_38
    :goto_38
    return v0
.end method

.method private static blacklist lowMask(CC)J
    .registers 9
    .param p0, "first"    # C
    .param p1, "last"    # C

    .line 546
    const-wide/16 v0, 0x0

    .line 547
    .local v0, "m":J
    const/16 v2, 0x3f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 548
    .local v3, "f":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 549
    .local v2, "l":I
    move v4, v3

    .local v4, "i":I
    :goto_16
    if-gt v4, v2, :cond_1f

    .line 550
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 549
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 551
    .end local v4    # "i":I
    :cond_1f
    return-wide v0
.end method

.method private static blacklist lowMask(Ljava/lang/String;)J
    .registers 8
    .param p0, "chars"    # Ljava/lang/String;

    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 557
    .local v0, "n":I
    const-wide/16 v1, 0x0

    .line 558
    .local v1, "m":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_18

    .line 559
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 560
    .local v4, "c":C
    const/16 v5, 0x40

    if-ge v4, v5, :cond_15

    .line 561
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v1, v5

    .line 558
    .end local v4    # "c":C
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 563
    .end local v3    # "i":I
    :cond_18
    return-wide v1
.end method

.method private static blacklist match(CJJ)Z
    .registers 12
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .line 520
    const/16 v0, 0x40

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    if-ge p0, v0, :cond_13

    .line 521
    shl-long/2addr v4, p0

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v6

    :goto_12
    return v1

    .line 522
    :cond_13
    const/16 v0, 0x80

    if-ge p0, v0, :cond_22

    .line 523
    add-int/lit8 v0, p0, -0x40

    shl-long/2addr v4, v0

    and-long/2addr v4, p3

    cmp-long v0, v4, v2

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v6

    :goto_21
    return v1

    .line 524
    :cond_22
    return v6
.end method

.method private static blacklist quote(Ljava/lang/String;JJ)Ljava/lang/String;
    .registers 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .line 445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 446
    .local v0, "n":I
    const/4 v1, 0x0

    .line 447
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

    .line 448
    .local v2, "allowNonASCII":Z
    :goto_12
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_70

    .line 449
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 450
    .local v5, "c":C
    const/16 v6, 0x80

    if-ge v5, v6, :cond_47

    .line 451
    invoke-static {v5, p1, p2, p3, p4}, Lsun/net/www/ParseUtil;->match(CJJ)Z

    move-result v6

    if-nez v6, :cond_41

    invoke-static {p0, v4}, Lsun/net/www/ParseUtil;->isEscaped(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_41

    .line 452
    if-nez v1, :cond_3c

    .line 453
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v6

    .line 454
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    :cond_3c
    int-to-byte v6, v5

    invoke-static {v1, v6}, Lsun/net/www/ParseUtil;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_6d

    .line 458
    :cond_41
    if-eqz v1, :cond_6d

    .line 459
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6d

    .line 461
    :cond_47
    if-eqz v2, :cond_68

    .line 462
    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-nez v6, :cond_55

    .line 463
    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 464
    :cond_55
    if-nez v1, :cond_64

    .line 465
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v6

    .line 466
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    :cond_64
    invoke-static {v1, v5}, Lsun/net/www/ParseUtil;->appendEncoded(Ljava/lang/StringBuffer;C)V

    goto :goto_6d

    .line 470
    :cond_68
    if-eqz v1, :cond_6d

    .line 471
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 448
    .end local v5    # "c":C
    :cond_6d
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 474
    .end local v4    # "i":I
    :cond_70
    if-nez v1, :cond_74

    move-object v3, p0

    goto :goto_78

    :cond_74
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_78
    return-object v3
.end method

.method private static blacklist toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "opaquePart"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "fragment"    # Ljava/lang/String;

    .line 333
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v0

    .line 334
    .local v1, "sb":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_10

    .line 335
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    :cond_10
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lsun/net/www/ParseUtil;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p8

    invoke-static {v1, v0}, Lsun/net/www/ParseUtil;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist toURI(Ljava/net/URL;)Ljava/net/URI;
    .registers 8
    .param p0, "url"    # Ljava/net/URL;

    .line 276
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "auth":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "query":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "ref":Ljava/lang/String;
    if-eqz v2, :cond_2f

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    :cond_2f
    if-eqz v1, :cond_44

    const-string v5, ":-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 289
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_44
    :try_start_44
    invoke-static {v0, v1, v2, v3, v4}, Lsun/net/www/ParseUtil;->createURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5
    :try_end_48
    .catch Ljava/net/URISyntaxException; {:try_start_44 .. :try_end_48} :catch_49

    .line 296
    .local v5, "uri":Ljava/net/URI;
    goto :goto_4c

    .line 294
    .end local v5    # "uri":Ljava/net/URI;
    :catch_49
    move-exception v5

    .line 295
    .local v5, "e":Ljava/net/URISyntaxException;
    const/4 v6, 0x0

    move-object v5, v6

    .line 297
    .local v5, "uri":Ljava/net/URI;
    :goto_4c
    return-object v5
.end method

.method private static blacklist unescape(Ljava/lang/String;I)B
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 164
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public blacklist canonizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "file"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 234
    .local v1, "lim":I
    :goto_5
    const-string v2, "/../"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    const/16 v3, 0x2f

    const/4 v4, 0x0

    if-ltz v2, :cond_3d

    .line 235
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_36

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 238
    :cond_36
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 242
    :cond_3d
    :goto_3d
    const-string v2, "/./"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    if-ltz v2, :cond_62

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3d

    .line 246
    :cond_62
    :goto_62
    const-string v2, "/.."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 247
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 248
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_7e

    .line 249
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_62

    .line 251
    :cond_7e
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_62

    .line 255
    :cond_83
    const-string v2, "/."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_95
    return-object p1
.end method
