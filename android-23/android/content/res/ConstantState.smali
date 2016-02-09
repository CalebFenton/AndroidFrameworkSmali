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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    .local p0, "this":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getChangingConfigurations()I
.end method

.method public abstract newInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public newInstance(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 51
    .local p0, "this":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    invoke-virtual {p0}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 1
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

    #@0
    .prologue
    .line 59
    .local p0, "this":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    invoke-virtual {p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
