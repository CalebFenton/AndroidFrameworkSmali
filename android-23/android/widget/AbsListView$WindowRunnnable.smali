.class Landroid/widget/AbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 3012
    iput-object p1, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;)V

    #@3
    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    #@0
    .prologue
    .line 3016
    iget-object v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-static {v0}, Landroid/widget/AbsListView;->-wrap3(Landroid/widget/AbsListView;)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    #@8
    .line 3015
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    #@0
    .prologue
    .line 3020
    iget-object v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-static {v0}, Landroid/widget/AbsListView;->-wrap3(Landroid/widget/AbsListView;)I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
