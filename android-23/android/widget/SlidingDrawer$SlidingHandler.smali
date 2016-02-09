.class Landroid/widget/SlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Landroid/widget/SlidingDrawer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SlidingDrawer;

    #@0
    .prologue
    .line 977
    iput-object p1, p0, Landroid/widget/SlidingDrawer$SlidingHandler;->this$0:Landroid/widget/SlidingDrawer;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$SlidingHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SlidingDrawer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer$SlidingHandler;-><init>(Landroid/widget/SlidingDrawer;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    #@0
    .prologue
    .line 979
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 978
    :goto_0
    return-void

    #@6
    .line 981
    :pswitch_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer$SlidingHandler;->this$0:Landroid/widget/SlidingDrawer;

    #@8
    invoke-static {v0}, Landroid/widget/SlidingDrawer;->-wrap0(Landroid/widget/SlidingDrawer;)V

    #@b
    goto :goto_0

    #@c
    .line 979
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
