.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->createIdmapForPackagePairLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)Z
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
        "Landroid/content/pm/PackageParser$Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 5554
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .locals 2
    .param p1, "p1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "p2"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 5556
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    #@2
    iget v1, p2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 5555
    check-cast p1, Landroid/content/pm/PackageParser$Package;

    #@2
    .end local p1    # "p1":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/PackageParser$Package;

    #@4
    .end local p2    # "p2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$7;->compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
