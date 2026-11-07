.class public interface abstract Landroid/icu/impl/number/AffixPatternProvider;
.super Ljava/lang/Object;
.source "AffixPatternProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/AffixPatternProvider$Flags;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_NEG_PREFIX:I = 0x300

.field public static final blacklist FLAG_NEG_SUFFIX:I = 0x200

.field public static final blacklist FLAG_POS_PREFIX:I = 0x100

.field public static final blacklist FLAG_POS_SUFFIX:I


# virtual methods
.method public abstract blacklist charAt(II)C
.end method

.method public abstract blacklist containsSymbolType(I)Z
.end method

.method public abstract blacklist currencyAsDecimal()Z
.end method

.method public abstract blacklist getString(I)Ljava/lang/String;
.end method

.method public abstract blacklist hasBody()Z
.end method

.method public abstract blacklist hasCurrencySign()Z
.end method

.method public abstract blacklist hasNegativeSubpattern()Z
.end method

.method public abstract blacklist length(I)I
.end method

.method public abstract blacklist negativeHasMinusSign()Z
.end method

.method public abstract blacklist positiveHasPlusSign()Z
.end method
