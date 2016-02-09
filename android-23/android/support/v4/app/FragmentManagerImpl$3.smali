.class Landroid/support/v4/app/FragmentManagerImpl$3;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManagerImpl;->popBackStack(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;

.field final synthetic val$flags:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p2, "val$name"    # Ljava/lang/String;
    .param p3, "val$flags"    # I

    #@0
    .prologue
    .line 556
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    #@4
    iput p3, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$flags:I

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
    .line 558
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    #@4
    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@6
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$name:Ljava/lang/String;

    #@c
    iget v3, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->val$flags:I

    #@e
    const/4 v4, -0x1

    #@f
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    #@12
    .line 557
    return-void
.end method
