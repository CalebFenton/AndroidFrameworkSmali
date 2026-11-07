.class public final synthetic Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;

    invoke-interface {v0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$ButtonClickListener;->onImeSwitchButtonClick(Landroid/view/View;)V

    return-void
.end method
