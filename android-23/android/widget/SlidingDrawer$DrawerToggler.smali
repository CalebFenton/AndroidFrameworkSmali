.class Landroid/widget/SlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Landroid/widget/SlidingDrawer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SlidingDrawer;

    #@0
    .prologue
    .line 960
    iput-object p1, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$DrawerToggler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SlidingDrawer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;)V

    #@3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 962
    iget-object v0, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    #@2
    invoke-static {v0}, Landroid/widget/SlidingDrawer;->-get1(Landroid/widget/SlidingDrawer;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 963
    return-void

    #@9
    .line 969
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    #@b
    invoke-static {v0}, Landroid/widget/SlidingDrawer;->-get0(Landroid/widget/SlidingDrawer;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 970
    iget-object v0, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    #@13
    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    #@16
    .line 961
    :goto_0
    return-void

    #@17
    .line 972
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer$DrawerToggler;->this$0:Landroid/widget/SlidingDrawer;

    #@19
    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    #@1c
    goto :goto_0
.end method
