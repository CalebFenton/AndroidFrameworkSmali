.class public Llibcore/internal/Java11LanguageFeatures;
.super Ljava/lang/Object;
.source "Java11LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/internal/Java11LanguageFeatures$Person;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist collectUpperCaseStrings(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 33
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Llibcore/internal/Java11LanguageFeatures$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Llibcore/internal/Java11LanguageFeatures$$ExternalSyntheticLambda0;-><init>()V

    .line 34
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 35
    const-string v1, " "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    return-object v0
.end method

.method public static blacklist guessTheString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "guess"    # Ljava/lang/String;

    .line 40
    const-string v0, "The answer to the universe, life and everything"

    .line 41
    .local v0, "answer":Ljava/lang/String;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_8

    .line 42
    const/4 v1, 0x0

    return-object v1

    .line 44
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 45
    const-string v1, ""

    return-object v1

    .line 47
    :cond_11
    return-object v0
.end method

.method static synthetic blacklist lambda$collectUpperCaseStrings$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "item"    # Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
