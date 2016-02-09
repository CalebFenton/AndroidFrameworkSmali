.class final Landroid/view/ViewDebug$10;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "val$view"    # Landroid/view/View;
    .param p2, "val$p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1659
    iput-object p1, p0, Landroid/view/ViewDebug$10;->val$view:Landroid/view/View;

    #@2
    iput-object p2, p0, Landroid/view/ViewDebug$10;->val$p:Landroid/view/ViewGroup$LayoutParams;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1662
    iget-object v0, p0, Landroid/view/ViewDebug$10;->val$view:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroid/view/ViewDebug$10;->val$p:Landroid/view/ViewGroup$LayoutParams;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@7
    .line 1661
    return-void
.end method
