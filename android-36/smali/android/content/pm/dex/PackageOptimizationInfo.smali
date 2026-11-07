.class public Landroid/content/pm/dex/PackageOptimizationInfo;
.super Ljava/lang/Object;
.source "PackageOptimizationInfo.java"


# instance fields
.field private final greylist-max-o mCompilationFilter:I

.field private final greylist-max-o mCompilationReason:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "compilerFilter"    # I
    .param p2, "compilationReason"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p2, p0, Landroid/content/pm/dex/PackageOptimizationInfo;->mCompilationReason:I

    .line 30
    iput p1, p0, Landroid/content/pm/dex/PackageOptimizationInfo;->mCompilationFilter:I

    .line 31
    return-void
.end method

.method public static greylist-max-o createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;
    .registers 2

    .line 45
    new-instance v0, Landroid/content/pm/dex/PackageOptimizationInfo;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/content/pm/dex/PackageOptimizationInfo;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getCompilationFilter()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/content/pm/dex/PackageOptimizationInfo;->mCompilationFilter:I

    return v0
.end method

.method public greylist-max-o getCompilationReason()I
    .registers 2

    .line 34
    iget v0, p0, Landroid/content/pm/dex/PackageOptimizationInfo;->mCompilationReason:I

    return v0
.end method
