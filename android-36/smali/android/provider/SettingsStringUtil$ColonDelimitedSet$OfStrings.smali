.class public Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;
.super Landroid/provider/SettingsStringUtil$ColonDelimitedSet;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsStringUtil$ColonDelimitedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfStrings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/SettingsStringUtil$ColonDelimitedSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "colonSeparatedItems"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static greylist-max-o add(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;

    invoke-direct {v0, p0}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "set":Landroid/provider/SettingsStringUtil$ColonDelimitedSet;, "Landroid/provider/SettingsStringUtil$ColonDelimitedSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 94
    return-object p0

    .line 96
    :cond_c
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o addAll(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 85
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;

    invoke-direct {v0, p0}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "set":Landroid/provider/SettingsStringUtil$ColonDelimitedSet;, "Landroid/provider/SettingsStringUtil$ColonDelimitedSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->addAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, p0

    :goto_11
    return-object v1
.end method

.method public static greylist-max-o contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .line 111
    const-string v0, ":"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "elements":[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static greylist-max-o remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;

    invoke-direct {v0, p0}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "set":Landroid/provider/SettingsStringUtil$ColonDelimitedSet;, "Landroid/provider/SettingsStringUtil$ColonDelimitedSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 104
    return-object p0

    .line 106
    :cond_c
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->remove(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic blacklist itemFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;->itemFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o itemFromString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 81
    return-object p1
.end method
