.class Landroid/media/WebVttParser$4;
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


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/media/WebVttParser$4;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/media/WebVttParser$4;->-assertionsDisabled:Z

    #@b
    .line 814
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    #@0
    .prologue
    .line 814
    iput-object p1, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

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
    const/4 v0, 0x0

    #@1
    .line 817
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 818
    return-void

    #@8
    .line 821
    :cond_0
    sget-boolean v1, Landroid/media/WebVttParser$4;->-assertionsDisabled:Z

    #@a
    if-nez v1, :cond_2

    #@c
    iget-object v1, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    #@e
    invoke-static {v1}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@11
    move-result-object v1

    #@12
    if-nez v1, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    :cond_1
    if-nez v0, :cond_2

    #@17
    new-instance v0, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v0

    #@1d
    .line 823
    :cond_2
    const-string/jumbo v0, "NOTE"

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_3

    #@26
    const-string/jumbo v0, "NOTE "

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_4

    #@2f
    .line 824
    :cond_3
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    #@31
    iget-object v1, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    #@33
    invoke-static {v1}, Landroid/media/WebVttParser;->-get4(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    #@3a
    .line 827
    :cond_4
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    #@3c
    new-instance v1, Landroid/media/TextTrackCue;

    #@3e
    invoke-direct {v1}, Landroid/media/TextTrackCue;-><init>()V

    #@41
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-set0(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    #@44
    .line 828
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    #@46
    invoke-static {v0}, Landroid/media/WebVttParser;->-get1(Landroid/media/WebVttParser;)Ljava/util/Vector;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    #@4d
    .line 830
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    #@4f
    iget-object v1, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    #@51
    invoke-static {v1}, Landroid/media/WebVttParser;->-get5(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@54
    move-result-object v1

    #@55
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    #@58
    .line 831
    const-string/jumbo v0, "-->"

    #@5b
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_5

    #@61
    .line 832
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    #@63
    invoke-static {v0}, Landroid/media/WebVttParser;->-get7(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@66
    move-result-object v0

    #@67
    invoke-interface {v0, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    #@6a
    .line 816
    :goto_0
    return-void

    #@6b
    .line 834
    :cond_5
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    #@6d
    invoke-static {v0}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    #@70
    move-result-object v0

    #@71
    iput-object p1, v0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    #@73
    goto :goto_0
.end method
