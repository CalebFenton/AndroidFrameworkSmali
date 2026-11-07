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
.field private greylist-max-o msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

.field private greylist-max-o numericValue:D

.field private greylist-max-o selector:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmsgNode(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputnumericValue(Landroid/icu/text/MessagePatternUtil$VariantNode;D)V
    .registers 3

    iput-wide p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputselector(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 428
    const-wide v0, -0x3e6290cbac000000L    # -1.23456789E8

    iput-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    .line 425
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/MessagePatternUtil-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o getMessage()Landroid/icu/text/MessagePatternUtil$MessageNode;
    .registers 2

    .line 407
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    return-object v0
.end method

.method public greylist-max-o getSelector()Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSelectorValue()D
    .registers 3

    .line 401
    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    return-wide v0
.end method

.method public greylist-max-o isSelectorNumeric()Z
    .registers 5

    .line 395
    iget-wide v0, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    const-wide v2, -0x3e6290cbac000000L    # -1.23456789E8

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/text/MessagePatternUtil$VariantNode;->isSelectorNumeric()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 416
    iget-wide v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->numericValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 418
    :cond_23
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->selector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :goto_2e
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$VariantNode;->msgNode:Landroid/icu/text/MessagePatternUtil$MessageNode;

    invoke-virtual {v1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
