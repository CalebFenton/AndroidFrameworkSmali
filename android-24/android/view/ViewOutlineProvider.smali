.class public abstract Landroid/view/ViewOutlineProvider;
.super Ljava/lang/Object;
.source "ViewOutlineProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewOutlineProvider$1;,
        Landroid/view/ViewOutlineProvider$2;,
        Landroid/view/ViewOutlineProvider$3;
    }
.end annotation


# static fields
.field public static final BACKGROUND:Landroid/view/ViewOutlineProvider;

.field public static final BOUNDS:Landroid/view/ViewOutlineProvider;

.field public static final PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    new-instance v0, Landroid/view/ViewOutlineProvider$1;

    #@2
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$1;-><init>()V

    #@5
    sput-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    #@7
    .line 52
    new-instance v0, Landroid/view/ViewOutlineProvider$2;

    #@9
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$2;-><init>()V

    #@c
    sput-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    #@e
    .line 65
    new-instance v0, Landroid/view/ViewOutlineProvider$3;

    #@10
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$3;-><init>()V

    #@13
    sput-object v0, Landroid/view/ViewOutlineProvider;->PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;

    #@15
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
.end method
