.class Landroid/content/pm/RegisteredServicesCache$4;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/RegisteredServicesCache;

.field final synthetic val$listener2:Landroid/content/pm/RegisteredServicesCacheListener;

.field final synthetic val$removed:Z

.field final synthetic val$type:Ljava/lang/Object;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache;Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;IZ)V
    .locals 0
    .param p4, "val$userId"    # I
    .param p5, "val$removed"    # Z

    #@0
    .prologue
    .line 284
    .local p1, "this$0":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p2, "val$listener2":Landroid/content/pm/RegisteredServicesCacheListener;, "Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    .local p3, "val$type":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$4;->this$0:Landroid/content/pm/RegisteredServicesCache;

    #@2
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache$4;->val$listener2:Landroid/content/pm/RegisteredServicesCacheListener;

    #@4
    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache$4;->val$type:Ljava/lang/Object;

    #@6
    iput p4, p0, Landroid/content/pm/RegisteredServicesCache$4;->val$userId:I

    #@8
    iput-boolean p5, p0, Landroid/content/pm/RegisteredServicesCache$4;->val$removed:Z

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$4;->val$listener2:Landroid/content/pm/RegisteredServicesCacheListener;

    #@2
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$4;->val$type:Ljava/lang/Object;

    #@4
    iget v2, p0, Landroid/content/pm/RegisteredServicesCache$4;->val$userId:I

    #@6
    iget-boolean v3, p0, Landroid/content/pm/RegisteredServicesCache$4;->val$removed:Z

    #@8
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/RegisteredServicesCacheListener;->onServiceChanged(Ljava/lang/Object;IZ)V

    #@b
    .line 285
    return-void
.end method
