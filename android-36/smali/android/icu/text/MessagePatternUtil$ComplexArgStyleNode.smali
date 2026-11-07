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
.field private greylist-max-o argType:Landroid/icu/text/MessagePattern$ArgType;

.field private greylist-max-o explicitOffset:Z

.field private volatile greylist-max-o list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o offset:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputexplicitOffset(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->explicitOffset:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputoffset(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;D)V
    .registers 3

    iput-wide p1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddVariant(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->addVariant(Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfreeze(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->freeze()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/text/MessagePattern$ArgType;)V
    .registers 3
    .param p1, "argType"    # Landroid/icu/text/MessagePattern$ArgType;

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    .line 360
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    .line 361
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;)V

    return-void
.end method

.method private greylist-max-o addVariant(Landroid/icu/text/MessagePatternUtil$VariantNode;)V
    .registers 3
    .param p1, "variant"    # Landroid/icu/text/MessagePatternUtil$VariantNode;

    .line 363
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method private greylist-max-o freeze()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    .line 367
    return-object p0
.end method


# virtual methods
.method public greylist-max-o getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method public greylist-max-o getOffset()D
    .registers 3

    .line 301
    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    return-wide v0
.end method

.method public greylist-max-o getVariants()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getVariantsByType(Ljava/util/List;Ljava/util/List;)Landroid/icu/text/MessagePatternUtil$VariantNode;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;",
            "Ljava/util/List<",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;",
            ">;)",
            "Landroid/icu/text/MessagePatternUtil$VariantNode;"
        }
    .end annotation

    .line 326
    .local p1, "numericVariants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/MessagePatternUtil$VariantNode;>;"
    .local p2, "keywordVariants":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/MessagePatternUtil$VariantNode;>;"
    if-eqz p1, :cond_5

    .line 327
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 329
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "other":Landroid/icu/text/MessagePatternUtil$VariantNode;
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/MessagePatternUtil$VariantNode;

    .line 332
    .local v2, "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    invoke-virtual {v2}, Landroid/icu/text/MessagePatternUtil$VariantNode;->isSelectorNumeric()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 333
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 334
    :cond_25
    const-string v3, "other"

    invoke-virtual {v2}, Landroid/icu/text/MessagePatternUtil$VariantNode;->getSelector()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 335
    if-nez v0, :cond_38

    .line 337
    move-object v0, v2

    goto :goto_38

    .line 340
    :cond_35
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v2    # "variant":Landroid/icu/text/MessagePatternUtil$VariantNode;
    :cond_38
    :goto_38
    goto :goto_f

    .line 343
    :cond_39
    return-object v0
.end method

.method public greylist-max-o hasExplicitOffset()Z
    .registers 2

    .line 294
    iget-boolean v0, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->explicitOffset:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " style) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->hasExplicitOffset()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 353
    const-string v1, "offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    :cond_31
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
