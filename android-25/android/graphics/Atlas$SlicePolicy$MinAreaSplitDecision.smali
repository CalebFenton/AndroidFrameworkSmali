.class Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;
.super Ljava/lang/Object;
.source "Atlas.java"

# interfaces
.implements Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas$SlicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MinAreaSplitDecision"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public splitHorizontal(IIII)Z
    .locals 2
    .param p1, "freeWidth"    # I
    .param p2, "freeHeight"    # I
    .param p3, "rectWidth"    # I
    .param p4, "rectHeight"    # I

    #@0
    .prologue
    .line 313
    mul-int v0, p3, p2

    #@2
    mul-int v1, p1, p4

    #@4
    if-le v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method
