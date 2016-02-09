.class Landroid/support/v4/app/FragmentManagerImpl$2;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManagerImpl;->popBackStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentManagerImpl;

    #@0
    .prologue
    .line 540
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    #@4
    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@6
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    const/4 v3, -0x1

    #@c
    const/4 v4, 0x0

    #@d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    #@10
    .line 541
    return-void
.end method
