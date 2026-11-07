.class public final Landroid/content/theming/ThemeSettings;
.super Ljava/lang/Object;
.source "ThemeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/theming/ThemeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccentColor:I

.field private final blacklist mColorBoth:Z

.field private final blacklist mColorIndex:I

.field private final blacklist mColorSource:Ljava/lang/String;

.field private final blacklist mSystemPalette:I

.field private final blacklist mThemeStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/content/theming/ThemeSettings$1;

    invoke-direct {v0}, Landroid/content/theming/ThemeSettings$1;-><init>()V

    sput-object v0, Landroid/content/theming/ThemeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/lang/String;IZ)V
    .registers 7
    .param p1, "colorIndex"    # I
    .param p2, "systemPalette"    # I
    .param p3, "accentColor"    # I
    .param p4, "colorSource"    # Ljava/lang/String;
    .param p5, "themeStyle"    # I
    .param p6, "colorBoth"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p3, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    .line 61
    iput-boolean p6, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    .line 62
    iput p1, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    .line 63
    iput-object p4, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    .line 64
    iput p2, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    .line 65
    iput p5, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    .line 66
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    .line 80
    return-void
.end method

.method public static blacklist updater()Landroid/content/theming/ThemeSettingsUpdater;
    .registers 1

    .line 198
    new-instance v0, Landroid/content/theming/ThemeSettingsUpdater;

    invoke-direct {v0}, Landroid/content/theming/ThemeSettingsUpdater;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist accentColor()Ljava/lang/Integer;
    .registers 2

    .line 118
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist colorBoth()Ljava/lang/Boolean;
    .registers 2

    .line 147
    iget-boolean v0, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist colorIndex()Ljava/lang/Integer;
    .registers 2

    .line 98
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist colorSource()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 153
    return v0

    .line 162
    :cond_4
    instance-of v1, p1, Landroid/content/theming/ThemeSettings;

    if-eqz v1, :cond_34

    .line 156
    move-object v1, p1

    check-cast v1, Landroid/content/theming/ThemeSettings;

    .local v1, "other":Landroid/content/theming/ThemeSettings;
    iget v2, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    iget v3, v1, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    iget v3, v1, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    iget v3, v1, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    if-ne v2, v3, :cond_34

    iget-object v2, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget v2, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    iget v3, v1, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    if-ne v2, v3, :cond_34

    iget-boolean v2, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    iget-boolean v3, v1, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    if-ne v2, v3, :cond_34

    goto :goto_35

    .end local v1    # "other":Landroid/content/theming/ThemeSettings;
    :cond_34
    const/4 v0, 0x0

    .line 156
    :goto_35
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 167
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    iget v0, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    .line 168
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 167
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist systemPalette()Ljava/lang/Integer;
    .registers 2

    .line 108
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist themeStyle()Ljava/lang/Integer;
    .registers 2

    .line 138
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mAccentColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-boolean v0, p0, Landroid/content/theming/ThemeSettings;->mColorBoth:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 86
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mColorIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/content/theming/ThemeSettings;->mColorSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mSystemPalette:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/content/theming/ThemeSettings;->mThemeStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
