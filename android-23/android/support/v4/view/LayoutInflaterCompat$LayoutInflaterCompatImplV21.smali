.class Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;
.super Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LayoutInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutInflaterCompatImplV21"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    #@0
    .prologue
    .line 49
    invoke-static {p1, p2}, Landroid/support/v4/view/LayoutInflaterCompatLollipop;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    #@3
    .line 48
    return-void
.end method
