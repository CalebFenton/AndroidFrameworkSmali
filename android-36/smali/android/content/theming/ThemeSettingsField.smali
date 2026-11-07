.class public abstract Landroid/content/theming/ThemeSettingsField;
.super Ljava/lang/Object;
.source "ThemeSettingsField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "J:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist KEY_PREFIX:Ljava/lang/String; = "android.theme.customization."

.field public static final blacklist OVERLAY_CATEGORY_ACCENT_COLOR:Ljava/lang/String; = "android.theme.customization.accent_color"

.field public static final blacklist OVERLAY_CATEGORY_SYSTEM_PALETTE:Ljava/lang/String; = "android.theme.customization.system_palette"

.field public static final blacklist OVERLAY_CATEGORY_THEME_STYLE:Ljava/lang/String; = "android.theme.customization.theme_style"

.field public static final blacklist OVERLAY_COLOR_BOTH:Ljava/lang/String; = "android.theme.customization.color_both"

.field public static final blacklist OVERLAY_COLOR_INDEX:Ljava/lang/String; = "android.theme.customization.color_index"

.field public static final blacklist OVERLAY_COLOR_SOURCE:Ljava/lang/String; = "android.theme.customization.color_source"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public final blacklist key:Ljava/lang/String;

.field private final blacklist mDefaults:Landroid/content/theming/ThemeSettings;

.field private final blacklist mGetter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/content/theming/ThemeSettings;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mSetter:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/content/theming/ThemeSettingsUpdater;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    const-class v0, Landroid/content/theming/ThemeSettingsField;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

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
            "TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/content/theming/ThemeSettings;",
            "TT;>;",
            "Landroid/content/theming/ThemeSettings;",
            ")V"
        }
    .end annotation

    .line 134
    .local p0, "this":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<TT;TJ;>;"
    .local p2, "setter":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/content/theming/ThemeSettingsUpdater;TT;>;"
    .local p3, "getter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/theming/ThemeSettings;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Landroid/content/theming/ThemeSettingsField;->mSetter:Ljava/util/function/BiConsumer;

    .line 137
    iput-object p3, p0, Landroid/content/theming/ThemeSettingsField;->mGetter:Ljava/util/function/Function;

    .line 138
    iput-object p4, p0, Landroid/content/theming/ThemeSettingsField;->mDefaults:Landroid/content/theming/ThemeSettings;

    .line 139
    return-void
.end method

