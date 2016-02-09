.class final Landroid/icu/text/PluralSamples$1;
.super Ljava/lang/Object;
.source "PluralSamples.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralSamples;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 242
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralSamples$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    #@0
    .prologue
    .line 243
    invoke-static {p1}, Landroid/icu/text/PluralRules$StandardPluralCategories;->forString(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@3
    move-result-object v0

    #@4
    .line 244
    .local v0, "a":Landroid/icu/text/PluralRules$StandardPluralCategories;
    invoke-static {p2}, Landroid/icu/text/PluralRules$StandardPluralCategories;->forString(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@7
    move-result-object v1

    #@8
    .line 245
    .local v1, "b":Landroid/icu/text/PluralRules$StandardPluralCategories;
    if-nez v0, :cond_1

    #@a
    .line 246
    if-nez v1, :cond_0

    #@c
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f
    move-result v2

    #@10
    .line 245
    :goto_0
    return v2

    #@11
    .line 246
    :cond_0
    const/4 v2, -0x1

    #@12
    goto :goto_0

    #@13
    .line 247
    :cond_1
    if-nez v1, :cond_2

    #@15
    const/4 v2, 0x1

    #@16
    goto :goto_0

    #@17
    :cond_2
    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules$StandardPluralCategories;->compareTo(Ljava/lang/Enum;)I

    #@1a
    move-result v2

    #@1b
    goto :goto_0
.end method
