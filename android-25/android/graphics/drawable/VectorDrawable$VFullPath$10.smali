.class final Landroid/graphics/drawable/VectorDrawable$VFullPath$10;
.super Ljava/util/HashMap;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VFullPath;
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
        "Landroid/util/Property;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1764
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    .line 1766
    const-string/jumbo v0, "strokeWidth"

    #@6
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get4()Landroid/util/Property;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 1767
    const-string/jumbo v0, "strokeColor"

    #@10
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get3()Landroid/util/Property;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1768
    const-string/jumbo v0, "strokeAlpha"

    #@1a
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get2()Landroid/util/Property;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 1769
    const-string/jumbo v0, "fillColor"

    #@24
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get1()Landroid/util/Property;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 1770
    const-string/jumbo v0, "fillAlpha"

    #@2e
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get0()Landroid/util/Property;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 1771
    const-string/jumbo v0, "trimPathStart"

    #@38
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get7()Landroid/util/Property;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 1772
    const-string/jumbo v0, "trimPathEnd"

    #@42
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get5()Landroid/util/Property;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 1773
    const-string/jumbo v0, "trimPathOffset"

    #@4c
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->-get6()Landroid/util/Property;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 1764
    return-void
.end method
