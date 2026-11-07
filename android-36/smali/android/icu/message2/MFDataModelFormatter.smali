.class Landroid/icu/message2/MFDataModelFormatter;
.super Ljava/lang/Object;
.source "MFDataModelFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;,
        Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;,
        Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_REGISTY:Landroid/icu/message2/MFFunctionRegistry;


# instance fields
.field private final blacklist customFunctions:Landroid/icu/message2/MFFunctionRegistry;

.field private final blacklist dm:Landroid/icu/message2/MFDataModel$Message;

.field private final blacklist errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

.field private final blacklist locale:Ljava/util/Locale;

.field private final blacklist standardFunctions:Landroid/icu/message2/MFFunctionRegistry;


# direct methods
.method public static synthetic blacklist $r8$lambda$1lPSelMsC2Kt6GH9W2XeW7KziyY(Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/message2/MFDataModelFormatter;->sortVariants(Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Landroid/icu/message2/MFFunctionRegistry;->builder()Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/message2/MFFunctionRegistry$Builder;->build()Landroid/icu/message2/MFFunctionRegistry;

    move-result-object v0

    sput-object v0, Landroid/icu/message2/MFDataModelFormatter;->EMPTY_REGISTY:Landroid/icu/message2/MFFunctionRegistry;

    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/message2/MFDataModel$Message;Ljava/util/Locale;Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;Landroid/icu/message2/MFFunctionRegistry;)V
    .registers 10
    .param p1, "dm"    # Landroid/icu/message2/MFDataModel$Message;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "errorHandlingBehavior"    # Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
    .param p4, "customFunctionRegistry"    # Landroid/icu/message2/MFFunctionRegistry;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Landroid/icu/message2/MFDataModelFormatter;->locale:Ljava/util/Locale;

    .line 57
    if-nez p3, :cond_a

    .line 58
    sget-object v0, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->BEST_EFFORT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    goto :goto_b

    :cond_a
    move-object v0, p3

    :goto_b
    iput-object v0, p0, Landroid/icu/message2/MFDataModelFormatter;->errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    .line 59
    iput-object p1, p0, Landroid/icu/message2/MFDataModelFormatter;->dm:Landroid/icu/message2/MFDataModel$Message;

    .line 60
    nop

    .line 61
    if-nez p4, :cond_15

    sget-object v0, Landroid/icu/message2/MFDataModelFormatter;->EMPTY_REGISTY:Landroid/icu/message2/MFFunctionRegistry;

    goto :goto_16

    :cond_15
    move-object v0, p4

    :goto_16
    iput-object v0, p0, Landroid/icu/message2/MFDataModelFormatter;->customFunctions:Landroid/icu/message2/MFFunctionRegistry;

    .line 63
    nop

    .line 64
    invoke-static {}, Landroid/icu/message2/MFFunctionRegistry;->builder()Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/DateTimeFormatterFactory;

    const-string v2, "datetime"

    invoke-direct {v1, v2}, Landroid/icu/message2/DateTimeFormatterFactory;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setFormatter(Ljava/lang/String;Landroid/icu/message2/FormatterFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/DateTimeFormatterFactory;

    const-string v3, "date"

    invoke-direct {v1, v3}, Landroid/icu/message2/DateTimeFormatterFactory;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v3, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setFormatter(Ljava/lang/String;Landroid/icu/message2/FormatterFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/DateTimeFormatterFactory;

    const-string v3, "time"

    invoke-direct {v1, v3}, Landroid/icu/message2/DateTimeFormatterFactory;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setFormatter(Ljava/lang/String;Landroid/icu/message2/FormatterFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Landroid/icu/util/Calendar;

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Ljava/util/Calendar;

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Ljava/time/temporal/Temporal;

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/NumberFormatterFactory;

    const-string v2, "number"

    invoke-direct {v1, v2}, Landroid/icu/message2/NumberFormatterFactory;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setFormatter(Ljava/lang/String;Landroid/icu/message2/FormatterFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/NumberFormatterFactory;

    const-string v3, "integer"

    invoke-direct {v1, v3}, Landroid/icu/message2/NumberFormatterFactory;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v3, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setFormatter(Ljava/lang/String;Landroid/icu/message2/FormatterFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/Number;

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Landroid/icu/util/CurrencyAmount;

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/IdentityFormatterFactory;

    invoke-direct {v1}, Landroid/icu/message2/IdentityFormatterFactory;-><init>()V

    .line 83
    const-string v4, "string"

    invoke-virtual {v0, v4, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setFormatter(Ljava/lang/String;Landroid/icu/message2/FormatterFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1, v4}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    const-class v1, Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {v0, v1, v4}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/NumberFormatterFactory;

    invoke-direct {v1, v2}, Landroid/icu/message2/NumberFormatterFactory;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v2, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setSelector(Ljava/lang/String;Landroid/icu/message2/SelectorFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/NumberFormatterFactory;

    invoke-direct {v1, v3}, Landroid/icu/message2/NumberFormatterFactory;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v3, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setSelector(Ljava/lang/String;Landroid/icu/message2/SelectorFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/TextSelectorFactory;

    invoke-direct {v1}, Landroid/icu/message2/TextSelectorFactory;-><init>()V

    .line 90
    invoke-virtual {v0, v4, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setSelector(Ljava/lang/String;Landroid/icu/message2/SelectorFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    new-instance v1, Landroid/icu/message2/TextSelectorFactory;

    invoke-direct {v1}, Landroid/icu/message2/TextSelectorFactory;-><init>()V

    .line 91
    const-string v2, "icu:gender"

    invoke-virtual {v0, v2, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->setSelector(Ljava/lang/String;Landroid/icu/message2/SelectorFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/icu/message2/MFFunctionRegistry$Builder;->build()Landroid/icu/message2/MFFunctionRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/MFDataModelFormatter;->standardFunctions:Landroid/icu/message2/MFFunctionRegistry;

    .line 93
    return-void
.end method

.method private static blacklist convertOptions(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/message2/MFDataModel$Option;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 464
    .local p0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/message2/MFDataModel$Option;>;"
    .local p1, "localVars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 465
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/message2/MFDataModel$Option;

    .line 466
    .local v2, "option":Landroid/icu/message2/MFDataModel$Option;
    iget-object v3, v2, Landroid/icu/message2/MFDataModel$Option;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/message2/MFDataModel$Option;->value:Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;

    invoke-static {v4, p1, p2}, Landroid/icu/message2/MFDataModelFormatter;->resolveLiteralOrVariable(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .end local v2    # "option":Landroid/icu/message2/MFDataModel$Option;
    goto :goto_d

    .line 468
    :cond_25
    return-object v0
.end method

.method private static blacklist fatalFormattingError(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist findBestMatchingPattern(Landroid/icu/message2/MFDataModel$SelectMessage;Ljava/util/Map;Ljava/util/Map;)Landroid/icu/message2/MFDataModel$Pattern;
    .registers 21
    .param p1, "sm"    # Landroid/icu/message2/MFDataModel$SelectMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/message2/MFDataModel$SelectMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/MFDataModel$Pattern;"
        }
    .end annotation

    .line 142
    .local p2, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 149
    .local v4, "patternToRender":Landroid/icu/message2/MFDataModel$Pattern;
    iget-object v5, v1, Landroid/icu/message2/MFDataModel$SelectMessage;->selectors:Ljava/util/List;

    .line 151
    .local v5, "selectors":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Expression;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v6, "res":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_bd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/message2/MFDataModel$Expression;

    .line 155
    .local v8, "sel":Landroid/icu/message2/MFDataModel$Expression;
    invoke-direct {v0, v8, v2, v3}, Landroid/icu/message2/MFDataModelFormatter;->formatExpression(Landroid/icu/message2/MFDataModel$Expression;Ljava/util/Map;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;

    move-result-object v9

    .line 156
    .local v9, "fph":Landroid/icu/message2/FormattedPlaceholder;
    const/4 v10, 0x0

    .line 157
    .local v10, "functionName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 158
    .local v11, "argument":Ljava/lang/Object;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v12, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v9}, Landroid/icu/message2/FormattedPlaceholder;->getInput()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;

    if-eqz v13, :cond_47

    .line 160
    invoke-virtual {v9}, Landroid/icu/message2/FormattedPlaceholder;->getInput()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;

    .line 161
    .local v13, "re":Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;
    iget-object v11, v13, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;->argument:Ljava/lang/Object;

    .line 162
    iget-object v10, v13, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;->functionName:Ljava/lang/String;

    .line 163
    iget-object v14, v13, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;->options:Ljava/util/Map;

    invoke-interface {v12, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 164
    .end local v13    # "re":Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;
    goto :goto_86

    :cond_47
    invoke-virtual {v9}, Landroid/icu/message2/FormattedPlaceholder;->getInput()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Landroid/icu/message2/MFDataModel$VariableExpression;

    if-eqz v13, :cond_68

    .line 165
    invoke-virtual {v9}, Landroid/icu/message2/FormattedPlaceholder;->getInput()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/message2/MFDataModel$VariableExpression;

    .line 166
    .local v13, "ve":Landroid/icu/message2/MFDataModel$VariableExpression;
    iget-object v14, v13, Landroid/icu/message2/MFDataModel$VariableExpression;->arg:Landroid/icu/message2/MFDataModel$VariableRef;

    invoke-static {v14, v2, v3}, Landroid/icu/message2/MFDataModelFormatter;->resolveLiteralOrVariable(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v11

    .line 167
    iget-object v14, v13, Landroid/icu/message2/MFDataModel$VariableExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    instance-of v14, v14, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    if-eqz v14, :cond_85

    .line 168
    iget-object v14, v13, Landroid/icu/message2/MFDataModel$VariableExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    check-cast v14, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    iget-object v10, v14, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->name:Ljava/lang/String;

    goto :goto_85

    .line 170
    .end local v13    # "ve":Landroid/icu/message2/MFDataModel$VariableExpression;
    :cond_68
    invoke-virtual {v9}, Landroid/icu/message2/FormattedPlaceholder;->getInput()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Landroid/icu/message2/MFDataModel$LiteralExpression;

    if-eqz v13, :cond_85

    .line 171
    invoke-virtual {v9}, Landroid/icu/message2/FormattedPlaceholder;->getInput()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/message2/MFDataModel$LiteralExpression;

    .line 172
    .local v13, "le":Landroid/icu/message2/MFDataModel$LiteralExpression;
    iget-object v11, v13, Landroid/icu/message2/MFDataModel$LiteralExpression;->arg:Landroid/icu/message2/MFDataModel$Literal;

    .line 173
    iget-object v14, v13, Landroid/icu/message2/MFDataModel$LiteralExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    instance-of v14, v14, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    if-eqz v14, :cond_86

    .line 174
    iget-object v14, v13, Landroid/icu/message2/MFDataModel$LiteralExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    check-cast v14, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    iget-object v10, v14, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->name:Ljava/lang/String;

    goto :goto_86

    .line 170
    .end local v13    # "le":Landroid/icu/message2/MFDataModel$LiteralExpression;
    :cond_85
    :goto_85
    nop

    .line 177
    :cond_86
    :goto_86
    iget-object v13, v0, Landroid/icu/message2/MFDataModelFormatter;->standardFunctions:Landroid/icu/message2/MFFunctionRegistry;

    invoke-virtual {v13, v10}, Landroid/icu/message2/MFFunctionRegistry;->getSelector(Ljava/lang/String;)Landroid/icu/message2/SelectorFactory;

    move-result-object v13

    .line 178
    .local v13, "funcFactory":Landroid/icu/message2/SelectorFactory;
    if-nez v13, :cond_94

    .line 179
    iget-object v14, v0, Landroid/icu/message2/MFDataModelFormatter;->customFunctions:Landroid/icu/message2/MFFunctionRegistry;

    invoke-virtual {v14, v10}, Landroid/icu/message2/MFFunctionRegistry;->getSelector(Ljava/lang/String;)Landroid/icu/message2/SelectorFactory;

    move-result-object v13

    .line 182
    :cond_94
    if-eqz v13, :cond_a5

    .line 183
    iget-object v14, v0, Landroid/icu/message2/MFDataModelFormatter;->locale:Ljava/util/Locale;

    invoke-interface {v13, v14, v12}, Landroid/icu/message2/SelectorFactory;->createSelector(Ljava/util/Locale;Ljava/util/Map;)Landroid/icu/message2/Selector;

    move-result-object v14

    .line 184
    .local v14, "selectorFunction":Landroid/icu/message2/Selector;
    new-instance v15, Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;

    invoke-direct {v15, v11, v12, v14}, Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;-><init>(Ljava/lang/Object;Ljava/util/Map;Landroid/icu/message2/Selector;)V

    .line 186
    .local v15, "rs":Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v14    # "selectorFunction":Landroid/icu/message2/Selector;
    .end local v15    # "rs":Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;
    goto :goto_bb

    .line 188
    :cond_a5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown selector type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 190
    .end local v8    # "sel":Landroid/icu/message2/MFDataModel$Expression;
    .end local v9    # "fph":Landroid/icu/message2/FormattedPlaceholder;
    .end local v10    # "functionName":Ljava/lang/String;
    .end local v11    # "argument":Ljava/lang/Object;
    .end local v12    # "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "funcFactory":Landroid/icu/message2/SelectorFactory;
    :goto_bb
    goto/16 :goto_18

    .line 195
    :cond_bd
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_ef

    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Something went wrong, not enough selector functions, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 198
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-static {v7}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 206
    :cond_ef
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v7, "pref":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_158

    .line 210
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v9, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, v1, Landroid/icu/message2/MFDataModel$SelectMessage;->variants:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_106
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_148

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/message2/MFDataModel$Variant;

    .line 214
    .local v11, "var":Landroid/icu/message2/MFDataModel$Variant;
    iget-object v12, v11, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;

    .line 216
    .local v12, "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    instance-of v13, v12, Landroid/icu/message2/MFDataModel$CatchallKey;

    if-eqz v13, :cond_124

    .line 217
    const-string v13, "*"

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_147

    .line 218
    :cond_124
    instance-of v13, v12, Landroid/icu/message2/MFDataModel$Literal;

    if-eqz v13, :cond_131

    .line 221
    move-object v13, v12

    check-cast v13, Landroid/icu/message2/MFDataModel$Literal;

    iget-object v13, v13, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    .line 223
    .local v13, "ks":Ljava/lang/String;
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v13    # "ks":Ljava/lang/String;
    goto :goto_147

    .line 225
    :cond_131
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Literal expected, but got "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 227
    .end local v11    # "var":Landroid/icu/message2/MFDataModel$Variant;
    .end local v12    # "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    :goto_147
    goto :goto_106

    .line 229
    :cond_148
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;

    .line 231
    .local v10, "rv":Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;
    invoke-direct {v0, v10, v9}, Landroid/icu/message2/MFDataModelFormatter;->matchSelectorKeys(Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 233
    .local v11, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v9    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "rv":Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;
    .end local v11    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_f5

    .line 241
    .end local v8    # "i":I
    :cond_158
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v8, "vars":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Variant;>;"
    iget-object v9, v1, Landroid/icu/message2/MFDataModel$SelectMessage;->variants:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_163
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "Literal expected"

    if-eqz v10, :cond_1b6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/message2/MFDataModel$Variant;

    .line 245
    .local v10, "var":Landroid/icu/message2/MFDataModel$Variant;
    const/4 v12, 0x0

    .line 246
    .local v12, "found":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_173
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_1aa

    .line 248
    iget-object v14, v10, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;

    .line 250
    .local v14, "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    instance-of v15, v14, Landroid/icu/message2/MFDataModel$CatchallKey;

    if-eqz v15, :cond_188

    .line 252
    add-int/lit8 v12, v12, 0x1

    .line 253
    goto :goto_1a5

    .line 256
    :cond_188
    instance-of v15, v14, Landroid/icu/message2/MFDataModel$Literal;

    if-nez v15, :cond_18f

    .line 257
    invoke-static {v11}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 260
    :cond_18f
    move-object v15, v14

    check-cast v15, Landroid/icu/message2/MFDataModel$Literal;

    iget-object v15, v15, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    .line 262
    .local v15, "ks":Ljava/lang/String;
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/List;

    .line 264
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1aa

    .line 266
    add-int/lit8 v12, v12, 0x1

    .line 267
    nop

    .line 246
    .end local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    .end local v15    # "ks":Ljava/lang/String;
    :goto_1a5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_173

    .line 274
    .end local v13    # "i":I
    :cond_1aa
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v12, v0, :cond_1b3

    .line 276
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v10    # "var":Landroid/icu/message2/MFDataModel$Variant;
    .end local v12    # "found":I
    :cond_1b3
    move-object/from16 v0, p0

    goto :goto_163

    .line 284
    :cond_1b6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, "sortable":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1bf
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/message2/MFDataModel$Variant;

    .line 288
    .restart local v10    # "var":Landroid/icu/message2/MFDataModel$Variant;
    new-instance v12, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;

    const/4 v13, -0x1

    invoke-direct {v12, v13, v10}, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;-><init>(ILandroid/icu/message2/MFDataModel$Variant;)V

    .line 290
    .local v12, "tuple":Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v10    # "var":Landroid/icu/message2/MFDataModel$Variant;
    .end local v12    # "tuple":Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;
    goto :goto_1bf

    .line 293
    :cond_1d5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 295
    .local v9, "len":I
    add-int/lit8 v10, v9, -0x1

    .line 297
    .local v10, "i":I
    :goto_1db
    if-ltz v10, :cond_233

    .line 299
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 301
    .local v12, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 303
    .local v13, "minpref":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1eb
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_223

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;

    .line 305
    .local v15, "tuple":Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;
    move/from16 v16, v13

    .line 307
    .local v16, "matchpref":I
    iget-object v1, v15, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;->variant:Landroid/icu/message2/MFDataModel$Variant;

    iget-object v1, v1, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;

    .line 309
    .local v1, "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    instance-of v2, v1, Landroid/icu/message2/MFDataModel$CatchallKey;

    if-nez v2, :cond_21a

    .line 311
    instance-of v2, v1, Landroid/icu/message2/MFDataModel$Literal;

    if-nez v2, :cond_20e

    .line 312
    invoke-static {v11}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 315
    :cond_20e
    move-object v2, v1

    check-cast v2, Landroid/icu/message2/MFDataModel$Literal;

    iget-object v2, v2, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    .line 317
    .local v2, "ks":Ljava/lang/String;
    invoke-interface {v12, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    move/from16 v2, v16

    goto :goto_21c

    .line 309
    .end local v2    # "ks":Ljava/lang/String;
    :cond_21a
    move/from16 v2, v16

    .line 320
    .end local v16    # "matchpref":I
    .local v2, "matchpref":I
    :goto_21c
    iput v2, v15, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;->integer:I

    .line 321
    .end local v1    # "key":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    .end local v2    # "matchpref":I
    .end local v15    # "tuple":Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_1eb

    .line 323
    :cond_223
    new-instance v1, Landroid/icu/message2/MFDataModelFormatter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/icu/message2/MFDataModelFormatter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 325
    nop

    .end local v12    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "minpref":I
    add-int/lit8 v10, v10, -0x1

    .line 326
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_1db

    .line 328
    :cond_233
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;

    .line 330
    .local v1, "var":Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;
    iget-object v2, v1, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;->variant:Landroid/icu/message2/MFDataModel$Variant;

    iget-object v2, v2, Landroid/icu/message2/MFDataModel$Variant;->value:Landroid/icu/message2/MFDataModel$Pattern;

    .line 333
    .end local v4    # "patternToRender":Landroid/icu/message2/MFDataModel$Pattern;
    .local v2, "patternToRender":Landroid/icu/message2/MFDataModel$Pattern;
    if-nez v2, :cond_245

    .line 335
    const-string v4, "The selection went wrong, cannot select any option."

    invoke-static {v4}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 338
    :cond_245
    return-object v2
.end method

.method private blacklist formatExpression(Landroid/icu/message2/MFDataModel$Expression;Ljava/util/Map;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;
    .registers 15
    .param p1, "expression"    # Landroid/icu/message2/MFDataModel$Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/message2/MFDataModel$Expression;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/FormattedPlaceholder;"
        }
    .end annotation

    .line 481
    .local p2, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 482
    .local v0, "annotation":Landroid/icu/message2/MFDataModel$Annotation;
    const/4 v1, 0x0

    .line 483
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 484
    .local v2, "toFormat":Ljava/lang/Object;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 485
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "{\ufffd}"

    .line 487
    .local v4, "fallbackString":Ljava/lang/String;
    instance-of v5, p1, Landroid/icu/message2/MFDataModel$VariableExpression;

    const-string v6, "}"

    if-eqz v5, :cond_57

    .line 488
    move-object v5, p1

    check-cast v5, Landroid/icu/message2/MFDataModel$VariableExpression;

    .line 489
    .local v5, "varPart":Landroid/icu/message2/MFDataModel$VariableExpression;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/icu/message2/MFDataModel$VariableExpression;->arg:Landroid/icu/message2/MFDataModel$VariableRef;

    iget-object v8, v8, Landroid/icu/message2/MFDataModel$VariableRef;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 490
    iget-object v0, v5, Landroid/icu/message2/MFDataModel$VariableExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    .line 491
    iget-object v6, v5, Landroid/icu/message2/MFDataModel$VariableExpression;->arg:Landroid/icu/message2/MFDataModel$VariableRef;

    invoke-static {v6, p2, p3}, Landroid/icu/message2/MFDataModelFormatter;->resolveLiteralOrVariable(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    .line 492
    .local v6, "resolved":Ljava/lang/Object;
    instance-of v7, v6, Landroid/icu/message2/FormattedPlaceholder;

    if-eqz v7, :cond_54

    .line 493
    move-object v7, v6

    check-cast v7, Landroid/icu/message2/FormattedPlaceholder;

    invoke-virtual {v7}, Landroid/icu/message2/FormattedPlaceholder;->getInput()Ljava/lang/Object;

    move-result-object v7

    .line 494
    .local v7, "input":Ljava/lang/Object;
    instance-of v8, v7, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;

    if-eqz v8, :cond_52

    .line 495
    move-object v8, v7

    check-cast v8, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;

    .line 496
    .local v8, "re":Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;
    iget-object v2, v8, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;->argument:Ljava/lang/Object;

    .line 497
    iget-object v1, v8, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;->functionName:Ljava/lang/String;

    .line 498
    iget-object v9, v8, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;->options:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 499
    .end local v8    # "re":Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;
    goto :goto_53

    .line 500
    :cond_52
    move-object v2, v7

    .line 502
    .end local v7    # "input":Ljava/lang/Object;
    :goto_53
    goto :goto_55

    .line 503
    :cond_54
    move-object v2, v6

    .line 505
    .end local v5    # "varPart":Landroid/icu/message2/MFDataModel$VariableExpression;
    .end local v6    # "resolved":Ljava/lang/Object;
    :goto_55
    goto/16 :goto_e0

    :cond_57
    instance-of v5, p1, Landroid/icu/message2/MFDataModel$FunctionExpression;

    if-eqz v5, :cond_7c

    .line 507
    move-object v5, p1

    check-cast v5, Landroid/icu/message2/MFDataModel$FunctionExpression;

    .line 508
    .local v5, "fe":Landroid/icu/message2/MFDataModel$FunctionExpression;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/icu/message2/MFDataModel$FunctionExpression;->annotation:Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    iget-object v8, v8, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 509
    iget-object v0, v5, Landroid/icu/message2/MFDataModel$FunctionExpression;->annotation:Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    .line 510
    .end local v5    # "fe":Landroid/icu/message2/MFDataModel$FunctionExpression;
    goto :goto_e0

    :cond_7c
    instance-of v5, p1, Landroid/icu/message2/MFDataModel$LiteralExpression;

    if-eqz v5, :cond_a9

    .line 511
    move-object v5, p1

    check-cast v5, Landroid/icu/message2/MFDataModel$LiteralExpression;

    .line 512
    .local v5, "le":Landroid/icu/message2/MFDataModel$LiteralExpression;
    iget-object v0, v5, Landroid/icu/message2/MFDataModel$LiteralExpression;->annotation:Landroid/icu/message2/MFDataModel$Annotation;

    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/icu/message2/MFDataModel$LiteralExpression;->arg:Landroid/icu/message2/MFDataModel$Literal;

    iget-object v7, v7, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 514
    iget-object v6, v5, Landroid/icu/message2/MFDataModel$LiteralExpression;->arg:Landroid/icu/message2/MFDataModel$Literal;

    invoke-static {v6, p2, p3}, Landroid/icu/message2/MFDataModelFormatter;->resolveLiteralOrVariable(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 515
    .end local v5    # "le":Landroid/icu/message2/MFDataModel$LiteralExpression;
    goto :goto_e0

    :cond_a9
    instance-of v5, p1, Landroid/icu/message2/MFDataModel$Markup;

    if-eqz v5, :cond_ba

    .line 517
    new-instance v5, Landroid/icu/message2/FormattedPlaceholder;

    new-instance v6, Landroid/icu/message2/PlainStringFormattedValue;

    const-string v7, ""

    invoke-direct {v6, v7}, Landroid/icu/message2/PlainStringFormattedValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, p1, v6}, Landroid/icu/message2/FormattedPlaceholder;-><init>(Ljava/lang/Object;Landroid/icu/text/FormattedValue;)V

    return-object v5

    .line 519
    :cond_ba
    if-nez p1, :cond_c2

    .line 520
    const-string v5, "unexpected null expression"

    invoke-static {v5}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    goto :goto_e0

    .line 522
    :cond_c2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown expression type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 523
    invoke-interface {p1}, Landroid/icu/message2/MFDataModel$Expression;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 522
    invoke-static {v5}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 527
    :goto_e0
    instance-of v5, v0, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    if-eqz v5, :cond_124

    .line 528
    move-object v5, v0

    check-cast v5, Landroid/icu/message2/MFDataModel$FunctionAnnotation;

    .line 529
    .local v5, "fa":Landroid/icu/message2/MFDataModel$FunctionAnnotation;
    if-eqz v1, :cond_119

    iget-object v6, v5, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_119

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid function overrides, \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' <> \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 533
    :cond_119
    iget-object v1, v5, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->name:Ljava/lang/String;

    .line 534
    iget-object v6, v5, Landroid/icu/message2/MFDataModel$FunctionAnnotation;->options:Ljava/util/Map;

    invoke-static {v6, p2, p3}, Landroid/icu/message2/MFDataModelFormatter;->convertOptions(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 535
    .local v6, "newOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 538
    .end local v5    # "fa":Landroid/icu/message2/MFDataModel$FunctionAnnotation;
    .end local v6    # "newOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_124
    invoke-direct {p0, v2, v1}, Landroid/icu/message2/MFDataModelFormatter;->getFormattingFunctionFactoryByName(Ljava/lang/Object;Ljava/lang/String;)Landroid/icu/message2/FormatterFactory;

    move-result-object v5

    .line 539
    .local v5, "funcFactory":Landroid/icu/message2/FormatterFactory;
    if-nez v5, :cond_151

    .line 540
    iget-object v6, p0, Landroid/icu/message2/MFDataModelFormatter;->errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    sget-object v7, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->STRICT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    if-ne v6, v7, :cond_146

    .line 541
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to find function at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 543
    :cond_146
    new-instance v6, Landroid/icu/message2/FormattedPlaceholder;

    new-instance v7, Landroid/icu/message2/PlainStringFormattedValue;

    invoke-direct {v7, v4}, Landroid/icu/message2/PlainStringFormattedValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, p1, v7}, Landroid/icu/message2/FormattedPlaceholder;-><init>(Ljava/lang/Object;Landroid/icu/text/FormattedValue;)V

    return-object v6

    .line 545
    :cond_151
    iget-object v6, p0, Landroid/icu/message2/MFDataModelFormatter;->locale:Ljava/util/Locale;

    invoke-interface {v5, v6, v3}, Landroid/icu/message2/FormatterFactory;->createFormatter(Ljava/util/Locale;Ljava/util/Map;)Landroid/icu/message2/Formatter;

    move-result-object v6

    .line 546
    .local v6, "ff":Landroid/icu/message2/Formatter;
    invoke-interface {v6, v2, p3}, Landroid/icu/message2/Formatter;->formatToString(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, "res":Ljava/lang/String;
    if-nez v7, :cond_17a

    .line 548
    iget-object v8, p0, Landroid/icu/message2/MFDataModelFormatter;->errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    sget-object v9, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->STRICT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    if-ne v8, v9, :cond_179

    .line 549
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to format string at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 551
    :cond_179
    move-object v7, v4

    .line 554
    :cond_17a
    new-instance v8, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;

    invoke-direct {v8, v2, v1, v3}, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 555
    .local v8, "resExpression":Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;
    new-instance v9, Landroid/icu/message2/FormattedPlaceholder;

    new-instance v10, Landroid/icu/message2/PlainStringFormattedValue;

    invoke-direct {v10, v7}, Landroid/icu/message2/PlainStringFormattedValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v8, v10}, Landroid/icu/message2/FormattedPlaceholder;-><init>(Ljava/lang/Object;Landroid/icu/text/FormattedValue;)V

    return-object v9
.end method

.method private blacklist getFormattingFunctionFactoryByName(Ljava/lang/Object;Ljava/lang/String;)Landroid/icu/message2/FormatterFactory;
    .registers 6
    .param p1, "toFormat"    # Ljava/lang/Object;
    .param p2, "functionName"    # Ljava/lang/String;

    .line 413
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 414
    :cond_8
    if-nez p1, :cond_c

    .line 416
    const/4 v0, 0x0

    return-object v0

    .line 418
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 419
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/icu/message2/MFDataModelFormatter;->standardFunctions:Landroid/icu/message2/MFFunctionRegistry;

    invoke-virtual {v1, v0}, Landroid/icu/message2/MFFunctionRegistry;->getDefaultFormatterNameForType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    .line 420
    if-nez p2, :cond_1e

    .line 421
    iget-object v1, p0, Landroid/icu/message2/MFDataModelFormatter;->customFunctions:Landroid/icu/message2/MFFunctionRegistry;

    invoke-virtual {v1, v0}, Landroid/icu/message2/MFFunctionRegistry;->getDefaultFormatterNameForType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    .line 423
    :cond_1e
    if-nez p2, :cond_3e

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object to format without a function, and unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {v1}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 430
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3e
    iget-object v0, p0, Landroid/icu/message2/MFDataModelFormatter;->standardFunctions:Landroid/icu/message2/MFFunctionRegistry;

    invoke-virtual {v0, p2}, Landroid/icu/message2/MFFunctionRegistry;->getFormatter(Ljava/lang/String;)Landroid/icu/message2/FormatterFactory;

    move-result-object v0

    .line 431
    .local v0, "func":Landroid/icu/message2/FormatterFactory;
    if-nez v0, :cond_4c

    .line 432
    iget-object v1, p0, Landroid/icu/message2/MFDataModelFormatter;->customFunctions:Landroid/icu/message2/MFFunctionRegistry;

    invoke-virtual {v1, p2}, Landroid/icu/message2/MFFunctionRegistry;->getFormatter(Ljava/lang/String;)Landroid/icu/message2/FormatterFactory;

    move-result-object v0

    .line 434
    :cond_4c
    return-object v0
.end method

.method private blacklist matchSelectorKeys(Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .param p1, "rv"    # Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 390
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;->selectorFunction:Landroid/icu/message2/Selector;

    iget-object v1, p1, Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;->argument:Ljava/lang/Object;

    iget-object v2, p1, Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;->options:Ljava/util/Map;

    invoke-interface {v0, v1, p2, v2}, Landroid/icu/message2/Selector;->matches(Ljava/lang/Object;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private blacklist resolveDeclarations(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/message2/MFDataModel$Declaration;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 573
    .local p1, "declarations":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$Declaration;>;"
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 576
    .local v0, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_3f

    .line 577
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/message2/MFDataModel$Declaration;

    .line 578
    .local v2, "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    instance-of v3, v2, Landroid/icu/message2/MFDataModel$InputDeclaration;

    if-eqz v3, :cond_26

    .line 579
    move-object v3, v2

    check-cast v3, Landroid/icu/message2/MFDataModel$InputDeclaration;

    iget-object v3, v3, Landroid/icu/message2/MFDataModel$InputDeclaration;->name:Ljava/lang/String;

    .line 580
    .local v3, "name":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Landroid/icu/message2/MFDataModel$InputDeclaration;

    iget-object v4, v4, Landroid/icu/message2/MFDataModel$InputDeclaration;->value:Landroid/icu/message2/MFDataModel$VariableExpression;

    .local v4, "value":Landroid/icu/message2/MFDataModel$Expression;
    goto :goto_34

    .line 581
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Landroid/icu/message2/MFDataModel$Expression;
    :cond_26
    instance-of v3, v2, Landroid/icu/message2/MFDataModel$LocalDeclaration;

    if-eqz v3, :cond_b

    .line 582
    move-object v3, v2

    check-cast v3, Landroid/icu/message2/MFDataModel$LocalDeclaration;

    iget-object v3, v3, Landroid/icu/message2/MFDataModel$LocalDeclaration;->name:Ljava/lang/String;

    .line 583
    .restart local v3    # "name":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Landroid/icu/message2/MFDataModel$LocalDeclaration;

    iget-object v4, v4, Landroid/icu/message2/MFDataModel$LocalDeclaration;->value:Landroid/icu/message2/MFDataModel$Expression;

    .line 592
    .restart local v4    # "value":Landroid/icu/message2/MFDataModel$Expression;
    :goto_34
    :try_start_34
    invoke-direct {p0, v4, v0, p2}, Landroid/icu/message2/MFDataModelFormatter;->formatExpression(Landroid/icu/message2/MFDataModel$Expression;Ljava/util/Map;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;

    move-result-object v5

    .line 594
    .local v5, "fmt":Landroid/icu/message2/FormattedPlaceholder;
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_3d

    .line 597
    nop

    .end local v5    # "fmt":Landroid/icu/message2/FormattedPlaceholder;
    goto :goto_3e

    .line 595
    :catch_3d
    move-exception v5

    .line 598
    .end local v2    # "declaration":Landroid/icu/message2/MFDataModel$Declaration;
    :goto_3e
    goto :goto_b

    .line 600
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Landroid/icu/message2/MFDataModel$Expression;
    :cond_3f
    return-object v0
.end method

.method private static blacklist resolveLiteralOrVariable(Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;
    .registers 5
    .param p0, "value"    # Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/message2/MFDataModel$LiteralOrVariableRef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 441
    .local p1, "localVars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v0, p0, Landroid/icu/message2/MFDataModel$Literal;

    if-eqz v0, :cond_a

    .line 442
    move-object v0, p0

    check-cast v0, Landroid/icu/message2/MFDataModel$Literal;

    iget-object v0, v0, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    .line 445
    .local v0, "val":Ljava/lang/String;
    return-object v0

    .line 446
    .end local v0    # "val":Ljava/lang/String;
    :cond_a
    instance-of v0, p0, Landroid/icu/message2/MFDataModel$VariableRef;

    if-eqz v0, :cond_24

    .line 447
    move-object v0, p0

    check-cast v0, Landroid/icu/message2/MFDataModel$VariableRef;

    iget-object v0, v0, Landroid/icu/message2/MFDataModel$VariableRef;->name:Ljava/lang/String;

    .line 448
    .local v0, "varName":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 449
    .local v1, "val":Ljava/lang/Object;
    if-nez v1, :cond_1d

    .line 450
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 452
    :cond_1d
    if-nez v1, :cond_23

    .line 453
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 455
    :cond_23
    return-object v1

    .line 457
    .end local v0    # "varName":Ljava/lang/String;
    .end local v1    # "val":Ljava/lang/Object;
    :cond_24
    return-object p0
.end method

.method private static blacklist sortVariants(Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;)I
    .registers 11
    .param p0, "o1"    # Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;
    .param p1, "o2"    # Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;

    .line 356
    iget v0, p0, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;->integer:I

    iget v1, p1, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;->integer:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 357
    .local v0, "result":I
    if-eqz v0, :cond_b

    .line 358
    return v0

    .line 360
    :cond_b
    iget-object v1, p0, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;->variant:Landroid/icu/message2/MFDataModel$Variant;

    iget-object v1, v1, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    .line 361
    .local v1, "v1":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;>;"
    iget-object v2, p0, Landroid/icu/message2/MFDataModelFormatter$IntVarTuple;->variant:Landroid/icu/message2/MFDataModel$Variant;

    iget-object v2, v2, Landroid/icu/message2/MFDataModel$Variant;->keys:Ljava/util/List;

    .line 362
    .local v2, "v2":Ljava/util/List;, "Ljava/util/List<Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_22

    .line 363
    const-string v3, "The number of keys is not equal."

    invoke-static {v3}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 365
    :cond_22
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 366
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;

    .line 367
    .local v4, "k1":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;

    .line 368
    .local v5, "k2":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    instance-of v6, v4, Landroid/icu/message2/MFDataModel$Literal;

    const-string v7, "*"

    if-eqz v6, :cond_41

    move-object v6, v4

    check-cast v6, Landroid/icu/message2/MFDataModel$Literal;

    iget-object v6, v6, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    goto :goto_42

    :cond_41
    move-object v6, v7

    .line 369
    .local v6, "s1":Ljava/lang/String;
    :goto_42
    instance-of v8, v5, Landroid/icu/message2/MFDataModel$Literal;

    if-eqz v8, :cond_4b

    move-object v7, v5

    check-cast v7, Landroid/icu/message2/MFDataModel$Literal;

    iget-object v7, v7, Landroid/icu/message2/MFDataModel$Literal;->value:Ljava/lang/String;

    .line 370
    .local v7, "s2":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    .line 371
    .local v8, "cmp":I
    if-eqz v8, :cond_52

    .line 372
    return v8

    .line 365
    .end local v4    # "k1":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    .end local v5    # "k2":Landroid/icu/message2/MFDataModel$LiteralOrCatchallKey;
    .end local v6    # "s1":Ljava/lang/String;
    .end local v7    # "s2":Ljava/lang/String;
    .end local v8    # "cmp":I
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 375
    .end local v3    # "i":I
    :cond_55
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method blacklist format(Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 97
    .local v0, "patternToRender":Landroid/icu/message2/MFDataModel$Pattern;
    if-nez p1, :cond_9

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object p1, v1

    .line 102
    :cond_9
    iget-object v1, p0, Landroid/icu/message2/MFDataModelFormatter;->dm:Landroid/icu/message2/MFDataModel$Message;

    instance-of v1, v1, Landroid/icu/message2/MFDataModel$PatternMessage;

    if-eqz v1, :cond_25

    .line 103
    iget-object v1, p0, Landroid/icu/message2/MFDataModelFormatter;->dm:Landroid/icu/message2/MFDataModel$Message;

    check-cast v1, Landroid/icu/message2/MFDataModel$PatternMessage;

    .line 104
    .local v1, "pm":Landroid/icu/message2/MFDataModel$PatternMessage;
    iget-object v2, v1, Landroid/icu/message2/MFDataModel$PatternMessage;->declarations:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Landroid/icu/message2/MFDataModelFormatter;->resolveDeclarations(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 105
    .local v2, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, v1, Landroid/icu/message2/MFDataModel$PatternMessage;->pattern:Landroid/icu/message2/MFDataModel$Pattern;

    if-nez v3, :cond_22

    .line 106
    const-string v3, "The PatternMessage is null."

    invoke-static {v3}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 108
    :cond_22
    iget-object v0, v1, Landroid/icu/message2/MFDataModel$PatternMessage;->pattern:Landroid/icu/message2/MFDataModel$Pattern;

    .line 109
    .end local v1    # "pm":Landroid/icu/message2/MFDataModel$PatternMessage;
    goto :goto_41

    .end local v2    # "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_25
    iget-object v1, p0, Landroid/icu/message2/MFDataModelFormatter;->dm:Landroid/icu/message2/MFDataModel$Message;

    instance-of v1, v1, Landroid/icu/message2/MFDataModel$SelectMessage;

    if-eqz v1, :cond_9d

    .line 110
    iget-object v1, p0, Landroid/icu/message2/MFDataModelFormatter;->dm:Landroid/icu/message2/MFDataModel$Message;

    check-cast v1, Landroid/icu/message2/MFDataModel$SelectMessage;

    .line 111
    .local v1, "sm":Landroid/icu/message2/MFDataModel$SelectMessage;
    iget-object v2, v1, Landroid/icu/message2/MFDataModel$SelectMessage;->declarations:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Landroid/icu/message2/MFDataModelFormatter;->resolveDeclarations(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 112
    .restart local v2    # "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v1, v2, p1}, Landroid/icu/message2/MFDataModelFormatter;->findBestMatchingPattern(Landroid/icu/message2/MFDataModel$SelectMessage;Ljava/util/Map;Ljava/util/Map;)Landroid/icu/message2/MFDataModel$Pattern;

    move-result-object v0

    .line 113
    if-nez v0, :cond_40

    .line 114
    const-string v3, "Cannor find a match for the selector."

    invoke-static {v3}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 116
    .end local v1    # "sm":Landroid/icu/message2/MFDataModel$SelectMessage;
    :cond_40
    nop

    .line 122
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v3, v0, Landroid/icu/message2/MFDataModel$Pattern;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/message2/MFDataModel$PatternPart;

    .line 124
    .local v4, "part":Landroid/icu/message2/MFDataModel$PatternPart;
    instance-of v5, v4, Landroid/icu/message2/MFDataModel$StringPart;

    if-eqz v5, :cond_65

    .line 125
    move-object v5, v4

    check-cast v5, Landroid/icu/message2/MFDataModel$StringPart;

    .line 126
    .local v5, "strPart":Landroid/icu/message2/MFDataModel$StringPart;
    iget-object v6, v5, Landroid/icu/message2/MFDataModel$StringPart;->value:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .end local v5    # "strPart":Landroid/icu/message2/MFDataModel$StringPart;
    goto :goto_97

    :cond_65
    instance-of v5, v4, Landroid/icu/message2/MFDataModel$Expression;

    if-eqz v5, :cond_7c

    .line 128
    move-object v5, v4

    check-cast v5, Landroid/icu/message2/MFDataModel$Expression;

    .line 129
    invoke-direct {p0, v5, v2, p1}, Landroid/icu/message2/MFDataModelFormatter;->formatExpression(Landroid/icu/message2/MFDataModel$Expression;Ljava/util/Map;Ljava/util/Map;)Landroid/icu/message2/FormattedPlaceholder;

    move-result-object v5

    .line 130
    .local v5, "formattedExpression":Landroid/icu/message2/FormattedPlaceholder;
    invoke-virtual {v5}, Landroid/icu/message2/FormattedPlaceholder;->getFormattedValue()Landroid/icu/text/FormattedValue;

    move-result-object v6

    invoke-interface {v6}, Landroid/icu/text/FormattedValue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .end local v5    # "formattedExpression":Landroid/icu/message2/FormattedPlaceholder;
    :goto_7b
    goto :goto_97

    :cond_7c
    instance-of v5, v4, Landroid/icu/message2/MFDataModel$Markup;

    if-eqz v5, :cond_81

    goto :goto_7b

    .line 134
    :cond_81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown part type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 136
    .end local v4    # "part":Landroid/icu/message2/MFDataModel$PatternPart;
    :goto_97
    goto :goto_4c

    .line 137
    :cond_98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 117
    .end local v1    # "result":Ljava/lang/StringBuilder;
    .end local v2    # "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9d
    const-string v1, "Unknown message type."

    invoke-static {v1}, Landroid/icu/message2/MFDataModelFormatter;->fatalFormattingError(Ljava/lang/String;)V

    .line 119
    const-string v1, "ERROR!"

    return-object v1
.end method
