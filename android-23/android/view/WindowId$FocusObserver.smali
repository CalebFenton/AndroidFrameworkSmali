.class public abstract Landroid/view/WindowId$FocusObserver;
.super Ljava/lang/Object;
.source "WindowId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FocusObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowId$FocusObserver$H;,
        Landroid/view/WindowId$FocusObserver$1;
    }
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mIObserver:Landroid/view/IWindowFocusObserver$Stub;

.field final mRegistrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    new-instance v0, Landroid/view/WindowId$FocusObserver$1;

    #@5
    invoke-direct {v0, p0}, Landroid/view/WindowId$FocusObserver$1;-><init>(Landroid/view/WindowId$FocusObserver;)V

    #@8
    iput-object v0, p0, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    #@a
    .line 78
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 77
    iput-object v0, p0, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    #@11
    .line 103
    new-instance v0, Landroid/view/WindowId$FocusObserver$H;

    #@13
    invoke-direct {v0, p0}, Landroid/view/WindowId$FocusObserver$H;-><init>(Landroid/view/WindowId$FocusObserver;)V

    #@16
    iput-object v0, p0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    #@18
    .line 102
    return-void
.end method


# virtual methods
.method public abstract onFocusGained(Landroid/view/WindowId;)V
.end method

.method public abstract onFocusLost(Landroid/view/WindowId;)V
.end method
