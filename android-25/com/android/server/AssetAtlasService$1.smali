.class Lcom/android/server/AssetAtlasService$1;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssetAtlasService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetAtlasService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AssetAtlasService;

    #@0
    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$1;->this$0:Lcom/android/server/AssetAtlasService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "b1"    # Landroid/graphics/Bitmap;
    .param p2, "b2"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 159
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@11
    move-result v1

    #@12
    sub-int/2addr v0, v1

    #@13
    return v0

    #@14
    .line 161
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    #@17
    move-result v0

    #@18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@1b
    move-result v1

    #@1c
    sub-int/2addr v0, v1

    #@1d
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "b1"    # Ljava/lang/Object;
    .param p2, "b2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 157
    check-cast p1, Landroid/graphics/Bitmap;

    #@2
    .end local p1    # "b1":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    #@4
    .end local p2    # "b2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AssetAtlasService$1;->compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
