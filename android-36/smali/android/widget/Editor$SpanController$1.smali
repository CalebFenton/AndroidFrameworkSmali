.class Landroid/widget/Editor$SpanController$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SpanController;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$SpanController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$SpanController;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/Editor$SpanController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3552
    iput-object p1, p0, Landroid/widget/Editor$SpanController$1;->this$1:Landroid/widget/Editor$SpanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 3555
    iget-object v0, p0, Landroid/widget/Editor$SpanController$1;->this$1:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 3556
    return-void
.end method
