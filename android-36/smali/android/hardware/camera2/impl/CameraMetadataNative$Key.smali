.class public Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mFallbackName:Ljava/lang/String;

.field private greylist-max-o mHasTag:Z

.field private final greylist-max-o mHash:I

.field private final greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mTag:I

.field private final greylist-max-o mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTypeReference:Landroid/hardware/camera2/utils/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mVendorId:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFallbackName(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mFallbackName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    .line 177
    if-eqz p1, :cond_33

    .line 179
    if-eqz p2, :cond_2b

    .line 182
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mFallbackName:Ljava/lang/String;

    .line 184
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    .line 185
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 186
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    .line 187
    return-void

    .line 180
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TypeReference needs to be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key needs a valid name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    .line 157
    if-eqz p1, :cond_33

    .line 159
    if-eqz p2, :cond_2b

    .line 162
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mFallbackName:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    .line 165
    invoke-static {p2}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/Class;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 166
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    .line 167
    return-void

    .line 160
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type needs to be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key needs a valid name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Class;J)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "vendorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;J)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    .line 121
    if-eqz p1, :cond_35

    .line 123
    if-eqz p2, :cond_2d

    .line 126
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mFallbackName:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    .line 129
    iput-wide p3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    .line 130
    invoke-static {p2}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/Class;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 131
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    .line 132
    return-void

    .line 124
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type needs to be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key needs a valid name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallbackName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    .line 138
    if-eqz p1, :cond_32

    .line 140
    if-eqz p3, :cond_2a

    .line 143
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mFallbackName:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    .line 146
    invoke-static {p3}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/Class;)Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 147
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    .line 148
    return-void

    .line 141
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type needs to be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key needs a valid name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final greylist-max-r cacheTag(I)V
    .registers 3
    .param p1, "tag"    # I

    .line 292
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHasTag:Z

    .line 293
    iput p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTag:I

    .line 294
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 226
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 227
    return v0

    .line 230
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_55

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_12

    goto :goto_55

    .line 236
    :cond_12
    instance-of v2, p1, Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v2, :cond_1e

    .line 237
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    .local v2, "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    goto :goto_3d

    .line 238
    .end local v2    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    :cond_1e
    instance-of v2, p1, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v2, :cond_2a

    .line 239
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    .restart local v2    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    goto :goto_3d

    .line 240
    .end local v2    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    :cond_2a
    instance-of v2, p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v2, :cond_36

    .line 241
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    .restart local v2    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    goto :goto_3d

    .line 242
    .end local v2    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    :cond_36
    instance-of v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    if-eqz v2, :cond_54

    .line 243
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 248
    .restart local v2    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    :goto_3d
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    iget-object v4, v2, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/utils/TypeReference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    return v0

    .line 245
    .end local v2    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    :cond_54
    return v1

    .line 231
    :cond_55
    :goto_55
    return v1
.end method

.method public final greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 203
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist getTag()I
    .registers 4

    .line 268
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHasTag:Z

    if-nez v0, :cond_11

    .line 269
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTag:I

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHasTag:Z

    .line 272
    :cond_11
    iget v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTag:I

    return v0
.end method

.method public final greylist-max-o getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 304
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public final greylist-max-o getTypeReference()Landroid/hardware/camera2/utils/TypeReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;"
        }
    .end annotation

    .line 323
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    return-object v0
.end method

.method public final greylist-max-o getVendorId()J
    .registers 3

    .line 313
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mVendorId:J

    return-wide v0
.end method

.method public final greylist-max-r hasTag()Z
    .registers 2

    .line 282
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHasTag:Z

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 211
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    return v0
.end method
