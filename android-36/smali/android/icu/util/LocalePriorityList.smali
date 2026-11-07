.class public Landroid/icu/util/LocalePriorityList;
.super Ljava/lang/Object;
.source "LocalePriorityList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocalePriorityList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o D1:Ljava/lang/Double;

.field private static final greylist-max-o languageSplitter:Ljava/util/regex/Pattern;

.field private static greylist-max-o myDescendingDouble:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o weightSplitter:Ljava/util/regex/Pattern;


# instance fields
.field private final greylist-max-o languagesAndWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlanguagesAndWeights(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetD1()Ljava/lang/Double;
    .registers 1

    sget-object v0, Landroid/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetlanguageSplitter()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Landroid/icu/util/LocalePriorityList;->languageSplitter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmyDescendingDouble()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Landroid/icu/util/LocalePriorityList;->myDescendingDouble:Ljava/util/Comparator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetweightSplitter()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Landroid/icu/util/LocalePriorityList;->weightSplitter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 75
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    .line 77
    const-string v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocalePriorityList;->languageSplitter:Ljava/util/regex/Pattern;

    .line 78
    nop

    .line 79
    const-string v0, "\\s*(\\S*)\\s*;\\s*q\\s*=\\s*(\\S*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocalePriorityList;->weightSplitter:Ljava/util/regex/Pattern;

    .line 399
    new-instance v0, Landroid/icu/util/LocalePriorityList$1;

    invoke-direct {v0}, Landroid/icu/util/LocalePriorityList$1;-><init>()V

    sput-object v0, Landroid/icu/util/LocalePriorityList;->myDescendingDouble:Ljava/util/Comparator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "languageToWeight":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    .line 206
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Landroid/icu/util/LocalePriorityList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/util/LocalePriorityList;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static greylist-max-o add(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/LocalePriorityList$Builder;
    .registers 3
    .param p0, "list"    # Landroid/icu/util/LocalePriorityList;

    .line 112
    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocalePriorityList-IA;)V

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "weight"    # D

    .line 102
    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList-IA;)V

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;
    .registers 3
    .param p0, "acceptLanguageString"    # Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList-IA;)V

    invoke-virtual {v0, p0}, Landroid/icu/util/LocalePriorityList$Builder;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;
    .registers 3
    .param p0, "locales"    # [Landroid/icu/util/ULocale;

    .line 89
    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList-IA;)V

    invoke-virtual {v0, p0}, Landroid/icu/util/LocalePriorityList$Builder;->add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 180
    return v0

    .line 182
    :cond_4
    if-ne p0, p1, :cond_8

    .line 183
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_8
    :try_start_8
    move-object v1, p1

    check-cast v1, Landroid/icu/util/LocalePriorityList;

    .line 187
    .local v1, "that":Landroid/icu/util/LocalePriorityList;
    iget-object v2, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    iget-object v3, v1, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_13} :catch_14

    return v0

    .line 188
    .end local v1    # "that":Landroid/icu/util/LocalePriorityList;
    :catch_14
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method public blacklist getULocales()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 133
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    .line 154
    .local v3, "language":Landroid/icu/util/ULocale;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 155
    .local v4, "weight":D
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_36

    .line 156
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_48

    .line 160
    const-string v6, ";q="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 162
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/Double;>;"
    .end local v3    # "language":Landroid/icu/util/ULocale;
    .end local v4    # "weight":D
    :cond_48
    goto :goto_f

    .line 163
    :cond_49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
