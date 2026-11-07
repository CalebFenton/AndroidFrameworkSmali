.class public Landroid/text/style/ImageSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "ImageSpan.java"


# instance fields
.field private greylist-max-o mContentUri:Landroid/net/Uri;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist mDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mResourceId:I

.field private greylist-max-o mSource:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 208
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "verticalAlignment"    # I

    .line 221
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 222
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    .line 223
    iput p2, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    .line 224
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "verticalAlignment"    # I

    .line 111
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 112
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    .line 113
    if-eqz p1, :cond_11

    .line 114
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_16

    .line 115
    :cond_11
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_16
    iput-object v0, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    iget-object v0, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 117
    .local v0, "width":I
    iget-object v1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 118
    .local v1, "height":I
    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-lez v0, :cond_2b

    move v4, v0

    goto :goto_2c

    :cond_2b
    move v4, v3

    :goto_2c
    if-lez v1, :cond_30

    move v5, v1

    goto :goto_31

    :cond_30
    move v5, v3

    :goto_31
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 179
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "verticalAlignment"    # I

    .line 193
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 194
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    .line 195
    iput-object p2, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    .line 196
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;I)V
    .registers 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "verticalAlignment"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 86
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 129
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;I)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I

    .line 139
    invoke-direct {p0, p2}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 140
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "source"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "verticalAlignment"    # I

    .line 163
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 164
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    iput-object p2, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    .line 231
    iget-object v0, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_85

    .line 232
    :cond_9
    iget-object v1, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    const-string v2, "ImageSpan"

    const/4 v3, 0x0

    if-eqz v1, :cond_57

    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_11
    iget-object v4, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 237
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 238
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v5

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 240
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 239
    invoke-virtual {v0, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 241
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3c} :catch_3d

    .line 244
    .end local v4    # "is":Ljava/io/InputStream;
    goto :goto_56

    .line 242
    :catch_3d
    move-exception v3

    .line 243
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to loaded content "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_56
    goto :goto_85

    .line 247
    :cond_57
    :try_start_57
    iget-object v1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 248
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 249
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 248
    invoke-virtual {v0, v3, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6b} :catch_6c

    .line 252
    goto :goto_85

    .line 250
    :catch_6c
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_85
    return-object v0
.end method

.method public whitelist getSource()Ljava/lang/String;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageSpan{drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verticalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getVerticalAlignment()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    return-object v0
.end method
