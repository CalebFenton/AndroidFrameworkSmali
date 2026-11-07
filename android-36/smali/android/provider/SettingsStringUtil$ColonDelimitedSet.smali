.class public abstract Landroid/provider/SettingsStringUtil$ColonDelimitedSet;
.super Ljava/util/HashSet;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ColonDelimitedSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashSet<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "colonSeparatedItems"    # Ljava/lang/String;

    .line 47
    .local p0, "this":Landroid/provider/SettingsStringUtil$ColonDelimitedSet;, "Landroid/provider/SettingsStringUtil$ColonDelimitedSet<TT;>;"
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 50
    .local v3, "cn":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->itemFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v3    # "cn":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 52
    :cond_1d
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o itemFromString(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected greylist-max-o itemToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 56
    .local p0, "this":Landroid/provider/SettingsStringUtil$ColonDelimitedSet;, "Landroid/provider/SettingsStringUtil$ColonDelimitedSet<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 61
    .local p0, "this":Landroid/provider/SettingsStringUtil$ColonDelimitedSet;, "Landroid/provider/SettingsStringUtil$ColonDelimitedSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 63
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->itemToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 66
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;->itemToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 70
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
