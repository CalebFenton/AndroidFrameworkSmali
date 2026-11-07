.class public abstract Landroid/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentTransaction$Transit;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist TRANSIT_ENTER_MASK:I = 0x1000

.field public static final whitelist TRANSIT_EXIT_MASK:I = 0x2000

.field public static final whitelist TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final whitelist TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final whitelist TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final whitelist TRANSIT_NONE:I = 0x0

.field public static final whitelist TRANSIT_UNSET:I = -0x1


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist commit()I
.end method

.method public abstract whitelist commitAllowingStateLoss()I
.end method

.method public abstract whitelist commitNow()V
.end method

.method public abstract whitelist commitNowAllowingStateLoss()V
.end method

.method public abstract whitelist detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist disallowAddToBackStack()Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist isAddToBackStackAllowed()Z
.end method

.method public abstract whitelist isEmpty()Z
.end method

.method public abstract whitelist remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist runOnCommit(Ljava/lang/Runnable;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setCustomAnimations(II)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setPrimaryNavigationFragment(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setReorderingAllowed(Z)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setTransition(I)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist setTransitionStyle(I)Landroid/app/FragmentTransaction;
.end method

.method public abstract whitelist show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
.end method
