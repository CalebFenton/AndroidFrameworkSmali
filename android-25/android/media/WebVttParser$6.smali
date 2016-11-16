.class Landroid/media/WebVttParser$6;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    #@0
    .prologue
    .line 942
    iput-object p1, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 945
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 946
    iget-object v0, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    #@8
    invoke-virtual {v0}, Landroid/media/WebVttParser;->yieldCue()V

    #@b
    .line 947
    iget-object v0, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    #@d
    iget-object v1, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    #@f
    invoke-static {v1}, Landroid/media/WebVttParser;->-get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@12
    move-result-object v1

    #@13
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    #@16
    .line 948
    return-void

    #@17
    .line 949
    :cond_0
    iget-object v0, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    #@19
    invoke-static {v0}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 950
    iget-object v0, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    #@21
    invoke-static {v0}, Landroid/media/WebVttParser;->-get1(Landroid/media/WebVttParser;)Ljava/util/Vector;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@28
    .line 944
    :cond_1
    return-void
.end method
