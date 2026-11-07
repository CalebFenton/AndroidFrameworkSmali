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
.field private greylist-max-o text:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettext(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputtext(Landroid/icu/text/MessagePatternUtil$TextNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 193
    sget-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->TEXT:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 194
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    .line 195
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/MessagePatternUtil-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$TextNode;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getText()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u00ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00bb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
