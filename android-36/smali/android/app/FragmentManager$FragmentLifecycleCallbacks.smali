.class public abstract Landroid/app/FragmentManager$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentLifecycleCallbacks"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFragmentActivityCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 507
    return-void
.end method

.method public whitelist onFragmentAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 4
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "context"    # Landroid/content/Context;

    .line 472
    return-void
.end method

.method public whitelist onFragmentCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 495
    return-void
.end method

.method public whitelist onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .line 583
    return-void
.end method

.method public whitelist onFragmentDetached(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .line 592
    return-void
.end method

.method public whitelist onFragmentPaused(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .line 546
    return-void
.end method

.method public whitelist onFragmentPreAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 4
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "context"    # Landroid/content/Context;

    .line 462
    return-void
.end method

.method public whitelist onFragmentPreCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 484
    return-void
.end method

.method public whitelist onFragmentResumed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .line 537
    return-void
.end method

.method public whitelist onFragmentSaveInstanceState(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "outState"    # Landroid/os/Bundle;

    .line 565
    return-void
.end method

.method public whitelist onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .line 528
    return-void
.end method

.method public whitelist onFragmentStopped(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .line 555
    return-void
.end method

.method public whitelist onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "savedInstanceState"    # Landroid/os/Bundle;

    .line 519
    return-void
.end method

.method public whitelist onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "f"    # Landroid/app/Fragment;

    .line 574
    return-void
.end method
