.class Landroid/inputmethodservice/KeyboardView$3;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/inputmethodservice/KeyboardView;

    #@0
    .prologue
    .line 1103
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    #@0
    .prologue
    .line 1105
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get2(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    #@9
    .line 1106
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@b
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-wrap3(Landroid/inputmethodservice/KeyboardView;)V

    #@e
    .line 1104
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    #@0
    .prologue
    .line 1119
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get2(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    #@9
    .line 1118
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    #@0
    .prologue
    .line 1122
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get2(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    #@9
    .line 1121
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1110
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@2
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-get2(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    #@9
    .line 1111
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$3;->this$0:Landroid/inputmethodservice/KeyboardView;

    #@b
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->-wrap3(Landroid/inputmethodservice/KeyboardView;)V

    #@e
    .line 1109
    return-void
.end method

.method public swipeDown()V
    .locals 0

    #@0
    .prologue
    .line 1117
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    #@0
    .prologue
    .line 1114
    return-void
.end method

.method public swipeRight()V
    .locals 0

    #@0
    .prologue
    .line 1115
    return-void
.end method

.method public swipeUp()V
    .locals 0

    #@0
    .prologue
    .line 1116
    return-void
.end method
