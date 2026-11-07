.class Landroid/app/FragmentTransition$4;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentTransition;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Rect;)V
    .registers 2

    .line 881
    iput-object p1, p0, Landroid/app/FragmentTransition$4;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 884
    iget-object v0, p0, Landroid/app/FragmentTransition$4;->val$epicenter:Landroid/graphics/Rect;

    return-object v0
.end method
