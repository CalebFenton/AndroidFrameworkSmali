.class public final Landroid/icu/text/ListFormatter;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ListFormatter$Style;,
        Landroid/icu/text/ListFormatter$FormattedListBuilder;,
        Landroid/icu/text/ListFormatter$Cache;
    }
.end annotation


# static fields
.field static cache:Landroid/icu/text/ListFormatter$Cache;

.field static localeToData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/ListFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final end:Landroid/icu/impl/SimplePatternFormatter;

.field private final locale:Landroid/icu/util/ULocale;

.field private final middle:Landroid/icu/impl/SimplePatternFormatter;

.field private final start:Landroid/icu/impl/SimplePatternFormatter;

.field private final two:Landroid/icu/impl/SimplePatternFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 309
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/ListFormatter;->localeToData:Ljava/util/Map;

    #@7
    .line 341
    new-instance v0, Landroid/icu/text/ListFormatter$Cache;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, v1}, Landroid/icu/text/ListFormatter$Cache;-><init>(Landroid/icu/text/ListFormatter$Cache;)V

    #@d
    sput-object v0, Landroid/icu/text/ListFormatter;->cache:Landroid/icu/text/ListFormatter$Cache;

    #@f
    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "two"    # Landroid/icu/impl/SimplePatternFormatter;
    .param p2, "start"    # Landroid/icu/impl/SimplePatternFormatter;
    .param p3, "middle"    # Landroid/icu/impl/SimplePatternFormatter;
    .param p4, "end"    # Landroid/icu/impl/SimplePatternFormatter;
    .param p5, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    iput-object p1, p0, Landroid/icu/text/ListFormatter;->two:Landroid/icu/impl/SimplePatternFormatter;

    #@5
    .line 122
    iput-object p2, p0, Landroid/icu/text/ListFormatter;->start:Landroid/icu/impl/SimplePatternFormatter;

    #@7
    .line 123
    iput-object p3, p0, Landroid/icu/text/ListFormatter;->middle:Landroid/icu/impl/SimplePatternFormatter;

    #@9
    .line 124
    iput-object p4, p0, Landroid/icu/text/ListFormatter;->end:Landroid/icu/impl/SimplePatternFormatter;

    #@b
    .line 125
    iput-object p5, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 120
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter;)V
    .locals 0
    .param p1, "two"    # Landroid/icu/impl/SimplePatternFormatter;
    .param p2, "start"    # Landroid/icu/impl/SimplePatternFormatter;
    .param p3, "middle"    # Landroid/icu/impl/SimplePatternFormatter;
    .param p4, "end"    # Landroid/icu/impl/SimplePatternFormatter;
    .param p5, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/icu/text/ListFormatter;-><init>(Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/util/ULocale;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "two"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "middle"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-static {p1}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@3
    move-result-object v1

    #@4
    .line 113
    invoke-static {p2}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@7
    move-result-object v2

    #@8
    .line 114
    invoke-static {p3}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@b
    move-result-object v3

    #@c
    .line 115
    invoke-static {p4}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@f
    move-result-object v4

    #@10
    .line 116
    const/4 v5, 0x0

    #@11
    move-object v0, p0

    #@12
    .line 111
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ListFormatter;-><init>(Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/util/ULocale;)V

    #@15
    .line 110
    return-void
.end method

.method static varargs add(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "data"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 311
    sget-object v0, Landroid/icu/text/ListFormatter;->localeToData:Ljava/util/Map;

    #@2
    new-instance v1, Landroid/icu/util/ULocale;

    #@4
    invoke-direct {v1, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@7
    new-instance v2, Landroid/icu/text/ListFormatter;

    #@9
    const/4 v3, 0x0

    #@a
    aget-object v3, p1, v3

    #@c
    const/4 v4, 0x1

    #@d
    aget-object v4, p1, v4

    #@f
    const/4 v5, 0x2

    #@10
    aget-object v5, p1, v5

    #@12
    const/4 v6, 0x3

    #@13
    aget-object v6, p1, v6

    #@15
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 310
    return-void
.end method

.method public static getInstance()Landroid/icu/text/ListFormatter;
    .locals 1

    #@0
    .prologue
    .line 173
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ListFormatter;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ListFormatter;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 137
    sget-object v0, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    #@2
    invoke-static {p0, v0}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Landroid/icu/text/ListFormatter$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 163
    sget-object v0, Landroid/icu/text/ListFormatter;->cache:Landroid/icu/text/ListFormatter$Cache;

    #@2
    invoke-virtual {p1}, Landroid/icu/text/ListFormatter$Style;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p0, v1}, Landroid/icu/text/ListFormatter$Cache;->get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 149
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    #@6
    invoke-static {v0, v1}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method


# virtual methods
.method format(Ljava/util/Collection;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;
    .locals 9
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;I)",
            "Landroid/icu/text/ListFormatter$FormattedListBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 205
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .line 206
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@9
    move-result v1

    #@a
    .line 207
    .local v1, "count":I
    packed-switch v1, :pswitch_data_0

    #@d
    .line 215
    new-instance v0, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v7

    #@13
    if-nez p2, :cond_3

    #@15
    move v6, v4

    #@16
    :goto_0
    invoke-direct {v0, v7, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    #@19
    .line 216
    .local v0, "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    iget-object v7, p0, Landroid/icu/text/ListFormatter;->start:Landroid/icu/impl/SimplePatternFormatter;

    #@1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v8

    #@1f
    if-ne p2, v4, :cond_4

    #@21
    move v6, v4

    #@22
    :goto_1
    invoke-virtual {v0, v7, v8, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Landroid/icu/impl/SimplePatternFormatter;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@25
    .line 217
    const/4 v2, 0x2

    #@26
    .local v2, "idx":I
    :goto_2
    add-int/lit8 v6, v1, -0x1

    #@28
    if-ge v2, v6, :cond_6

    #@2a
    .line 218
    iget-object v7, p0, Landroid/icu/text/ListFormatter;->middle:Landroid/icu/impl/SimplePatternFormatter;

    #@2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v8

    #@30
    if-ne p2, v2, :cond_5

    #@32
    move v6, v4

    #@33
    :goto_3
    invoke-virtual {v0, v7, v8, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Landroid/icu/impl/SimplePatternFormatter;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@36
    .line 217
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_2

    #@39
    .line 209
    .end local v0    # "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    .end local v2    # "idx":I
    :pswitch_0
    new-instance v4, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@3b
    const-string/jumbo v6, ""

    #@3e
    invoke-direct {v4, v6, v5}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    #@41
    return-object v4

    #@42
    .line 211
    :pswitch_1
    new-instance v6, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@47
    move-result-object v7

    #@48
    if-nez p2, :cond_0

    #@4a
    :goto_4
    invoke-direct {v6, v7, v4}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    #@4d
    return-object v6

    #@4e
    :cond_0
    move v4, v5

    #@4f
    goto :goto_4

    #@50
    .line 213
    :pswitch_2
    new-instance v7, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v8

    #@56
    if-nez p2, :cond_1

    #@58
    move v6, v4

    #@59
    :goto_5
    invoke-direct {v7, v8, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    #@5c
    iget-object v6, p0, Landroid/icu/text/ListFormatter;->two:Landroid/icu/impl/SimplePatternFormatter;

    #@5e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v8

    #@62
    if-ne p2, v4, :cond_2

    #@64
    :goto_6
    invoke-virtual {v7, v6, v8, v4}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Landroid/icu/impl/SimplePatternFormatter;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@67
    move-result-object v4

    #@68
    return-object v4

    #@69
    :cond_1
    move v6, v5

    #@6a
    goto :goto_5

    #@6b
    :cond_2
    move v4, v5

    #@6c
    goto :goto_6

    #@6d
    :cond_3
    move v6, v5

    #@6e
    .line 215
    goto :goto_0

    #@6f
    .restart local v0    # "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    :cond_4
    move v6, v5

    #@70
    .line 216
    goto :goto_1

    #@71
    .restart local v2    # "idx":I
    :cond_5
    move v6, v5

    #@72
    .line 218
    goto :goto_3

    #@73
    .line 220
    :cond_6
    iget-object v6, p0, Landroid/icu/text/ListFormatter;->end:Landroid/icu/impl/SimplePatternFormatter;

    #@75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v7

    #@79
    add-int/lit8 v8, v1, -0x1

    #@7b
    if-ne p2, v8, :cond_7

    #@7d
    :goto_7
    invoke-virtual {v0, v6, v7, v4}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Landroid/icu/impl/SimplePatternFormatter;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@80
    move-result-object v4

    #@81
    return-object v4

    #@82
    :cond_7
    move v4, v5

    #@83
    goto :goto_7

    #@84
    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public format(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 197
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "items"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 185
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getPatternForNumItems(I)Ljava/lang/String;
    .locals 6
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 232
    if-gtz p1, :cond_0

    #@3
    .line 233
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "count must be > 0"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 235
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 236
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@14
    .line 237
    const-string/jumbo v2, "{%d}"

    #@17
    const/4 v3, 0x1

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v4

    #@1e
    aput-object v4, v3, v5

    #@20
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 236
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 239
    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    return-object v2
.end method
