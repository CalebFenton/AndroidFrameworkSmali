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
.field final synthetic blacklist this$0:Landroid/media/WebVttParser;


# direct methods
.method constructor blacklist <init>(Landroid/media/WebVttParser;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/WebVttParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 699
    iput-object p1, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)V
    .registers 4
    .param p1, "line"    # Ljava/lang/String;

    .line 702
    const-string v0, "\ufeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 705
    :cond_d
    const-string v0, "WEBVTT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 706
    const-string v0, "WEBVTT "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 707
    const-string v0, "WEBVTT\t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 708
    iget-object v0, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    const-string v1, "Not a WEBVTT header"

    invoke-static {v0, v1, p1}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    invoke-static {v1}, Landroid/media/WebVttParser;->-$$Nest$fgetmSkipRest(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    goto :goto_43

    .line 711
    :cond_38
    iget-object v0, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    invoke-static {v1}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseHeader(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 713
    :goto_43
    return-void
.end method
