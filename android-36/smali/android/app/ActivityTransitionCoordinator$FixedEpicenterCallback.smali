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
.field private greylist-max-o mEpicenter:Landroid/graphics/Rect;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1048
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityTransitionCoordinator-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 1055
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist-max-o setEpicenter(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "epicenter"    # Landroid/graphics/Rect;

    .line 1051
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-void
.end method
