.class public interface abstract Landroid/icu/text/FormattedValue;
.super Ljava/lang/Object;
.source "FormattedValue.java"

# interfaces
.implements Ljava/lang/CharSequence;


# virtual methods
.method public abstract whitelist test-api appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api nextPosition(Landroid/icu/text/ConstrainedFieldPosition;)Z
.end method

.method public abstract whitelist test-api toCharacterIterator()Ljava/text/AttributedCharacterIterator;
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
