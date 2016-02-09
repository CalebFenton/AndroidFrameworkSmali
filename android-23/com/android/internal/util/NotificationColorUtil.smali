.class public Lcom/android/internal/util/NotificationColorUtil;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationColorUtil"

.field private static sInstance:Lcom/android/internal/util/NotificationColorUtil;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGrayscaleIconMaxSize:I

.field private final mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    #@7
    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    new-instance v0, Lcom/android/internal/util/ImageUtils;

    #@5
    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    #@a
    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@f
    .line 51
    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    #@11
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v0

    #@15
    .line 67
    const v1, 0x1050005

    #@18
    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    #@1e
    .line 65
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 57
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 58
    :try_start_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 59
    new-instance v0, Lcom/android/internal/util/NotificationColorUtil;

    #@9
    invoke-direct {v0, p0}, Lcom/android/internal/util/NotificationColorUtil;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    #@e
    .line 61
    :cond_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    .line 57
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private processColor(I)I
    .locals 4
    .param p1, "color"    # I

    #@0
    .prologue
    .line 220
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    .line 221
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    #@7
    move-result v1

    #@8
    rsub-int v1, v1, 0xff

    #@a
    .line 222
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    #@d
    move-result v2

    #@e
    rsub-int v2, v2, 0xff

    #@10
    .line 223
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    #@13
    move-result v3

    #@14
    rsub-int v3, v3, 0xff

    #@16
    .line 220
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method private processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .locals 10
    .param p1, "span"    # Landroid/text/style/TextAppearanceSpan;

    #@0
    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v7

    #@4
    .line 194
    .local v7, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v7, :cond_3

    #@6
    .line 195
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getColors()[I

    #@9
    move-result-object v8

    #@a
    .line 196
    .local v8, "colors":[I
    const/4 v6, 0x0

    #@b
    .line 197
    .local v6, "changed":Z
    const/4 v9, 0x0

    #@c
    .local v9, "i":I
    :goto_0
    array-length v0, v8

    #@d
    if-ge v9, v0, :cond_2

    #@f
    .line 198
    aget v0, v8, v9

    #@11
    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 202
    if-nez v6, :cond_0

    #@19
    .line 203
    array-length v0, v8

    #@1a
    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@1d
    move-result-object v8

    #@1e
    .line 205
    :cond_0
    aget v0, v8, v9

    #@20
    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    #@23
    move-result v0

    #@24
    aput v0, v8, v9

    #@26
    .line 206
    const/4 v6, 0x1

    #@27
    .line 197
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 209
    :cond_2
    if-eqz v6, :cond_3

    #@2c
    .line 210
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@2e
    .line 211
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    #@35
    move-result v2

    #@36
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    #@39
    move-result v3

    #@3a
    .line 212
    new-instance v4, Landroid/content/res/ColorStateList;

    #@3c
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getStates()[[I

    #@3f
    move-result-object v5

    #@40
    invoke-direct {v4, v5, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@43
    .line 213
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    #@46
    move-result-object v5

    #@47
    .line 210
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@4a
    return-object v0

    #@4b
    .line 216
    .end local v6    # "changed":Z
    .end local v8    # "colors":[I
    .end local v9    # "i":I
    :cond_3
    return-object p1
.end method


# virtual methods
.method public invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 175
    instance-of v6, p1, Landroid/text/Spanned;

    #@3
    if-eqz v6, :cond_2

    #@5
    move-object v4, p1

    #@6
    .line 176
    check-cast v4, Landroid/text/Spanned;

    #@8
    .line 177
    .local v4, "ss":Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    #@b
    move-result v6

    #@c
    const-class v7, Ljava/lang/Object;

    #@e
    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    .line 178
    .local v3, "spans":[Ljava/lang/Object;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@14
    invoke-interface {v4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    invoke-direct {v0, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@1b
    .line 179
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    array-length v7, v3

    #@1c
    move v6, v5

    #@1d
    :goto_0
    if-ge v6, v7, :cond_1

    #@1f
    aget-object v2, v3, v6

    #@21
    .line 180
    .local v2, "span":Ljava/lang/Object;
    move-object v1, v2

    #@22
    .line 181
    .local v1, "resultSpan":Ljava/lang/Object;
    instance-of v5, v2, Landroid/text/style/TextAppearanceSpan;

    #@24
    if-eqz v5, :cond_0

    #@26
    move-object v5, v2

    #@27
    .line 182
    check-cast v5, Landroid/text/style/TextAppearanceSpan;

    #@29
    invoke-direct {p0, v5}, Lcom/android/internal/util/NotificationColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    #@2c
    move-result-object v1

    #@2d
    .line 184
    :cond_0
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@30
    move-result v5

    #@31
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@34
    move-result v8

    #@35
    .line 185
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@38
    move-result v9

    #@39
    .line 184
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@3c
    .line 179
    add-int/lit8 v5, v6, 0x1

    #@3e
    move v6, v5

    #@3f
    goto :goto_0

    #@40
    .line 187
    .end local v1    # "resultSpan":Ljava/lang/Object;
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return-object v0

    #@41
    .line 189
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "spans":[Ljava/lang/Object;
    .end local v4    # "ss":Landroid/text/Spanned;
    :cond_2
    return-object p1
.end method

.method public isGrayscaleIcon(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 155
    if-eqz p2, :cond_0

    #@3
    .line 157
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 158
    :catch_0
    move-exception v0

    #@d
    .line 159
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v1, "NotificationColorUtil"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Drawable not found: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 160
    return v4

    #@28
    .line 163
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    return v4
.end method

.method public isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 134
    if-nez p2, :cond_0

    #@3
    .line 135
    return v1

    #@4
    .line 137
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    #@7
    move-result v0

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 143
    return v1

    #@c
    .line 139
    :pswitch_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 141
    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v3

    #@4
    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    #@6
    if-gt v3, v4, :cond_0

    #@8
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@b
    move-result v3

    #@c
    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    #@e
    if-le v3, v4, :cond_1

    #@10
    .line 81
    :cond_0
    const/4 v3, 0x0

    #@11
    return v3

    #@12
    .line 84
    :cond_1
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    #@14
    monitor-enter v4

    #@15
    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    #@17
    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/util/Pair;

    #@1d
    .line 86
    .local v0, "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    #@1f
    .line 87
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@21
    check-cast v3, Ljava/lang/Integer;

    #@23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v3

    #@27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    #@2a
    move-result v5

    #@2b
    if-ne v3, v5, :cond_2

    #@2d
    .line 88
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@2f
    check-cast v3, Ljava/lang/Boolean;

    #@31
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v3

    #@35
    monitor-exit v4

    #@36
    return v3

    #@37
    :cond_2
    monitor-exit v4

    #@38
    .line 94
    iget-object v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    #@3a
    monitor-enter v4

    #@3b
    .line 95
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    #@3d
    invoke-virtual {v3, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    #@40
    move-result v2

    #@41
    .line 100
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@44
    move-result v1

    #@45
    .local v1, "generationId":I
    monitor-exit v4

    #@46
    .line 102
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    #@48
    monitor-enter v4

    #@49
    .line 103
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    #@4b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4e
    move-result-object v5

    #@4f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@52
    move-result-object v6

    #@53
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v3, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@5a
    monitor-exit v4

    #@5b
    .line 105
    return v2

    #@5c
    .line 84
    .end local v0    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .end local v1    # "generationId":I
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    #@5d
    monitor-exit v4

    #@5e
    throw v3

    #@5f
    .line 94
    .restart local v0    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v3

    #@60
    monitor-exit v4

    #@61
    throw v3

    #@62
    .line 102
    .restart local v1    # "generationId":I
    .restart local v2    # "result":Z
    :catchall_2
    move-exception v3

    #@63
    monitor-exit v4

    #@64
    throw v3
.end method

.method public isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 116
    if-nez p1, :cond_0

    #@3
    .line 117
    return v3

    #@4
    .line 118
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    #@6
    if-eqz v4, :cond_2

    #@8
    move-object v1, p1

    #@9
    .line 119
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    #@b
    .line 120
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@e
    move-result-object v4

    #@f
    if-eqz v4, :cond_1

    #@11
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    #@18
    move-result v3

    #@19
    :cond_1
    return v3

    #@1a
    .line 121
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    instance-of v4, p1, Landroid/graphics/drawable/AnimationDrawable;

    #@1c
    if-eqz v4, :cond_4

    #@1e
    move-object v0, p1

    #@1f
    .line 122
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    #@21
    .line 123
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    #@24
    move-result v2

    #@25
    .line 124
    .local v2, "count":I
    if-lez v2, :cond_3

    #@27
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    #@2e
    move-result v3

    #@2f
    :cond_3
    return v3

    #@30
    .line 125
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "count":I
    :cond_4
    instance-of v4, p1, Landroid/graphics/drawable/VectorDrawable;

    #@32
    if-eqz v4, :cond_5

    #@34
    .line 127
    const/4 v3, 0x1

    #@35
    return v3

    #@36
    .line 129
    :cond_5
    return v3
.end method
