.class public Landroid/content/theming/FieldColorSource;
.super Landroid/content/theming/ThemeSettingsField;
.source "FieldColorSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theming/FieldColorSource$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/theming/ThemeSettingsField<",
        "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/content/theming/ThemeSettings;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/theming/ThemeSettings;",
            ")V"
        }
    .end annotation

    .line 38
    .local p2, "setter":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/theming/ThemeSettingsUpdater;Ljava/lang/String;>;"
    .local p3, "getter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/theming/ThemeSettings;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/theming/ThemeSettingsField;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist getFieldType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    const-class v0, Ljava/lang/String;

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

    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorSource;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist parse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "primitive"    # Ljava/lang/String;

    .line 45
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

    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorSource;->serialize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist serialize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "typedValue"    # Ljava/lang/String;

    .line 50
    return-object p1
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

    .line 30
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColorSource;->validate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist validate(Ljava/lang/String;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_32

    :cond_9
    goto :goto_2b

    :sswitch_a
    const-string/jumbo v0, "home_wallpaper"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_2c

    :sswitch_15
    const-string/jumbo v0, "lock_wallpaper"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_2c

    :sswitch_20
    const-string/jumbo v0, "preset"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_2c

    :goto_2b
    const/4 v0, -0x1

    :goto_2c
    packed-switch v0, :pswitch_data_40

    .line 57
    goto :goto_31

    .line 56
    :pswitch_30
    move v1, v2

    .line 55
    :goto_31
    return v1

    :sswitch_data_32
    .sparse-switch
        -0x3a6b1d21 -> :sswitch_20
        -0x172e6c12 -> :sswitch_15
        0x30eeb2a2 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method
