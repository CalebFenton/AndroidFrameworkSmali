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
.field final synthetic blacklist this$0:Landroid/app/FragmentManagerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/app/FragmentManagerImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/FragmentManagerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 739
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$1;->this$0:Landroid/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 742
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$1;->this$0:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 743
    return-void
.end method
