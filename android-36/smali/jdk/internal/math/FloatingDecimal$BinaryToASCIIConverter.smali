.class public interface abstract Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/math/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BinaryToASCIIConverter"
.end annotation


# virtual methods
.method public abstract blacklist appendTo(Ljava/lang/Appendable;)V
.end method

.method public abstract blacklist decimalDigitsExact()Z
.end method

.method public abstract blacklist digitsRoundedUp()Z
.end method

.method public abstract blacklist getDecimalExponent()I
.end method

.method public abstract blacklist getDigits([C)I
.end method

.method public abstract blacklist isExceptional()Z
.end method

.method public abstract blacklist isNegative()Z
.end method

.method public abstract blacklist toJavaFormatString()Ljava/lang/String;
.end method
