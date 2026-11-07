.class public interface abstract Landroid/icu/impl/number/parse/NumberParseMatcher;
.super Ljava/lang/Object;
.source "NumberParseMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/parse/NumberParseMatcher$Flexible;
    }
.end annotation


# virtual methods
.method public abstract blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
.end method

.method public abstract blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
.end method

.method public abstract blacklist smokeTest(Landroid/icu/impl/StringSegment;)Z
.end method
