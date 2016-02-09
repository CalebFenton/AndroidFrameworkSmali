.class public final Landroid/emoji/EmojiFactory;
.super Ljava/lang/Object;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNativeEmojiFactory:J

.field private sCacheSize:I


# direct methods
.method static synthetic -get0(Landroid/emoji/EmojiFactory;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    #@2
    return v0
.end method

.method private constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "nativeEmojiFactory"    # J
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const/16 v0, 0x64

    #@5
    iput v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    #@7
    .line 72
    iput-wide p1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@9
    .line 73
    iput-object p3, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    #@b
    .line 74
    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    #@d
    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    #@10
    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    #@12
    .line 71
    return-void
.end method

.method private native nativeDestructor(J)V
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificPua(JI)I
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificSjis(JC)I
.end method

.method private native nativeGetBitmapFromAndroidPua(JI)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetMaximumAndroidPua(J)I
.end method

.method private native nativeGetMaximumVendorSpecificPua(J)I
.end method

.method private native nativeGetMinimumAndroidPua(J)I
.end method

.method private native nativeGetMinimumVendorSpecificPua(J)I
.end method

.method private native nativeGetVendorSpecificPuaFromAndroidPua(JI)I
.end method

.method private native nativeGetVendorSpecificSjisFromAndroidPua(JI)I
.end method

.method public static native newAvailableInstance()Landroid/emoji/EmojiFactory;
.end method

.method public static native newInstance(Ljava/lang/String;)Landroid/emoji/EmojiFactory;
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    :try_start_0
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/emoji/EmojiFactory;->nativeDestructor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 78
    return-void

    #@9
    .line 81
    :catchall_0
    move-exception v0

    #@a
    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 81
    throw v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(I)I
    .locals 2
    .param p1, "vsp"    # I

    #@0
    .prologue
    .line 178
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificPua(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "vspString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 182
    if-nez p1, :cond_0

    #@4
    .line 183
    return-object v8

    #@5
    .line 185
    :cond_0
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@7
    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMinimumVendorSpecificPua(J)I

    #@a
    move-result v5

    #@b
    .line 186
    .local v5, "minVsp":I
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@d
    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMaximumVendorSpecificPua(J)I

    #@10
    move-result v4

    #@11
    .line 187
    .local v4, "maxVsp":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@14
    move-result v3

    #@15
    .line 188
    .local v3, "len":I
    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->codePointCount(II)I

    #@18
    move-result v8

    #@19
    new-array v1, v8, [I

    #@1b
    .line 190
    .local v1, "codePoints":[I
    const/4 v7, 0x0

    #@1c
    .line 191
    .local v7, "new_len":I
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@1f
    .line 192
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    #@22
    move-result v0

    #@23
    .line 193
    .local v0, "codePoint":I
    if-gt v5, v0, :cond_1

    #@25
    if-gt v0, v4, :cond_1

    #@27
    .line 194
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    #@2a
    move-result v6

    #@2b
    .line 195
    .local v6, "newCodePoint":I
    if-lez v6, :cond_1

    #@2d
    .line 196
    aput v6, v1, v7

    #@2f
    .line 191
    .end local v6    # "newCodePoint":I
    :goto_1
    const/4 v8, 0x1

    #@30
    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    #@33
    move-result v2

    #@34
    add-int/lit8 v7, v7, 0x1

    #@36
    goto :goto_0

    #@37
    .line 200
    :cond_1
    aput v0, v1, v7

    #@39
    goto :goto_1

    #@3a
    .line 202
    .end local v0    # "codePoint":I
    :cond_2
    new-instance v8, Ljava/lang/String;

    #@3c
    invoke-direct {v8, v1, v10, v7}, Ljava/lang/String;-><init>([III)V

    #@3f
    return-object v8
.end method

.method public getAndroidPuaFromVendorSpecificSjis(C)I
    .locals 2
    .param p1, "sjis"    # C

    #@0
    .prologue
    .line 157
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificSjis(JC)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "pua"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 102
    :try_start_0
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v4

    #@7
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@d
    .line 103
    .local v0, "cache":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_1

    #@f
    .line 104
    iget-wide v4, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@11
    invoke-direct {p0, v4, v5, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(JI)Landroid/graphics/Bitmap;

    #@14
    move-result-object v1

    #@15
    .line 108
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    #@17
    .line 109
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    #@19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Ljava/lang/ref/WeakReference;

    #@1f
    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@22
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    monitor-exit p0

    #@26
    .line 111
    return-object v1

    #@27
    .line 113
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid/graphics/Bitmap;

    #@2d
    .line 114
    .local v2, "tmp":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    #@2f
    .line 115
    iget-wide v4, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@31
    invoke-direct {p0, v4, v5, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(JI)Landroid/graphics/Bitmap;

    #@34
    move-result-object v1

    #@35
    .line 116
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    #@37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v4

    #@3b
    new-instance v5, Ljava/lang/ref/WeakReference;

    #@3d
    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@40
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 117
    return-object v1

    #@45
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    :cond_2
    monitor-exit p0

    #@46
    .line 119
    return-object v2

    #@47
    .end local v0    # "cache":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v2    # "tmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    #@48
    monitor-exit p0

    #@49
    throw v3
.end method

.method public declared-synchronized getBitmapFromVendorSpecificPua(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "vsp"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificSjis(C)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "sjis"    # C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 134
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificSjis(C)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public getMaximumAndroidPua()I
    .locals 2

    #@0
    .prologue
    .line 270
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMinimumAndroidPua()I
    .locals 2

    #@0
    .prologue
    .line 262
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@2
    invoke-direct {p0, v0, v1}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(I)I
    .locals 2
    .param p1, "pua"    # I

    #@0
    .prologue
    .line 212
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificPuaFromAndroidPua(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "puaString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 216
    if-nez p1, :cond_0

    #@4
    .line 217
    return-object v8

    #@5
    .line 219
    :cond_0
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@7
    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(J)I

    #@a
    move-result v5

    #@b
    .line 220
    .local v5, "minVsp":I
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@d
    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(J)I

    #@10
    move-result v4

    #@11
    .line 221
    .local v4, "maxVsp":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@14
    move-result v3

    #@15
    .line 222
    .local v3, "len":I
    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->codePointCount(II)I

    #@18
    move-result v8

    #@19
    new-array v1, v8, [I

    #@1b
    .line 224
    .local v1, "codePoints":[I
    const/4 v7, 0x0

    #@1c
    .line 225
    .local v7, "new_len":I
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@1f
    .line 226
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    #@22
    move-result v0

    #@23
    .line 227
    .local v0, "codePoint":I
    if-gt v5, v0, :cond_1

    #@25
    if-gt v0, v4, :cond_1

    #@27
    .line 228
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getVendorSpecificPuaFromAndroidPua(I)I

    #@2a
    move-result v6

    #@2b
    .line 229
    .local v6, "newCodePoint":I
    if-lez v6, :cond_1

    #@2d
    .line 230
    aput v6, v1, v7

    #@2f
    .line 225
    .end local v6    # "newCodePoint":I
    :goto_1
    const/4 v8, 0x1

    #@30
    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    #@33
    move-result v2

    #@34
    add-int/lit8 v7, v7, 0x1

    #@36
    goto :goto_0

    #@37
    .line 234
    :cond_1
    aput v0, v1, v7

    #@39
    goto :goto_1

    #@3a
    .line 236
    .end local v0    # "codePoint":I
    :cond_2
    new-instance v8, Ljava/lang/String;

    #@3c
    invoke-direct {v8, v1, v10, v7}, Ljava/lang/String;-><init>([III)V

    #@3f
    return-object v8
.end method

.method public getVendorSpecificSjisFromAndroidPua(I)I
    .locals 2
    .param p1, "pua"    # I

    #@0
    .prologue
    .line 167
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    #@2
    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificSjisFromAndroidPua(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method
