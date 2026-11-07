.class public abstract Landroid/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManager$FragmentLifecycleCallbacks;,
        Landroid/app/FragmentManager$OnBackStackChangedListener;,
        Landroid/app/FragmentManager$BackStackEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist POP_BACK_STACK_INCLUSIVE:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist enableDebugLogging(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 421
    sput-boolean p0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    .line 422
    return-void
.end method


# virtual methods
.method public abstract whitelist addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract whitelist beginTransaction()Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract whitelist executePendingTransactions()Z
.end method

.method public abstract whitelist findFragmentById(I)Landroid/app/Fragment;
.end method

.method public abstract whitelist findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
.end method

.method public abstract whitelist getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
.end method

.method public abstract whitelist getBackStackEntryCount()I
.end method

.method public abstract whitelist getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
.end method

.method public abstract whitelist getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getPrimaryNavigationFragment()Landroid/app/Fragment;
.end method

.method public whitelist invalidateOptionsMenu()V
    .registers 1

    .line 428
    return-void
.end method

.method public abstract whitelist isDestroyed()Z
.end method

.method public abstract whitelist isStateSaved()Z
.end method

.method public greylist-max-o openTransaction()Landroid/app/FragmentTransaction;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist popBackStack()V
.end method

.method public abstract whitelist popBackStack(II)V
.end method

.method public abstract whitelist popBackStack(Ljava/lang/String;I)V
.end method

.method public abstract whitelist popBackStackImmediate()Z
.end method

.method public abstract whitelist popBackStackImmediate(II)Z
.end method

.method public abstract whitelist popBackStackImmediate(Ljava/lang/String;I)Z
.end method

.method public abstract whitelist putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
.end method

.method public abstract whitelist registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
.end method

.method public abstract whitelist removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract whitelist saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
.end method

.method public abstract whitelist unregisterFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;)V
.end method
