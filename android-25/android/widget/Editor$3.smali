.class Landroid/widget/Editor$3;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 2127
    iput-object p1, p0, Landroid/widget/Editor$3;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 2129
    iget-object v0, p0, Landroid/widget/Editor$3;->this$0:Landroid/widget/Editor;

    #@2
    invoke-virtual {v0}, Landroid/widget/Editor;->replace()V

    #@5
    .line 2128
    return-void
.end method
