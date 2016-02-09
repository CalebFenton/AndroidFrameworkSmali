.class Landroid/support/v4/view/LayoutInflaterCompatBase;
.super Ljava/lang/Object;
.source "LayoutInflaterCompatBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 45
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;

    #@5
    invoke-direct {v0, p1}, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    #@8
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    #@b
    .line 44
    return-void
.end method