.method private blacklist fallbackParse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "primitive"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .line 148
    .local p0, "this":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<TT;TJ;>;"
    .local p2, "fallbackValue":Ljava/lang/Object;, "TT;"
    const-string v0, "Error, field `"

    if-nez p1, :cond_27

    .line 149
    sget-object v1, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "` was not found, defaulting to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-object p2

    .line 153
    :cond_27
    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getJsonType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "`, defaulting to "

    const-string v3, "` expected to be of type `"

    if-nez v1, :cond_78

    .line 154
    sget-object v1, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getJsonType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "`, got `"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object p2

    .line 162
    :cond_78
    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getFieldType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getJsonType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_84

    move-object v0, p1

    goto :goto_88

    :cond_84
    invoke-virtual {p0, p1}, Landroid/content/theming/ThemeSettingsField;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, "parsedValue":Ljava/lang/Object;, "TT;"
    :goto_88
    const-string v1, "` , defaulting to "

    if-nez v0, :cond_af

    .line 165
    sget-object v2, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing JSON field `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object p2

    .line 169
    :cond_af
    invoke-virtual {p0, v0}, Landroid/content/theming/ThemeSettingsField;->validate(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d8

    .line 170
    sget-object v2, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error validating JSON field `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-object p2

    .line 175
    :cond_d8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getFieldType()Ljava/lang/Class;

    move-result-object v4

    if-eq v1, v4, :cond_115

    .line 176
    sget-object v1, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: JSON field `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getFieldType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-object p2

    .line 182
    :cond_115
    return-object v0
.end method

.method public static blacklist getFields(Landroid/content/theming/ThemeSettings;)[Landroid/content/theming/ThemeSettingsField;
    .registers 6
    .param p0, "defaults"    # Landroid/content/theming/ThemeSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/theming/ThemeSettings;",
            ")[",
            "Landroid/content/theming/ThemeSettingsField<",
            "**>;"
        }
    .end annotation

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/content/theming/ThemeSettingsField;

    new-instance v1, Landroid/content/theming/FieldColorIndex;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda3;-><init>()V

    const-string v4, "android.theme.customization.color_index"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColorIndex;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColor;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda4;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda5;-><init>()V

    const-string v4, "android.theme.customization.system_palette"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColor;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColor;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda6;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda7;-><init>()V

    const-string v4, "android.theme.customization.accent_color"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColor;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColorSource;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda8;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda9;-><init>()V

    const-string v4, "android.theme.customization.color_source"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColorSource;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldThemeStyle;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda10;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda11;-><init>()V

    const-string v4, "android.theme.customization.theme_style"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldThemeStyle;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/theming/FieldColorBoth;

    new-instance v2, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/content/theming/ThemeSettingsField$$ExternalSyntheticLambda2;-><init>()V

    const-string v4, "android.theme.customization.color_both"

    invoke-direct {v1, v4, v2, v3, p0}, Landroid/content/theming/FieldColorBoth;-><init>(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Landroid/content/theming/ThemeSettings;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public blacklist fromJSON(Lorg/json/JSONObject;Landroid/content/theming/ThemeSettingsUpdater;)V
    .registers 6
    .param p1, "source"    # Lorg/json/JSONObject;
    .param p2, "updater"    # Landroid/content/theming/ThemeSettingsUpdater;

    .line 193
    .local p0, "this":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<TT;TJ;>;"
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "primitiveStr":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/content/theming/ThemeSettingsField;->fallbackParse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, "typedValue":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/content/theming/ThemeSettingsField;->mSetter:Ljava/util/function/BiConsumer;

    invoke-interface {v2, p2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public blacklist getDefaultValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 236
    .local p0, "this":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<TT;TJ;>;"
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsField;->mGetter:Ljava/util/function/Function;

    iget-object v1, p0, Landroid/content/theming/ThemeSettingsField;->mDefaults:Landroid/content/theming/ThemeSettings;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getFieldType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract blacklist getJsonType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TJ;>;"
        }
    .end annotation
.end method

.method public abstract blacklist parse(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TJ;"
        }
    .end annotation
.end method

.method public blacklist toJSON(Landroid/content/theming/ThemeSettings;Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "source"    # Landroid/content/theming/ThemeSettings;
    .param p2, "destination"    # Lorg/json/JSONObject;

    .line 206
    .local p0, "this":Landroid/content/theming/ThemeSettingsField;, "Landroid/content/theming/ThemeSettingsField<TT;TJ;>;"
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsField;->mGetter:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getFieldType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 210
    invoke-virtual {p0, v0}, Landroid/content/theming/ThemeSettingsField;->validate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 211
    invoke-virtual {p0, v0}, Landroid/content/theming/ThemeSettingsField;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "serialized":Ljava/lang/Object;, "TJ;"
    goto :goto_58

    .line 213
    .end local v1    # "serialized":Ljava/lang/Object;, "TJ;"
    :cond_21
    invoke-virtual {p0}, Landroid/content/theming/ThemeSettingsField;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    .line 214
    .local v1, "fallbackValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Landroid/content/theming/ThemeSettingsField;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 215
    .local v2, "serialized":Ljava/lang/Object;, "TJ;"
    sget-object v3, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "` for key `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "`, defaulting to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 220
    .end local v2    # "serialized":Ljava/lang/Object;, "TJ;"
    .local v1, "serialized":Ljava/lang/Object;, "TJ;"
    :goto_58
    :try_start_58
    iget-object v2, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_5d} :catch_5e

    .line 224
    goto :goto_87

    .line 221
    :catch_5e
    move-exception v2

    .line 222
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Landroid/content/theming/ThemeSettingsField;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing JSON primitive, skipping field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/theming/ThemeSettingsField;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_87
    return-void
.end method

.method public abstract blacklist validate(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
