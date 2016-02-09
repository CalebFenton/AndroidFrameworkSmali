.class public Landroid/support/v4/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;,
        Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;,
        Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;,
        Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 56
    .local v0, "version":I
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 57
    new-instance v1, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;

    #@8
    invoke-direct {v1}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;-><init>()V

    #@b
    sput-object v1, Landroid/support/v4/view/LayoutInflaterCompat;->IMPL:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    #@d
    .line 26
    :goto_0
    return-void

    #@e
    .line 58
    :cond_0
    const/16 v1, 0xb

    #@10
    if-lt v0, v1, :cond_1

    #@12
    .line 59
    new-instance v1, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;

    #@14
    invoke-direct {v1}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;-><init>()V

    #@17
    sput-object v1, Landroid/support/v4/view/LayoutInflaterCompat;->IMPL:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    #@19
    goto :goto_0

    #@1a
    .line 61
    :cond_1
    new-instance v1, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;

    #@1c
    invoke-direct {v1}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;-><init>()V

    #@1f
    sput-object v1, Landroid/support/v4/view/LayoutInflaterCompat;->IMPL:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    #@21
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    #@0
    .prologue
    .line 79
    sget-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->IMPL:Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    #@5
    .line 78
    return-void
.end method
