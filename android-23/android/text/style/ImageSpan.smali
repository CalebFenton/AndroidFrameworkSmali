.class public Landroid/text/style/ImageSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "ImageSpan.java"


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceId:I

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    #@4
    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "verticalAlignment"    # I

    #@0
    .prologue
    .line 123
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    #@3
    .line 124
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    #@5
    .line 125
    iput p2, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    #@7
    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    #@4
    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "verticalAlignment"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 62
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    #@4
    .line 63
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    #@6
    .line 64
    if-eqz p1, :cond_0

    #@8
    .line 65
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    #@a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v4

    #@e
    invoke-direct {v2, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@11
    .line 64
    :goto_0
    iput-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    .line 67
    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@18
    move-result v1

    #@19
    .line 68
    .local v1, "width":I
    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1e
    move-result v0

    #@1f
    .line 69
    .local v0, "height":I
    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@21
    if-lez v1, :cond_1

    #@23
    .end local v1    # "width":I
    :goto_1
    if-lez v0, :cond_2

    #@25
    .end local v0    # "height":I
    :goto_2
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@28
    .line 61
    return-void

    #@29
    .line 66
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    #@2b
    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@2e
    goto :goto_0

    #@2f
    .restart local v0    # "height":I
    .restart local v1    # "width":I
    :cond_1
    move v1, v3

    #@30
    .line 69
    goto :goto_1

    #@31
    .end local v1    # "width":I
    :cond_2
    move v0, v3

    #@32
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    #@4
    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "verticalAlignment"    # I

    #@0
    .prologue
    .line 108
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    #@3
    .line 109
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    #@5
    .line 110
    iput-object p2, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    #@7
    .line 111
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    #@d
    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    #@5
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "verticalAlignment"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    #@4
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    #@4
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I

    #@0
    .prologue
    .line 81
    invoke-direct {p0, p2}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    #@3
    .line 82
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    #@4
    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "verticalAlignment"    # I

    #@0
    .prologue
    .line 94
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    #@3
    .line 95
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 96
    iput-object p2, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    #@7
    .line 93
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    #@0
    .prologue
    .line 130
    const/4 v1, 0x0

    #@1
    .line 132
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 133
    iget-object v1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    .line 157
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    #@8
    .line 134
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    #@a
    if-eqz v5, :cond_1

    #@c
    .line 135
    const/4 v0, 0x0

    #@d
    .line 137
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v5

    #@13
    .line 138
    iget-object v6, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    #@15
    .line 137
    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@18
    move-result-object v4

    #@19
    .line 139
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@1c
    move-result-object v0

    #@1d
    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    #@1f
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@24
    move-result-object v5

    #@25
    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 141
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@2b
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    move-result v5

    #@2c
    .line 142
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2f
    move-result v6

    #@30
    .line 141
    const/4 v7, 0x0

    #@31
    const/4 v8, 0x0

    #@32
    invoke-virtual {v2, v7, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@35
    .line 143
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@38
    move-object v1, v2

    #@39
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@3a
    .line 144
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "is":Ljava/io/InputStream;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    #@3b
    .line 145
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v5, "sms"

    #@3e
    new-instance v6, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v7, "Failed to loaded content "

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    iget-object v7, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    goto :goto_0

    #@58
    .line 149
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    #@5a
    iget v6, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    #@5c
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5f
    move-result-object v1

    #@60
    .line 150
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@63
    move-result v5

    #@64
    .line 151
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@67
    move-result v6

    #@68
    .line 150
    const/4 v7, 0x0

    #@69
    const/4 v8, 0x0

    #@6a
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@6d
    goto :goto_0

    #@6e
    .line 152
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v3

    #@6f
    .line 153
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "sms"

    #@72
    new-instance v6, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v7, "Unable to find resource: "

    #@7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    iget v7, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    #@80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v6

    #@88
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    goto/16 :goto_0

    #@8d
    .line 144
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    #@8e
    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v1, v2

    #@8f
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    #@2
    return-object v0
.end method
