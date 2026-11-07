.class public final Landroid/hardware/camera2/extension/RequestProcessor$Request;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/RequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field private final blacklist mOutputIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTemplateId:I


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;Ljava/util/List;I)V
    .registers 4
    .param p3, "templateId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .line 225
    .local p1, "outputConfigIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mOutputIds:Ljava/util/List;

    .line 227
    iput-object p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mParameters:Ljava/util/List;

    .line 228
    iput p3, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mTemplateId:I

    .line 229
    return-void
.end method

.method static blacklist getParametersMetadata(JLjava/util/List;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 8
    .param p0, "vendorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;"
        }
    .end annotation

    .line 273
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;>;>;"
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 274
    .local v0, "ret":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 275
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 276
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 277
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;>;"
    goto :goto_c

    .line 279
    :cond_22
    return-object v0
.end method

.method static blacklist initializeParcelable(JLjava/util/List;)Ljava/util/List;
    .registers 9
    .param p0, "vendorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/Request;",
            ">;"
        }
    .end annotation

    .line 285
    .local p2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/RequestProcessor$Request;>;"
    new-instance v0, Ljava/util/ArrayList;

    .line 286
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/Request;>;"
    const/4 v1, 0x0

    .line 288
    .local v1, "requestId":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    .line 289
    .local v3, "req":Landroid/hardware/camera2/extension/RequestProcessor$Request;
    new-instance v4, Landroid/hardware/camera2/extension/Request;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/Request;-><init>()V

    .line 291
    .local v4, "request":Landroid/hardware/camera2/extension/Request;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "requestId":I
    .local v5, "requestId":I
    iput v1, v4, Landroid/hardware/camera2/extension/Request;->requestId:I

    .line 292
    invoke-virtual {v3}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->getTemplateId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v4, Landroid/hardware/camera2/extension/Request;->templateId:I

    .line 293
    invoke-virtual {v3}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->getTargetIds()Ljava/util/List;

    move-result-object v1

    iput-object v1, v4, Landroid/hardware/camera2/extension/Request;->targetOutputConfigIds:Ljava/util/List;

    .line 294
    invoke-virtual {v3}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/hardware/camera2/extension/RequestProcessor$Request;->getParametersMetadata(JLjava/util/List;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v4, Landroid/hardware/camera2/extension/Request;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 295
    iget v1, v4, Landroid/hardware/camera2/extension/Request;->requestId:I

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 296
    .end local v3    # "req":Landroid/hardware/camera2/extension/RequestProcessor$Request;
    .end local v4    # "request":Landroid/hardware/camera2/extension/Request;
    move v1, v5

    goto :goto_e

    .line 298
    .end local v5    # "requestId":I
    .restart local v1    # "requestId":I
    :cond_44
    return-object v0
.end method


# virtual methods
.method blacklist getOutputConfigIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mOutputIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mParameters:Ljava/util/List;

    return-object v0
.end method

.method blacklist getTargetIds()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/OutputConfigId;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mOutputIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/OutputConfigId;>;"
    const/4 v1, 0x0

    .line 261
    .local v1, "idx":I
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mOutputIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 262
    .local v3, "outputId":Ljava/lang/Integer;
    new-instance v4, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/OutputConfigId;-><init>()V

    .line 263
    .local v4, "configId":Landroid/hardware/camera2/extension/OutputConfigId;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    .line 264
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "idx":I
    .local v5, "idx":I
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 265
    .end local v3    # "outputId":Ljava/lang/Integer;
    .end local v4    # "configId":Landroid/hardware/camera2/extension/OutputConfigId;
    move v1, v5

    goto :goto_12

    .line 267
    .end local v5    # "idx":I
    .restart local v1    # "idx":I
    :cond_30
    return-object v0
.end method

.method blacklist getTemplateId()Ljava/lang/Integer;
    .registers 2

    .line 255
    iget v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$Request;->mTemplateId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
