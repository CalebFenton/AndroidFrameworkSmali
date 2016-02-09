.class public Landroid/icu/util/LocalePriorityList;
.super Ljava/lang/Object;
.source "LocalePriorityList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocalePriorityList$Builder;,
        Landroid/icu/util/LocalePriorityList$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field private static final D0:D

.field private static final D1:Ljava/lang/Double;

.field private static final languageSplitter:Ljava/util/regex/Pattern;

.field private static myDescendingDouble:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final weightSplitter:Ljava/util/regex/Pattern;


# instance fields
.field private final languagesAndWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Double;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/util/LocalePriorityList;->languageSplitter:Ljava/util/regex/Pattern;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Ljava/util/Comparator;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/util/LocalePriorityList;->myDescendingDouble:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method static synthetic -get4()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/util/LocalePriorityList;->weightSplitter:Ljava/util/regex/Pattern;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 70
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    #@8
    .line 72
    const-string/jumbo v0, "\\s*,\\s*"

    #@b
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroid/icu/util/LocalePriorityList;->languageSplitter:Ljava/util/regex/Pattern;

    #@11
    .line 74
    const-string/jumbo v0, "\\s*(\\S*)\\s*;\\s*q\\s*=\\s*(\\S*)"

    #@14
    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@17
    move-result-object v0

    #@18
    sput-object v0, Landroid/icu/util/LocalePriorityList;->weightSplitter:Ljava/util/regex/Pattern;

    #@1a
    .line 351
    new-instance v0, Landroid/icu/util/LocalePriorityList$1;

    #@1c
    invoke-direct {v0}, Landroid/icu/util/LocalePriorityList$1;-><init>()V

    #@1f
    sput-object v0, Landroid/icu/util/LocalePriorityList;->myDescendingDouble:Ljava/util/Comparator;

    #@21
    .line 68
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 195
    .local p1, "languageToWeight":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 196
    iput-object p1, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    #@5
    .line 195
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Landroid/icu/util/LocalePriorityList;)V
    .locals 0
    .param p1, "languageToWeight"    # Ljava/util/Map;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/util/LocalePriorityList;-><init>(Ljava/util/Map;)V

    #@3
    return-void
.end method

.method public static add(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2
    .param p0, "languagePriorityList"    # Landroid/icu/util/LocalePriorityList;

    #@0
    .prologue
    .line 108
    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList$Builder;)V

    #@6
    invoke-virtual {v0, p0}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/LocalePriorityList$Builder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 3
    .param p0, "languageCode"    # Landroid/icu/util/ULocale;
    .param p1, "weight"    # D

    #@0
    .prologue
    .line 97
    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList$Builder;)V

    #@6
    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2
    .param p0, "acceptLanguageString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList$Builder;)V

    #@6
    invoke-virtual {v0, p0}, Landroid/icu/util/LocalePriorityList$Builder;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static varargs add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2
    .param p0, "languageCode"    # [Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 85
    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList$Builder;)V

    #@6
    invoke-virtual {v0, p0}, Landroid/icu/util/LocalePriorityList$Builder;->add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 169
    if-nez p1, :cond_0

    #@3
    .line 170
    return v5

    #@4
    .line 172
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 173
    const/4 v3, 0x1

    #@7
    return v3

    #@8
    .line 176
    :cond_1
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/icu/util/LocalePriorityList;

    #@b
    move-object v2, v0

    #@c
    .line 177
    .local v2, "that":Landroid/icu/util/LocalePriorityList;
    iget-object v3, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    #@e
    iget-object v4, v2, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    #@10
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v3

    #@14
    return v3

    #@15
    .line 178
    .end local v2    # "that":Landroid/icu/util/LocalePriorityList;
    :catch_0
    move-exception v1

    #@16
    .line 179
    .local v1, "e":Ljava/lang/RuntimeException;
    return v5
.end method

.method public getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;
    .locals 1
    .param p1, "language"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Double;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 142
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    #@7
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "language$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/icu/util/ULocale;

    #@1b
    .line 143
    .local v0, "language":Landroid/icu/util/ULocale;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_1

    #@21
    .line 144
    const-string/jumbo v3, ", "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 146
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    .line 147
    iget-object v3, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    #@2c
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Ljava/lang/Double;

    #@32
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    #@35
    move-result-wide v4

    #@36
    .line 148
    .local v4, "weight":D
    sget-object v3, Landroid/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    #@38
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    #@3b
    move-result-wide v6

    #@3c
    cmpl-double v3, v4, v6

    #@3e
    if-eqz v3, :cond_0

    #@40
    .line 149
    const-string/jumbo v3, ";q="

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@4a
    goto :goto_0

    #@4b
    .line 152
    .end local v0    # "language":Landroid/icu/util/ULocale;
    .end local v4    # "weight":D
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    return-object v3
.end method
