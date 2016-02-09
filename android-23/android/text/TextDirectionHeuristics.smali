.class public Landroid/text/TextDirectionHeuristics;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;,
        Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;,
        Landroid/text/TextDirectionHeuristics$FirstStrong;,
        Landroid/text/TextDirectionHeuristics$AnyStrong;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

.field public static final LOCALE:Landroid/text/TextDirectionHeuristic;

.field public static final LTR:Landroid/text/TextDirectionHeuristic;

.field public static final RTL:Landroid/text/TextDirectionHeuristic;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static synthetic -wrap0(I)I
    .locals 1
    .param p0, "codePoint"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/text/TextDirectionHeuristics;->isRtlCodePoint(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 41
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    #@5
    invoke-direct {v0, v2, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    #@8
    .line 40
    sput-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@a
    .line 47
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    #@c
    invoke-direct {v0, v2, v4, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    #@f
    .line 46
    sput-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@11
    .line 55
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    #@13
    sget-object v1, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    #@15
    invoke-direct {v0, v1, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    #@18
    .line 54
    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@1a
    .line 63
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    #@1c
    sget-object v1, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    #@1e
    invoke-direct {v0, v1, v4, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    #@21
    .line 62
    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@23
    .line 70
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    #@25
    sget-object v1, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    #@27
    invoke-direct {v0, v1, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;)V

    #@2a
    .line 69
    sput-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    #@2c
    .line 75
    sget-object v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;->INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    #@2e
    sput-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    #@30
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static isRtlCodePoint(I)I
    .locals 5
    .param p0, "codePoint"    # I

    #@0
    .prologue
    const v4, 0xfffe

    #@3
    const/4 v3, 0x2

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    .line 88
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    #@9
    move-result v0

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 126
    return v3

    #@e
    .line 90
    :pswitch_0
    return v2

    #@f
    .line 93
    :pswitch_1
    return v1

    #@10
    .line 98
    :pswitch_2
    const/16 v0, 0x590

    #@12
    if-gt v0, p0, :cond_1

    #@14
    const/16 v0, 0x8ff

    #@16
    if-gt p0, v0, :cond_1

    #@18
    .line 105
    :cond_0
    return v1

    #@19
    .line 99
    :cond_1
    const v0, 0xfb1d

    #@1c
    if-gt v0, p0, :cond_2

    #@1e
    const v0, 0xfdcf

    #@21
    if-le p0, v0, :cond_0

    #@23
    .line 100
    :cond_2
    const v0, 0xfdf0

    #@26
    if-gt v0, p0, :cond_3

    #@28
    const v0, 0xfdff

    #@2b
    if-le p0, v0, :cond_0

    #@2d
    .line 101
    :cond_3
    const v0, 0xfe70

    #@30
    if-gt v0, p0, :cond_4

    #@32
    const v0, 0xfeff

    #@35
    if-le p0, v0, :cond_0

    #@37
    .line 102
    :cond_4
    const v0, 0x10800

    #@3a
    if-gt v0, p0, :cond_5

    #@3c
    const v0, 0x10fff

    #@3f
    if-le p0, v0, :cond_0

    #@41
    .line 103
    :cond_5
    const v0, 0x1e800

    #@44
    if-gt v0, p0, :cond_6

    #@46
    const v0, 0x1efff

    #@49
    if-le p0, v0, :cond_0

    #@4b
    .line 110
    :cond_6
    const/16 v0, 0x2065

    #@4d
    if-gt v0, p0, :cond_8

    #@4f
    const/16 v0, 0x2069

    #@51
    if-gt p0, v0, :cond_8

    #@53
    .line 120
    :cond_7
    return v3

    #@54
    .line 111
    :cond_8
    const v0, 0xfff0

    #@57
    if-gt v0, p0, :cond_9

    #@59
    const v0, 0xfff8

    #@5c
    if-le p0, v0, :cond_7

    #@5e
    .line 112
    :cond_9
    const/high16 v0, 0xe0000

    #@60
    if-gt v0, p0, :cond_a

    #@62
    const v0, 0xe0fff

    #@65
    if-le p0, v0, :cond_7

    #@67
    .line 114
    :cond_a
    const v0, 0xfdd0

    #@6a
    if-gt v0, p0, :cond_b

    #@6c
    const v0, 0xfdef

    #@6f
    if-le p0, v0, :cond_7

    #@71
    .line 115
    :cond_b
    and-int v0, p0, v4

    #@73
    if-eq v0, v4, :cond_7

    #@75
    .line 117
    const/16 v0, 0x20a0

    #@77
    if-gt v0, p0, :cond_c

    #@79
    const/16 v0, 0x20cf

    #@7b
    if-le p0, v0, :cond_7

    #@7d
    .line 119
    :cond_c
    const v0, 0xd800

    #@80
    if-gt v0, p0, :cond_d

    #@82
    const v0, 0xdfff

    #@85
    if-le p0, v0, :cond_7

    #@87
    .line 123
    :cond_d
    return v2

    #@88
    .line 88
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
