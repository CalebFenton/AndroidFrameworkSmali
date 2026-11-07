.class Ljdk/internal/math/FloatingDecimal$HexFloatPattern;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/math/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HexFloatPattern"
.end annotation


# static fields
.field private static final blacklist VALUE:Ljava/util/regex/Pattern;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetVALUE()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Ljdk/internal/math/FloatingDecimal$HexFloatPattern;->VALUE:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2062
    const-string v0, "([-+])?0[xX](((\\p{XDigit}+)\\.?)|((\\p{XDigit}*)\\.(\\p{XDigit}+)))[pP]([-+])?(\\p{Digit}+)[fFdD]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljdk/internal/math/FloatingDecimal$HexFloatPattern;->VALUE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
