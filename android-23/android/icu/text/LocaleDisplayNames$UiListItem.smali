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
.field public final minimized:Landroid/icu/util/ULocale;

.field public final modified:Landroid/icu/util/ULocale;

.field public final nameInDisplayLocale:Ljava/lang/String;

.field public final nameInSelf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "minimized"    # Landroid/icu/util/ULocale;
    .param p2, "modified"    # Landroid/icu/util/ULocale;
    .param p3, "nameInDisplayLocale"    # Ljava/lang/String;
    .param p4, "nameInSelf"    # Ljava/lang/String;

    #@0
    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 331
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    #@5
    .line 332
    iput-object p2, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    #@7
    .line 333
    iput-object p3, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    #@9
    .line 334
    iput-object p4, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    #@b
    .line 330
    return-void
.end method

.method public static getComparator(Ljava/util/Comparator;Z)Ljava/util/Comparator;
    .locals 1
    .param p1, "inSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Comparator",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 384
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/icu/text/LocaleDisplayNames$UiListItem$UiListItemComparator;-><init>(Ljava/util/Comparator;Z)V

    #@5
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 345
    check-cast v0, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    #@3
    .line 346
    .local v0, "other":Landroid/icu/text/LocaleDisplayNames$UiListItem;
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    #@5
    iget-object v2, v0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 347
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    #@f
    iget-object v2, v0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 346
    if-eqz v1, :cond_0

    #@17
    .line 348
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    #@19
    iget-object v2, v0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    #@1b
    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 346
    if-eqz v1, :cond_0

    #@21
    .line 349
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    #@23
    iget-object v2, v0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    #@25
    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    .line 346
    :goto_0
    return v1

    #@2a
    :cond_0
    const/4 v1, 0x0

    #@2b
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 360
    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->minimized:Landroid/icu/util/ULocale;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->modified:Landroid/icu/util/ULocale;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInDisplayLocale:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, ", "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    iget-object v1, p0, Landroid/icu/text/LocaleDisplayNames$UiListItem;->nameInSelf:Ljava/lang/String;

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    const-string/jumbo v1, "}"

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method
