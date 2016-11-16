.class Landroid/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private final mInputText:Landroid/widget/EditText;

.field private mPosted:Z

.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "inputText"    # Landroid/widget/EditText;

    #@0
    .prologue
    .line 2254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2255
    iput-object p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    #@5
    .line 2254
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    #@0
    .prologue
    .line 2269
    iget-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2270
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    #@6
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@9
    .line 2271
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    #@c
    .line 2268
    :cond_0
    return-void
.end method

.method public post(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    #@0
    .prologue
    .line 2259
    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    #@2
    .line 2260
    iput p2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    #@4
    .line 2262
    iget-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 2263
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    #@a
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@d
    .line 2264
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    #@10
    .line 2258
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 2277
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    #@3
    .line 2278
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    #@5
    iget v1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    #@7
    iget v2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    #@c
    .line 2276
    return-void
.end method
