.class public Landroid/icu/text/MessagePatternUtil$VariantNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariantNode"
.end annotation


# instance fields
.field private msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

.field private numericValue:D

.field private selector:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/text/MessagePatternUtil$VariantNode;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    #@2
    return-wide p1
.end method

.method static synthetic -set2(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 450
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$Node;)V

    #@4
    .line 454
    const-wide v0, -0x3e6290cbac000000L    # -1.23456789E8

    #@9
    iput-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    #@b
    .line 449
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePatternUtil$VariantNode;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getMessage()Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@2
    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSelectorValue()D
    .locals 2

    #@0
    .prologue
    .line 425
    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    #@2
    return-wide v0
.end method

.method public isSelectorNumeric()Z
    .locals 4

    #@0
    .prologue
    .line 418
    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    #@2
    const-wide v2, -0x3e6290cbac000000L    # -1.23456789E8

    #@7
    cmpl-double v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 441
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/text/MessagePatternUtil$VariantNode;->isSelectorNumeric()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 442
    iget-wide v2, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    #@d
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " ("

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, ") {"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 446
    :goto_0
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@26
    invoke-virtual {v1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const/16 v2, 0x7d

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1

    #@39
    .line 444
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    const-string/jumbo v2, " {"

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    goto :goto_0
.end method
