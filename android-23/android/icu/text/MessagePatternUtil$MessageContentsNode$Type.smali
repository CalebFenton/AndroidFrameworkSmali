.class public final enum Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
.super Ljava/lang/Enum;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

.field public static final enum ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

.field public static final enum REPLACE_NUMBER:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

.field public static final enum TEXT:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 130
    new-instance v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@5
    const-string/jumbo v1, "TEXT"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;-><init>(Ljava/lang/String;I)V

    #@b
    .line 134
    sput-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->TEXT:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@d
    .line 135
    new-instance v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@f
    const-string/jumbo v1, "ARG"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;-><init>(Ljava/lang/String;I)V

    #@15
    .line 140
    sput-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@17
    .line 141
    new-instance v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@19
    const-string/jumbo v1, "REPLACE_NUMBER"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 146
    sput-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@21
    .line 129
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@24
    sget-object v1, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->TEXT:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->$VALUES:[Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    const-class v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .locals 1

    #@0
    .prologue
    .line 129
    sget-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->$VALUES:[Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@2
    return-object v0
.end method
