.class public interface abstract Llibcore/internal/Java9LanguageFeatures$Person;
.super Ljava/lang/Object;
.source "Java9LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java9LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Person"
.end annotation


# direct methods
.method private blacklist reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist isPalindrome()Z
    .registers 3

    .line 39
    invoke-interface {p0}, Llibcore/internal/Java9LanguageFeatures$Person;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Llibcore/internal/Java9LanguageFeatures$Person;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/internal/Java9LanguageFeatures$Person;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isPalindromeIgnoreCase()Z
    .registers 3

    .line 43
    invoke-interface {p0}, Llibcore/internal/Java9LanguageFeatures$Person;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Llibcore/internal/Java9LanguageFeatures$Person;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/internal/Java9LanguageFeatures$Person;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract blacklist name()Ljava/lang/String;
.end method
