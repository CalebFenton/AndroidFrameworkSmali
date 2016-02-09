.class Lcom/android/server/AssetAtlasService$WorkerResult;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerResult"
.end annotation


# instance fields
.field count:I

.field height:I

.field type:Landroid/graphics/Atlas$Type;

.field width:I


# direct methods
.method constructor <init>(Landroid/graphics/Atlas$Type;III)V
    .locals 0
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 607
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    #@5
    .line 608
    iput p2, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    #@7
    .line 609
    iput p3, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    #@9
    .line 610
    iput p4, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    #@b
    .line 606
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 615
    const-string/jumbo v0, "%s %dx%d"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    #@8
    invoke-virtual {v2}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget v2, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    #@11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget v2, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method
