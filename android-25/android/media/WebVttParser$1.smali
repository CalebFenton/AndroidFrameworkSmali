.class Landroid/media/WebVttParser$1;
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
    .line 692
    iput-object p1, p0, Landroid/media/WebVttParser$1;->this$0:Landroid/media/WebVttParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 694
    return-void
.end method
