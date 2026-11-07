.class public Landroid/content/theming/ThemeSettingsUpdater;
.super Ljava/lang/Object;
.source "ThemeSettingsUpdater.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/theming/ThemeSettingsUpdater;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAccentColor:Ljava/lang/Integer;

.field private blacklist mColorBoth:Ljava/lang/Boolean;

.field private blacklist mColorIndex:Ljava/lang/Integer;

.field private blacklist mColorSource:Ljava/lang/String;

.field private blacklist mSystemPalette:Ljava/lang/Integer;

.field private blacklist mThemeStyle:Ljava/lang/Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 232
    new-instance v0, Landroid/content/theming/ThemeSettingsUpdater$1;

    invoke-direct {v0}, Landroid/content/theming/ThemeSettingsUpdater$1;-><init>()V

    sput-object v0, Landroid/content/theming/ThemeSettingsUpdater;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    .line 72
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "colorIndex"    # Ljava/lang/Integer;
    .param p2, "systemPalette"    # Ljava/lang/Integer;
    .param p3, "accentColor"    # Ljava/lang/Integer;
    .param p4, "colorSource"    # Ljava/lang/String;
    .param p5, "themeStyle"    # Ljava/lang/Integer;
    .param p6, "colorBoth"    # Ljava/lang/Boolean;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p3, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    .line 53
    iput-object p6, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    .line 54
    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    .line 55
    iput-object p4, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    .line 57
    iput-object p5, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist accentColor(I)Landroid/content/theming/ThemeSettingsUpdater;
    .registers 3
    .param p1, "accentColor"    # I

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    .line 136
    return-object p0
.end method

.method public blacklist colorBoth(Z)Landroid/content/theming/ThemeSettingsUpdater;
    .registers 3
    .param p1, "colorBoth"    # Z

    .line 198
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    .line 199
    return-object p0
.end method

.method public blacklist colorIndex(I)Landroid/content/theming/ThemeSettingsUpdater;
    .registers 3
    .param p1, "colorIndex"    # I

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    .line 94
    return-object p0
.end method

.method public blacklist colorSource(Ljava/lang/String;)Landroid/content/theming/ThemeSettingsUpdater;
    .registers 2
    .param p1, "colorSource"    # Ljava/lang/String;

    .line 156
    iput-object p1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccentColor()Ljava/lang/Integer;
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getColorBoth()Ljava/lang/Boolean;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    return-object v0
.end method

.method public blacklist getColorIndex()Ljava/lang/Integer;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getColorSource()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSystemPalette()Ljava/lang/Integer;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getThemeStyle()Ljava/lang/Integer;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist systemPalette(I)Landroid/content/theming/ThemeSettingsUpdater;
    .registers 3
    .param p1, "systemPalette"    # I

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    .line 115
    return-object p0
.end method

.method public blacklist themeStyle(I)Landroid/content/theming/ThemeSettingsUpdater;
    .registers 3
    .param p1, "themeStyle"    # I

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    .line 178
    return-object p0
.end method

.method public blacklist toThemeSettings(Landroid/content/theming/ThemeSettings;)Landroid/content/theming/ThemeSettings;
    .registers 10
    .param p1, "defaults"    # Landroid/content/theming/ThemeSettings;

    .line 218
    new-instance v0, Landroid/content/theming/ThemeSettings;

    iget-object v1, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    .line 219
    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->colorIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    .line 220
    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->systemPalette()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    .line 221
    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->accentColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->colorSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    .line 223
    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->themeStyle()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    .line 224
    invoke-virtual {p1}, Landroid/content/theming/ThemeSettings;->colorBoth()Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/content/theming/ThemeSettings;-><init>(IIILjava/lang/String;IZ)V

    .line 218
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorBoth:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorIndex:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mColorSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mSystemPalette:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Landroid/content/theming/ThemeSettingsUpdater;->mThemeStyle:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
