.class public final synthetic Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;

    return-void
.end method


# virtual methods
.method public final whitelist onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;->onImeSwitchButtonLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
