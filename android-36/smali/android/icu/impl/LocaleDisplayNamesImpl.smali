.class public Landroid/icu/impl/LocaleDisplayNamesImpl;
.super Landroid/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;
    }
.end annotation


# static fields
.field private static final blacklist TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

.field private static final blacklist cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

.field private static final blacklist contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist capitalization:Landroid/icu/text/DisplayContext;

.field private transient blacklist capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private blacklist capitalizationUsage:[Z

.field private final blacklist currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

.field private final blacklist dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field private final blacklist format:Ljava/lang/String;

.field private final blacklist formatCloseParen:C

.field private final blacklist formatOpenParen:C

.field private final blacklist formatReplaceCloseParen:C

.field private final blacklist formatReplaceOpenParen:C

.field private final blacklist keyTypeFormat:Ljava/lang/String;

.field private final blacklist langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final blacklist locale:Landroid/icu/util/ULocale;

.field private final blacklist nameLength:Landroid/icu/text/DisplayContext;

.field private final blacklist regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final blacklist separatorFormat:Ljava/lang/String;

.field private final blacklist substituteHandling:Landroid/icu/text/DisplayContext;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcapitalization(Landroid/icu/impl/LocaleDisplayNamesImpl;)Landroid/icu/text/DisplayContext;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcapitalizationUsage(Landroid/icu/impl/LocaleDisplayNamesImpl;)[Z
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetcontextUsageTypeMap()Ljava/util/Map;
    .registers 1

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 58
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>(Landroid/icu/impl/LocaleDisplayNamesImpl-IA;)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    .line 82
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "languages"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "script"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "territory"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "variant"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "key"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "keyValue"

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v1, :cond_a

    sget-object v1, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_c

    :cond_a
    sget-object v1, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    :goto_c
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    .line 140
    return-void
.end method

.method public varargs constructor blacklist <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V
    .registers 16
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "contexts"    # [Landroid/icu/text/DisplayContext;

    .line 142
    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    .line 92
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 143
    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 144
    .local v1, "dialectHandling":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 145
    .local v2, "capitalization":Landroid/icu/text/DisplayContext;
    sget-object v3, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    .line 146
    .local v3, "nameLength":Landroid/icu/text/DisplayContext;
    sget-object v4, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    .line 147
    .local v4, "substituteHandling":Landroid/icu/text/DisplayContext;
    array-length v5, p2

    const/4 v6, 0x0

    move v7, v6

    :goto_13
    if-ge v7, v5, :cond_42

    aget-object v8, p2, v7

    .line 148
    .local v8, "contextItem":Landroid/icu/text/DisplayContext;
    sget-object v9, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    invoke-virtual {v8}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_140

    goto :goto_3f

    .line 160
    :pswitch_27
    move-object v4, v8

    .line 161
    goto :goto_3f

    .line 157
    :pswitch_29
    move-object v3, v8

    .line 158
    goto :goto_3f

    .line 154
    :pswitch_2b
    move-object v2, v8

    .line 155
    goto :goto_3f

    .line 150
    :pswitch_2d
    invoke-virtual {v8}, Landroid/icu/text/DisplayContext;->value()I

    move-result v9

    sget-object v10, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v10}, Landroid/icu/text/DisplayContext;->value()I

    move-result v10

    if-ne v9, v10, :cond_3c

    .line 151
    sget-object v9, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_3e

    :cond_3c
    sget-object v9, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 152
    .end local v1    # "dialectHandling":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .local v9, "dialectHandling":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    :goto_3e
    move-object v1, v9

    .line 147
    .end local v8    # "contextItem":Landroid/icu/text/DisplayContext;
    .end local v9    # "dialectHandling":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .restart local v1    # "dialectHandling":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    :goto_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 167
    :cond_42
    iput-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 168
    iput-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    .line 169
    iput-object v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    .line 170
    iput-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->substituteHandling:Landroid/icu/text/DisplayContext;

    .line 171
    sget-object v5, Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    sget-object v7, Landroid/icu/text/DisplayContext;->NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

    const/4 v8, 0x1

    if-ne v4, v7, :cond_53

    move v7, v8

    goto :goto_54

    :cond_53
    move v7, v6

    :goto_54
    invoke-virtual {v5, p1, v7}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    .line 172
    sget-object v5, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    sget-object v7, Landroid/icu/text/DisplayContext;->NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

    if-ne v4, v7, :cond_61

    goto :goto_62

    :cond_61
    move v8, v6

    :goto_62
    invoke-virtual {v5, p1, v8}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    .line 173
    sget-object v5, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iget-object v7, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v7}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v5}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v5

    goto :goto_83

    .line 174
    :cond_7d
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v5}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v5

    :goto_83
    iput-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    .line 180
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v7, "localeDisplayPattern"

    const-string v8, "separator"

    invoke-virtual {v5, v7, v8}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "sep":Ljava/lang/String;
    if-eqz v5, :cond_97

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 182
    :cond_97
    const-string v5, "{0}, {1}"

    .line 184
    :cond_99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x2

    invoke-static {v5, v8, v9, v9}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Ljava/lang/String;

    .line 187
    iget-object v10, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v11, "pattern"

    invoke-virtual {v10, v7, v11}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, "pattern":Ljava/lang/String;
    if-eqz v10, :cond_b5

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b7

    .line 189
    :cond_b5
    const-string v10, "{0} ({1})"

    .line 191
    :cond_b7
    invoke-static {v10, v8, v9, v9}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->format:Ljava/lang/String;

    .line 192
    const-string v11, "\uff08"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_da

    .line 193
    const v11, 0xff08

    iput-char v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    .line 194
    const v11, 0xff09

    iput-char v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    .line 195
    const v11, 0xff3b

    iput-char v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 196
    const v11, 0xff3d

    iput-char v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    goto :goto_ea

    .line 198
    :cond_da
    const/16 v11, 0x28

    iput-char v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    .line 199
    const/16 v11, 0x29

    iput-char v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    .line 200
    const/16 v11, 0x5b

    iput-char v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 201
    const/16 v11, 0x5d

    iput-char v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 204
    :goto_ea
    iget-object v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v12, "keyTypePattern"

    invoke-virtual {v11, v7, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "keyTypePattern":Ljava/lang/String;
    if-eqz v7, :cond_fa

    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fc

    .line 206
    :cond_fa
    const-string v7, "{0}={1}"

    .line 208
    :cond_fc
    invoke-static {v7, v8, v9, v9}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Ljava/lang/String;

    .line 213
    const/4 v9, 0x0

    .line 214
    .local v9, "needBrkIter":Z
    sget-object v11, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq v2, v11, :cond_10b

    sget-object v11, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne v2, v11, :cond_12a

    .line 216
    :cond_10b
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [Z

    iput-object v11, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    .line 217
    const-string v11, "android/icu/impl/data/icudata"

    invoke-static {v11, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    .line 218
    .local v11, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v12, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;

    invoke-direct {v12, p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;-><init>(Landroid/icu/impl/LocaleDisplayNamesImpl;Landroid/icu/impl/LocaleDisplayNamesImpl-IA;)V

    .line 220
    .local v12, "sink":Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;
    :try_start_121
    const-string v0, "contextTransforms"

    invoke-virtual {v11, v0, v12}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_126
    .catch Ljava/util/MissingResourceException; {:try_start_121 .. :try_end_126} :catch_127

    .line 224
    goto :goto_128

    .line 222
    :catch_127
    move-exception v0

    .line 225
    :goto_128
    iget-boolean v9, v12, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;->hasCapitalizationUsage:Z

    .line 228
    .end local v11    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v12    # "sink":Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextSink;
    :cond_12a
    if-nez v9, :cond_130

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-ne v2, v0, :cond_136

    .line 229
    :cond_130
    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 232
    :cond_136
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    invoke-interface {v0, p1, v6}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    .line 233
    return-void

    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_27
    .end packed-switch
.end method

.method private blacklist adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "usage"    # Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .param p2, "name"    # Ljava/lang/String;

    .line 269
    if-eqz p2, :cond_43

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_43

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    .line 271
    invoke-virtual {p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_43

    .line 274
    :cond_27
    monitor-enter p0

    .line 275
    :try_start_28
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_34

    .line 277
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 279
    :cond_34
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v2, 0x300

    invoke-static {v0, p2, v1, v2}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 281
    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_40

    throw v0

    .line 283
    :cond_43
    return-object p2
.end method

.method private blacklist appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 752
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 754
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 756
    :goto_19
    return-object p2
.end method

.method public static blacklist getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 102
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    monitor-enter v0

    .line 103
    :try_start_3
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    invoke-virtual {v1, p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 104
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static varargs blacklist getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "contexts"    # [Landroid/icu/text/DisplayContext;

    .line 108
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    invoke-virtual {v1, p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 110
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static blacklist haveData(Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;)Z
    .registers 4
    .param p0, "type"    # Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    .line 742
    invoke-virtual {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :pswitch_20
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    instance-of v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    return v0

    .line 743
    :pswitch_25
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    instance-of v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    return v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist keyDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "skipAdjust"    # Z

    .line 551
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Keys"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "keyName":Ljava/lang/String;
    if-eqz p2, :cond_c

    move-object v1, v0

    goto :goto_12

    :cond_c
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_12
    return-object v1
.end method

.method private blacklist keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "skipAdjust"    # Z

    .line 561
    const/4 v0, 0x0

    .line 563
    .local v0, "keyValueName":Ljava/lang/String;
    const-string v1, "currency"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 564
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    invoke-static {p2}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    if-nez v0, :cond_38

    .line 566
    move-object v0, p2

    goto :goto_38

    .line 569
    :cond_17
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_2e

    .line 570
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v2, "Types%short"

    invoke-virtual {v1, v2, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "tmp":Ljava/lang/String;
    if-eqz v1, :cond_2e

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 572
    move-object v0, v1

    .line 575
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2e
    if-nez v0, :cond_38

    .line 576
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v2, "Types"

    invoke-virtual {v1, v2, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    :cond_38
    :goto_38
    if-eqz p3, :cond_3c

    move-object v1, v0

    goto :goto_42

    :cond_3c
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_42
    return-object v1
.end method

.method private blacklist localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 24
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 307
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 309
    .local v1, "resultName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "lang":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 314
    const-string v2, "und"

    .line 316
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "country":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, "variant":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    if-lez v6, :cond_24

    move v6, v8

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    .line 321
    .local v6, "hasScript":Z
    :goto_25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2d

    move v9, v8

    goto :goto_2e

    :cond_2d
    const/4 v9, 0x0

    .line 322
    .local v9, "hasCountry":Z
    :goto_2e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_36

    move v10, v8

    goto :goto_37

    :cond_36
    const/4 v10, 0x0

    .line 325
    .local v10, "hasVariant":Z
    :goto_37
    iget-object v11, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v12, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne v11, v12, :cond_bc

    .line 327
    const/16 v11, 0x5f

    if-eqz v6, :cond_70

    if-eqz v9, :cond_70

    .line 328
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 329
    .local v12, "langScriptCountry":Ljava/lang/String;
    invoke-direct {v0, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 330
    .local v13, "result":Ljava/lang/String;
    if-eqz v13, :cond_70

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_70

    .line 331
    move-object v1, v13

    .line 332
    const/4 v6, 0x0

    .line 333
    const/4 v9, 0x0

    .line 334
    goto :goto_bc

    .line 337
    .end local v12    # "langScriptCountry":Ljava/lang/String;
    .end local v13    # "result":Ljava/lang/String;
    :cond_70
    if-eqz v6, :cond_96

    .line 338
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 339
    .local v12, "langScript":Ljava/lang/String;
    invoke-direct {v0, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 340
    .restart local v13    # "result":Ljava/lang/String;
    if-eqz v13, :cond_96

    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_96

    .line 341
    move-object v1, v13

    .line 342
    const/4 v6, 0x0

    .line 343
    goto :goto_bc

    .line 346
    .end local v12    # "langScript":Ljava/lang/String;
    .end local v13    # "result":Ljava/lang/String;
    :cond_96
    if-eqz v9, :cond_bc

    .line 347
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 348
    .local v11, "langCountry":Ljava/lang/String;
    invoke-direct {v0, v11}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 349
    .local v12, "result":Ljava/lang/String;
    if-eqz v12, :cond_bc

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_bc

    .line 350
    move-object v1, v12

    .line 351
    const/4 v9, 0x0

    .line 352
    nop

    .line 358
    .end local v11    # "langCountry":Ljava/lang/String;
    .end local v12    # "result":Ljava/lang/String;
    :cond_bc
    :goto_bc
    const/4 v11, 0x0

    if-nez v1, :cond_d6

    .line 359
    invoke-direct {v0, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 360
    .restart local v12    # "result":Ljava/lang/String;
    if-nez v12, :cond_c6

    return-object v11

    .line 361
    :cond_c6
    iget-char v13, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v14, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 362
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    iget-char v14, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v15, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 363
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 366
    .end local v12    # "result":Ljava/lang/String;
    :cond_d6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v12, "buf":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_fa

    .line 369
    invoke-direct {v0, v3, v8}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayNameInContext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 370
    .restart local v13    # "result":Ljava/lang/String;
    if-nez v13, :cond_e4

    return-object v11

    .line 371
    :cond_e4
    iget-char v14, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v15, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 372
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    iget-char v15, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    const/16 v16, 0x0

    iget-char v7, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 373
    invoke-virtual {v14, v15, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fc

    .line 367
    .end local v13    # "result":Ljava/lang/String;
    :cond_fa
    const/16 v16, 0x0

    .line 375
    :goto_fc
    if-eqz v9, :cond_118

    .line 376
    invoke-direct {v0, v4, v8}, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, "result":Ljava/lang/String;
    if-nez v7, :cond_105

    return-object v11

    .line 378
    :cond_105
    iget-char v13, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v14, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 379
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    iget-char v14, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v15, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 380
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 378
    invoke-direct {v0, v13, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 382
    .end local v7    # "result":Ljava/lang/String;
    :cond_118
    if-eqz v10, :cond_134

    .line 383
    invoke-direct {v0, v5, v8}, Landroid/icu/impl/LocaleDisplayNamesImpl;->variantDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 384
    .restart local v7    # "result":Ljava/lang/String;
    if-nez v7, :cond_121

    return-object v11

    .line 385
    :cond_121
    iget-char v13, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v14, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 386
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    iget-char v14, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    iget-char v15, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 387
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 385
    invoke-direct {v0, v13, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 390
    .end local v7    # "result":Ljava/lang/String;
    :cond_134
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v7

    .line 391
    .local v7, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v7, :cond_1c7

    .line 392
    :goto_13a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1be

    .line 393
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 394
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v15, p1

    move-object/from16 v17, v11

    invoke-virtual {v15, v14}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 395
    .local v11, "value":Ljava/lang/String;
    invoke-direct {v0, v14, v8}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 396
    .local v13, "keyDisplayName":Ljava/lang/String;
    if-nez v13, :cond_155

    return-object v17

    .line 397
    :cond_155
    iget-char v8, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    move-object/from16 v19, v1

    .end local v1    # "resultName":Ljava/lang/String;
    .local v19, "resultName":Ljava/lang/String;
    iget-char v1, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 398
    invoke-virtual {v13, v8, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-char v8, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    move-object/from16 v20, v2

    .end local v2    # "lang":Ljava/lang/String;
    .local v20, "lang":Ljava/lang/String;
    iget-char v2, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 399
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 400
    .end local v13    # "keyDisplayName":Ljava/lang/String;
    .local v1, "keyDisplayName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {v0, v14, v11, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, "valueDisplayName":Ljava/lang/String;
    if-nez v8, :cond_171

    return-object v17

    .line 402
    :cond_171
    iget-char v2, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    iget-char v13, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    .line 403
    invoke-virtual {v8, v2, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iget-char v13, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    move-object/from16 v21, v3

    .end local v3    # "script":Ljava/lang/String;
    .local v21, "script":Ljava/lang/String;
    iget-char v3, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    .line 404
    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 405
    .end local v8    # "valueDisplayName":Ljava/lang/String;
    .local v2, "valueDisplayName":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18d

    .line 406
    invoke-direct {v0, v2, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1b3

    .line 407
    :cond_18d
    invoke-virtual {v14, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a6

    .line 408
    iget-object v3, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v13, v8, [Ljava/lang/CharSequence;

    aput-object v1, v13, v16

    const/16 v18, 0x1

    aput-object v2, v13, v18

    invoke-static {v3, v13}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "keyValue":Ljava/lang/String;
    invoke-direct {v0, v3, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 411
    .end local v3    # "keyValue":Ljava/lang/String;
    goto :goto_1b3

    .line 412
    :cond_1a6
    invoke-direct {v0, v1, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 413
    const-string v8, "="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 414
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .end local v1    # "keyDisplayName":Ljava/lang/String;
    .end local v2    # "valueDisplayName":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    :goto_1b3
    move-object/from16 v11, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    const/4 v8, 0x1

    goto/16 :goto_13a

    .line 392
    .end local v19    # "resultName":Ljava/lang/String;
    .end local v20    # "lang":Ljava/lang/String;
    .end local v21    # "script":Ljava/lang/String;
    .local v1, "resultName":Ljava/lang/String;
    .local v2, "lang":Ljava/lang/String;
    .local v3, "script":Ljava/lang/String;
    :cond_1be
    move-object/from16 v15, p1

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .end local v1    # "resultName":Ljava/lang/String;
    .end local v2    # "lang":Ljava/lang/String;
    .end local v3    # "script":Ljava/lang/String;
    .restart local v19    # "resultName":Ljava/lang/String;
    .restart local v20    # "lang":Ljava/lang/String;
    .restart local v21    # "script":Ljava/lang/String;
    goto :goto_1cf

    .line 391
    .end local v19    # "resultName":Ljava/lang/String;
    .end local v20    # "lang":Ljava/lang/String;
    .end local v21    # "script":Ljava/lang/String;
    .restart local v1    # "resultName":Ljava/lang/String;
    .restart local v2    # "lang":Ljava/lang/String;
    .restart local v3    # "script":Ljava/lang/String;
    :cond_1c7
    move-object/from16 v15, p1

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .line 419
    .end local v1    # "resultName":Ljava/lang/String;
    .end local v2    # "lang":Ljava/lang/String;
    .end local v3    # "script":Ljava/lang/String;
    .restart local v19    # "resultName":Ljava/lang/String;
    .restart local v20    # "lang":Ljava/lang/String;
    .restart local v21    # "script":Ljava/lang/String;
    :goto_1cf
    const/4 v1, 0x0

    .line 420
    .local v1, "resultRemainder":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1da

    .line 421
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_1da
    if-eqz v1, :cond_1ec

    .line 425
    iget-object v2, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->format:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/CharSequence;

    aput-object v19, v3, v16

    const/16 v18, 0x1

    aput-object v1, v3, v18

    invoke-static {v2, v3}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .end local v19    # "resultName":Ljava/lang/String;
    .local v2, "resultName":Ljava/lang/String;
    goto :goto_1ee

    .line 424
    .end local v2    # "resultName":Ljava/lang/String;
    .restart local v19    # "resultName":Ljava/lang/String;
    :cond_1ec
    move-object/from16 v2, v19

    .line 429
    .end local v19    # "resultName":Ljava/lang/String;
    .restart local v2    # "resultName":Ljava/lang/String;
    :goto_1ee
    sget-object v3, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private blacklist localeIdName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "localeId"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    const-string v2, "Languages%short"

    if-ne v0, v1, :cond_17

    .line 435
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v0, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "locIdName":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 437
    return-object v0

    .line 440
    .end local v0    # "locIdName":Ljava/lang/String;
    :cond_17
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Languages"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .restart local v0    # "locIdName":Ljava/lang/String;
    if-eqz v0, :cond_27

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    :cond_27
    const/16 v3, 0x5f

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_52

    .line 444
    invoke-static {p1}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v3

    .line 445
    .local v3, "canonLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "canonLocId":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v6, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v5, v6, :cond_4c

    .line 447
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v5, v2, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_4c

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 449
    return-object v0

    .line 452
    :cond_4c
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v2, v1, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .end local v3    # "canonLocale":Landroid/icu/util/ULocale;
    .end local v4    # "canonLocId":Ljava/lang/String;
    :cond_52
    return-object v0
.end method

.method private blacklist newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;
    .registers 9
    .param p1, "modified"    # Landroid/icu/util/ULocale;
    .param p2, "capContext"    # Landroid/icu/text/DisplayContext;

    .line 641
    sget-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    invoke-static {p1, v0}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 642
    .local v0, "minimized":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v1}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "tempName":Ljava/lang/String;
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p2, v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 645
    .local v2, "titlecase":Z
    :goto_13
    if-eqz v2, :cond_1c

    iget-object v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    invoke-static {v3, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->toTitleWholeStringNoLowercase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    :cond_1c
    move-object v3, v1

    .line 646
    .local v3, "nameInDisplayLocale":Ljava/lang/String;
    :goto_1d
    invoke-virtual {p1, p1}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    .line 647
    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p2, v4, :cond_2a

    .line 649
    invoke-static {p1, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->toTitleWholeStringNoLowercase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2b

    :cond_2a
    move-object v4, v1

    .line 650
    .local v4, "nameInSelf":Ljava/lang/String;
    :goto_2b
    new-instance v5, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    invoke-direct {v5, v0, p1, v3, v4}, Landroid/icu/text/LocaleDisplayNames$UiListItem;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private blacklist regionDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "skipAdjust"    # Z

    .line 523
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_21

    .line 524
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Countries%short"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "regionName":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 526
    if-eqz p2, :cond_1a

    move-object v1, v0

    goto :goto_20

    :cond_1a
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_20
    return-object v1

    .line 529
    .end local v0    # "regionName":Ljava/lang/String;
    :cond_21
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Countries"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .restart local v0    # "regionName":Ljava/lang/String;
    if-eqz p2, :cond_2d

    move-object v1, v0

    goto :goto_33

    :cond_2d
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_33
    return-object v1
.end method

.method private blacklist scriptDisplayNameInContext(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "skipAdjust"    # Z

    .line 502
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_21

    .line 503
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts%short"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "scriptName":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 505
    if-eqz p2, :cond_1a

    move-object v1, v0

    goto :goto_20

    :cond_1a
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_20
    return-object v1

    .line 508
    .end local v0    # "scriptName":Ljava/lang/String;
    :cond_21
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .restart local v0    # "scriptName":Ljava/lang/String;
    if-eqz p2, :cond_2d

    move-object v1, v0

    goto :goto_33

    :cond_2d
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_33
    return-object v1
.end method

.method private static blacklist toTitleWholeStringNoLowercase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "s"    # Ljava/lang/String;

    .line 98
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->TO_TITLE_WHOLE_STRING_NO_LOWERCASE:Landroid/icu/text/CaseMap$Title;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist variantDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "skipAdjust"    # Z

    .line 540
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Variants"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "variantName":Ljava/lang/String;
    if-eqz p2, :cond_c

    move-object v1, v0

    goto :goto_12

    :cond_c
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_12
    return-object v1
.end method


# virtual methods
.method public whitelist test-api getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .registers 4
    .param p1, "type"    # Landroid/icu/text/DisplayContext$Type;

    .line 248
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    invoke-virtual {p1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 262
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    .local v0, "result":Landroid/icu/text/DisplayContext;
    goto :goto_23

    .line 259
    .end local v0    # "result":Landroid/icu/text/DisplayContext;
    :pswitch_e
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->substituteHandling:Landroid/icu/text/DisplayContext;

    .line 260
    .restart local v0    # "result":Landroid/icu/text/DisplayContext;
    goto :goto_23

    .line 256
    .end local v0    # "result":Landroid/icu/text/DisplayContext;
    :pswitch_11
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    .line 257
    .restart local v0    # "result":Landroid/icu/text/DisplayContext;
    goto :goto_23

    .line 253
    .end local v0    # "result":Landroid/icu/text/DisplayContext;
    :pswitch_14
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    .line 254
    .restart local v0    # "result":Landroid/icu/text/DisplayContext;
    goto :goto_23

    .line 250
    .end local v0    # "result":Landroid/icu/text/DisplayContext;
    :pswitch_17
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne v0, v1, :cond_20

    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_22

    :cond_20
    sget-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    .line 251
    .restart local v0    # "result":Landroid/icu/text/DisplayContext;
    :goto_22
    nop

    .line 265
    :goto_23
    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public whitelist test-api getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    return-object v0
.end method

.method public whitelist test-api getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist test-api getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 590
    .local p1, "localeSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/icu/text/LocaleDisplayNames$UiListItem;>;"
    move-object/from16 v0, p0

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v1

    .line 592
    .local v1, "capContext":Landroid/icu/text/DisplayContext;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/LocaleDisplayNames$UiListItem;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 594
    .local v3, "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    new-instance v4, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v4}, Landroid/icu/util/ULocale$Builder;-><init>()V

    .line 595
    .local v4, "builder":Landroid/icu/util/ULocale$Builder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/ULocale;

    .line 596
    .local v6, "locOriginal":Landroid/icu/util/ULocale;
    invoke-virtual {v4, v6}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    .line 597
    invoke-static {v6}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 598
    .local v7, "loc":Landroid/icu/util/ULocale;
    new-instance v8, Landroid/icu/util/ULocale;

    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 599
    .local v8, "base":Landroid/icu/util/ULocale;
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 600
    .local v9, "locales":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    if-nez v9, :cond_48

    .line 601
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v9, v10

    invoke-interface {v3, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_48
    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    .end local v6    # "locOriginal":Landroid/icu/util/ULocale;
    .end local v7    # "loc":Landroid/icu/util/ULocale;
    .end local v8    # "base":Landroid/icu/util/ULocale;
    .end local v9    # "locales":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    goto :goto_1b

    .line 605
    :cond_4c
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_54
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 606
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/ULocale;

    .line 607
    .local v7, "base":Landroid/icu/util/ULocale;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 608
    .local v8, "values":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_90

    .line 609
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/ULocale;

    .line 610
    .local v9, "locale":Landroid/icu/util/ULocale;
    sget-object v10, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    invoke-static {v9, v10}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    move-result-object v10

    invoke-direct {v0, v10, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    .end local v9    # "locale":Landroid/icu/util/ULocale;
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_115

    .line 612
    :cond_90
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 613
    .local v9, "scripts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 615
    .local v11, "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v7}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v12

    .line 616
    .local v12, "maxBase":Landroid/icu/util/ULocale;
    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_cb

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/util/ULocale;

    .line 619
    .local v14, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v14}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v14}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    .end local v14    # "locale":Landroid/icu/util/ULocale;
    goto :goto_b0

    .line 622
    :cond_cb
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v13

    const/4 v14, 0x0

    if-le v13, v10, :cond_d4

    move v13, v10

    goto :goto_d5

    :cond_d4
    move v13, v14

    .line 623
    .local v13, "hasScripts":Z
    :goto_d5
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v15

    if-le v15, v10, :cond_dc

    goto :goto_dd

    :cond_dc
    move v10, v14

    .line 624
    .local v10, "hasRegions":Z
    :goto_dd
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_e1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_111

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/icu/util/ULocale;

    .line 625
    .local v15, "locale":Landroid/icu/util/ULocale;
    move-object/from16 v16, v3

    .end local v3    # "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    .local v16, "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    invoke-virtual {v4, v15}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    move-result-object v3

    .line 626
    .local v3, "modified":Landroid/icu/util/ULocale$Builder;
    move-object/from16 v17, v4

    .end local v4    # "builder":Landroid/icu/util/ULocale$Builder;
    .local v17, "builder":Landroid/icu/util/ULocale$Builder;
    const-string v4, ""

    if-nez v13, :cond_fc

    .line 627
    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale$Builder;->setScript(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    .line 629
    :cond_fc
    if-nez v10, :cond_101

    .line 630
    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    .line 632
    :cond_101
    invoke-virtual {v3}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    .end local v3    # "modified":Landroid/icu/util/ULocale$Builder;
    .end local v15    # "locale":Landroid/icu/util/ULocale;
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_e1

    .line 624
    .end local v16    # "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    .end local v17    # "builder":Landroid/icu/util/ULocale$Builder;
    .local v3, "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    .restart local v4    # "builder":Landroid/icu/util/ULocale$Builder;
    :cond_111
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 635
    .end local v3    # "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    .end local v4    # "builder":Landroid/icu/util/ULocale$Builder;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    .end local v7    # "base":Landroid/icu/util/ULocale;
    .end local v8    # "values":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/ULocale;>;"
    .end local v9    # "scripts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "hasRegions":Z
    .end local v11    # "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "maxBase":Landroid/icu/util/ULocale;
    .end local v13    # "hasScripts":Z
    .restart local v16    # "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    .restart local v17    # "builder":Landroid/icu/util/ULocale$Builder;
    :goto_115
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_54

    .line 636
    .end local v16    # "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    .end local v17    # "builder":Landroid/icu/util/ULocale$Builder;
    .restart local v3    # "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    .restart local v4    # "builder":Landroid/icu/util/ULocale$Builder;
    :cond_11b
    move-object/from16 v16, v3

    .end local v3    # "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    .restart local v16    # "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/util/Set<Landroid/icu/util/ULocale;>;>;"
    move-object/from16 v3, p2

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 637
    return-object v2
.end method

.method public whitelist test-api keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "lang"    # Ljava/lang/String;

    .line 460
    const-string v0, "root"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    goto :goto_6f

    .line 464
    :cond_12
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    const-string v2, "Languages%short"

    if-ne v0, v1, :cond_2f

    .line 465
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v0, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "langName":Ljava/lang/String;
    if-eqz v0, :cond_2f

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 467
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 470
    .end local v0    # "langName":Ljava/lang/String;
    :cond_2f
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Languages"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .restart local v0    # "langName":Ljava/lang/String;
    if-eqz v0, :cond_3f

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 473
    :cond_3f
    invoke-static {p1}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v3

    .line 474
    .local v3, "canonLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "canonLocId":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v6, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v5, v6, :cond_62

    .line 476
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v5, v2, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_62

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 478
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 481
    :cond_62
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-virtual {v2, v1, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .end local v3    # "canonLocale":Landroid/icu/util/ULocale;
    .end local v4    # "canonLocId":Ljava/lang/String;
    :cond_68
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 461
    .end local v0    # "langName":Ljava/lang/String;
    :cond_6f
    :goto_6f
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->substituteHandling:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_77

    move-object v0, p1

    goto :goto_78

    :cond_77
    const/4 v0, 0x0

    :goto_78
    return-object v0
.end method

.method public whitelist test-api localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 288
    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "localeId"    # Ljava/lang/String;

    .line 298
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 293
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "region"    # Ljava/lang/String;

    .line 535
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api scriptDisplayName(I)Ljava/lang/String;
    .registers 3
    .param p1, "scriptCode"    # I

    .line 519
    invoke-static {p1}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "script"    # Ljava/lang/String;

    .line 488
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v1, "Scripts%stand-alone"

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 490
    :cond_10
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_2d

    .line 491
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v2, "Scripts%short"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_2d

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 493
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 496
    :cond_2d
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    const-string v2, "Scripts"

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    :cond_35
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "script"    # Ljava/lang/String;

    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayNameInContext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "variant"    # Ljava/lang/String;

    .line 546
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->variantDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
