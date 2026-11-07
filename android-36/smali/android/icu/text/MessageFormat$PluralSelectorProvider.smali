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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o msgFormat:Landroid/icu/text/MessageFormat;

.field private greylist-max-o rules:Landroid/icu/text/PluralRules;

.field private greylist-max-o type:Landroid/icu/text/PluralRules$PluralType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2052
    const-class v0, Landroid/icu/text/MessageFormat;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V
    .registers 3
    .param p1, "mf"    # Landroid/icu/text/MessageFormat;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    .line 2053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2054
    iput-object p1, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    .line 2055
    iput-object p2, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->type:Landroid/icu/text/PluralRules$PluralType;

    .line 2056
    return-void
.end method


# virtual methods
.method public greylist-max-o select(Ljava/lang/Object;D)Ljava/lang/String;
    .registers 8
    .param p1, "ctx"    # Ljava/lang/Object;
    .param p2, "number"    # D

    .line 2059
    iget-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    if-nez v0, :cond_12

    .line 2060
    iget-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v0}, Landroid/icu/text/MessageFormat;->-$$Nest$fgetulocale(Landroid/icu/text/MessageFormat;)Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->type:Landroid/icu/text/PluralRules$PluralType;

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    .line 2068
    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;

    .line 2069
    .local v0, "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    iget-object v1, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    iget v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    invoke-static {v1, v2}, Landroid/icu/text/MessageFormat;->-$$Nest$mfindOtherSubMessage(Landroid/icu/text/MessageFormat;I)I

    move-result v1

    .line 2070
    .local v1, "otherIndex":I
    iget-object v2, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroid/icu/text/MessageFormat;->-$$Nest$mfindFirstPluralNumberArg(Landroid/icu/text/MessageFormat;ILjava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    .line 2071
    iget v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    if-lez v2, :cond_47

    iget-object v2, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v2}, Landroid/icu/text/MessageFormat;->-$$Nest$fgetcachedFormatters(Landroid/icu/text/MessageFormat;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 2072
    iget-object v2, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v2}, Landroid/icu/text/MessageFormat;->-$$Nest$fgetcachedFormatters(Landroid/icu/text/MessageFormat;)Ljava/util/Map;

    move-result-object v2

    iget v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    iput-object v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    .line 2074
    :cond_47
    iget-object v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    if-nez v2, :cond_56

    .line 2075
    iget-object v2, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v2}, Landroid/icu/text/MessageFormat;->-$$Nest$mgetStockNumberFormatter(Landroid/icu/text/MessageFormat;)Landroid/icu/text/NumberFormat;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    .line 2076
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    .line 2078
    :cond_56
    nop

    .line 2079
    iget-object v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    .line 2080
    iget-object v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    instance-of v2, v2, Landroid/icu/text/DecimalFormat;

    if-eqz v2, :cond_76

    .line 2081
    iget-object v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    check-cast v2, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2, p2, p3}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object v2

    .line 2082
    .local v2, "dec":Landroid/icu/text/PluralRules$IFixedDecimal;
    iget-object v3, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    invoke-virtual {v3, v2}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2084
    .end local v2    # "dec":Landroid/icu/text/PluralRules$IFixedDecimal;
    :cond_76
    iget-object v2, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    invoke-virtual {v2, p2, p3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
