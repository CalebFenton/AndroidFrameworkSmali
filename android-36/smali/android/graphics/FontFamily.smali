.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontFamily$NoImagePreloadHolder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mBuilderPtr:J

.field private greylist-max-o mNativeBuilderCleaner:Ljava/lang/Runnable;

.field public greylist-max-q mNativePtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetBuilderReleaseFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/FontFamily;->nGetBuilderReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFamilyReleaseFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/FontFamily;->nGetFamilyReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-string v0, "FontFamily"

    sput-object v0, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-q <init>()V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 80
    invoke-static {}, Landroid/graphics/FontFamily$NoImagePreloadHolder;->-$$Nest$sfgetsBuilderRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v1, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    .line 82
    return-void
.end method

.method public constructor greylist-max-q <init>([Ljava/lang/String;I)V
    .registers 7
    .param p1, "langs"    # [Ljava/lang/String;
    .param p2, "variant"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-eqz p1, :cond_18

    array-length v0, p1

    if-nez v0, :cond_9

    goto :goto_18

    .line 93
    :cond_9
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 94
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "langsString":Ljava/lang/String;
    goto :goto_19

    .line 96
    .end local v0    # "langsString":Ljava/lang/String;
    :cond_11
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "langsString":Ljava/lang/String;
    goto :goto_19

    .line 92
    .end local v0    # "langsString":Ljava/lang/String;
    :cond_18
    :goto_18
    const/4 v0, 0x0

    .line 98
    .restart local v0    # "langsString":Ljava/lang/String;
    :goto_19
    invoke-static {v0, p2}, Landroid/graphics/FontFamily;->nInitBuilder(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 99
    invoke-static {}, Landroid/graphics/FontFamily$NoImagePreloadHolder;->-$$Nest$sfgetsBuilderRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v1

    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v1, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    .line 101
    return-void
.end method

.method private static native greylist-max-o nAddAxisValue(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nAddFont(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native greylist-max-o nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z
.end method

.method private static native greylist-max-o nCreateFamily(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetBuilderReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFamilyReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nInitBuilder(Ljava/lang/String;I)J
.end method


# virtual methods
.method public greylist-max-q abortCreation()V
    .registers 5

    .line 132
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 135
    iget-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 136
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 137
    return-void

    .line 133
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FontFamily is already frozen or abandoned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-q addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .registers 24
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I

    .line 146
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-wide v3, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_60

    .line 149
    const/4 v3, 0x0

    :try_start_d
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_f} :catch_5c

    move-object/from16 v4, p1

    :try_start_11
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_5a

    move-object v5, v0

    .line 150
    .local v5, "file":Ljava/io/FileInputStream;
    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v6, v0

    .line 151
    .local v6, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    .line 152
    .local v10, "fontSize":J
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    move-object v14, v0

    .line 153
    .local v14, "fontBuffer":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_3f

    .line 154
    array-length v0, v2

    move v7, v3

    :goto_2b
    if-ge v7, v0, :cond_3f

    aget-object v8, v2, v7

    .line 155
    .local v8, "axis":Landroid/graphics/fonts/FontVariationAxis;
    iget-wide v12, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v15

    invoke-static {v12, v13, v9, v15}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 154
    .end local v8    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 158
    :cond_3f
    iget-wide v12, v1, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move/from16 v15, p2

    move/from16 v16, p4

    move/from16 v17, p5

    invoke-static/range {v12 .. v17}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;III)Z

    move-result v0
    :try_end_4b
    .catchall {:try_start_15 .. :try_end_4b} :catchall_4f

    .line 159
    :try_start_4b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_5a

    .line 158
    return v0

    .line 149
    .end local v6    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v10    # "fontSize":J
    .end local v14    # "fontBuffer":Ljava/nio/ByteBuffer;
    :catchall_4f
    move-exception v0

    move-object v6, v0

    :try_start_51
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v0

    :try_start_56
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/graphics/FontFamily;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "ttcIndex":I
    .end local p3    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local p4    # "weight":I
    .end local p5    # "italic":I
    :goto_59
    throw v6
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5a} :catch_5a

    .line 159
    .end local v5    # "file":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/graphics/FontFamily;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "ttcIndex":I
    .restart local p3    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .restart local p4    # "weight":I
    .restart local p5    # "italic":I
    :catch_5a
    move-exception v0

    goto :goto_5f

    :catch_5c
    move-exception v0

    move-object/from16 v4, p1

    .line 160
    .local v0, "e":Ljava/io/IOException;
    :goto_5f
    return v3

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    :cond_60
    move-object/from16 v4, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to call addFont after freezing."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-q addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z
    .registers 16
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "isAsset"    # Z
    .param p5, "ttcIndex"    # I
    .param p6, "weight"    # I
    .param p7, "isItalic"    # I
    .param p8, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 201
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 206
    :try_start_8
    invoke-static {p1, p2, p4, p3}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_1a

    move-object v2, v0

    .line 207
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    move-object v1, p0

    move v3, p5

    move v5, p6

    move v6, p7

    move-object v4, p8

    .end local p5    # "ttcIndex":I
    .end local p6    # "weight":I
    .end local p7    # "isItalic":I
    .end local p8    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .local v3, "ttcIndex":I
    .local v4, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .local v5, "weight":I
    .local v6, "isItalic":I
    :try_start_12
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result p5
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_17

    return p5

    .line 208
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :catch_17
    move-exception v0

    move-object p5, v0

    goto :goto_20

    .end local v3    # "ttcIndex":I
    .end local v4    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v5    # "weight":I
    .end local v6    # "isItalic":I
    .restart local p5    # "ttcIndex":I
    .restart local p6    # "weight":I
    .restart local p7    # "isItalic":I
    .restart local p8    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    :catch_1a
    move-exception v0

    move v3, p5

    move v5, p6

    move v6, p7

    move-object v4, p8

    move-object p5, v0

    .line 209
    .end local p6    # "weight":I
    .end local p7    # "isItalic":I
    .end local p8    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .restart local v3    # "ttcIndex":I
    .restart local v4    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .restart local v5    # "weight":I
    .restart local v6    # "isItalic":I
    .local p5, "e":Ljava/io/IOException;
    :goto_20
    const/4 p6, 0x0

    return p6

    .line 202
    .end local v3    # "ttcIndex":I
    .end local v4    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v5    # "weight":I
    .end local v6    # "isItalic":I
    .local p5, "ttcIndex":I
    .restart local p6    # "weight":I
    .restart local p7    # "isItalic":I
    .restart local p8    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    :cond_22
    move v3, p5

    move v5, p6

    .end local p5    # "ttcIndex":I
    .end local p6    # "weight":I
    .restart local v3    # "ttcIndex":I
    .restart local v5    # "weight":I
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string p6, "Unable to call addFontFromAsset after freezing."

    invoke-direct {p5, p6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p5
.end method

.method public greylist-max-q addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z
    .registers 14
    .param p1, "font"    # Ljava/nio/ByteBuffer;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I

    .line 171
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    .line 174
    if-eqz p3, :cond_20

    .line 175
    array-length v0, p3

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_20

    aget-object v2, p3, v1

    .line 176
    .local v2, "axis":Landroid/graphics/fonts/FontVariationAxis;
    iget-wide v3, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/FontFamily;->nAddAxisValue(JIF)V

    .line 175
    .end local v2    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 179
    :cond_20
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    move-object v4, p1

    move v5, p2

    move v6, p4

    move v7, p5

    .end local p1    # "font":Ljava/nio/ByteBuffer;
    .end local p2    # "ttcIndex":I
    .end local p4    # "weight":I
    .end local p5    # "italic":I
    .local v4, "font":Ljava/nio/ByteBuffer;
    .local v5, "ttcIndex":I
    .local v6, "weight":I
    .local v7, "italic":I
    invoke-static/range {v2 .. v7}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/nio/ByteBuffer;III)Z

    move-result p1

    return p1

    .line 172
    .end local v4    # "font":Ljava/nio/ByteBuffer;
    .end local v5    # "ttcIndex":I
    .end local v6    # "weight":I
    .end local v7    # "italic":I
    .restart local p1    # "font":Ljava/nio/ByteBuffer;
    .restart local p2    # "ttcIndex":I
    .restart local p4    # "weight":I
    .restart local p5    # "italic":I
    :cond_2b
    move-object v4, p1

    move v5, p2

    .end local p1    # "font":Ljava/nio/ByteBuffer;
    .end local p2    # "ttcIndex":I
    .restart local v4    # "font":Ljava/nio/ByteBuffer;
    .restart local v5    # "ttcIndex":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to call addFontWeightStyle after freezing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-q freeze()Z
    .registers 7

    .line 114
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    .line 117
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 118
    iget-object v0, p0, Landroid/graphics/FontFamily;->mNativeBuilderCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 119
    iput-wide v2, p0, Landroid/graphics/FontFamily;->mBuilderPtr:J

    .line 120
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 121
    invoke-static {}, Landroid/graphics/FontFamily$NoImagePreloadHolder;->-$$Nest$sfgetsFamilyRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v4, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-virtual {v0, p0, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 123
    :cond_26
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    .line 115
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FontFamily is already frozen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
