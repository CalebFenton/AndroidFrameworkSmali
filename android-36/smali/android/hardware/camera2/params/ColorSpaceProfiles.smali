.class public final Landroid/hardware/camera2/params/ColorSpaceProfiles;
.super Ljava/lang/Object;
.source "ColorSpaceProfiles.java"


# static fields
.field public static final whitelist UNSPECIFIED:I = -0x1


# instance fields
.field private final blacklist mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/ColorSpace$Named;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>([J)V
    .registers 14
    .param p1, "elements"    # [J

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    .line 78
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_95

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_94

    .line 84
    aget-wide v1, p1, v0

    long-to-int v1, v1

    .line 85
    .local v1, "colorSpace":I
    invoke-static {v1}, Landroid/hardware/camera2/params/ColorSpaceProfiles;->checkProfileValue(I)V

    .line 86
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    aget-object v2, v2, v1

    .line 87
    .local v2, "namedColorSpace":Landroid/graphics/ColorSpace$Named;
    add-int/lit8 v3, v0, 0x1

    aget-wide v3, p1, v3

    long-to-int v3, v3

    .line 88
    .local v3, "imageFormat":I
    add-int/lit8 v4, v0, 0x2

    aget-wide v4, p1, v4

    .line 90
    .local v4, "dynamicRangeProfileBitmap":J
    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 91
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 92
    .local v6, "imageFormatMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Long;>;>;"
    iget-object v7, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v6    # "imageFormatMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Long;>;>;"
    :cond_3a
    iget-object v6, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 96
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 97
    .local v6, "dynamicRangeProfiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v7, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v6    # "dynamicRangeProfiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_60
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_90

    .line 101
    const-wide/16 v8, 0x1

    .line 102
    .local v8, "dynamicRangeProfile":J
    :goto_68
    const-wide/16 v10, 0x1000

    cmp-long v10, v8, v10

    if-gez v10, :cond_90

    .line 104
    and-long v10, v4, v8

    cmp-long v10, v10, v6

    if-eqz v10, :cond_8d

    .line 105
    iget-object v10, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_8d
    const/4 v10, 0x1

    shl-long/2addr v8, v10

    goto :goto_68

    .line 83
    .end local v1    # "colorSpace":I
    .end local v2    # "namedColorSpace":Landroid/graphics/ColorSpace$Named;
    .end local v3    # "imageFormat":I
    .end local v4    # "dynamicRangeProfileBitmap":J
    .end local v8    # "dynamicRangeProfile":J
    :cond_90
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_10

    .line 110
    .end local v0    # "i":I
    :cond_94
    return-void

    .line 79
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color space profile map length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not divisible by 3!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkProfileValue(I)V
    .registers 7
    .param p0, "colorSpace"    # I

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "found":Z
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 118
    .local v4, "value":Landroid/graphics/ColorSpace$Named;
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v5

    if-ne p0, v5, :cond_13

    .line 119
    const/4 v0, 0x1

    .line 120
    goto :goto_16

    .line 117
    .end local v4    # "value":Landroid/graphics/ColorSpace$Named;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 124
    :cond_16
    :goto_16
    if-eqz v0, :cond_19

    .line 127
    return-void

    .line 125
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ColorSpace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getProfileMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/graphics/ColorSpace$Named;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getSupportedColorSpaces(I)Ljava/util/Set;
    .registers 7
    .param p1, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/graphics/ColorSpace$Named;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 152
    .local v0, "supportedColorSpaceProfiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/ColorSpace$Named;>;"
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorSpace$Named;

    .line 153
    .local v2, "colorSpace":Landroid/graphics/ColorSpace$Named;
    if-nez p1, :cond_21

    .line 154
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 156
    :cond_21
    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 157
    .local v3, "imageFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Long;>;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 158
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v2    # "colorSpace":Landroid/graphics/ColorSpace$Named;
    .end local v3    # "imageFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Long;>;>;"
    :cond_36
    :goto_36
    goto :goto_f

    .line 162
    :cond_37
    return-object v0
.end method

.method public whitelist getSupportedColorSpacesForDynamicRange(IJ)Ljava/util/Set;
    .registers 12
    .param p1, "imageFormat"    # I
    .param p2, "dynamicRangeProfile"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/Set<",
            "Landroid/graphics/ColorSpace$Named;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 239
    .local v0, "supportedColorSpaceProfiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/graphics/ColorSpace$Named;>;"
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorSpace$Named;

    .line 240
    .local v2, "colorSpace":Landroid/graphics/ColorSpace$Named;
    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 241
    .local v3, "imageFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Long;>;>;"
    if-nez p1, :cond_56

    .line 242
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 243
    .local v5, "supportedImageFormat":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 244
    .local v6, "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 245
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v5    # "supportedImageFormat":I
    .end local v6    # "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_54
    goto :goto_2d

    :cond_55
    goto :goto_77

    .line 248
    :cond_56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 250
    .local v4, "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 251
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v2    # "colorSpace":Landroid/graphics/ColorSpace$Named;
    .end local v3    # "imageFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Long;>;>;"
    .end local v4    # "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_77
    :goto_77
    goto :goto_f

    .line 255
    :cond_78
    return-object v0
.end method

.method public whitelist getSupportedDynamicRangeProfiles(Landroid/graphics/ColorSpace$Named;I)Ljava/util/Set;
    .registers 10
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace$Named;
    .param p2, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorSpace$Named;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 200
    .local v0, "imageFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Long;>;>;"
    if-nez v0, :cond_10

    .line 201
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    return-object v1

    .line 204
    :cond_10
    const/4 v1, 0x0

    .line 205
    .local v1, "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez p2, :cond_51

    .line 206
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 207
    .end local v1    # "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local v2, "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 208
    .local v3, "supportedImageFormat":I
    nop

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 208
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 210
    .local v4, "supportedDynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 211
    .local v6, "supportedDynamicRangeProfile":Ljava/lang/Long;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v6    # "supportedDynamicRangeProfile":Ljava/lang/Long;
    goto :goto_3f

    .line 213
    .end local v3    # "supportedImageFormat":I
    .end local v4    # "supportedDynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_4f
    goto :goto_20

    :cond_50
    goto :goto_63

    .line 215
    .end local v2    # "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v1    # "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 216
    .end local v1    # "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v2    # "dynamicRangeProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v2, :cond_63

    .line 217
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    return-object v1

    .line 221
    :cond_63
    :goto_63
    return-object v2
.end method

.method public whitelist getSupportedImageFormatsForColorSpace(Landroid/graphics/ColorSpace$Named;)Ljava/util/Set;
    .registers 4
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace$Named;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorSpace$Named;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceProfiles;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 178
    .local v0, "imageFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Long;>;>;"
    if-nez v0, :cond_10

    .line 179
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    return-object v1

    .line 182
    :cond_10
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
