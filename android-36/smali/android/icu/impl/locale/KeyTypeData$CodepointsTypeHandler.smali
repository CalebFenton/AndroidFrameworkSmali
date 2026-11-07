.class Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;
.super Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodepointsTypeHandler"
.end annotation


# static fields
.field private static final blacklist pat:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-string v0, "[0-9a-fA-F]{4,6}(-[0-9a-fA-F]{4,6})*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;->pat:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/locale/KeyTypeData-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist isWellFormed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 52
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;->pat:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
