.class Landroid/media/WebVttParser$2;
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
    .line 697
    iput-object p1, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

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
    .line 700
    const-string/jumbo v0, "\ufeff"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 701
    const/4 v0, 0x1

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object p1

    #@e
    .line 703
    :cond_0
    const-string/jumbo v0, "WEBVTT"

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 704
    const-string/jumbo v0, "WEBVTT "

    #@1a
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 709
    :cond_1
    iget-object v0, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    #@22
    iget-object v1, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    #@24
    invoke-static {v1}, Landroid/media/WebVttParser;->-get6(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    #@2b
    .line 699
    :goto_0
    return-void

    #@2c
    .line 705
    :cond_2
    const-string/jumbo v0, "WEBVTT\t"

    #@2f
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_1

    #@35
    .line 706
    iget-object v0, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    #@37
    const-string/jumbo v1, "Not a WEBVTT header"

    #@3a
    invoke-static {v0, v1, p1}, Landroid/media/WebVttParser;->-wrap0(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    #@3d
    .line 707
    iget-object v0, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    #@3f
    iget-object v1, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    #@41
    invoke-static {v1}, Landroid/media/WebVttParser;->-get8(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    #@44
    move-result-object v1

    #@45
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    #@48
    goto :goto_0
.end method
