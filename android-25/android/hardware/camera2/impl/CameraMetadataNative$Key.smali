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
.field private mHasTag:Z

.field private final mHash:I

.field private final mName:Ljava/lang/String;

.field private mTag:I

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTypeReference:Landroid/hardware/camera2/utils/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 111
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    if-nez p1, :cond_0

    #@5
    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "Key needs a valid name"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 114
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "TypeReference needs to be non-null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 117
    :cond_1
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    #@1b
    .line 118
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    #@21
    .line 119
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@23
    .line 120
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    #@25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@28
    move-result v0

    #@29
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@2b
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    #@2e
    move-result v1

    #@2f
    xor-int/2addr v0, v1

    #@30
    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    #@32
    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    if-nez p1, :cond_0

    #@5
    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "Key needs a valid name"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 95
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "Type needs to be non-null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 98
    :cond_1
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    #@1b
    .line 99
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    #@1d
    .line 100
    invoke-static {p2}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/Class;)Landroid/hardware/camera2/utils/TypeReference;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@23
    .line 101
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    #@25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@28
    move-result v0

    #@29
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@2b
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    #@2e
    move-result v1

    #@2f
    xor-int/2addr v0, v1

    #@30
    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    #@32
    .line 92
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 160
    if-ne p0, p1, :cond_0

    #@3
    .line 161
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 164
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hashCode()I

    #@a
    move-result v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@e
    move-result v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 165
    :cond_1
    return v1

    #@12
    .line 170
    :cond_2
    instance-of v2, p1, Landroid/hardware/camera2/CaptureResult$Key;

    #@14
    if-eqz v2, :cond_4

    #@16
    .line 171
    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    #@18
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@1b
    move-result-object v0

    #@1c
    .line 182
    .local v0, "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    #@1e
    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_3

    #@26
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@28
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@2a
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/utils/TypeReference;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    :cond_3
    return v1

    #@2f
    .line 172
    .end local v0    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Landroid/hardware/camera2/CaptureRequest$Key;

    #@31
    if-eqz v2, :cond_5

    #@33
    .line 173
    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    #@35
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@38
    move-result-object v0

    #@39
    .restart local v0    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    goto :goto_0

    #@3a
    .line 174
    .end local v0    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@3c
    if-eqz v2, :cond_6

    #@3e
    .line 175
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@40
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@43
    move-result-object v0

    #@44
    .restart local v0    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    goto :goto_0

    #@45
    .line 176
    .end local v0    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@47
    if-eqz v2, :cond_7

    #@49
    move-object v0, p1

    #@4a
    .line 177
    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@4c
    .restart local v0    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    goto :goto_0

    #@4d
    .line 179
    .end local v0    # "lhs":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    :cond_7
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 137
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getTag()I
    .locals 1

    #@0
    .prologue
    .line 196
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHasTag:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 197
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mName:Ljava/lang/String;

    #@6
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTag:I

    #@c
    .line 198
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHasTag:Z

    #@f
    .line 200
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTag:I

    #@11
    return v0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 211
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mType:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public final getTypeReference()Landroid/hardware/camera2/utils/TypeReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 221
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mTypeReference:Landroid/hardware/camera2/utils/TypeReference;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 145
    .local p0, "this":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    iget v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->mHash:I

    #@2
    return v0
.end method
