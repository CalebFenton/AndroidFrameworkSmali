.class final Landroid/icu/text/MessageFormat$PluralSelectorProvider;
.super Ljava/lang/Object;
.source "MessageFormat.java"

# interfaces
.implements Landroid/icu/text/PluralFormat$PluralSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralSelectorProvider"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private msgFormat:Landroid/icu/text/MessageFormat;

.field private rules:Landroid/icu/text/PluralRules;

.field private type:Landroid/icu/text/PluralRules$PluralType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->-assertionsDisabled:Z

    #@b
    .line 2077
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V
    .locals 0
    .param p1, "mf"    # Landroid/icu/text/MessageFormat;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    #@0
    .prologue
    .line 2078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2079
    iput-object p1, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    #@5
    .line 2080
    iput-object p2, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->type:Landroid/icu/text/PluralRules$PluralType;

    #@7
    .line 2078
    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;D)Ljava/lang/String;
    .locals 8
    .param p1, "ctx"    # Ljava/lang/Object;
    .param p2, "number"    # D

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2083
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2084
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    #@8
    invoke-static {v3}, Landroid/icu/text/MessageFormat;->-get1(Landroid/icu/text/MessageFormat;)Landroid/icu/util/ULocale;

    #@b
    move-result-object v3

    #@c
    iget-object v6, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->type:Landroid/icu/text/PluralRules$PluralType;

    #@e
    invoke-static {v3, v6}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    #@11
    move-result-object v3

    #@12
    iput-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    #@14
    :cond_0
    move-object v0, p1

    #@15
    .line 2092
    check-cast v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;

    #@17
    .line 2093
    .local v0, "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    #@19
    iget v6, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    #@1b
    invoke-static {v3, v6}, Landroid/icu/text/MessageFormat;->-wrap2(Landroid/icu/text/MessageFormat;I)I

    #@1e
    move-result v2

    #@1f
    .line 2094
    .local v2, "otherIndex":I
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    #@21
    iget-object v6, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    #@23
    invoke-static {v3, v2, v6}, Landroid/icu/text/MessageFormat;->-wrap1(Landroid/icu/text/MessageFormat;ILjava/lang/String;)I

    #@26
    move-result v3

    #@27
    iput v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    #@29
    .line 2095
    iget v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    #@2b
    if-lez v3, :cond_1

    #@2d
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    #@2f
    invoke-static {v3}, Landroid/icu/text/MessageFormat;->-get0(Landroid/icu/text/MessageFormat;)Ljava/util/Map;

    #@32
    move-result-object v3

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 2096
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    #@37
    invoke-static {v3}, Landroid/icu/text/MessageFormat;->-get0(Landroid/icu/text/MessageFormat;)Ljava/util/Map;

    #@3a
    move-result-object v3

    #@3b
    iget v6, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    #@3d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v6

    #@41
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v3

    #@45
    check-cast v3, Ljava/text/Format;

    #@47
    iput-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    #@49
    .line 2098
    :cond_1
    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    #@4b
    if-nez v3, :cond_2

    #@4d
    .line 2099
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    #@4f
    invoke-static {v3}, Landroid/icu/text/MessageFormat;->-wrap0(Landroid/icu/text/MessageFormat;)Landroid/icu/text/NumberFormat;

    #@52
    move-result-object v3

    #@53
    iput-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    #@55
    .line 2100
    iput-boolean v4, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    #@57
    .line 2102
    :cond_2
    sget-boolean v3, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->-assertionsDisabled:Z

    #@59
    if-nez v3, :cond_4

    #@5b
    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    #@5d
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    #@60
    move-result-wide v6

    #@61
    cmpl-double v3, v6, p2

    #@63
    if-nez v3, :cond_3

    #@65
    move v3, v4

    #@66
    :goto_0
    if-nez v3, :cond_4

    #@68
    new-instance v3, Ljava/lang/AssertionError;

    #@6a
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@6d
    throw v3

    #@6e
    :cond_3
    move v3, v5

    #@6f
    goto :goto_0

    #@70
    .line 2103
    :cond_4
    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    #@72
    iget-object v4, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    #@74
    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    iput-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    #@7a
    .line 2104
    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    #@7c
    instance-of v3, v3, Landroid/icu/text/DecimalFormat;

    #@7e
    if-eqz v3, :cond_5

    #@80
    .line 2105
    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    #@82
    check-cast v3, Landroid/icu/text/DecimalFormat;

    #@84
    invoke-virtual {v3, p2, p3}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    #@87
    move-result-object v1

    #@88
    .line 2106
    .local v1, "dec":Landroid/icu/text/PluralRules$FixedDecimal;
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    #@8a
    invoke-virtual {v3, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    return-object v3

    #@8f
    .line 2108
    .end local v1    # "dec":Landroid/icu/text/PluralRules$FixedDecimal;
    :cond_5
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    #@91
    invoke-virtual {v3, p2, p3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    return-object v3
.end method
