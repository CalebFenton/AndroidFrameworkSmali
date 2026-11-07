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
.field private greylist-max-o type:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateReplaceNumberNode()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    .registers 1

    invoke-static {}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->createReplaceNumberNode()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    move-result-object v0

    return-object v0
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V
    .registers 3
    .param p1, "type"    # Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 164
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->type:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    .line 165
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V

    return-void
.end method

.method private static greylist-max-o createReplaceNumberNode()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    .registers 2

    .line 167
    new-instance v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    sget-object v1, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    invoke-direct {v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getType()Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->type:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 159
    const-string v0, "{REPLACE_NUMBER}"

    return-object v0
.end method
