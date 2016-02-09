.class Landroid/widget/TextView$Marquee$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/TextView$Marquee;

    #@0
    .prologue
    .line 10016
    iput-object p1, p0, Landroid/widget/TextView$Marquee$1;->this$1:Landroid/widget/TextView$Marquee;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 10019
    iget-object v0, p0, Landroid/widget/TextView$Marquee$1;->this$1:Landroid/widget/TextView$Marquee;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->tick()V

    #@5
    .line 10018
    return-void
.end method
