.class public interface abstract Landroid/icu/text/PersonName;
.super Ljava/lang/Object;
.source "PersonName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PersonName$PreferredOrder;,
        Landroid/icu/text/PersonName$FieldModifier;,
        Landroid/icu/text/PersonName$NameField;
    }
.end annotation


# virtual methods
.method public abstract blacklist getFieldValue(Landroid/icu/text/PersonName$NameField;Ljava/util/Set;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PersonName$NameField;",
            "Ljava/util/Set<",
            "Landroid/icu/text/PersonName$FieldModifier;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract blacklist getNameLocale()Ljava/util/Locale;
.end method

.method public abstract blacklist getPreferredOrder()Landroid/icu/text/PersonName$PreferredOrder;
.end method
