.class public Landroid/icu/text/PluralFormat;
.super Landroid/icu/text/UFormat;
.source "PluralFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralFormat$PluralSelector;,
        Landroid/icu/text/PluralFormat$PluralSelectorAdapter;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient msgPattern:Landroid/icu/text/MessagePattern;

.field private numberFormat:Landroid/icu/text/NumberFormat;

.field private transient offset:D

.field private parsedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private pluralRules:Landroid/icu/text/PluralRules;

.field private transient pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

.field private ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static synthetic -get0(Landroid/icu/text/PluralFormat;)Landroid/icu/text/PluralRules;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/PluralFormat;

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
    sput-boolean v0, Landroid/icu/text/PluralFormat;->-assertionsDisabled:Z

    #@b
    .line 133
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 188
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 189
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1b
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@1d
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, v2, v0, v1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@24
    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/PluralRules;)V
    .locals 3
    .param p1, "rules"    # Landroid/icu/text/PluralRules;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 223
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 224
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1b
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@1d
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@24
    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/PluralRules;Ljava/lang/String;)V
    .locals 3
    .param p1, "rules"    # Landroid/icu/text/PluralRules;
    .param p2, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 322
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 323
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1b
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@1d
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@24
    .line 324
    invoke-virtual {p0, p2}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    #@27
    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 3
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 199
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 200
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1b
    invoke-direct {p0, v2, v0, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@1e
    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)V
    .locals 3
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 262
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 263
    invoke-direct {p0, v2, p2, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@1c
    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)V
    .locals 3
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;
    .param p3, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 355
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 356
    invoke-direct {p0, v2, p2, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@1c
    .line 357
    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    #@1f
    .line 355
    return-void
.end method

.method constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;Landroid/icu/text/NumberFormat;)V
    .locals 3
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "numberFormat"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 371
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 372
    invoke-direct {p0, v2, p2, p1, p4}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@1c
    .line 373
    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    #@1f
    .line 371
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;)V
    .locals 3
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 236
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 237
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1b
    invoke-direct {p0, p2, v0, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@1e
    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;Ljava/lang/String;)V
    .locals 3
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;
    .param p3, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 339
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 340
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1b
    invoke-direct {p0, p2, v0, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@1e
    .line 341
    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    #@21
    .line 339
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 3
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 306
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 307
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1b
    invoke-direct {p0, v2, v0, p1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@1e
    .line 308
    invoke-virtual {p0, p2}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    #@21
    .line 306
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 288
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 141
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    .line 147
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@8
    .line 153
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a
    .line 167
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@c
    .line 174
    iput-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@e
    .line 179
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@12
    .line 564
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@14
    invoke-direct {v0, p0, v2}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@17
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@19
    .line 289
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@1b
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@1d
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@20
    move-result-object v1

    #@21
    invoke-direct {p0, v2, v0, v1, v2}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@24
    .line 290
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    #@27
    .line 288
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 212
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;)V

    #@7
    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules$PluralType;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    #@0
    .prologue
    .line 276
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)V

    #@7
    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;

    #@0
    .prologue
    .line 251
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;)V

    #@7
    .line 250
    return-void
.end method

