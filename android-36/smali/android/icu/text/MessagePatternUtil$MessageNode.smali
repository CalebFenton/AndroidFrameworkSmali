.class public Landroid/icu/text/MessagePatternUtil$MessageNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageNode"
.end annotation


# instance fields
.field private volatile greylist-max-o list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddContentsNode(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->addContentsNode(Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfreeze(Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$MessageNode;->freeze()Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/MessagePatternUtil-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$MessageNode;-><init>()V

    return-void
.end method

.method private greylist-max-o addContentsNode(Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .registers 6
    .param p1, "node"    # Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    .line 99
    instance-of v0, p1, Landroid/icu/text/MessagePatternUtil$TextNode;

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 101
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    .line 102
    .local v0, "lastNode":Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    instance-of v1, v0, Landroid/icu/text/MessagePatternUtil$TextNode;

    if-eqz v1, :cond_43

    .line 103
    move-object v1, v0

    check-cast v1, Landroid/icu/text/MessagePatternUtil$TextNode;

    .line 104
    .local v1, "textNode":Landroid/icu/text/MessagePatternUtil$TextNode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$TextNode;->-$$Nest$fgettext(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroid/icu/text/MessagePatternUtil$TextNode;

    invoke-static {v3}, Landroid/icu/text/MessagePatternUtil$TextNode;->-$$Nest$fgettext(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/text/MessagePatternUtil$TextNode;->-$$Nest$fputtext(Landroid/icu/text/MessagePatternUtil$TextNode;Ljava/lang/String;)V

    .line 105
    return-void

    .line 108
    .end local v0    # "lastNode":Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    .end local v1    # "textNode":Landroid/icu/text/MessagePatternUtil$TextNode;
    :cond_43
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private greylist-max-o freeze()Landroid/icu/text/MessagePatternUtil$MessageNode;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    .line 112
    return-object p0
.end method


# virtual methods
.method public greylist-max-o getContents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
