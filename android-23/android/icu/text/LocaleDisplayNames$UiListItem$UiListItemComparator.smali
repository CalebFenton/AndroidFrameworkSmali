.class Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames$UiListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiListItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final useSelf:Z


# direct methods
.method constructor <init>(Ljava/util/Comparator;Z)V
    .locals 0
    .param p2, "useSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 390
    .local p1, "collator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 391
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    #@5
    .line 392
    iput-boolean p2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    #@7
    .line 390
    return-void
.end method


# virtual methods
.method public compare(Landroid/icu/text/LocaleDisplayNames$UiListItem;Landroid/icu/text/LocaleDisplayNames$UiListItem;)I
    .locals 4
    .param p1, "o1"    # Landroid/icu/text/LocaleDisplayNames$UiListItem;
    .param p2, "o2"    # Landroid/icu/text/LocaleDisplayNames$UiListItem;

    #@0
    .prologue
    .line 395
    iget-boolean v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    #@6
    iget-object v2, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    #@8
    iget-object v3, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    #@a
    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .line 397
    .local v0, "result":I
    :goto_0
    if-eqz v0, :cond_1

    #@10
    .end local v0    # "result":I
    :goto_1
    return v0

    #@11
    .line 396
    :cond_0
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    #@13
    iget-object v2, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    #@15
    iget-object v3, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    #@17
    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    .restart local v0    # "result":I
    goto :goto_0

    #@1c
    .line 397
    :cond_1
    iget-object v1, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    #@1e
    iget-object v2, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    #@20
    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale;->compareTo(Landroid/icu/util/ULocale;)I

    #@23
    move-result v0

    #@24
    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 394
    check-cast p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    #@4
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->compare(Landroid/icu/text/LocaleDisplayNames$UiListItem;Landroid/icu/text/LocaleDisplayNames$UiListItem;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
