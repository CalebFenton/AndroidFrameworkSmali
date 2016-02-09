.class public final Landroid/media/tv/TvInputInfo$TvInputSettings;
.super Ljava/lang/Object;
.source "TvInputInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvInputSettings"
.end annotation


# static fields
.field private static final CUSTOM_NAME_SEPARATOR:Ljava/lang/String; = ","

.field private static final TV_INPUT_SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->isHidden(Landroid/content/Context;Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->getCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static ensureValidField(Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 784
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " should not empty "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 783
    :cond_0
    return-void
.end method

.method private static getCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 678
    invoke-static {p0, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->getCustomLabels(Landroid/content/Context;I)Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public static getCustomLabels(Landroid/content/Context;I)Ljava/util/Map;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 713
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v5

    #@5
    const-string/jumbo v7, "tv_input_custom_labels"

    #@8
    .line 712
    invoke-static {v5, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 714
    .local v0, "labelsString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    #@e
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@11
    .line 715
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 716
    return-object v1

    #@18
    .line 718
    :cond_0
    const-string/jumbo v5, ":"

    #@1b
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 719
    .local v4, "pairs":[Ljava/lang/String;
    array-length v7, v4

    #@20
    move v5, v6

    #@21
    :goto_0
    if-ge v5, v7, :cond_1

    #@23
    aget-object v3, v4, v5

    #@25
    .line 720
    .local v3, "pairString":Ljava/lang/String;
    const-string/jumbo v8, ","

    #@28
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 721
    .local v2, "pair":[Ljava/lang/String;
    aget-object v8, v2, v6

    #@2e
    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    const/4 v9, 0x1

    #@33
    aget-object v9, v2, v9

    #@35
    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 719
    add-int/lit8 v5, v5, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 723
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "pairString":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getHiddenTvInputIds(Landroid/content/Context;I)Ljava/util/Set;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v4

    #@4
    const-string/jumbo v5, "tv_input_hidden_inputs"

    #@7
    .line 690
    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 692
    .local v0, "hiddenIdsString":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    #@d
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@10
    .line 693
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 694
    return-object v3

    #@17
    .line 696
    :cond_0
    const-string/jumbo v4, ":"

    #@1a
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 697
    .local v2, "ids":[Ljava/lang/String;
    const/4 v4, 0x0

    #@1f
    array-length v5, v2

    #@20
    :goto_0
    if-ge v4, v5, :cond_1

    #@22
    aget-object v1, v2, v4

    #@24
    .line 698
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    .line 697
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 700
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private static isHidden(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 674
    invoke-static {p0, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->getHiddenTvInputIds(Landroid/content/Context;I)Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putCustomLabels(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 765
    .local p1, "customLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 766
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    #@6
    .line 767
    .local v3, "firstItem":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v4

    #@a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/util/Map$Entry;

    #@1a
    .line 768
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Ljava/lang/String;

    #@20
    invoke-static {v4}, Landroid/media/tv/TvInputInfo$TvInputSettings;->ensureValidField(Ljava/lang/String;)V

    #@23
    .line 769
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Ljava/lang/String;

    #@29
    invoke-static {v4}, Landroid/media/tv/TvInputInfo$TvInputSettings;->ensureValidField(Ljava/lang/String;)V

    #@2c
    .line 770
    if-eqz v3, :cond_0

    #@2e
    .line 771
    const/4 v3, 0x0

    #@2f
    .line 775
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Ljava/lang/String;

    #@35
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 776
    const-string/jumbo v4, ","

    #@3f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 777
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@45
    move-result-object v4

    #@46
    check-cast v4, Ljava/lang/String;

    #@48
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    goto :goto_0

    #@50
    .line 773
    :cond_0
    const-string/jumbo v4, ":"

    #@53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    goto :goto_1

    #@57
    .line 779
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5a
    move-result-object v4

    #@5b
    .line 780
    const-string/jumbo v5, "tv_input_custom_labels"

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    .line 779
    invoke-static {v4, v5, v6, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@65
    .line 764
    return-void
.end method

.method public static putHiddenTvInputs(Landroid/content/Context;Ljava/util/Set;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 738
    .local p1, "hiddenInputIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 739
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@6
    .line 740
    .local v1, "firstItem":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "inputId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/String;

    #@16
    .line 741
    .local v2, "inputId":Ljava/lang/String;
    invoke-static {v2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->ensureValidField(Ljava/lang/String;)V

    #@19
    .line 742
    if-eqz v1, :cond_0

    #@1b
    .line 743
    const/4 v1, 0x0

    #@1c
    .line 747
    :goto_1
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    goto :goto_0

    #@24
    .line 745
    :cond_0
    const-string/jumbo v4, ":"

    #@27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    goto :goto_1

    #@2b
    .line 749
    .end local v2    # "inputId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2e
    move-result-object v4

    #@2f
    .line 750
    const-string/jumbo v5, "tv_input_hidden_inputs"

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 749
    invoke-static {v4, v5, v6, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@39
    .line 737
    return-void
.end method
