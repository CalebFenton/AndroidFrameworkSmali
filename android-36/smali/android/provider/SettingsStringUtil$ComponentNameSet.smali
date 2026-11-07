.class public Landroid/provider/SettingsStringUtil$ComponentNameSet;
.super Landroid/provider/SettingsStringUtil$ColonDelimitedSet;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentNameSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/SettingsStringUtil$ColonDelimitedSet<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "colonSeparatedPackageNames"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;-><init>(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static greylist-max-o add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Landroid/content/ComponentName;

    .line 133
    new-instance v0, Landroid/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v0, p0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "set":Landroid/provider/SettingsStringUtil$ComponentNameSet;
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 135
    return-object p0

    .line 137
    :cond_c
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o contains(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Landroid/content/ComponentName;

    .line 151
    nop

    .line 152
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {p0, v0}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o remove(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p0, "delimitedElements"    # Ljava/lang/String;
    .param p1, "element"    # Landroid/content/ComponentName;

    .line 142
    new-instance v0, Landroid/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v0, p0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "set":Landroid/provider/SettingsStringUtil$ComponentNameSet;
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 144
    return-object p0

    .line 146
    :cond_c
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->remove(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected greylist-max-o itemFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

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

    .line 117
    invoke-virtual {p0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->itemFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o itemToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "item"    # Landroid/content/ComponentName;

    .line 129
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_7
    const-string/jumbo v0, "null"

    :goto_a
    return-object v0
.end method

.method protected bridge synthetic blacklist itemToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 117
    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->itemToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
