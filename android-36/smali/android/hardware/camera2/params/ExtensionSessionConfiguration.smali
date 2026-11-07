.class public final Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
.super Ljava/lang/Object;
.source "ExtensionSessionConfiguration.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ExtensionSessionConfiguration"


# instance fields
.field private blacklist mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private blacklist mColorSpace:I

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mExtensionType:I

.field private blacklist mOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;


# direct methods
.method public constructor whitelist <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)V
    .registers 6
    .param p1, "extension"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;",
            ")V"
        }
    .end annotation

    .line 58
    .local p2, "outputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 43
    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 44
    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    .line 59
    iput p1, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExtensionType:I

    .line 60
    iput-object p2, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    .line 61
    iput-object p3, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 62
    iput-object p4, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist clearColorSpace()V
    .registers 3

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mColorSpace:I

    .line 154
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 155
    .local v1, "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->clearColorSpace()V

    .line 156
    .end local v1    # "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_9

    .line 157
    :cond_19
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v0, :cond_22

    .line 158
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->clearColorSpace()V

    .line 160
    :cond_22
    return-void
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 170
    iget v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 171
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    .line 173
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public whitelist getExtension()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExtensionType:I

    return v0
.end method

.method public whitelist getOutputConfigurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object v0
.end method

.method public whitelist getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    return-object v0
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace$Named;)V
    .registers 4
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace$Named;

    .line 140
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mColorSpace:I

    .line 141
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 142
    .local v1, "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    .line 143
    .end local v1    # "outputConfiguration":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_c

    .line 144
    :cond_1c
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v0, :cond_25

    .line 145
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    .line 147
    :cond_25
    return-void
.end method

.method public whitelist setPostviewOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 2
    .param p1, "postviewOutput"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .line 83
    iput-object p1, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 84
    return-void
.end method
