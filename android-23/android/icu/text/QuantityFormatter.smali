.class Landroid/icu/text/QuantityFormatter;
.super Ljava/lang/Object;
.source "QuantityFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/QuantityFormatter$Builder;
    }
.end annotation


# static fields
.field private static final INDEX_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_INDEX:I


# instance fields
.field private final templates:[Landroid/icu/impl/SimplePatternFormatter;


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/QuantityFormatter;->INDEX_MAP:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    #@0
    sget v0, Landroid/icu/text/QuantityFormatter;->MAX_INDEX:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 24
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v2, Landroid/icu/text/QuantityFormatter;->INDEX_MAP:Ljava/util/Map;

    #@7
    .line 30
    sget-object v2, Landroid/icu/text/QuantityFormatter;->INDEX_MAP:Ljava/util/Map;

    #@9
    const-string/jumbo v3, "other"

    #@c
    .line 28
    const/4 v4, 0x0

    #@d
    .line 30
    const/4 v0, 0x1

    #@e
    .local v0, "idx":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v4

    #@12
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 31
    sget-object v2, Landroid/icu/text/QuantityFormatter;->INDEX_MAP:Ljava/util/Map;

    #@17
    const-string/jumbo v3, "zero"

    #@1a
    add-int/lit8 v1, v0, 0x1

    #@1c
    .end local v0    # "idx":I
    .local v1, "idx":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v4

    #@20
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 32
    sget-object v2, Landroid/icu/text/QuantityFormatter;->INDEX_MAP:Ljava/util/Map;

    #@25
    const-string/jumbo v3, "one"

    #@28
    add-int/lit8 v0, v1, 0x1

    #@2a
    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 33
    sget-object v2, Landroid/icu/text/QuantityFormatter;->INDEX_MAP:Ljava/util/Map;

    #@33
    const-string/jumbo v3, "two"

    #@36
    add-int/lit8 v1, v0, 0x1

    #@38
    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v4

    #@3c
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 34
    sget-object v2, Landroid/icu/text/QuantityFormatter;->INDEX_MAP:Ljava/util/Map;

    #@41
    const-string/jumbo v3, "few"

    #@44
    add-int/lit8 v0, v1, 0x1

    #@46
    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v4

    #@4a
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 35
    sget-object v2, Landroid/icu/text/QuantityFormatter;->INDEX_MAP:Ljava/util/Map;

    #@4f
    const-string/jumbo v3, "many"

    #@52
    add-int/lit8 v1, v0, 0x1

    #@54
    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v4

    #@58
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 37
    sput v1, Landroid/icu/text/QuantityFormatter;->MAX_INDEX:I

    #@5d
    .line 22
    return-void
.end method

.method private constructor <init>([Landroid/icu/impl/SimplePatternFormatter;)V
    .locals 0
    .param p1, "templates"    # [Landroid/icu/impl/SimplePatternFormatter;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    iput-object p1, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@5
    .line 107
    return-void
.end method

.method synthetic constructor <init>([Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/text/QuantityFormatter;)V
    .locals 0
    .param p1, "templates"    # [Landroid/icu/impl/SimplePatternFormatter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/QuantityFormatter;-><init>([Landroid/icu/impl/SimplePatternFormatter;)V

    #@3
    return-void
.end method

.method private computeVariant(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Ljava/lang/String;
    .locals 1
    .param p1, "quantity"    # D
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p4, "pluralRules"    # Landroid/icu/text/PluralRules;

    #@0
    .prologue
    .line 137
    instance-of v0, p3, Landroid/icu/text/DecimalFormat;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 138
    check-cast p3, Landroid/icu/text/DecimalFormat;

    #@6
    .end local p3    # "numberFormat":Landroid/icu/text/NumberFormat;
    invoke-virtual {p3, p1, p2}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p4, v0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 140
    .restart local p3    # "numberFormat":Landroid/icu/text/NumberFormat;
    :cond_0
    invoke-virtual {p4, p1, p2}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method


# virtual methods
.method public format(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Ljava/lang/String;
    .locals 5
    .param p1, "quantity"    # D
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p4, "pluralRules"    # Landroid/icu/text/PluralRules;

    #@0
    .prologue
    .line 120
    invoke-virtual {p3, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 121
    .local v0, "formatStr":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/QuantityFormatter;->computeVariant(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 122
    .local v1, "variant":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/icu/text/QuantityFormatter;->getByVariant(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x1

    #@d
    new-array v3, v3, [Ljava/lang/CharSequence;

    #@f
    const/4 v4, 0x0

    #@10
    aput-object v0, v3, v4

    #@12
    invoke-virtual {v2, v3}, Landroid/icu/impl/SimplePatternFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    return-object v2
.end method

.method public getByVariant(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;
    .locals 5
    .param p1, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 131
    sget-object v2, Landroid/icu/text/QuantityFormatter;->INDEX_MAP:Ljava/util/Map;

    #@3
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Integer;

    #@9
    .line 132
    .local v0, "idxObj":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@b
    if-nez v0, :cond_1

    #@d
    move v2, v3

    #@e
    :goto_0
    aget-object v1, v4, v2

    #@10
    .line 133
    .local v1, "template":Landroid/icu/impl/SimplePatternFormatter;
    if-nez v1, :cond_0

    #@12
    iget-object v2, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@14
    aget-object v1, v2, v3

    #@16
    .end local v1    # "template":Landroid/icu/impl/SimplePatternFormatter;
    :cond_0
    return-object v1

    #@17
    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v2

    #@1b
    goto :goto_0
.end method
