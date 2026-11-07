.class public final Landroid/content/pm/ArchivedActivityInfo;
.super Ljava/lang/Object;
.source "ArchivedActivityInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ArchivedActivityInfo"


# instance fields
.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mMonochromeIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/ArchivedActivityParcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/content/pm/ArchivedActivityParcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    .line 67
    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    invoke-static {v0}, Landroid/content/pm/ArchivedActivityInfo;->drawableFromCompressedBitmap([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    invoke-static {v0}, Landroid/content/pm/ArchivedActivityInfo;->drawableFromCompressedBitmap([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    .line 60
    iput-object p2, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    return-void
.end method

.method public static blacklist bytesFromBitmap(Landroid/graphics/Bitmap;)[B
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 135
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 136
    return-object v0

    .line 139
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_26

    .line 141
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_d
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 142
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1c

    .line 143
    :try_start_18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_26

    .line 142
    return-object v2

    .line 139
    :catchall_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v3

    :try_start_22
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_25
    throw v2
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_26

    .line 143
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_26
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ArchivedActivityInfo"

    const-string v3, "Failed to compress bitmap"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-object v0
.end method

.method private static blacklist drawableFromCompressedBitmap([B)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "bytes"    # [B

    .line 150
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 151
    return-object v0

    .line 153
    :cond_4
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "iconSize"    # I

    .line 97
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 98
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_44

    .line 100
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2a

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1a

    goto :goto_2a

    .line 104
    :cond_1a
    nop

    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 107
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_30

    .line 102
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2a
    :goto_2a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_30
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :goto_44
    if-gtz p1, :cond_47

    .line 116
    return-object v0

    .line 119
    :cond_47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, p1, :cond_65

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lt v2, p1, :cond_65

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    if-gt v2, v3, :cond_65

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    if-le v2, v3, :cond_64

    goto :goto_65

    .line 127
    :cond_64
    return-object v0

    .line 121
    :cond_65
    :goto_65
    invoke-static {v0, p1, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eq v1, v0, :cond_6e

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    :cond_6e
    return-object v1
.end method


# virtual methods
.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getMonochromeIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method blacklist getParcel()Landroid/content/pm/ArchivedActivityParcel;
    .registers 4

    .line 73
    new-instance v0, Landroid/content/pm/ArchivedActivityParcel;

    invoke-direct {v0}, Landroid/content/pm/ArchivedActivityParcel;-><init>()V

    .line 74
    .local v0, "parcel":Landroid/content/pm/ArchivedActivityParcel;
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    .line 76
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move-object v1, v2

    goto :goto_22

    .line 77
    :cond_18
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    :goto_22
    iput-object v1, v0, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    .line 78
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_29

    goto :goto_33

    .line 79
    :cond_29
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    :goto_33
    iput-object v2, v0, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    .line 80
    return-object v0
.end method

.method public whitelist setComponentName(Landroid/content/ComponentName;)Landroid/content/pm/ArchivedActivityInfo;
    .registers 5
    .param p1, "value"    # Landroid/content/ComponentName;

    .line 220
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    .line 221
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 223
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)Landroid/content/pm/ArchivedActivityInfo;
    .registers 2
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .line 232
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 233
    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ArchivedActivityInfo;
    .registers 5
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 209
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    .line 210
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 212
    return-object p0
.end method

.method public whitelist setMonochromeIcon(Landroid/graphics/drawable/Drawable;)Landroid/content/pm/ArchivedActivityInfo;
    .registers 2
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .line 241
    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    .line 242
    return-object p0
.end method
