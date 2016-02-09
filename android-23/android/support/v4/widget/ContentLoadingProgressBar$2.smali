.class Landroid/support/v4/widget/ContentLoadingProgressBar$2;
.super Ljava/lang/Object;
.source "ContentLoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 56
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@3
    invoke-static {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->-set1(Landroid/support/v4/widget/ContentLoadingProgressBar;Z)Z

    #@6
    .line 57
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@8
    invoke-static {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->-get0(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 58
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@13
    move-result-wide v2

    #@14
    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/ContentLoadingProgressBar;->-set2(Landroid/support/v4/widget/ContentLoadingProgressBar;J)J

    #@17
    .line 59
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    #@19
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    #@1c
    .line 55
    :cond_0
    return-void
.end method
