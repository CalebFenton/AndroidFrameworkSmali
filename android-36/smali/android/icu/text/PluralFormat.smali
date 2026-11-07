.class public Landroid/icu/text/PluralFormat;
.super Landroid/icu/text/UFormat;
.source "PluralFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralFormat$PluralSelectorAdapter;,
        Landroid/icu/text/PluralFormat$PluralSelector;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private transient greylist-max-o msgPattern:Landroid/icu/text/MessagePattern;

.field private greylist-max-o numberFormat:Landroid/icu/text/NumberFormat;

.field private transient greylist-max-o offset:D

.field private greylist-max-o parsedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o pattern:Ljava/lang/String;

.field private greylist-max-o pluralRules:Landroid/icu/text/PluralRules;

.field private transient greylist-max-o pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

.field private greylist-max-o ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetpluralRules(Landroid/icu/text/PluralFormat;)Landroid/icu/text/PluralRules;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 135
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 4

    .line 189
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 190
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 191
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/text/PluralRules;)V
    .registers 5
    .param p1, "rules"    # Landroid/icu/text/PluralRules;

    .line 221
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 222
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 223
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/text/PluralRules;Ljava/lang/String;)V
    .registers 6
    .param p1, "rules"    # Landroid/icu/text/PluralRules;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 311
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 312
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 313
    invoke-virtual {p0, p2}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;

    .line 199
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 200
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v0, v1, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 201
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)V
    .registers 6
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    .line 256
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 257
    invoke-direct {p0, v0, p2, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 258
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)V
    .registers 7
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;
    .param p3, "pattern"    # Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 343
    invoke-direct {p0, v0, p2, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 344
    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;Landroid/icu/text/NumberFormat;)V
    .registers 8
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "numberFormat"    # Landroid/icu/text/NumberFormat;

    .line 358
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 359
    invoke-direct {p0, v0, p2, p1, p4}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 360
    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;)V
    .registers 6
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;

    .line 233
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 234
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, p2, v1, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 235
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;Ljava/lang/String;)V
    .registers 7
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;
    .param p3, "pattern"    # Ljava/lang/String;

    .line 327
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 328
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, p2, v1, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 329
    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 6
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 297
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v0, v1, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 298
    invoke-virtual {p0, p2}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 549
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 280
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 281
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 211
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;)V

    .line 212
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules$PluralType;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;

    .line 268
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)V

    .line 269
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules;)V
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "rules"    # Landroid/icu/text/PluralRules;

    .line 246
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;)V

    .line 247
    return-void
.end method

.method static greylist-max-o findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I
    .registers 20
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "selector"    # Landroid/icu/text/PluralFormat$PluralSelector;
    .param p3, "context"    # Ljava/lang/Object;
    .param p4, "number"    # D

    .line 437
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    .line 439
    .local v0, "count":I
    invoke-virtual/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 440
    .local v1, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 441
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v2

    .line 442
    .local v2, "offset":D
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 444
    .end local v2    # "offset":D
    :cond_19
    const-wide/16 v2, 0x0

    .line 450
    .restart local v2    # "offset":D
    :goto_1b
    const/4 v4, 0x0

    .line 454
    .local v4, "keyword":Ljava/lang/String;
    const/4 v5, 0x0

    .line 465
    .local v5, "haveKeywordMatch":Z
    const/4 v6, 0x0

    .line 469
    .local v6, "msgStart":I
    :goto_1e
    add-int/lit8 v7, p1, 0x1

    .end local p1    # "partIndex":I
    .local v7, "partIndex":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 470
    .end local v1    # "part":Landroid/icu/text/MessagePattern$Part;
    .local p1, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    .line 471
    .local v1, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v8, :cond_32

    .line 472
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto/16 :goto_a9

    .line 474
    :cond_32
    nop

    .line 476
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 478
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "partIndex":I
    .local v8, "partIndex":I
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 479
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v9

    cmpl-double v7, p4, v9

    if-nez v7, :cond_4c

    .line 481
    return v8

    .line 479
    :cond_4c
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move v7, v8

    goto :goto_a0

    .line 483
    .end local v8    # "partIndex":I
    .restart local v7    # "partIndex":I
    :cond_52
    if-nez v5, :cond_9c

    .line 486
    const-string v8, "other"

    invoke-virtual {p0, p1, v8}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 487
    if-nez v6, :cond_72

    .line 488
    move v6, v7

    .line 489
    if-eqz v4, :cond_6d

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 493
    const/4 v5, 0x1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_a0

    .line 514
    :cond_6d
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_a0

    .line 487
    :cond_72
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_a0

    .line 497
    :cond_77
    if-nez v4, :cond_8d

    .line 498
    sub-double v9, p4, v2

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-interface {v11, v12, v9, v10}, Landroid/icu/text/PluralFormat$PluralSelector;->select(Ljava/lang/Object;D)Ljava/lang/String;

    move-result-object v4

    .line 499
    if-eqz v6, :cond_91

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 502
    const/4 v5, 0x1

    goto :goto_91

    .line 497
    :cond_8d
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 506
    :cond_91
    :goto_91
    if-nez v5, :cond_a0

    invoke-virtual {p0, p1, v4}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 508
    move v6, v7

    .line 510
    const/4 v5, 0x1

    goto :goto_a0

    .line 483
    :cond_9c
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 514
    :cond_a0
    :goto_a0
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 515
    .end local v7    # "partIndex":I
    .local v1, "partIndex":I
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_aa

    move v7, v1

    .line 516
    .end local v1    # "partIndex":I
    .restart local v7    # "partIndex":I
    :goto_a9
    return v6

    .line 515
    .end local v7    # "partIndex":I
    .restart local v1    # "partIndex":I
    :cond_aa
    move v13, v1

    move-object v1, p1

    move p1, v13

    goto/16 :goto_1e
