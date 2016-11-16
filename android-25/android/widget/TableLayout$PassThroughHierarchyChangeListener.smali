.class Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "TableLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/widget/TableLayout;


# direct methods
.method static synthetic -set0(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@2
    return-object p1
.end method

.method private constructor <init>(Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TableLayout;

    #@0
    .prologue
    .line 750
    iput-object p1, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/TableLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TableLayout;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;)V

    #@3
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 758
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/TableLayout;

    #@2
    invoke-static {v0, p2}, Landroid/widget/TableLayout;->-wrap0(Landroid/widget/TableLayout;Landroid/view/View;)V

    #@5
    .line 760
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 761
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@b
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    #@e
    .line 757
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 769
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 770
    iget-object v0, p0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    #@9
    .line 768
    :cond_0
    return-void
.end method
