.class Lcom/android/server/content/SyncManager$12;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V
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
        "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
        "<",
        "Landroid/content/SyncAdapterType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 1550
    iput-object p1, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1554
    .local p1, "lhs":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    .local p2, "rhs":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    iget-object v0, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/content/SyncAdapterType;

    #@4
    iget-object v1, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@6
    iget-object v0, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/content/SyncAdapterType;

    #@a
    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@c
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1552
    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$12;->compare(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
