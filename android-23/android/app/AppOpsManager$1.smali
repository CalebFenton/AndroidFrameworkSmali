.class Landroid/app/AppOpsManager$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppOpsManager;

.field final synthetic val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;


# direct methods
.method constructor <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AppOpsManager;
    .param p2, "val$callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    #@0
    .prologue
    .line 1318
    iput-object p1, p0, Landroid/app/AppOpsManager$1;->this$0:Landroid/app/AppOpsManager;

    #@2
    iput-object p2, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    #@4
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public opChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1320
    iget-object v0, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    #@2
    instance-of v0, v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1321
    iget-object v0, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    #@8
    check-cast v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;)V

    #@d
    .line 1323
    :cond_0
    invoke-static {}, Landroid/app/AppOpsManager;->-get0()[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    aget-object v0, v0, p1

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1324
    iget-object v0, p0, Landroid/app/AppOpsManager$1;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    #@17
    invoke-static {}, Landroid/app/AppOpsManager;->-get0()[Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    aget-object v1, v1, p1

    #@1d
    invoke-interface {v0, v1, p2}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 1319
    :cond_1
    return-void
.end method
