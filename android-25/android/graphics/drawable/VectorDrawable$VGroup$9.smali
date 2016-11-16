.class final Landroid/graphics/drawable/VectorDrawable$VGroup$9;
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
        "Landroid/util/Property;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1193
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    .line 1195
    const-string/jumbo v0, "translateX"

    #@6
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get5()Landroid/util/Property;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 1196
    const-string/jumbo v0, "translateY"

    #@10
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get6()Landroid/util/Property;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 1197
    const-string/jumbo v0, "scaleX"

    #@1a
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get3()Landroid/util/Property;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 1198
    const-string/jumbo v0, "scaleY"

    #@24
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get4()Landroid/util/Property;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 1199
    const-string/jumbo v0, "pivotX"

    #@2e
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get0()Landroid/util/Property;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 1200
    const-string/jumbo v0, "pivotY"

    #@38
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get1()Landroid/util/Property;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 1201
    const-string/jumbo v0, "rotation"

    #@42
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get2()Landroid/util/Property;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 1193
    return-void
.end method