.method static findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I
    .locals 12
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "selector"    # Landroid/icu/text/PluralFormat$PluralSelector;
    .param p3, "context"    # Ljava/lang/Object;
    .param p4, "number"    # D

    #@0
    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    #@3
    move-result v0

    #@4
    .line 454
    .local v0, "count":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@7
    move-result-object v6

    #@8
    .line 455
    .local v6, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@b
    move-result-object v9

    #@c
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    #@f
    move-result v9

    #@10
    if-eqz v9, :cond_1

    #@12
    .line 456
    invoke-virtual {p0, v6}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    #@15
    move-result-wide v4

    #@16
    .line 457
    .local v4, "offset":D
    add-int/lit8 p1, p1, 0x1

    #@18
    .line 465
    :goto_0
    const/4 v2, 0x0

    #@19
    .line 469
    .local v2, "keyword":Ljava/lang/String;
    const/4 v1, 0x0

    #@1a
    .line 480
    .local v1, "haveKeywordMatch":Z
    const/4 v3, 0x0

    #@1b
    .line 484
    .end local v2    # "keyword":Ljava/lang/String;
    .local v3, "msgStart":I
    :goto_1
    add-int/lit8 v7, p1, 0x1

    #@1d
    .end local p1    # "partIndex":I
    .local v7, "partIndex":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@20
    move-result-object v6

    #@21
    .line 485
    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@24
    move-result-object v8

    #@25
    .line 486
    .local v8, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@27
    if-ne v8, v9, :cond_2

    #@29
    move p1, v7

    #@2a
    .line 531
    .end local v7    # "partIndex":I
    .restart local p1    # "partIndex":I
    :cond_0
    return v3

    #@2b
    .line 459
    .end local v1    # "haveKeywordMatch":Z
    .end local v3    # "msgStart":I
    .end local v4    # "offset":D
    .end local v8    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    :cond_1
    const-wide/16 v4, 0x0

    #@2d
    .restart local v4    # "offset":D
    goto :goto_0

    #@2e
    .line 489
    .end local p1    # "partIndex":I
    .restart local v1    # "haveKeywordMatch":Z
    .restart local v3    # "msgStart":I
    .restart local v7    # "partIndex":I
    .restart local v8    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    :cond_2
    sget-boolean v9, Landroid/icu/text/PluralFormat;->-assertionsDisabled:Z

    #@30
    if-nez v9, :cond_4

    #@32
    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@34
    if-ne v8, v9, :cond_3

    #@36
    const/4 v9, 0x1

    #@37
    :goto_2
    if-nez v9, :cond_4

    #@39
    new-instance v9, Ljava/lang/AssertionError;

    #@3b
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@3e
    throw v9

    #@3f
    :cond_3
    const/4 v9, 0x0

    #@40
    goto :goto_2

    #@41
    .line 491
    :cond_4
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    #@48
    move-result v9

    #@49
    if-eqz v9, :cond_5

    #@4b
    .line 493
    add-int/lit8 p1, v7, 0x1

    #@4d
    .end local v7    # "partIndex":I
    .restart local p1    # "partIndex":I
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@50
    move-result-object v6

    #@51
    .line 494
    invoke-virtual {p0, v6}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    #@54
    move-result-wide v10

    #@55
    cmpl-double v9, p4, v10

    #@57
    if-nez v9, :cond_6

    #@59
    .line 496
    return p1

    #@5a
    .line 498
    .end local p1    # "partIndex":I
    .restart local v7    # "partIndex":I
    :cond_5
    if-nez v1, :cond_b

    #@5c
    .line 501
    const-string/jumbo v9, "other"

    #@5f
    invoke-virtual {p0, v6, v9}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    #@62
    move-result v9

    #@63
    if-eqz v9, :cond_8

    #@65
    .line 502
    if-nez v3, :cond_b

    #@67
    .line 503
    move v3, v7

    #@68
    .line 504
    if-eqz v2, :cond_7

    #@6a
    const-string/jumbo v9, "other"

    #@6d
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v9

    #@71
    if-eqz v9, :cond_b

    #@73
    .line 508
    const/4 v1, 0x1

    #@74
    move p1, v7

    #@75
    .line 529
    .end local v7    # "partIndex":I
    .restart local p1    # "partIndex":I
    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@78
    move-result p1

    #@79
    .line 530
    add-int/lit8 p1, p1, 0x1

    #@7b
    if-ge p1, v0, :cond_0

    #@7d
    goto :goto_1

    #@7e
    .end local p1    # "partIndex":I
    .restart local v7    # "partIndex":I
    :cond_7
    move p1, v7

    #@7f
    .line 504
    .end local v7    # "partIndex":I
    .restart local p1    # "partIndex":I
    goto :goto_3

    #@80
    .line 512
    .end local p1    # "partIndex":I
    .restart local v7    # "partIndex":I
    :cond_8
    if-nez v2, :cond_9

    #@82
    .line 513
    sub-double v10, p4, v4

    #@84
    invoke-interface {p2, p3, v10, v11}, Landroid/icu/text/PluralFormat$PluralSelector;->select(Ljava/lang/Object;D)Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    .line 514
    .local v2, "keyword":Ljava/lang/String;
    if-eqz v3, :cond_9

    #@8a
    const-string/jumbo v9, "other"

    #@8d
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v9

    #@91
    if-eqz v9, :cond_9

    #@93
    .line 517
    const/4 v1, 0x1

    #@94
    .line 521
    .end local v2    # "keyword":Ljava/lang/String;
    :cond_9
    if-nez v1, :cond_a

    #@96
    invoke-virtual {p0, v6, v2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    #@99
    move-result v9

    #@9a
    if-eqz v9, :cond_b

    #@9c
    .line 523
    move v3, v7

    #@9d
    .line 525
    const/4 v1, 0x1

    #@9e
    move p1, v7

    #@9f
    .end local v7    # "partIndex":I
    .restart local p1    # "partIndex":I
    goto :goto_3

    #@a0
    .end local p1    # "partIndex":I
    .restart local v7    # "partIndex":I
    :cond_a
    move p1, v7

    #@a1
    .line 521
    .end local v7    # "partIndex":I
    .restart local p1    # "partIndex":I
    goto :goto_3

    #@a2
    .end local p1    # "partIndex":I
    .restart local v7    # "partIndex":I
    :cond_b
    move p1, v7

    #@a3
    .end local v7    # "partIndex":I
    .restart local p1    # "partIndex":I
    goto :goto_3
.end method

.method private format(Ljava/lang/Number;D)Ljava/lang/String;
    .locals 18
    .param p1, "numberObject"    # Ljava/lang/Number;
    .param p2, "number"    # D

    #@0
    .prologue
    .line 609
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4
    if-eqz v2, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@a
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->countParts()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_1

    #@10
    .line 610
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@14
    move-object/from16 v0, p1

    #@16
    invoke-virtual {v2, v0}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    return-object v2

    #@1b
    .line 615
    :cond_1
    move-object/from16 v0, p0

    #@1d
    iget-wide v2, v0, Landroid/icu/text/PluralFormat;->offset:D

    #@1f
    sub-double v10, p2, v2

    #@21
    .line 617
    .local v10, "numberMinusOffset":D
    move-object/from16 v0, p0

    #@23
    iget-wide v2, v0, Landroid/icu/text/PluralFormat;->offset:D

    #@25
    const-wide/16 v6, 0x0

    #@27
    cmpl-double v2, v2, v6

    #@29
    if-nez v2, :cond_3

    #@2b
    .line 618
    move-object/from16 v0, p0

    #@2d
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-virtual {v2, v0}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v9

    #@35
    .line 623
    .local v9, "numberString":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@39
    instance-of v2, v2, Landroid/icu/text/DecimalFormat;

    #@3b
    if-eqz v2, :cond_4

    #@3d
    .line 624
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@41
    check-cast v2, Landroid/icu/text/DecimalFormat;

    #@43
    invoke-virtual {v2, v10, v11}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    #@46
    move-result-object v5

    #@47
    .line 628
    .local v5, "dec":Landroid/icu/text/PluralRules$FixedDecimal;
    :goto_1
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v4, v0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@4f
    const/4 v3, 0x0

    #@50
    move-wide/from16 v6, p2

    #@52
    invoke-static/range {v2 .. v7}, Landroid/icu/text/PluralFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    #@55
    move-result v13

    #@56
    .line 631
    .local v13, "partIndex":I
    const/4 v15, 0x0

    #@57
    .line 632
    .local v15, "result":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@5b
    invoke-virtual {v2, v13}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@62
    move-result v14

    #@63
    .line 634
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .local v14, "prevIndex":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    #@65
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@67
    add-int/lit8 v13, v13, 0x1

    #@69
    invoke-virtual {v2, v13}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@6c
    move-result-object v12

    #@6d
    .line 635
    .local v12, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@70
    move-result-object v16

    #@71
    .line 636
    .local v16, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@74
    move-result v8

    #@75
    .line 637
    .local v8, "index":I
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@77
    move-object/from16 v0, v16

    #@79
    if-ne v0, v2, :cond_6

    #@7b
    .line 638
    if-nez v15, :cond_5

    #@7d
    .line 639
    move-object/from16 v0, p0

    #@7f
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@81
    invoke-virtual {v2, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    return-object v2

    #@86
    .line 620
    .end local v5    # "dec":Landroid/icu/text/PluralRules$FixedDecimal;
    .end local v8    # "index":I
    .end local v9    # "numberString":Ljava/lang/String;
    .end local v12    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v13    # "partIndex":I
    .end local v14    # "prevIndex":I
    .end local v16    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    :cond_3
    move-object/from16 v0, p0

    #@88
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@8a
    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    #@8d
    move-result-object v9

    #@8e
    .restart local v9    # "numberString":Ljava/lang/String;
    goto :goto_0

    #@8f
    .line 626
    :cond_4
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    #@91
    invoke-direct {v5, v10, v11}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    #@94
    .restart local v5    # "dec":Landroid/icu/text/PluralRules$FixedDecimal;
    goto :goto_1

    #@95
    .line 641
    .restart local v8    # "index":I
    .restart local v12    # "part":Landroid/icu/text/MessagePattern$Part;
    .restart local v13    # "partIndex":I
    .restart local v14    # "prevIndex":I
    .restart local v16    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    :cond_5
    move-object/from16 v0, p0

    #@97
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@99
    invoke-virtual {v15, v2, v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    return-object v2

    #@a2
    .line 643
    :cond_6
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@a4
    move-object/from16 v0, v16

    #@a6
    if-eq v0, v2, :cond_7

    #@a8
    .line 645
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@aa
    move-object/from16 v0, v16

    #@ac
    if-ne v0, v2, :cond_a

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@b2
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    #@b5
    move-result v2

    #@b6
    .line 643
    if-eqz v2, :cond_a

    #@b8
    .line 646
    :cond_7
    if-nez v15, :cond_8

    #@ba
    .line 647
    new-instance v15, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    .line 649
    :cond_8
    move-object/from16 v0, p0

    #@c1
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@c3
    invoke-virtual {v15, v2, v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@c6
    .line 650
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@c8
    move-object/from16 v0, v16

    #@ca
    if-ne v0, v2, :cond_9

    #@cc
    .line 651
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    .line 653
    :cond_9
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@d2
    move-result v14

    #@d3
    goto :goto_2

    #@d4
    .line 654
    :cond_a
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@d6
    move-object/from16 v0, v16

    #@d8
    if-ne v0, v2, :cond_2

    #@da
    .line 655
    if-nez v15, :cond_b

    #@dc
    .line 656
    new-instance v15, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    .line 658
    :cond_b
    move-object/from16 v0, p0

    #@e3
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@e5
    invoke-virtual {v15, v2, v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@e8
    .line 659
    move v14, v8

    #@e9
    .line 660
    move-object/from16 v0, p0

    #@eb
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@ed
    invoke-virtual {v2, v13}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@f0
    move-result v13

    #@f1
    .line 661
    move-object/from16 v0, p0

    #@f3
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@f5
    invoke-virtual {v2, v13}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@f8
    move-result-object v2

    #@f9
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@fc
    move-result v8

    #@fd
    .line 662
    move-object/from16 v0, p0

    #@ff
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@101
    invoke-static {v2, v14, v8, v15}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    #@104
    .line 663
    move v14, v8

    #@105
    goto/16 :goto_2
.end method

.method private init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V
    .locals 1
    .param p1, "rules"    # Landroid/icu/text/PluralRules;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;
    .param p3, "locale"    # Landroid/icu/util/ULocale;
    .param p4, "numberFormat"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 390
    iput-object p3, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@2
    .line 391
    if-nez p1, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    invoke-static {v0, p2}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    #@9
    move-result-object p1

    #@a
    .end local p1    # "rules":Landroid/icu/text/PluralRules;
    :cond_0
    iput-object p1, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@c
    .line 393
    invoke-direct {p0}, Landroid/icu/text/PluralFormat;->resetPattern()V

    #@f
    .line 394
    if-nez p4, :cond_1

    #@11
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@13
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@16
    move-result-object p4

    #@17
    .end local p4    # "numberFormat":Landroid/icu/text/NumberFormat;
    :cond_1
    iput-object p4, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@19
    .line 389
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 864
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 865
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@6
    invoke-direct {v0, p0, v1}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$PluralSelectorAdapter;)V

    #@9
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    #@b
    .line 868
    iput-object v1, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@d
    .line 869
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 870
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@13
    invoke-virtual {p0, v0}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    #@16
    .line 863
    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 398
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@3
    .line 399
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 400
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@9
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    #@c
    .line 402
    :cond_0
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    #@10
    .line 397
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 416
    iput-object p1, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@2
    .line 417
    iget-object v1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 418
    new-instance v1, Landroid/icu/text/MessagePattern;

    #@8
    invoke-direct {v1}, Landroid/icu/text/MessagePattern;-><init>()V

    #@b
    iput-object v1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@d
    .line 421
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@f
    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->parsePluralStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    #@12
    .line 422
    iget-object v1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->getPluralOffset(I)D

    #@18
    move-result-wide v2

    #@19
    iput-wide v2, p0, Landroid/icu/text/PluralFormat;->offset:D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 415
    return-void

    #@1c
    .line 423
    :catch_0
    move-exception v0

    #@1d
    .line 424
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Landroid/icu/text/PluralFormat;->resetPattern()V

    #@20
    .line 425
    throw v0
.end method

.method public equals(Landroid/icu/text/PluralFormat;)Z
    .locals 1
    .param p1, "rhs"    # Landroid/icu/text/PluralFormat;

    #@0
    .prologue
    .line 837
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralFormat;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 816
    if-ne p0, p1, :cond_0

    #@3
    .line 817
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 819
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/icu/text/PluralFormat;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 820
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 822
    check-cast v0, Landroid/icu/text/PluralFormat;

    #@15
    .line 824
    .local v0, "pf":Landroid/icu/text/PluralFormat;
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@17
    iget-object v3, v0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@19
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 825
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@21
    iget-object v3, v0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@23
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    .line 824
    if-eqz v2, :cond_3

    #@29
    .line 826
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2b
    iget-object v3, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2d
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    .line 824
    if-eqz v2, :cond_3

    #@33
    .line 827
    iget-object v1, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@35
    iget-object v2, v0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@37
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    .line 823
    :cond_3
    return v1
.end method

.method public final format(D)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # D

    #@0
    .prologue
    .line 577
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 599
    instance-of v1, p1, Ljava/lang/Number;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 600
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "\'"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, "\' is not a Number"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    :cond_0
    move-object v0, p1

    #@26
    .line 602
    check-cast v0, Ljava/lang/Number;

    #@28
    .line 603
    .local v0, "numberObject":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@2b
    move-result-wide v2

    #@2c
    invoke-direct {p0, v0, v2, v3}, Landroid/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    .line 604
    return-object p2
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/PluralRules;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    #@8
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 680
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 694
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method parseType(Ljava/lang/String;Landroid/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;
    .locals 18
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "scanner"    # Landroid/icu/text/RbnfLenientScanner;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 707
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4
    if-eqz v15, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@a
    invoke-virtual {v15}, Landroid/icu/text/MessagePattern;->countParts()I

    #@d
    move-result v15

    #@e
    if-nez v15, :cond_1

    #@10
    .line 708
    :cond_0
    const/4 v15, -0x1

    #@11
    move-object/from16 v0, p3

    #@13
    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@16
    .line 709
    const/4 v15, -0x1

    #@17
    move-object/from16 v0, p3

    #@19
    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@1c
    .line 710
    const/4 v15, 0x0

    #@1d
    return-object v15

    #@1e
    .line 712
    :cond_1
    const/4 v8, 0x0

    #@1f
    .line 714
    .local v8, "partIndex":I
    move-object/from16 v0, p0

    #@21
    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@23
    invoke-virtual {v15}, Landroid/icu/text/MessagePattern;->countParts()I

    #@26
    move-result v2

    #@27
    .line 715
    .local v2, "count":I
    invoke-virtual/range {p3 .. p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@2a
    move-result v14

    #@2b
    .line 716
    .local v14, "startingAt":I
    if-gez v14, :cond_2

    #@2d
    .line 717
    const/4 v14, 0x0

    #@2e
    .line 724
    :cond_2
    const/4 v5, 0x0

    #@2f
    .line 725
    .local v5, "keyword":Ljava/lang/String;
    const/4 v7, 0x0

    #@30
    .line 726
    .local v7, "matchedWord":Ljava/lang/String;
    const/4 v6, -0x1

    #@31
    .local v6, "matchedIndex":I
    move v9, v8

    #@32
    .line 729
    .end local v5    # "keyword":Ljava/lang/String;
    .end local v7    # "matchedWord":Ljava/lang/String;
    .end local v8    # "partIndex":I
    .local v9, "partIndex":I
    :cond_3
    :goto_0
    if-ge v9, v2, :cond_9

    #@34
    .line 730
    move-object/from16 v0, p0

    #@36
    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@38
    add-int/lit8 v8, v9, 0x1

    #@3a
    .end local v9    # "partIndex":I
    .restart local v8    # "partIndex":I
    invoke-virtual {v15, v9}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@3d
    move-result-object v11

    #@3e
    .line 731
    .local v11, "partSelector":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@41
    move-result-object v15

    #@42
    sget-object v16, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@44
    move-object/from16 v0, v16

    #@46
    if-eq v15, v0, :cond_4

    #@48
    move v9, v8

    #@49
    .line 733
    .end local v8    # "partIndex":I
    .restart local v9    # "partIndex":I
    goto :goto_0

    #@4a
    .line 736
    .end local v9    # "partIndex":I
    .restart local v8    # "partIndex":I
    :cond_4
    move-object/from16 v0, p0

    #@4c
    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4e
    add-int/lit8 v9, v8, 0x1

    #@50
    .end local v8    # "partIndex":I
    .restart local v9    # "partIndex":I
    invoke-virtual {v15, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@53
    move-result-object v12

    #@54
    .line 737
    .local v12, "partStart":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@57
    move-result-object v15

    #@58
    sget-object v16, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@5a
    move-object/from16 v0, v16

    #@5c
    if-ne v15, v0, :cond_3

    #@5e
    .line 742
    move-object/from16 v0, p0

    #@60
    iget-object v15, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@62
    add-int/lit8 v8, v9, 0x1

    #@64
    .end local v9    # "partIndex":I
    .restart local v8    # "partIndex":I
    invoke-virtual {v15, v9}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@67
    move-result-object v10

    #@68
    .line 743
    .local v10, "partLimit":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@6b
    move-result-object v15

    #@6c
    sget-object v16, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@6e
    move-object/from16 v0, v16

    #@70
    if-eq v15, v0, :cond_5

    #@72
    move v9, v8

    #@73
    .line 745
    .end local v8    # "partIndex":I
    .restart local v9    # "partIndex":I
    goto :goto_0

    #@74
    .line 748
    .end local v9    # "partIndex":I
    .restart local v8    # "partIndex":I
    :cond_5
    move-object/from16 v0, p0

    #@76
    iget-object v15, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@78
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@7b
    move-result v16

    #@7c
    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@7f
    move-result v17

    #@80
    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    .line 749
    .local v3, "currArg":Ljava/lang/String;
    if-eqz p2, :cond_8

    #@86
    .line 751
    move-object/from16 v0, p2

    #@88
    move-object/from16 v1, p1

    #@8a
    invoke-interface {v0, v1, v3, v14}, Landroid/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    #@8d
    move-result-object v13

    #@8e
    .line 752
    .local v13, "scannerMatchResult":[I
    const/4 v15, 0x0

    #@8f
    aget v4, v13, v15

    #@91
    .line 757
    .end local v13    # "scannerMatchResult":[I
    .local v4, "currMatchIndex":I
    :goto_1
    if-ltz v4, :cond_7

    #@93
    if-lt v4, v6, :cond_7

    #@95
    if-eqz v7, :cond_6

    #@97
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9a
    move-result v15

    #@9b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@9e
    move-result v16

    #@9f
    move/from16 v0, v16

    #@a1
    if-le v15, v0, :cond_7

    #@a3
    .line 758
    :cond_6
    move v6, v4

    #@a4
    .line 759
    move-object v7, v3

    #@a5
    .line 760
    .local v7, "matchedWord":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a7
    iget-object v15, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@a9
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@ac
    move-result v16

    #@ad
    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@b0
    move-result v17

    #@b1
    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    .end local v7    # "matchedWord":Ljava/lang/String;
    :cond_7
    move v9, v8

    #@b6
    .end local v8    # "partIndex":I
    .restart local v9    # "partIndex":I
    goto/16 :goto_0

    #@b8
    .line 755
    .end local v4    # "currMatchIndex":I
    .end local v9    # "partIndex":I
    .restart local v8    # "partIndex":I
    :cond_8
    move-object/from16 v0, p1

    #@ba
    invoke-virtual {v0, v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@bd
    move-result v4

    #@be
    .restart local v4    # "currMatchIndex":I
    goto :goto_1

    #@bf
    .line 763
    .end local v3    # "currArg":Ljava/lang/String;
    .end local v4    # "currMatchIndex":I
    .end local v8    # "partIndex":I
    .end local v10    # "partLimit":Landroid/icu/text/MessagePattern$Part;
    .end local v11    # "partSelector":Landroid/icu/text/MessagePattern$Part;
    .end local v12    # "partStart":Landroid/icu/text/MessagePattern$Part;
    .restart local v9    # "partIndex":I
    :cond_9
    if-eqz v5, :cond_a

    #@c1
    .line 764
    move-object/from16 v0, p3

    #@c3
    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@c6
    .line 765
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@c9
    move-result v15

    #@ca
    add-int/2addr v15, v6

    #@cb
    move-object/from16 v0, p3

    #@cd
    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@d0
    .line 766
    return-object v5

    #@d1
    .line 770
    :cond_a
    const/4 v15, -0x1

    #@d2
    move-object/from16 v0, p3

    #@d4
    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@d7
    .line 771
    const/4 v15, -0x1

    #@d8
    move-object/from16 v0, p3

    #@da
    invoke-virtual {v0, v15}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@dd
    .line 772
    const/4 v15, 0x0

    #@de
    return-object v15
.end method

.method public setLocale(Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 793
    if-nez p1, :cond_0

    #@3
    .line 794
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@5
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@8
    move-result-object p1

    #@9
    .line 796
    :cond_0
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@b
    invoke-direct {p0, v1, v0, p1, v1}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    #@e
    .line 792
    return-void
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 807
    iput-object p1, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@2
    .line 806
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 856
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "locale="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    .line 857
    const-string/jumbo v1, ", rules=\'"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "\'"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 858
    const-string/jumbo v1, ", pattern=\'"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "\'"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 859
    const-string/jumbo v1, ", format=\'"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    const-string/jumbo v2, "\'"

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 860
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    return-object v1
.end method
