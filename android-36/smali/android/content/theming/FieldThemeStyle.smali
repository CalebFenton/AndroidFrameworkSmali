.class public Landroid/content/theming/FieldThemeStyle;
.super Landroid/content/theming/ThemeSettingsField;
.source "FieldThemeStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/theming/ThemeSettingsField<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist sValidStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 39
    nop

    .line 40
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 43
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 44
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Integer;

    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/theming/FieldThemeStyle;->sValidStyles:Ljava/util/List;

    return-void
.end method

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

    .line 36
    .local p2, "setter":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/theming/ThemeSettingsUpdater;Ljava/lang/Integer;>;"
    .local p3, "getter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/theming/ThemeSettings;Ljava/lang/Integer;>;"
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 69
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

    .line 74
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist parse(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "primitive"    # Ljava/lang/String;

    .line 61
    :try_start_0
    invoke-static {p1}, Landroid/content/theming/ThemeStyle;->valueOf(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 62
    :catch_9
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
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

    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldThemeStyle;->parse(Ljava/lang/String;)Ljava/lang/Integer;

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
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldThemeStyle;->serialize(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist serialize(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .param p1, "typedValue"    # Ljava/lang/Integer;

    .line 48
    invoke-static {p1}, Landroid/content/theming/ThemeStyle;->toString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate(Ljava/lang/Integer;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Integer;

    .line 53
    sget-object v0, Landroid/content/theming/FieldThemeStyle;->sValidStyles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

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
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldThemeStyle;->validate(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
