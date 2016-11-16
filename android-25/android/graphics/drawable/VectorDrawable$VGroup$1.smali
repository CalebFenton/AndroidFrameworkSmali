.class final Landroid/graphics/drawable/VectorDrawable$VGroup$1;
.super Ljava/util/HashMap;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1079
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    .line 1081
    const-string/jumbo v0, "translateX"

    #@6
    const/4 v1, 0x5

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 1082
    const-string/jumbo v0, "translateY"

    #@11
    const/4 v1, 0x6

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 1083
    const-string/jumbo v0, "scaleX"

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 1084
    const-string/jumbo v0, "scaleY"

    #@27
    const/4 v1, 0x4

    #@28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 1085
    const-string/jumbo v0, "pivotX"

    #@32
    const/4 v1, 0x1

    #@33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 1086
    const-string/jumbo v0, "pivotY"

    #@3d
    const/4 v1, 0x2

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 1087
    const-string/jumbo v0, "rotation"

    #@48
    const/4 v1, 0x0

    #@49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 1079
    return-void
.end method
