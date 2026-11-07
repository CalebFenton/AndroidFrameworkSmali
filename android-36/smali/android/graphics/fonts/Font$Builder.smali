.class public final Landroid/graphics/fonts/Font$Builder;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mException:Ljava/io/IOException;

.field private blacklist mFile:Ljava/io/File;

.field private blacklist mFont:Landroid/graphics/fonts/Font;

.field private blacklist mItalic:I

.field private blacklist mLocaleList:Ljava/lang/String;

.field private blacklist mTtcIndex:I

.field private blacklist mWeight:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 186
    const/4 v1, 0x1

    :try_start_13
    invoke-static {p1, p2, v1, v0}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1a

    .line 189
    goto :goto_1d

    .line 187
    :catch_1a
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1d
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isAsset"    # Z
    .param p4, "cookie"    # I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 204
    :try_start_12
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_19

    .line 207
    goto :goto_1c

    .line 205
    :catch_19
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1c
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Resources;I)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 219
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 220
    .local v1, "value":Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 221
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_3a

    .line 222
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 223
    return-void

    .line 225
    :cond_3a
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 227
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be font file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 228
    return-void

    .line 232
    :cond_67
    :try_start_67
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v3, v2, v0, v4}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_73} :catch_74

    .line 235
    goto :goto_77

    .line 233
    :catch_74
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    :goto_77
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/fonts/Font;)V
    .registers 3
    .param p1, "font"    # Landroid/graphics/fonts/Font;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 244
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    .line 246
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    .line 247
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 248
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 249
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 250
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 251
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 252
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 157
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-direct/range {v0 .. v5}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 158
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;JJ)V
    .registers 14
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 169
    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_5d

    move-object v1, v0

    .line 170
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_4d

    move-object v2, v0

    .line 171
    .local v2, "fc":Ljava/nio/channels/FileChannel;
    const-wide/16 v3, -0x1

    cmp-long v0, p4, v3

    if-nez v0, :cond_32

    :try_start_27
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2e

    sub-long/2addr v3, p2

    move-wide v6, v3

    goto :goto_33

    .line 169
    .end local v2    # "fc":Ljava/nio/channels/FileChannel;
    :catchall_2e
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    goto :goto_50

    .line 171
    .restart local v2    # "fc":Ljava/nio/channels/FileChannel;
    :cond_32
    move-wide v6, p4

    .line 172
    .end local p4    # "size":J
    .local v6, "size":J
    :goto_33
    :try_start_33
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_48

    move-wide v4, p2

    .end local p2    # "offset":J
    .local v4, "offset":J
    :try_start_36
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_44

    .line 173
    .end local v2    # "fc":Ljava/nio/channels/FileChannel;
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 175
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_63

    .line 173
    :catch_40
    move-exception v0

    move-object p2, v0

    move-wide p4, v6

    goto :goto_60

    .line 169
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_44
    move-exception v0

    move-object p2, v0

    move-wide p4, v6

    goto :goto_50

    .end local v4    # "offset":J
    .restart local p2    # "offset":J
    :catchall_48
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    move-wide p4, v6

    .end local p2    # "offset":J
    .restart local v4    # "offset":J
    goto :goto_50

    .end local v4    # "offset":J
    .end local v6    # "size":J
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    :catchall_4d
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    .end local p2    # "offset":J
    .restart local v4    # "offset":J
    :goto_50
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_59

    :catchall_54
    move-exception v0

    move-object p3, v0

    :try_start_56
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "offset":J
    .end local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "size":J
    :goto_59
    throw p2
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5a} :catch_5a

    .line 173
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "offset":J
    .restart local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p4    # "size":J
    :catch_5a
    move-exception v0

    move-object p2, v0

    goto :goto_60

    .end local v4    # "offset":J
    .restart local p2    # "offset":J
    :catch_5d
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    .line 174
    .restart local v4    # "offset":J
    .local p2, "e":Ljava/io/IOException;
    :goto_60
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    move-wide v6, p4

    .line 176
    .end local p2    # "e":Ljava/io/IOException;
    .end local p4    # "size":J
    .restart local v6    # "size":J
    :goto_63
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .registers 10
    .param p1, "path"    # Ljava/io/File;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 141
    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :try_start_18
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_40

    move-object v1, v0

    .line 143
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v2, v0

    .line 144
    .local v2, "fc":Ljava/nio/channels/FileChannel;
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_35

    .line 145
    .end local v2    # "fc":Ljava/nio/channels/FileChannel;
    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_40

    .line 147
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_43

    .line 142
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_35
    move-exception v0

    move-object v2, v0

    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .end local p1    # "path":Ljava/io/File;
    :goto_3f
    throw v2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_40

    .line 145
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .restart local p1    # "path":Ljava/io/File;
    :catch_40
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :goto_43
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 149
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/io/File;
    .param p2, "localeList"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    .line 132
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 87
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 101
    const-string v0, "buffer can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 106
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    .line 107
    return-void

    .line 103
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only direct buffer can be used as the source of font data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "localeList"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 118
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 119
    iput-object p3, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static blacklist createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;
    .registers 13
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isAsset"    # Z
    .param p3, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    const-string v0, "assetManager can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    if-eqz p2, :cond_15

    .line 275
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v1, v0

    .local v0, "assetFD":Landroid/content/res/AssetFileDescriptor;
    goto :goto_22

    .line 288
    .end local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    :catch_13
    move-exception v0

    goto :goto_4d

    .line 276
    :cond_15
    if-lez p3, :cond_1d

    .line 277
    invoke-virtual {p0, p3, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v1, v0

    .restart local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    goto :goto_22

    .line 279
    .end local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v1, v0

    .line 282
    .local v1, "assetFD":Landroid/content/res/AssetFileDescriptor;
    :goto_22
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_26} :catch_13

    move-object v2, v0

    .line 283
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v3, v0

    .line 284
    .local v3, "fc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    .line 285
    .local v5, "startOffset":J
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v7

    .line 286
    .local v7, "declaredLength":J
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_40

    .line 287
    if-eqz v2, :cond_3f

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_13

    .line 286
    :cond_3f
    return-object v0

    .line 282
    .end local v3    # "fc":Ljava/nio/channels/FileChannel;
    .end local v5    # "startOffset":J
    .end local v7    # "declaredLength":J
    :catchall_40
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_4c

    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception v0

    :try_start_49
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "am":Landroid/content/res/AssetManager;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "isAsset":Z
    .end local p3    # "cookie":I
    :cond_4c
    :goto_4c
    throw v3
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_13

    .line 292
    .end local v1    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "am":Landroid/content/res/AssetManager;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "isAsset":Z
    .restart local p3    # "cookie":I
    :goto_4d
    const/4 v0, 0x3

    if-eqz p2, :cond_55

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_59

    .line 293
    :cond_55
    invoke-virtual {p0, p3, p1, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    :goto_59
    move-object v1, v0

    .line 295
    .local v1, "assetStream":Ljava/io/InputStream;
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 296
    .local v0, "capacity":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 297
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 298
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 299
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    goto :goto_8a

    .line 303
    :cond_7f
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    .line 304
    .local v3, "ch":Ljava/nio/channels/ReadableByteChannel;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 307
    .end local v3    # "ch":Ljava/nio/channels/ReadableByteChannel;
    :goto_8a
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_8e
    .catchall {:try_start_5a .. :try_end_8e} :catchall_b1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_98

    .line 311
    nop

    .line 312
    if-eqz v1, :cond_97

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 311
    :cond_97
    return-object v2

    .line 308
    :cond_98
    :try_start_98
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to access full contents of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "assetStream":Ljava/io/InputStream;
    .end local p0    # "am":Landroid/content/res/AssetManager;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "isAsset":Z
    .end local p3    # "cookie":I
    throw v3
    :try_end_b1
    .catchall {:try_start_98 .. :try_end_b1} :catchall_b1

    .line 292
    .end local v0    # "capacity":I
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "assetStream":Ljava/io/InputStream;
    .restart local p0    # "am":Landroid/content/res/AssetManager;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "isAsset":Z
    .restart local p3    # "cookie":I
    :catchall_b1
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_bd

    :try_start_b5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b9

    goto :goto_bd

    :catchall_b9
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_bd
    :goto_bd
    throw v2
.end method

.method private static native blacklist nAddAxis(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IZI)J
.end method

.method private static native blacklist nClone(JJIZI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nInitBuilder()J
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/fonts/Font;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    if-nez v0, :cond_b9

    .line 461
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v0, v2, :cond_39

    .line 462
    :cond_e
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    iget-object v4, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v0, v3, v4}, Landroid/graphics/fonts/FontFileUtil;->analyzeStyle(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;)I

    move-result v0

    .line 463
    .local v0, "packed":I
    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 464
    iget v3, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    if-ne v3, v2, :cond_28

    .line 465
    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->unpackWeight(I)I

    move-result v3

    iput v3, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 467
    :cond_28
    iget v3, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v3, v2, :cond_39

    .line 468
    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->unpackItalic(I)Z

    move-result v2

    iput v2, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    goto :goto_39

    .line 471
    :cond_33
    const/16 v2, 0x190

    iput v2, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 472
    iput v1, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 475
    .end local v0    # "packed":I
    :cond_39
    :goto_39
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 476
    const/16 v2, 0x3e8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 475
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 477
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v0, v2, :cond_4e

    move v0, v2

    goto :goto_4f

    :cond_4e
    move v0, v1

    :goto_4f
    move v8, v0

    .line 478
    .local v8, "italic":Z
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v0, v2, :cond_55

    .line 479
    goto :goto_56

    :cond_55
    move v2, v1

    .line 480
    .local v2, "slant":I
    :goto_56
    invoke-static {}, Landroid/graphics/fonts/Font$Builder;->nInitBuilder()J

    move-result-wide v3

    .line 481
    .local v3, "builderPtr":J
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v0, :cond_73

    .line 482
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    array-length v5, v0

    :goto_61
    if-ge v1, v5, :cond_73

    aget-object v6, v0, v1

    .line 483
    .local v6, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v9

    invoke-static {v3, v4, v7, v9}, Landroid/graphics/fonts/Font$Builder;->nAddAxis(JIF)V

    .line 482
    .end local v6    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 486
    :cond_73
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 487
    .local v5, "readonlyBuffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    if-nez v0, :cond_80

    const-string v0, ""

    goto :goto_86

    :cond_80
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_86
    move-object v6, v0

    .line 491
    .local v6, "filePath":Ljava/lang/String;
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    if-nez v0, :cond_9e

    .line 492
    iget-object v7, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    move v9, v8

    .end local v8    # "italic":Z
    .local v9, "italic":Z
    iget v8, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iget v10, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    invoke-static/range {v3 .. v10}, Landroid/graphics/fonts/Font$Builder;->nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IZI)J

    move-result-wide v0

    .line 494
    move-object v10, v5

    move-object v11, v6

    .end local v5    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "filePath":Ljava/lang/String;
    .local v0, "ptr":J
    .local v10, "readonlyBuffer":Ljava/nio/ByteBuffer;
    .local v11, "filePath":Ljava/lang/String;
    new-instance v5, Landroid/graphics/fonts/Font;

    invoke-direct {v5, v0, v1}, Landroid/graphics/fonts/Font;-><init>(J)V

    .local v5, "font":Landroid/graphics/fonts/Font;
    goto :goto_b8

    .line 496
    .end local v0    # "ptr":J
    .end local v9    # "italic":Z
    .end local v10    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "filePath":Ljava/lang/String;
    .local v5, "readonlyBuffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v8    # "italic":Z
    :cond_9e
    move-object v10, v5

    move-object v11, v6

    move v9, v8

    .end local v5    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v8    # "italic":Z
    .restart local v9    # "italic":Z
    .restart local v10    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .restart local v11    # "filePath":Ljava/lang/String;
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v0

    iget v7, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .end local v9    # "italic":Z
    .restart local v8    # "italic":Z
    iget v9, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    move-wide v5, v3

    move-wide v3, v0

    .end local v3    # "builderPtr":J
    .local v5, "builderPtr":J
    invoke-static/range {v3 .. v9}, Landroid/graphics/fonts/Font$Builder;->nClone(JJIZI)J

    move-result-wide v0

    .line 497
    move-wide v3, v5

    move v9, v8

    .end local v5    # "builderPtr":J
    .end local v8    # "italic":Z
    .restart local v0    # "ptr":J
    .restart local v3    # "builderPtr":J
    .restart local v9    # "italic":Z
    new-instance v5, Landroid/graphics/fonts/Font;

    invoke-direct {v5, v0, v1}, Landroid/graphics/fonts/Font;-><init>(J)V

    .line 499
    .local v5, "font":Landroid/graphics/fonts/Font;
    :goto_b8
    return-object v5

    .line 459
    .end local v0    # "ptr":J
    .end local v2    # "slant":I
    .end local v3    # "builderPtr":J
    .end local v5    # "font":Landroid/graphics/fonts/Font;
    .end local v9    # "italic":Z
    .end local v10    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "filePath":Ljava/lang/String;
    :cond_b9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read font contents"

    iget-object v2, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;
    .registers 3
    .param p1, "variationSettings"    # Ljava/lang/String;

    .line 438
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 439
    return-object p0
.end method

.method public whitelist setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;
    .registers 3
    .param p1, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 449
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p1}, [Landroid/graphics/fonts/FontVariationAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/fonts/FontVariationAxis;

    :goto_a
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 450
    return-object p0
.end method

.method public whitelist setSlant(I)Landroid/graphics/fonts/Font$Builder;
    .registers 3
    .param p1, "slant"    # I

    .line 413
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 414
    return-object p0
.end method

.method public whitelist setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;
    .registers 2
    .param p1, "ttcIndex"    # I

    .line 425
    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 426
    return-object p0
.end method

.method public whitelist setWeight(I)Landroid/graphics/fonts/Font$Builder;
    .registers 4
    .param p1, "weight"    # I

    .line 395
    const/4 v0, 0x1

    if-gt v0, p1, :cond_8

    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 397
    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 398
    return-object p0
.end method
