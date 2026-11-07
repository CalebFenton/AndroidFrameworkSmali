.class public Landroid/content/theming/FieldColor;
.super Landroid/content/theming/ThemeSettingsField;
.source "FieldColor.java"


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
.field private static final blacklist COLOR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-string v0, "[0-9a-fA-F]{6,8}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/content/theming/FieldColor;->COLOR_PATTERN:Ljava/util/regex/Pattern;

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

    .line 40
    .local p2, "setter":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/theming/ThemeSettingsUpdater;Ljava/lang/Integer;>;"
    .local p3, "getter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/theming/ThemeSettings;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/theming/ThemeSettingsField;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    .line 41
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

    .line 73
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

    .line 78
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist parse(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .param p1, "primitive"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 48
    return-object v0

    .line 50
    :cond_4
    sget-object v1, Landroid/content/theming/FieldColor;->COLOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_11

    .line 51
    return-object v0

    .line 55
    :cond_11
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_34} :catch_35

    return-object v0

    .line 56
    :catch_35
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/IllegalArgumentException;
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

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColor;->parse(Ljava/lang/String;)Ljava/lang/Integer;

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

    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColor;->serialize(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist serialize(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/Integer;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate(Ljava/lang/Integer;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Integer;

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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

    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/content/theming/FieldColor;->validate(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
