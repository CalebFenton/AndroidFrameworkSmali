.class Landroid/media/Cea708CCParser$1;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/media/Cea708CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Cea708CCParser;


# direct methods
.method constructor <init>(Landroid/media/Cea708CCParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/Cea708CCParser;

    #@0
    .prologue
    .line 198
    iput-object p1, p0, Landroid/media/Cea708CCParser$1;->this$0:Landroid/media/Cea708CCParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/media/Cea708CCParser$CaptionEvent;

    #@0
    .prologue
    .line 200
    return-void
.end method
