.class Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayPeriodRulesCountSink"
.end annotation


# instance fields
.field private greylist-max-o data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;


# direct methods
.method private constructor greylist-max-o <init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;)V
    .registers 2
    .param p1, "data"    # Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    .line 217
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 218
    iput-object p1, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    .line 219
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;Landroid/icu/impl/DayPeriodRules-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;-><init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;)V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 223
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 224
    .local v0, "rules":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 225
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/DayPeriodRules;->-$$Nest$smparseSetNum(Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, "setNum":I
    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget v3, v3, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    if-le v2, v3, :cond_1d

    .line 227
    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iput v2, v3, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    .line 224
    .end local v2    # "setNum":I
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 230
    .end local v1    # "i":I
    :cond_20
    return-void
.end method
