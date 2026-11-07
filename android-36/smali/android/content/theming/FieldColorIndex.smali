.class public Landroid/content/theming/FieldColorIndex;
.super Landroid/content/theming/ThemeSettingsField;
.source "FieldColorIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/theming/ThemeSettingsField<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p4, "defaults"    # Landroid/content/theming/ThemeSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/content/theming/ThemeSettingsUpdater;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/content/theming/ThemeSettings;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/theming/ThemeSettings;",
            ")V"
        }
    .end annotation

    .line 33
    .local p2, "setter":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/theming/ThemeSettingsUpdater;Ljava/lang/Integer;>;"
    .local p3, "getter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/theming/ThemeSettings;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/theming/ThemeSettingsField;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getFieldType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getJsonType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist parse(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "primitive"    # Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 40
    :catch_9
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic blacklist parse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorIndex;->parse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorIndex;->serialize(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist serialize(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .param p1, "typedValue"    # Ljava/lang/Integer;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate(Ljava/lang/Integer;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Integer;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public bridge synthetic blacklist validate(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorIndex;->validate(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
