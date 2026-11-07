.class public Landroid/content/theming/FieldColorBoth;
.super Landroid/content/theming/ThemeSettingsField;
.source "FieldColorBoth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/theming/ThemeSettingsField<",
        "Ljava/lang/Boolean;",
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
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/content/theming/ThemeSettings;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/content/theming/ThemeSettings;",
            ")V"
        }
    .end annotation

    .line 36
    .local p2, "setter":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/theming/ThemeSettingsUpdater;Ljava/lang/Boolean;>;"
    .local p3, "getter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/theming/ThemeSettings;Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/theming/ThemeSettingsField;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist getFieldType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 63
    const-class v0, Ljava/lang/Boolean;

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

    .line 68
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist parse(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "primitive"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_2e

    :cond_9
    goto :goto_1e

    :pswitch_a
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1f

    :pswitch_14
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_1f

    :goto_1e
    const/4 v0, -0x1

    :goto_1f
    packed-switch v0, :pswitch_data_36

    .line 45
    const/4 v0, 0x0

    goto :goto_2d

    .line 44
    :pswitch_24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2d

    .line 43
    :pswitch_29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 42
    :goto_2d
    return-object v0

    :pswitch_data_2e
    .packed-switch 0x30
        :pswitch_14
        :pswitch_a
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_29
        :pswitch_24
    .end packed-switch
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

    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorBoth;->parse(Ljava/lang/String;)Ljava/lang/Boolean;

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

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorBoth;->serialize(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist serialize(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 3
    .param p1, "typedValue"    # Ljava/lang/Boolean;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    return-object v0

    .line 52
    :cond_9
    const-string v0, "0"

    return-object v0
.end method

.method public blacklist validate(Ljava/lang/Boolean;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/4 v0, 0x1

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

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorBoth;->validate(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