.end method

.method private greylist-max-o format(Ljava/lang/Number;D)Ljava/lang/String;
    .registers 15
    .param p1, "numberObject"    # Ljava/lang/Number;
    .param p2, "number"    # D

    .line 593
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_e7

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    if-nez v0, :cond_f

    move-wide v9, p2

    goto/16 :goto_e8

    .line 599
    :cond_f
    iget-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    sub-double v0, p2, v0

    .line 602
    .local v0, "numberMinusOffset":D
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v2, v2, Landroid/icu/text/DecimalFormat;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3c

    .line 604
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v2, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->toNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v2

    .line 606
    .local v2, "f":Landroid/icu/number/LocalizedNumberFormatter;
    iget-wide v5, p0, Landroid/icu/text/PluralFormat;->offset:D

    cmpl-double v3, v5, v3

    if-nez v3, :cond_2e

    .line 608
    invoke-virtual {v2, p1}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object v3

    .local v3, "result":Landroid/icu/number/FormattedNumber;
    goto :goto_32

    .line 610
    .end local v3    # "result":Landroid/icu/number/FormattedNumber;
    :cond_2e
    invoke-virtual {v2, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->format(D)Landroid/icu/number/FormattedNumber;

    move-result-object v3

    .line 612
    .restart local v3    # "result":Landroid/icu/number/FormattedNumber;
    :goto_32
    invoke-virtual {v3}, Landroid/icu/number/FormattedNumber;->toString()Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "numberString":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/icu/number/FormattedNumber;->getFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object v2

    .line 614
    .end local v3    # "result":Landroid/icu/number/FormattedNumber;
    .local v2, "dec":Landroid/icu/text/PluralRules$IFixedDecimal;
    move-object v8, v2

    goto :goto_57

    .line 615
    .end local v2    # "dec":Landroid/icu/text/PluralRules$IFixedDecimal;
    .end local v4    # "numberString":Ljava/lang/String;
    :cond_3c
    iget-wide v5, p0, Landroid/icu/text/PluralFormat;->offset:D

    cmpl-double v2, v5, v3

    if-nez v2, :cond_4a

    .line 616
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v2, p1}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .local v2, "numberString":Ljava/lang/String;
    goto :goto_51

    .line 618
    .end local v2    # "numberString":Ljava/lang/String;
    :cond_4a
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v2, v0, v1}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 620
    .restart local v4    # "numberString":Ljava/lang/String;
    :goto_51
    new-instance v2, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v2, v0, v1}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    move-object v8, v2

    .line 623
    .local v8, "dec":Landroid/icu/text/PluralRules$IFixedDecimal;
    :goto_57
    iget-object v5, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    move-wide v9, p2

    .end local p2    # "number":D
    .local v9, "number":D
    invoke-static/range {v5 .. v10}, Landroid/icu/text/PluralFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result p2

    .line 626
    .local p2, "partIndex":I
    const/4 p3, 0x0

    .line 627
    .local p3, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, p2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 629
    .local v2, "prevIndex":I
    :goto_6c
    iget-object v3, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v3, p2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 630
    .local v3, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v5

    .line 631
    .local v5, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    .line 632
    .local v6, "index":I
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_94

    .line 633
    if-nez p3, :cond_89

    .line 634
    iget-object v7, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 636
    :cond_89
    iget-object v7, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p3, v7, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 638
    :cond_94
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v5, v7, :cond_ce

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_a5

    iget-object v7, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 640
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v7

    if-eqz v7, :cond_a5

    goto :goto_ce

    .line 649
    :cond_a5
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_e6

    .line 650
    if-nez p3, :cond_b1

    .line 651
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object p3, v7

    .line 653
    :cond_b1
    iget-object v7, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p3, v7, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 654
    move v2, v6

    .line 655
    iget-object v7, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7, p2}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p2

    .line 656
    iget-object v7, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7, p2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    .line 657
    iget-object v7, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-static {v7, v2, v6, p3}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 658
    move v2, v6

    goto :goto_e6

    .line 641
    :cond_ce
    :goto_ce
    if-nez p3, :cond_d6

    .line 642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object p3, v7

    .line 644
    :cond_d6
    iget-object v7, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p3, v7, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 645
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_e2

    .line 646
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_e2
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 660
    .end local v3    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v5    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v6    # "index":I
    :cond_e6
    :goto_e6
    goto :goto_6c

    .line 593
    .end local v0    # "numberMinusOffset":D
    .end local v2    # "prevIndex":I
    .end local v4    # "numberString":Ljava/lang/String;
    .end local v8    # "dec":Landroid/icu/text/PluralRules$IFixedDecimal;
    .end local v9    # "number":D
    .end local p3    # "result":Ljava/lang/StringBuilder;
    .local p2, "number":D
    :cond_e7
    move-wide v9, p2

    .line 594
    .end local p2    # "number":D
    .restart local v9    # "number":D
    :goto_e8
    iget-object p2, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {p2, p1}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    return-object p2
