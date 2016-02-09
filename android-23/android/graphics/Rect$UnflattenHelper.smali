.class final Landroid/graphics/Rect$UnflattenHelper;
.super Ljava/lang/Object;
.source "Rect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnflattenHelper"
.end annotation


# static fields
.field private static final FLATTENED_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "(-?\\d+) (-?\\d+) (-?\\d+) (-?\\d+)"

    #@3
    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/graphics/Rect$UnflattenHelper;->FLATTENED_PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    sget-object v0, Landroid/graphics/Rect$UnflattenHelper;->FLATTENED_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
