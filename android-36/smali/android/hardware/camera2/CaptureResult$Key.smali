.class public final Landroid/hardware/camera2/CaptureResult$Key;
.super Ljava/lang/Object;
.source "CaptureResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CaptureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field private final greylist-max-o mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p1, "nativeKey":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 194
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 119
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 109
    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/Class;J)V
    .registers 6
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

    .line 87
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;J)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 89
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
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

    .line 96
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 98
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 162
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    instance-of v0, p1, Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v0, v0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    iget-object v1, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 136
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    return-object v0
.end method

.method public greylist-max-o getVendorId()J
    .registers 3

    .line 145
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getVendorId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 153
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 176
    .local p0, "this":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureResult$Key;->mKey:Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CaptureResult.Key(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
