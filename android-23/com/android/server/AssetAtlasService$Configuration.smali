.class Lcom/android/server/AssetAtlasService$Configuration;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Configuration"
.end annotation


# instance fields
.field final count:I

.field final flags:I

.field final height:I

.field final type:Landroid/graphics/Atlas$Type;

.field final width:I


# direct methods
.method constructor <init>(Landroid/graphics/Atlas$Type;III)V
    .locals 6
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 578
    const/4 v5, 0x2

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AssetAtlasService$Configuration;-><init>(Landroid/graphics/Atlas$Type;IIII)V

    #@9
    .line 577
    return-void
.end method

.method constructor <init>(Landroid/graphics/Atlas$Type;IIII)V
    .locals 0
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "count"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 582
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    #@5
    .line 583
    iput p2, p0, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    #@7
    .line 584
    iput p3, p0, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    #@9
    .line 585
    iput p4, p0, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    #@b
    .line 586
    iput p5, p0, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    #@d
    .line 581
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    #@7
    invoke-virtual {v1}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, " ("

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "x"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, ") flags=0x"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 592
    iget v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 592
    const-string/jumbo v1, " count="

    #@3d
    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 592
    iget v1, p0, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    #@43
    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    return-object v0
.end method
