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
.field private final greylist-max-o mInputText:Landroid/widget/EditText;

.field private greylist-max-o mPosted:Z

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/EditText;)V
    .registers 2
    .param p1, "inputText"    # Landroid/widget/EditText;

    .line 2400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2401
    iput-object p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    .line 2402
    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 2

    .line 2415
    iget-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    if-eqz v0, :cond_c

    .line 2416
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2417
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 2419
    :cond_c
    return-void
.end method

.method public greylist-max-o post(II)V
    .registers 4
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 2405
    iput p1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 2406
    iput p2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 2408
    iget-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    if-nez v0, :cond_10

    .line 2409
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 2410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 2412
    :cond_10
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 2423
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 2424
    iget-object v0, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2425
    return-void
.end method
