.class public abstract Landroid/content/res/ConstantState;
.super Ljava/lang/Object;
.source "ConstantState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    .local p0, "this":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o getChangingConfigurations()I
.end method

.method public abstract greylist-max-o newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public greylist-max-o newInstance(Landroid/content/res/Resources;)Ljava/lang/Object;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")TT;"
        }
    .end annotation

    .line 55
    .local p0, "this":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    invoke-virtual {p0}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    invoke-virtual {p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
