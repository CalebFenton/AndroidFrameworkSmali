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
.field private static final greylist-max-o FLATTENED_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    const-string v0, "(-?\\d+) (-?\\d+) (-?\\d+) (-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/Rect$UnflattenHelper;->FLATTENED_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 66
    sget-object v0, Landroid/graphics/Rect$UnflattenHelper;->FLATTENED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method
