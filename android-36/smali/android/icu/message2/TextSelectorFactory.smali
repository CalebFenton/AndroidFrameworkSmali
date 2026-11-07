.class Landroid/icu/message2/TextSelectorFactory;
.super Ljava/lang/Object;
.source "TextSelectorFactory.java"

# interfaces
.implements Landroid/icu/message2/SelectorFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/message2/TextSelectorFactory$TextSelector;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSelector(Ljava/util/Locale;Ljava/util/Map;)Landroid/icu/message2/Selector;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/Selector;"
        }
    .end annotation

    .line 24
    .local p2, "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/message2/TextSelectorFactory$TextSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/message2/TextSelectorFactory$TextSelector;-><init>(Landroid/icu/message2/TextSelectorFactory-IA;)V

    return-object v0
.end method
