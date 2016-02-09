.class final Landroid/view/View$CheckForTap;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;

.field public x:F

.field public y:F


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    .line 21132
    iput-object p1, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$CheckForTap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 21138
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    #@2
    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    #@4
    const v2, -0x2000001

    #@7
    and-int/2addr v1, v2

    #@8
    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    #@a
    .line 21139
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    #@c
    iget v1, p0, Landroid/view/View$CheckForTap;->x:F

    #@e
    iget v2, p0, Landroid/view/View$CheckForTap;->y:F

    #@10
    const/4 v3, 0x1

    #@11
    invoke-static {v0, v3, v1, v2}, Landroid/view/View;->-wrap2(Landroid/view/View;ZFF)V

    #@14
    .line 21140
    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    #@16
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@19
    move-result v1

    #@1a
    invoke-static {v0, v1}, Landroid/view/View;->-wrap1(Landroid/view/View;I)V

    #@1d
    .line 21137
    return-void
.end method
