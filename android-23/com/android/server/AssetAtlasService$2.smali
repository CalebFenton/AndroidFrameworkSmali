.class final Lcom/android/server/AssetAtlasService$2;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AssetAtlasService;->computeBestConfiguration(Ljava/util/ArrayList;I)Lcom/android/server/AssetAtlasService$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AssetAtlasService$WorkerResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AssetAtlasService$WorkerResult;Lcom/android/server/AssetAtlasService$WorkerResult;)I
    .locals 4
    .param p1, "r1"    # Lcom/android/server/AssetAtlasService$WorkerResult;
    .param p2, "r2"    # Lcom/android/server/AssetAtlasService$WorkerResult;

    #@0
    .prologue
    .line 398
    iget v1, p2, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    #@2
    iget v2, p1, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 399
    .local v0, "delta":I
    if-eqz v0, :cond_0

    #@8
    return v0

    #@9
    .line 400
    :cond_0
    iget v1, p1, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    #@b
    iget v2, p1, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    #@d
    mul-int/2addr v1, v2

    #@e
    iget v2, p2, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    #@10
    iget v3, p2, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    #@12
    mul-int/2addr v2, v3

    #@13
    sub-int/2addr v1, v2

    #@14
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "r2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 397
    check-cast p1, Lcom/android/server/AssetAtlasService$WorkerResult;

    #@2
    .end local p1    # "r1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AssetAtlasService$WorkerResult;

    #@4
    .end local p2    # "r2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AssetAtlasService$2;->compare(Lcom/android/server/AssetAtlasService$WorkerResult;Lcom/android/server/AssetAtlasService$WorkerResult;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
