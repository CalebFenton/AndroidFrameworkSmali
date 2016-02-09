.class public Landroid/hardware/camera2/utils/SurfaceUtils;
.super Ljava/lang/Object;
.source "SurfaceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 11
    .param p2, "config"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v9, 0x2

    #@1
    .line 147
    if-eqz p0, :cond_0

    #@3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@6
    move-result v8

    #@7
    if-nez v8, :cond_1

    #@9
    .line 148
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v9, "Output target surface list must not be null and the size must be 1 or 2"

    #@e
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v8

    #@12
    .line 147
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@15
    move-result v8

    #@16
    if-gt v8, v9, :cond_0

    #@18
    .line 152
    const/4 v1, 0x0

    #@19
    .line 153
    .local v1, "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez p1, :cond_3

    #@1b
    .line 154
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    #@1e
    move-result-object v8

    #@1f
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@22
    move-result-object v1

    #@23
    .line 166
    .local v1, "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v6

    #@27
    .local v6, "surface$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v8

    #@2b
    if-eqz v8, :cond_8

    #@2d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Landroid/view/Surface;

    #@33
    .line 167
    .local v5, "surface":Landroid/view/Surface;
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V

    #@36
    .line 170
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    #@39
    move-result-object v7

    #@3a
    .line 171
    .local v7, "surfaceSize":Landroid/util/Size;
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@3d
    move-result v8

    #@3e
    if-nez v8, :cond_5

    #@40
    .line 172
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@42
    new-instance v9, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v10, "Surface size "

    #@4a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v9

    #@4e
    invoke-virtual {v7}, Landroid/util/Size;->toString()Ljava/lang/String;

    #@51
    move-result-object v10

    #@52
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v9

    #@56
    const-string/jumbo v10, " is"

    #@59
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    .line 173
    const-string/jumbo v10, " not part of the high speed supported size list "

    #@60
    .line 172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    .line 174
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    #@67
    move-result-object v10

    #@68
    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@6b
    move-result-object v10

    #@6c
    .line 172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v9

    #@74
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@77
    throw v8

    #@78
    .line 157
    .end local v5    # "surface":Landroid/view/Surface;
    .end local v6    # "surface$iterator":Ljava/util/Iterator;
    .end local v7    # "surfaceSize":Landroid/util/Size;
    .local v1, "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_3
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    #@7b
    move-result-object v0

    #@7c
    .line 158
    .local v0, "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@7f
    move-result-object v8

    #@80
    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@83
    move-result v8

    #@84
    if-nez v8, :cond_4

    #@86
    .line 159
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@88
    new-instance v9, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v10, "Fps range "

    #@90
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v9

    #@94
    invoke-virtual {p1}, Landroid/util/Range;->toString()Ljava/lang/String;

    #@97
    move-result-object v10

    #@98
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    const-string/jumbo v10, " in the"

    #@9f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v9

    #@a3
    .line 160
    const-string/jumbo v10, " request is not a supported high speed fps range "

    #@a6
    .line 159
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v9

    #@aa
    .line 161
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@ad
    move-result-object v10

    #@ae
    .line 159
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v9

    #@b2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v9

    #@b6
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v8

    #@ba
    .line 163
    :cond_4
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    #@bd
    move-result-object v8

    #@be
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@c1
    move-result-object v1

    #@c2
    .local v1, "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    goto/16 :goto_0

    #@c4
    .line 177
    .end local v0    # "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v5    # "surface":Landroid/view/Surface;
    .restart local v6    # "surface$iterator":Ljava/util/Iterator;
    .restart local v7    # "surfaceSize":Landroid/util/Size;
    :cond_5
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    #@c7
    move-result v8

    #@c8
    if-nez v8, :cond_6

    #@ca
    .line 178
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    #@cd
    move-result v8

    #@ce
    if-eqz v8, :cond_7

    #@d0
    .line 182
    :cond_6
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    #@d3
    move-result v8

    #@d4
    if-eqz v8, :cond_2

    #@d6
    .line 183
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    #@d9
    move-result v8

    #@da
    .line 182
    if-eqz v8, :cond_2

    #@dc
    .line 184
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@de
    const-string/jumbo v9, "This output surface can not be both preview and hardware video encoding surface"

    #@e1
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e4
    throw v8

    #@e5
    .line 179
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@e7
    const-string/jumbo v9, "This output surface is neither preview nor hardware video encoding surface"

    #@ea
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v8

    #@ee
    .line 190
    .end local v5    # "surface":Landroid/view/Surface;
    .end local v7    # "surfaceSize":Landroid/util/Size;
    :cond_8
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@f1
    move-result v8

    #@f2
    if-ne v8, v9, :cond_9

    #@f4
    .line 192
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@f7
    move-result-object v4

    #@f8
    .line 194
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@fb
    move-result-object v8

    #@fc
    check-cast v8, Landroid/view/Surface;

    #@fe
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    #@101
    move-result v2

    #@102
    .line 196
    .local v2, "isFirstSurfacePreview":Z
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@105
    move-result-object v8

    #@106
    check-cast v8, Landroid/view/Surface;

    #@108
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    #@10b
    move-result v3

    #@10c
    .line 197
    .local v3, "isSecondSurfacePreview":Z
    if-ne v2, v3, :cond_9

    #@10e
    .line 198
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@110
    const-string/jumbo v9, "The 2 output surfaces must have different type"

    #@113
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@116
    throw v8

    #@117
    .line 146
    .end local v2    # "isFirstSurfacePreview":Z
    .end local v3    # "isSecondSurfacePreview":Z
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    :cond_9
    return-void
