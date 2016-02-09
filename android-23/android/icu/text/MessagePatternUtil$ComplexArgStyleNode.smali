.class public Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComplexArgStyleNode"
.end annotation


# instance fields
.field private argType:Landroid/icu/text/MessagePattern$ArgType;

.field private explicitOffset:Z

.field private volatile list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;"
        }
    .end annotation
.end field

.field private offset:D


# direct methods
.method static synthetic -set0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->explicitOffset:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->freeze()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V
    .locals 0
    .param p1, "variant"    # Landroid/icu/text/MessagePatternUtil$VariantNode;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->addVariant(Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/icu/text/MessagePattern$ArgType;)V
    .locals 1
    .param p1, "argType"    # Landroid/icu/text/MessagePattern$ArgType;

    #@0
    .prologue
    .line 380
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$Node;)V

    #@4
    .line 394
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    #@b
    .line 381
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    #@d
    .line 379
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V
    .locals 0
    .param p1, "argType"    # Landroid/icu/text/MessagePattern$ArgType;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;)V

    #@3
    return-void
.end method

.method private addVariant(Landroid/icu/text/MessagePatternUtil$VariantNode;)V
    .locals 1
    .param p1, "variant"    # Landroid/icu/text/MessagePatternUtil$VariantNode;

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 383
    return-void
.end method

.method private freeze()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 1

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    #@8
    .line 388
    return-object p0
.end method


# virtual methods
.method public getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    #@2
    return-object v0
.end method

.method public getOffset()D
    .locals 2

    #@0
    .prologue
    .line 319
    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    #@2
    return-wide v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getVariantsByType(Ljava/util/List;Ljava/util/List;)Landroid/icu/text/MessagePatternUtil$VariantNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;)",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;"
        }
    .end annotation

    #@0
    .prologue
    .line 346
    .local p1, "numericVariants":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;>;"
    .local p2, "keywordVariants":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;>;"
    if-eqz p1, :cond_0

    #@2
    .line 347
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@5
    .line 349
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    #@8
    .line 350
    const/4 v0, 0x0

    #@9
    .line 351
    .local v0, "other":Landroid/icu/text/MessagePatternUtil$VariantNode;
    iget-object v3, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .end local v0    # "other":Landroid/icu/text/MessagePatternUtil$VariantNode;
    .local v2, "variant$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_4

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/icu/text/MessagePatternUtil$VariantNode;

    #@1b
    .line 352
    .local v1, "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    invoke-virtual {v1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->isSelectorNumeric()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 353
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 354
    :cond_2
    const-string/jumbo v3, "other"

    #@28
    invoke-virtual {v1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->getSelector()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_3

    #@32
    .line 355
    if-nez v0, :cond_1

    #@34
    .line 357
    move-object v0, v1

    #@35
    .local v0, "other":Landroid/icu/text/MessagePatternUtil$VariantNode;
    goto :goto_0

    #@36
    .line 360
    .end local v0    # "other":Landroid/icu/text/MessagePatternUtil$VariantNode;
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 363
    .end local v1    # "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    :cond_4
    return-object v0
.end method

.method public hasExplicitOffset()Z
    .locals 1

    #@0
    .prologue
    .line 311
    iget-boolean v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->explicitOffset:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 372
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    #@d
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " style) "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 373
    invoke-virtual {p0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->hasExplicitOffset()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 374
    const-string/jumbo v1, "offset:"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-wide v2, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    #@2a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const/16 v2, 0x20

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 376
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    #@35
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method
