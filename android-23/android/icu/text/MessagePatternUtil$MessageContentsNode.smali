.class public Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageContentsNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    }
.end annotation


# instance fields
.field private type:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;


# direct methods
.method static synthetic -wrap0()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    .locals 1

    #@0
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->createReplaceNumberNode()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V
    .locals 1
    .param p1, "type"    # Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$Node;)V

    #@4
    .line 170
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->type:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@6
    .line 168
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .locals 0
    .param p1, "type"    # Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V

    #@3
    return-void
.end method

.method private static createReplaceNumberNode()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    .locals 2

    #@0
    .prologue
    .line 173
    new-instance v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    #@2
    sget-object v1, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V

    #@7
    return-object v0
.end method


# virtual methods
.method public getType()Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->type:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    const-string/jumbo v0, "{REPLACE_NUMBER}"

    #@3
    return-object v0
.end method