.end method

.method private static checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V
    .locals 6
    .param p0, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 123
    const/4 v1, 0x1

    #@1
    .line 124
    .local v1, "HAL_FORMAT_RGB_START":I
    const/4 v0, 0x5

    #@2
    .line 125
    .local v0, "HAL_FORMAT_RGB_END":I
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    #@5
    move-result v2

    #@6
    .line 126
    .local v2, "surfaceFormat":I
    const/4 v3, 0x1

    #@7
    if-lt v2, v3, :cond_0

    #@9
    .line 127
    const/4 v3, 0x5

    #@a
    if-gt v2, v3, :cond_0

    #@c
    .line 128
    const/16 v2, 0x22

    #@e
    .line 131
    :cond_0
    const/16 v3, 0x22

    #@10
    if-eq v2, v3, :cond_1

    #@12
    .line 132
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Surface format("

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, ") is not"

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    .line 133
    const-string/jumbo v5, " for preview or hardware video encoding!"

    #@2e
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 120
    :cond_1
    return-void
.end method

.method public static getSurfaceDataspace(Landroid/view/Surface;)I
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 100
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceDataspace(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 101
    :catch_0
    move-exception v0

    #@6
    .line 102
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Surface was abandoned"

    #@b
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    throw v1
.end method

.method public static getSurfaceFormat(Landroid/view/Surface;)I
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 84
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->detectSurfaceType(Landroid/view/Surface;)I
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 85
    :catch_0
    move-exception v0

    #@6
    .line 86
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Surface was abandoned"

    #@b
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    throw v1
.end method

.method public static getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 68
    :try_start_0
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 69
    :catch_0
    move-exception v0

    #@6
    .line 70
    .local v0, "e":Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Surface was abandoned"

    #@b
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    throw v1
.end method

.method public static isFlexibleConsumer(Landroid/view/Surface;)Z
    .locals 1
    .param p0, "output"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 112
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isFlexibleConsumer(Landroid/view/Surface;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 55
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isVideoEncoderConsumer(Landroid/view/Surface;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isSurfaceForPreview(Landroid/view/Surface;)Z
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 44
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isPreviewConsumer(Landroid/view/Surface;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
