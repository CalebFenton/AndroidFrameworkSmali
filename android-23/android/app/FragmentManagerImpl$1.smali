.class Landroid/app/FragmentManagerImpl$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroid/app/FragmentManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/FragmentManagerImpl;

    #@0
    .prologue
    .line 479
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$1;->this$0:Landroid/app/FragmentManagerImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$1;->this$0:Landroid/app/FragmentManagerImpl;

    #@2
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@5
    .line 481
    return-void
.end method
