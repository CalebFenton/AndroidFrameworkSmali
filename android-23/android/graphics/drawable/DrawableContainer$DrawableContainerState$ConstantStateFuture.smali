.class Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;
.super Ljava/lang/Object;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstantStateFuture"
.end annotation


# instance fields
.field private final mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "source"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1129
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@9
    .line 1128
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;)V
    .locals 0
    .param p1, "source"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@0
    .prologue
    .line 1140
    iget-object v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 1141
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    .line 1145
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mLayoutDirection:I

    #@c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@f
    .line 1146
    iget-object v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@14
    .line 1148
    iget-boolean v1, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mMutated:Z

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 1149
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1b
    .line 1152
    :cond_0
    return-object v0

    #@1c
    .line 1143
    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState$ConstantStateFuture;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@1e
    iget-object v2, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mRes:Landroid/content/res/Resources;

    #@20
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v0

    #@24
    .restart local v0    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method
