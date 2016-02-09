.class Landroid/icu/text/QuantityFormatter$Builder;
.super Ljava/lang/Object;
.source "QuantityFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/QuantityFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private templates:[Landroid/icu/impl/SimplePatternFormatter;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private ensureCapacity()V
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/icu/text/QuantityFormatter$Builder;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 99
    invoke-static {}, Landroid/icu/text/QuantityFormatter;->-get1()I

    #@7
    move-result v0

    #@8
    new-array v0, v0, [Landroid/icu/impl/SimplePatternFormatter;

    #@a
    iput-object v0, p0, Landroid/icu/text/QuantityFormatter$Builder;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@c
    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/QuantityFormatter$Builder;
    .locals 5
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Landroid/icu/text/QuantityFormatter$Builder;->ensureCapacity()V

    #@3
    .line 61
    invoke-static {}, Landroid/icu/text/QuantityFormatter;->-get0()Ljava/util/Map;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Integer;

    #@d
    .line 62
    .local v0, "idx":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@f
    .line 63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 65
    :cond_0
    invoke-static {p2}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@18
    move-result-object v1

    #@19
    .line 66
    .local v1, "newT":Landroid/icu/impl/SimplePatternFormatter;
    invoke-virtual {v1}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount()I

    #@1c
    move-result v2

    #@1d
    const/4 v3, 0x1

    #@1e
    if-le v2, v3, :cond_1

    #@20
    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@22
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "Extra placeholders: "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 67
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2

    #@3a
    .line 70
    :cond_1
    iget-object v2, p0, Landroid/icu/text/QuantityFormatter$Builder;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@3c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3f
    move-result v3

    #@40
    aput-object v1, v2, v3

    #@42
    .line 71
    return-object p0
.end method

.method public build()Landroid/icu/text/QuantityFormatter;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 81
    iget-object v1, p0, Landroid/icu/text/QuantityFormatter$Builder;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/icu/text/QuantityFormatter$Builder;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@7
    const/4 v2, 0x0

    #@8
    aget-object v1, v1, v2

    #@a
    if-nez v1, :cond_1

    #@c
    .line 82
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v2, "At least other variant must be set."

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 84
    :cond_1
    new-instance v0, Landroid/icu/text/QuantityFormatter;

    #@17
    iget-object v1, p0, Landroid/icu/text/QuantityFormatter$Builder;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@19
    invoke-direct {v0, v1, v3}, Landroid/icu/text/QuantityFormatter;-><init>([Landroid/icu/impl/SimplePatternFormatter;Landroid/icu/text/QuantityFormatter;)V

    #@1c
    .line 85
    .local v0, "result":Landroid/icu/text/QuantityFormatter;
    iput-object v3, p0, Landroid/icu/text/QuantityFormatter$Builder;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@1e
    .line 86
    return-object v0
.end method

.method public reset()Landroid/icu/text/QuantityFormatter$Builder;
    .locals 1

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/icu/text/QuantityFormatter$Builder;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    #@3
    .line 94
    return-object p0
.end method
