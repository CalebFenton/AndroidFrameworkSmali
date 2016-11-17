.class Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
.super Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OtaDexoptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OTADexoptPackageDexOptimizer"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 1
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 201
    const-string/jumbo v0, "*otadexopt*"

    #@3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    #@6
    .line 200
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .locals 1
    .param p1, "dexoptFlags"    # I

    #@0
    .prologue
    .line 207
    or-int/lit8 v0, p1, 0x40

    #@2
    return v0
.end method
