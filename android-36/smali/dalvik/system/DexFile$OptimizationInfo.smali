.class public final Ldalvik/system/DexFile$OptimizationInfo;
.super Ljava/lang/Object;
.source "DexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/DexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptimizationInfo"
.end annotation


# instance fields
.field private final greylist-max-o reason:Ljava/lang/String;

.field private final greylist-max-o status:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p1, p0, Ldalvik/system/DexFile$OptimizationInfo;->status:Ljava/lang/String;

    .line 609
    iput-object p2, p0, Ldalvik/system/DexFile$OptimizationInfo;->reason:Ljava/lang/String;

    .line 610
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ldalvik/system/DexFile-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ldalvik/system/DexFile$OptimizationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o test-api getReason()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 633
    iget-object v0, p0, Ldalvik/system/DexFile$OptimizationInfo;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o test-api getStatus()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 621
    iget-object v0, p0, Ldalvik/system/DexFile$OptimizationInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api isFullyCompiled()Z
    .registers 2

    .line 655
    iget-object v0, p0, Ldalvik/system/DexFile$OptimizationInfo;->status:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/DexFile;->isOptimizedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Ldalvik/system/DexFile$OptimizationInfo;->status:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api isOptimized()Z
    .registers 2

    .line 648
    iget-object v0, p0, Ldalvik/system/DexFile$OptimizationInfo;->status:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/DexFile;->isOptimizedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isVerified()Z
    .registers 2

    .line 640
    iget-object v0, p0, Ldalvik/system/DexFile$OptimizationInfo;->status:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/DexFile;->isVerifiedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
