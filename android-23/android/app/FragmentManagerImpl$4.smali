.class Landroid/app/FragmentManagerImpl$4;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->popBackStack(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic val$flags:I

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Landroid/app/FragmentManagerImpl;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/FragmentManagerImpl;
    .param p2, "val$id"    # I
    .param p3, "val$flags"    # I

    #@0
    .prologue
    .line 602
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$4;->this$0:Landroid/app/FragmentManagerImpl;

    #@2
    iput p2, p0, Landroid/app/FragmentManagerImpl$4;->val$id:I

    #@4
    iput p3, p0, Landroid/app/FragmentManagerImpl$4;->val$flags:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$4;->this$0:Landroid/app/FragmentManagerImpl;

    #@2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl$4;->this$0:Landroid/app/FragmentManagerImpl;

    #@4
    iget-object v1, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@6
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@9
    move-result-object v1

    #@a
    iget v2, p0, Landroid/app/FragmentManagerImpl$4;->val$id:I

    #@c
    iget v3, p0, Landroid/app/FragmentManagerImpl$4;->val$flags:I

    #@e
    const/4 v4, 0x0

    #@f
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    #@12
    .line 603
    return-void
.end method
