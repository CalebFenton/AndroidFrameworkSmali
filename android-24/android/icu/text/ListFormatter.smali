.class public final Landroid/icu/text/ListFormatter;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ListFormatter$Cache;,
        Landroid/icu/text/ListFormatter$FormattedListBuilder;,
        Landroid/icu/text/ListFormatter$Style;
    }
.end annotation


# static fields
.field static cache:Landroid/icu/text/ListFormatter$Cache;


# instance fields
.field private final end:Ljava/lang/String;

.field private final locale:Landroid/icu/util/ULocale;

.field private final middle:Ljava/lang/String;

.field private final start:Ljava/lang/String;

.field private final two:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 325
    new-instance v0, Landroid/icu/text/ListFormatter$Cache;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/text/ListFormatter$Cache;-><init>(Landroid/icu/text/ListFormatter$Cache;)V

    #@6
    sput-object v0, Landroid/icu/text/ListFormatter;->cache:Landroid/icu/text/ListFormatter$Cache;

    #@8
    .line 30
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
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-static {p2, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-static {p3, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-static {p4, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 116
    const/4 v5, 0x0

    #@25
    move-object v0, p0

    #@26
    .line 111
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@29
    .line 110
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "two"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "middle"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;
    .param p5, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    iput-object p1, p0, Landroid/icu/text/ListFormatter;->two:Ljava/lang/String;

    #@5
    .line 121
    iput-object p2, p0, Landroid/icu/text/ListFormatter;->start:Ljava/lang/String;

    #@7
    .line 122
    iput-object p3, p0, Landroid/icu/text/ListFormatter;->middle:Ljava/lang/String;

    #@9
    .line 123
    iput-object p4, p0, Landroid/icu/text/ListFormatter;->end:Ljava/lang/String;

    #@b
    .line 124
    iput-object p5, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 119
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter;)V
    .locals 0
    .param p1, "two"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "middle"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;
    .param p5, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@3
    return-void
.end method

.method private static compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 128
    invoke-static {p0, p1, v0, v0}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
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
    .line 139
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
    .line 164
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
    .line 150
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
    .line 203
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .line 204
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@9
    move-result v1

    #@a
    .line 205
    .local v1, "count":I
    packed-switch v1, :pswitch_data_0

    #@d
    .line 213
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
    .line 214
    .local v0, "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    iget-object v7, p0, Landroid/icu/text/ListFormatter;->start:Ljava/lang/String;

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
    invoke-virtual {v0, v7, v8, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@25
    .line 215
    const/4 v2, 0x2

    #@26
    .local v2, "idx":I
    :goto_2
    add-int/lit8 v6, v1, -0x1

    #@28
    if-ge v2, v6, :cond_6

    #@2a
    .line 216
    iget-object v7, p0, Landroid/icu/text/ListFormatter;->middle:Ljava/lang/String;

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
    invoke-virtual {v0, v7, v8, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@36
    .line 215
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_2

    #@39
    .line 207
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
    .line 209
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
    .line 211
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
    iget-object v6, p0, Landroid/icu/text/ListFormatter;->two:Ljava/lang/String;

    #@5e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v8

    #@62
    if-ne p2, v4, :cond_2

    #@64
    :goto_6
    invoke-virtual {v7, v6, v8, v4}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

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
    .line 213
    goto :goto_0

    #@6f
    .restart local v0    # "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    :cond_4
    move v6, v5

    #@70
    .line 214
    goto :goto_1

    #@71
    .restart local v2    # "idx":I
    :cond_5
    move v6, v5

    #@72
    .line 216
    goto :goto_3

    #@73
    .line 218
    :cond_6
    iget-object v6, p0, Landroid/icu/text/ListFormatter;->end:Ljava/lang/String;

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
    invoke-virtual {v0, v6, v7, v4}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

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
    .line 205
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
    .line 195
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
    .line 184
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
    .line 246
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
    .line 229
    if-gtz p1, :cond_0

    #@3
    .line 230
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "count must be > 0"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 232
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 233
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@14
    .line 234
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
    .line 233
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 236
    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    return-object v2
.end method
