.class public Landroid/icu/text/LocaleDisplayNames$UiListItem;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiListItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;
    }
.end annotation


# instance fields
.field public final whitelist test-api minimized:Landroid/icu/util/ULocale;

.field public final whitelist test-api modified:Landroid/icu/util/ULocale;

.field public final whitelist test-api nameInDisplayLocale:Ljava/lang/String;

.field public final whitelist test-api nameInSelf:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "minimized"    # Landroid/icu/util/ULocale;
    .param p2, "modified"    # Landroid/icu/util/ULocale;
    .param p3, "nameInDisplayLocale"    # Ljava/lang/String;
    .param p4, "nameInSelf"    # Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    .line 308
    iput-object p2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    .line 309
    iput-object p3, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    .line 310
    iput-object p4, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public static whitelist test-api getComparator(Ljava/util/Comparator;Z)Ljava/util/Comparator;
    .registers 3
    .param p1, "inSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Comparator<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 355
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 318
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 319
    return v0

    .line 321
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    instance-of v2, p1, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    if-nez v2, :cond_c

    goto :goto_3a

    .line 324
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    .line 325
    .local v2, "other":Landroid/icu/text/LocaleDisplayNames$UiListItem;
    iget-object v3, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    iget-object v4, v2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    .line 327
    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    iget-object v4, v2, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    .line 328
    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 325
    :goto_39
    return v0

    .line 322
    .end local v2    # "other":Landroid/icu/text/LocaleDisplayNames$UiListItem;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 336
    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
