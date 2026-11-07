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
        "Ljava/util/Comparator<",
        "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o collator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o useSelf:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Comparator;Z)V
    .registers 3
    .param p2, "useSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 361
    .local p1, "collator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    .line 363
    iput-boolean p2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    .line 364
    return-void
.end method


# virtual methods
.method public greylist-max-o compare(Landroid/icu/text/LocaleDisplayNames$UiListItem;Landroid/icu/text/LocaleDisplayNames$UiListItem;)I
    .registers 6
    .param p1, "o1"    # Landroid/icu/text/LocaleDisplayNames$UiListItem;
    .param p2, "o2"    # Landroid/icu/text/LocaleDisplayNames$UiListItem;

    .line 367
    iget-boolean v0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->useSelf:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    iget-object v1, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    iget-object v2, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_19

    .line 368
    :cond_f
    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->collator:Ljava/util/Comparator;

    iget-object v1, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    iget-object v2, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_19
    nop

    .line 369
    .local v0, "result":I
    if-eqz v0, :cond_1e

    move v1, v0

    goto :goto_26

    :cond_1e
    iget-object v1, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    iget-object v2, p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale;->compareTo(Landroid/icu/util/ULocale;)I

    move-result v1

    :goto_26
    return v1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 358
    check-cast p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    check-cast p2, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;->compare(Landroid/icu/text/LocaleDisplayNames$UiListItem;Landroid/icu/text/LocaleDisplayNames$UiListItem;)I

    move-result p1

    return p1
.end method
