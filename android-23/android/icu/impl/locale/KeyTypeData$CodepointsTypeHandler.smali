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
.field private static final pat:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "[0-9a-fA-F]{4,6}(-[0-9a-fA-F]{4,6})*"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;->pat:Ljava/util/regex/Pattern;

    #@9
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    #@4
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method isValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;->pat:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v0

    #@a
    return v0
.end method