.end method

.method private greylist-max-o init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V
    .registers 6
    .param p1, "rules"    # Landroid/icu/text/PluralRules;
    .param p2, "type"    # Landroid/icu/text/PluralRules$PluralType;
    .param p3, "locale"    # Landroid/icu/util/ULocale;
    .param p4, "numberFormat"    # Landroid/icu/text/NumberFormat;

    .line 377
    iput-object p3, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 378
    if-nez p1, :cond_b

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v0, p2}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    goto :goto_c

    .line 379
    :cond_b
    move-object v0, p1

    :goto_c
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 380
    invoke-direct {p0}, Landroid/icu/text/PluralFormat;->resetPattern()V

    .line 381
    if-nez p4, :cond_1a

    iget-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, p4

    :goto_1b
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 382
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 860
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 861
    new-instance v0, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat-IA;)V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 864
    iput-object v1, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 865
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 866
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    .line 868
    :cond_16
    return-void
.end method

.method private greylist-max-o resetPattern()V
    .registers 3

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_c

    .line 387
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    .line 389
    :cond_c
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 390
    return-void
.end method


# virtual methods
.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 402
    iput-object p1, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_d

    .line 404
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 407
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->parsePluralStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    .line 408
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_1b} :catch_1d

    .line 412
    nop

    .line 413
    return-void

    .line 409
    :catch_1d
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Landroid/icu/text/PluralFormat;->resetPattern()V

    .line 411
    throw v0
.end method

.method public whitelist test-api equals(Landroid/icu/text/PluralFormat;)Z
    .registers 3
    .param p1, "rhs"    # Landroid/icu/text/PluralFormat;

    .line 835
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 815
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 816
    return v0

    .line 818
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 821
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/icu/text/PluralFormat;

    .line 822
    .local v2, "pf":Landroid/icu/text/PluralFormat;
    iget-object v3, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iget-object v4, v2, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 823
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iget-object v4, v2, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 824
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v4, v2, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 825
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    iget-object v4, v2, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 826
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 822
    :goto_3f
    return v0

    .line 819
    .end local v2    # "pf":Landroid/icu/text/PluralFormat;
    :cond_40
    :goto_40
    return v1
.end method

