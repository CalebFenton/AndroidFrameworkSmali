.class Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;
.super Landroid/transition/Transition$EpicenterCallback;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedEpicenterCallback"
.end annotation


# instance fields
.field private mEpicenter:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 934
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 941
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public setEpicenter(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "epicenter"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 937
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    #@2
    return-void
.end method
