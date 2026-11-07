.class Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemAnimationInfo"
.end annotation


# static fields
.field static final greylist-max-o FADE_IN:I = 0x1

.field static final greylist-max-o FADE_OUT:I = 0x2

.field static final greylist-max-o MOVE:I


# instance fields
.field greylist-max-o animType:I

.field greylist-max-o animator:Landroid/animation/Animator;

.field greylist-max-o id:I

.field greylist-max-o menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;


# direct methods
.method constructor greylist-max-o <init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "info"    # Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .param p3, "anim"    # Landroid/animation/Animator;
    .param p4, "animType"    # I

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    iput p1, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    .line 1071
    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 1072
    iput-object p3, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    .line 1073
    iput p4, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    .line 1074
    return-void
.end method
