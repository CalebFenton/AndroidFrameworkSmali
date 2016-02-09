.class Lcom/android/commands/pm/Pm$1;
.super Ljava/lang/Object;
.source "Pm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/pm/Pm;->runListFeatures()I
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
        "Landroid/content/pm/FeatureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/pm/Pm;

    #@0
    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/commands/pm/Pm$1;->this$0:Lcom/android/commands/pm/Pm;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .locals 2
    .param p1, "o1"    # Landroid/content/pm/FeatureInfo;
    .param p2, "o2"    # Landroid/content/pm/FeatureInfo;

    #@0
    .prologue
    .line 430
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@2
    iget-object v1, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 431
    :cond_0
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@a
    if-nez v0, :cond_1

    #@c
    const/4 v0, -0x1

    #@d
    return v0

    #@e
    .line 432
    :cond_1
    iget-object v0, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@10
    if-nez v0, :cond_2

    #@12
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 433
    :cond_2
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@16
    iget-object v1, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 429
    check-cast p1, Landroid/content/pm/FeatureInfo;

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/FeatureInfo;

    #@4
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/commands/pm/Pm$1;->compare(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