.method public final whitelist test-api format(D)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # D

    .line 561
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 583
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_13

    .line 586
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 587
    .local v0, "numberObject":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    return-object p2

    .line 584
    .end local v0    # "numberObject":Ljava/lang/Number;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a Number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 843
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;

    .line 674
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 688
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o parseType(Ljava/lang/String;Landroid/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;
    .registers 22
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "scanner"    # Landroid/icu/text/RbnfLenientScanner;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v4, :cond_cd

    iget-object v4, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v4

    if-nez v4, :cond_19

    const/4 v0, -0x1

    const/16 v16, 0x0

    goto/16 :goto_d0

    .line 706
    :cond_19
    const/4 v4, 0x0

    .line 708
    .local v4, "partIndex":I
    iget-object v7, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v7

    .line 709
    .local v7, "count":I
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v8

    .line 710
    .local v8, "startingAt":I
    if-gez v8, :cond_27

    .line 711
    const/4 v8, 0x0

    .line 718
    :cond_27
    const/4 v9, 0x0

    .line 719
    .local v9, "keyword":Ljava/lang/String;
    const/4 v10, 0x0

    .line 720
    .local v10, "matchedWord":Ljava/lang/String;
    const/4 v11, -0x1

    .line 723
    .local v11, "matchedIndex":I
    :goto_2a
    if-ge v4, v7, :cond_b5

    .line 724
    iget-object v12, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "partIndex":I
    .local v13, "partIndex":I
    invoke-virtual {v12, v4}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 725
    .local v4, "partSelector":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v12

    sget-object v14, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v12, v14, :cond_3e

    .line 727
    move v4, v13

    goto :goto_2a

    .line 730
    :cond_3e
    iget-object v12, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "partIndex":I
    .local v14, "partIndex":I
    invoke-virtual {v12, v13}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v12

    .line 731
    .local v12, "partStart":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v13

    sget-object v15, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v13, v15, :cond_50

    .line 733
    move v4, v14

    goto :goto_2a

    .line 736
    :cond_50
    iget-object v13, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "partIndex":I
    .local v15, "partIndex":I
    invoke-virtual {v13, v14}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v13

    .line 737
    .local v13, "partLimit":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v13}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v14

    const/16 v16, 0x0

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v14, v5, :cond_64

    .line 739
    move v4, v15

    goto :goto_2a

    .line 742
    :cond_64
    iget-object v5, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v14

    invoke-virtual {v13}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    invoke-virtual {v5, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "currArg":Ljava/lang/String;
    if-eqz v2, :cond_87

    .line 745
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 746
    .local v6, "tempPos":I
    if-ltz v6, :cond_7c

    .line 747
    move v14, v6

    .local v14, "currMatchIndex":I
    goto :goto_86

    .line 750
    .end local v14    # "currMatchIndex":I
    :cond_7c
    invoke-interface {v2, v1, v5, v8}, Landroid/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v14

    .line 751
    .local v14, "scannerMatchResult":[I
    const/16 v17, 0x0

    aget v17, v14, v17

    move/from16 v14, v17

    .line 753
    .end local v6    # "tempPos":I
    .local v14, "currMatchIndex":I
    :goto_86
    goto :goto_8b

    .line 755
    .end local v14    # "currMatchIndex":I
    :cond_87
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 757
    .restart local v14    # "currMatchIndex":I
    :goto_8b
    if-ltz v14, :cond_ae

    if-lt v14, v11, :cond_ae

    if-eqz v10, :cond_9b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-le v6, v1, :cond_ae

    .line 758
    :cond_9b
    move v1, v14

    .line 759
    .end local v11    # "matchedIndex":I
    .local v1, "matchedIndex":I
    move-object v6, v5

    .line 760
    .end local v10    # "matchedWord":Ljava/lang/String;
    .local v6, "matchedWord":Ljava/lang/String;
    iget-object v10, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v11

    invoke-virtual {v13}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v0

    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move v11, v1

    move-object v10, v6

    .line 762
    .end local v1    # "matchedIndex":I
    .end local v4    # "partSelector":Landroid/icu/text/MessagePattern$Part;
    .end local v5    # "currArg":Ljava/lang/String;
    .end local v6    # "matchedWord":Ljava/lang/String;
    .end local v12    # "partStart":Landroid/icu/text/MessagePattern$Part;
    .end local v13    # "partLimit":Landroid/icu/text/MessagePattern$Part;
    .restart local v10    # "matchedWord":Ljava/lang/String;
    .restart local v11    # "matchedIndex":I
    :cond_ae
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v15

    goto/16 :goto_2a

    .line 763
    .end local v14    # "currMatchIndex":I
    .end local v15    # "partIndex":I
    .local v4, "partIndex":I
    :cond_b5
    const/16 v16, 0x0

    if-eqz v9, :cond_c5

    .line 764
    invoke-virtual {v3, v11}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 765
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 766
    return-object v9

    .line 770
    :cond_c5
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 771
    invoke-virtual {v3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 772
    return-object v16

    .line 701
    .end local v4    # "partIndex":I
    .end local v7    # "count":I
    .end local v8    # "startingAt":I
    .end local v9    # "keyword":Ljava/lang/String;
    .end local v10    # "matchedWord":Ljava/lang/String;
    .end local v11    # "matchedIndex":I
    :cond_cd
    const/4 v0, -0x1

    const/16 v16, 0x0

    .line 702
    :goto_d0
    invoke-virtual {v3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 703
    invoke-virtual {v3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 704
    return-object v16
.end method

.method public greylist-max-o setLocale(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "ulocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 794
    if-nez p1, :cond_8

    .line 795
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 797
    :cond_8
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 798
    return-void
.end method

.method public whitelist test-api setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .registers 2
    .param p1, "format"    # Landroid/icu/text/NumberFormat;

    .line 807
    iput-object p1, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 808
    return-void
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 2

    .line 421
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 852
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rules=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", pattern=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", format=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
