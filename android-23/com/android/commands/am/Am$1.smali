.class Lcom/android/commands/am/Am$1;
.super Ljava/lang/Object;
.source "Am.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/am/Am;->getRecentConfigurations(I)Ljava/util/List;
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
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/am/Am;

.field final synthetic val$recentConfigs:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Am;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/am/Am;

    #@0
    .prologue
    .line 2082
    .local p2, "val$recentConfigs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    #@2
    iput-object p2, p0, Lcom/android/commands/am/Am$1;->val$recentConfigs:Landroid/util/ArrayMap;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/Configuration;
    .param p2, "b"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/commands/am/Am$1;->val$recentConfigs:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    iget-object v1, p0, Lcom/android/commands/am/Am$1;->val$recentConfigs:Landroid/util/ArrayMap;

    #@a
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/Integer;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2084
    check-cast p1, Landroid/content/res/Configuration;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/content/res/Configuration;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/commands/am/Am$1;->compare(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
