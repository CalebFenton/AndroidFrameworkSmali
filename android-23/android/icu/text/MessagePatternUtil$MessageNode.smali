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
.field private volatile list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$MessageNode;->freeze()Landroid/icu/text/MessagePatternUtil$MessageNode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .locals 0
    .param p1, "node"    # Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->addContentsNode(Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    #@3
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 97
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$Node;)V

    #@4
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    #@b
    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePatternUtil$MessageNode;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/MessagePatternUtil$MessageNode;-><init>()V

    #@3
    return-void
.end method

.method private addContentsNode(Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .locals 4
    .param p1, "node"    # Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    #@0
    .prologue
    .line 100
    instance-of v2, p1, Landroid/icu/text/MessagePatternUtil$TextNode;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    #@6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 109
    :cond_0
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    #@e
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 99
    return-void

    #@12
    .line 102
    :cond_1
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    #@14
    iget-object v3, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    #@16
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@19
    move-result v3

    #@1a
    add-int/lit8 v3, v3, -0x1

    #@1c
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    #@22
    .line 103
    .local v0, "lastNode":Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    instance-of v2, v0, Landroid/icu/text/MessagePatternUtil$TextNode;

    #@24
    if-eqz v2, :cond_0

    #@26
    move-object v1, v0

    #@27
    .line 104
    check-cast v1, Landroid/icu/text/MessagePatternUtil$TextNode;

    #@29
    .line 105
    .local v1, "textNode":Landroid/icu/text/MessagePatternUtil$TextNode;
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$TextNode;->-get0(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    check-cast p1, Landroid/icu/text/MessagePatternUtil$TextNode;

    #@38
    .end local p1    # "node":Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    invoke-static {p1}, Landroid/icu/text/MessagePatternUtil$TextNode;->-get0(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-static {v1, v2}, Landroid/icu/text/MessagePatternUtil$TextNode;->-set0(Landroid/icu/text/MessagePatternUtil$TextNode;Ljava/lang/String;)Ljava/lang/String;

    #@47
    .line 106
    return-void
.end method

.method private freeze()Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    #@8
    .line 113
    return-object p0
.end method


# virtual methods
.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
