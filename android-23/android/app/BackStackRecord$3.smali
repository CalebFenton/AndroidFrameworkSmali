.class final Landroid/app/BackStackRecord$3;
.super Landroid/transition/Transition$EpicenterCallback;
.source "BackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BackStackRecord;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "val$epicenter"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1556
    iput-object p1, p0, Landroid/app/BackStackRecord$3;->val$epicenter:Landroid/graphics/Rect;

    #@2
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1559
    iget-object v0, p0, Landroid/app/BackStackRecord$3;->val$epicenter:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method
