.class public final Landroid/graphics/Paint$RunInfo;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunInfo"
.end annotation


# instance fields
.field private blacklist mClusterCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 2700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2701
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Paint$RunInfo;->mClusterCount:I

    return-void
.end method


# virtual methods
.method public blacklist getClusterCount()I
    .registers 2

    .line 2704
    iget v0, p0, Landroid/graphics/Paint$RunInfo;->mClusterCount:I

    return v0
.end method

.method public blacklist setClusterCount(I)V
    .registers 2
    .param p1, "clusterCount"    # I

    .line 2708
    iput p1, p0, Landroid/graphics/Paint$RunInfo;->mClusterCount:I

    .line 2709
    return-void
.end method
