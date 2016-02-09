.class final Lcom/android/server/pm/PackageManagerService$3;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .locals 3
    .param p1, "p1"    # Landroid/content/pm/ProviderInfo;
    .param p2, "p2"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 9344
    iget v0, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@2
    .line 9345
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@4
    .line 9346
    .local v1, "v2":I
    if-le v0, v1, :cond_0

    #@6
    const/4 v2, -0x1

    #@7
    :goto_0
    return v2

    #@8
    :cond_0
    if-ge v0, v1, :cond_1

    #@a
    const/4 v2, 0x1

    #@b
    goto :goto_0

    #@c
    :cond_1
    const/4 v2, 0x0

    #@d
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 9343
    check-cast p1, Landroid/content/pm/ProviderInfo;

    #@2
    .end local p1    # "p1":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ProviderInfo;

    #@4
    .end local p2    # "p2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$3;->compare(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
