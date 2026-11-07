.class public abstract Landroid/transition/Transition$EpicenterCallback;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EpicenterCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 2435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
.end method
