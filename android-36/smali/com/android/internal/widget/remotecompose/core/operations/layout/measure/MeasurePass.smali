.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
.super Ljava/lang/Object;
.source "MeasurePass.java"


# instance fields
.field blacklist mList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V
    .registers 4
    .param p1, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 46
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void

    .line 44
    :cond_11
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Component has no id!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clear()V
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 34
    return-void
.end method

.method public blacklist contains(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 56
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .registers 10
    .param p1, "id"    # I

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 84
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    .end local p1    # "id":I
    .local v2, "id":I
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    .line 86
    .local v1, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v1

    .line 89
    .end local v1    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v2    # "id":I
    .restart local p1    # "id":I
    :cond_21
    move v2, p1

    .end local p1    # "id":I
    .restart local v2    # "id":I
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    return-object p1
.end method

.method public blacklist get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .registers 9
    .param p1, "c"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 67
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFF)V

    .line 70
    .local v1, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object v1

    .line 73
    .end local v1    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_37
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->mList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    return-object v0
.end method
