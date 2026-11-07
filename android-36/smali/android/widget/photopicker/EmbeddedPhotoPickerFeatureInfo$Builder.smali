.class public final Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerFeatureInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist DEFAULT_ACCENT_COLOR:J = -0x1L

.field private static final blacklist DEFAULT_MAX_SELECTION_LIMIT:I = 0x64

.field private static final blacklist DEFAULT_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_NIGHT_MODE:I = 0x0

.field private static final blacklist DEFAULT_ORDERED_SELECTION:Z = false

.field private static final blacklist DEFAULT_PRE_SELECTED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAccentColor:J

.field private blacklist mMaxSelectionLimit:I

.field private blacklist mMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOrderedSelection:Z

.field private blacklist mPreSelectedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mThemeNightMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 104
    const-string v0, "image/*"

    const-string v1, "video/*"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->DEFAULT_MIME_TYPES:Ljava/util/List;

    .line 115
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->DEFAULT_PRE_SELECTED_URIS:Ljava/util/List;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->DEFAULT_MIME_TYPES:Ljava/util/List;

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mMimeTypes:Ljava/util/List;

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mAccentColor:J

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mOrderedSelection:Z

    .line 121
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mMaxSelectionLimit:I

    .line 122
    sget-object v1, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->DEFAULT_PRE_SELECTED_URIS:Ljava/util/List;

    iput-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mPreSelectedUris:Ljava/util/List;

    .line 123
    iput v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mThemeNightMode:I

    .line 125
    return-void
.end method

.method private static blacklist isMimeTypeMedia(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 158
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 158
    :goto_24
    return v0
.end method

.method private static blacklist isSupportedNightModeConstant(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 253
    if-eqz p0, :cond_d

    const/16 v0, 0x10

    if-eq p0, v0, :cond_d

    const/16 v0, 0x20

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private blacklist validateMimeType(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "Mime type list must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "mimeType":Ljava/lang/String;
    const-string v2, "Mime type must not be null."

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    invoke-static {v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->isMimeTypeMedia(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 151
    .end local v1    # "mimeType":Ljava/lang/String;
    goto :goto_9

    .line 148
    .restart local v1    # "mimeType":Ljava/lang/String;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid mime type found. Only image/video mime types are supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_29
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
    .registers 10

    .line 263
    new-instance v0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mMimeTypes:Ljava/util/List;

    iget-wide v2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mAccentColor:J

    iget-boolean v4, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mOrderedSelection:Z

    iget v5, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mMaxSelectionLimit:I

    iget-object v6, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mPreSelectedUris:Ljava/util/List;

    iget v7, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mThemeNightMode:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;-><init>(Ljava/util/List;JZILjava/util/List;ILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo-IA;)V

    return-object v0
.end method

.method public whitelist setAccentColor(J)Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;
    .registers 3
    .param p1, "accentColor"    # J

    .line 177
    iput-wide p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mAccentColor:J

    .line 178
    return-object p0
.end method

.method public whitelist setMaxSelectionLimit(I)Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;
    .registers 4
    .param p1, "maxSelectionLimit"    # I

    .line 205
    const/16 v0, 0x64

    if-gt p1, v0, :cond_7

    .line 209
    iput p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mMaxSelectionLimit:I

    .line 210
    return-object p0

    .line 206
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max selection limit should be less than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMimeTypes(Ljava/util/List;)Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;"
        }
    .end annotation

    .line 138
    .local p1, "mimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->validateMimeType(Ljava/util/List;)V

    .line 139
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mMimeTypes:Ljava/util/List;

    .line 140
    return-object p0
.end method

.method public whitelist setOrderedSelection(Z)Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;
    .registers 2
    .param p1, "orderedSelection"    # Z

    .line 189
    iput-boolean p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mOrderedSelection:Z

    .line 190
    return-object p0
.end method

.method public whitelist setPreSelectedUris(Ljava/util/List;)Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;"
        }
    .end annotation

    .line 224
    .local p1, "preSelectedUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-string v0, "Preselected uri list can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mPreSelectedUris:Ljava/util/List;

    .line 226
    return-object p0
.end method

.method public whitelist setThemeNightMode(I)Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;
    .registers 5
    .param p1, "themeNightMode"    # I

    .line 245
    invoke-static {p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->isSupportedNightModeConstant(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 248
    iput p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo$Builder;->mThemeNightMode:I

    .line 249
    return-object p0

    .line 246
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported themeNightMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
