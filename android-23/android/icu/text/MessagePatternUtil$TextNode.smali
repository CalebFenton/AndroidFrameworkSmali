.class public Landroid/icu/text/MessagePatternUtil$TextNode;
.super Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextNode"
.end annotation


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/icu/text/MessagePatternUtil$TextNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    sget-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->TEXT:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    #@6
    .line 202
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    #@8
    .line 200
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/icu/text/MessagePatternUtil$TextNode;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$TextNode;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "\u00ab"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\u00bb"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method
