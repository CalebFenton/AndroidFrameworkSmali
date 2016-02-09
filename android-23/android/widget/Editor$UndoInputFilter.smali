.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mHasComposition:Z

.field private mIsUserEdit:Z


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 5118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 5119
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@5
    .line 5118
    return-void
.end method

.method private canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5253
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@3
    iget-boolean v0, v0, Landroid/widget/Editor;->mAllowUndo:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 5255
    return v1

    #@8
    .line 5258
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@a
    invoke-static {v0}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/content/UndoManager;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/content/UndoManager;->isInUndo()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 5260
    return v1

    #@15
    .line 5266
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->-wrap7(Ljava/lang/CharSequence;II)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->-wrap7(Ljava/lang/CharSequence;II)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 5273
    if-ne p2, p3, :cond_3

    #@23
    if-ne p5, p6, :cond_3

    #@25
    .line 5275
    return v1

    #@26
    .line 5268
    :cond_2
    return v1

    #@27
    .line 5278
    :cond_3
    const/4 v0, 0x1

    #@28
    return v0
.end method

.method private handleCompositionEdit(Ljava/lang/CharSequence;III)Z
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dstart"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 5174
    invoke-direct {p0, p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 5175
    iput-boolean v5, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    #@a
    .line 5176
    return v5

    #@b
    .line 5178
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    #@d
    .line 5179
    .local v1, "hadComposition":Z
    iput-boolean v6, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    #@f
    .line 5182
    if-eqz v1, :cond_2

    #@11
    .line 5184
    if-ne p2, p3, :cond_1

    #@13
    .line 5185
    return v5

    #@14
    .line 5189
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 5190
    .local v2, "newText":Ljava/lang/String;
    new-instance v0, Landroid/widget/Editor$EditOperation;

    #@1a
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@1c
    const-string/jumbo v4, ""

    #@1f
    invoke-direct {v0, v3, v4, p4, v2}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V

    #@22
    .line 5191
    .local v0, "edit":Landroid/widget/Editor$EditOperation;
    invoke-direct {p0, v0, v6}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;Z)V

    #@25
    .line 5192
    return v5

    #@26
    .line 5196
    .end local v0    # "edit":Landroid/widget/Editor$EditOperation;
    .end local v2    # "newText":Ljava/lang/String;
    :cond_2
    return v6
.end method

.method private handleKeyboardEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)V
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    #@0
    .prologue
    .line 5205
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    #@3
    move-result v1

    #@4
    .line 5208
    .local v1, "forceMerge":Z
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 5209
    .local v2, "newText":Ljava/lang/String;
    invoke-static {p4, p5, p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 5210
    .local v3, "oldText":Ljava/lang/String;
    new-instance v0, Landroid/widget/Editor$EditOperation;

    #@e
    iget-object v4, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@10
    invoke-direct {v0, v4, v3, p5, v2}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V

    #@13
    .line 5211
    .local v0, "edit":Landroid/widget/Editor$EditOperation;
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;Z)V

    #@16
    .line 5200
    return-void
.end method

.method private isComposition(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5282
    instance-of v4, p1, Landroid/text/Spannable;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 5283
    return v3

    #@6
    :cond_0
    move-object v2, p1

    #@7
    .line 5286
    check-cast v2, Landroid/text/Spannable;

    #@9
    .line 5287
    .local v2, "text":Landroid/text/Spannable;
    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    #@c
    move-result v0

    #@d
    .line 5288
    .local v0, "composeBegin":I
    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    #@10
    move-result v1

    #@11
    .line 5289
    .local v1, "composeEnd":I
    if-ge v0, v1, :cond_1

    #@13
    const/4 v3, 0x1

    #@14
    :cond_1
    return v3
.end method

.method private isInTextWatcher()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5293
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@3
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    .line 5294
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 5295
    check-cast v0, Landroid/text/SpannableStringBuilder;

    #@11
    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    #@14
    move-result v2

    #@15
    if-lez v2, :cond_0

    #@17
    const/4 v1, 0x1

    #@18
    .line 5294
    :cond_0
    return v1
.end method

.method private recordEdit(Landroid/widget/Editor$EditOperation;Z)V
    .locals 6
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;
    .param p2, "forceMerge"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5220
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@3
    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/content/UndoManager;

    #@6
    move-result-object v1

    #@7
    .line 5221
    .local v1, "um":Landroid/content/UndoManager;
    const-string/jumbo v2, "Edit text"

    #@a
    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    #@d
    .line 5223
    const-class v2, Landroid/widget/Editor$EditOperation;

    #@f
    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@11
    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    #@14
    move-result-object v3

    #@15
    const/4 v4, 0x1

    #@16
    .line 5222
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/widget/Editor$EditOperation;

    #@1c
    .line 5224
    .local v0, "lastEdit":Landroid/widget/Editor$EditOperation;
    if-nez v0, :cond_1

    #@1e
    .line 5227
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    #@21
    .line 5248
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    #@24
    .line 5218
    return-void

    #@25
    .line 5228
    :cond_1
    if-eqz p2, :cond_2

    #@27
    .line 5232
    invoke-virtual {v0, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    #@2a
    goto :goto_0

    #@2b
    .line 5233
    :cond_2
    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    #@2d
    if-nez v2, :cond_3

    #@2f
    .line 5237
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@31
    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    #@38
    .line 5238
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    #@3b
    goto :goto_0

    #@3c
    .line 5239
    :cond_3
    invoke-static {v0, p1}, Landroid/widget/Editor$EditOperation;->-wrap0(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    #@3f
    move-result v2

    #@40
    if-nez v2, :cond_0

    #@42
    .line 5245
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    #@44
    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    #@4b
    .line 5246
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    #@4e
    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 5137
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    #@3
    .line 5135
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 5142
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    #@3
    .line 5140
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5154
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 5155
    return-object v1

    #@8
    .line 5159
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/widget/Editor$UndoInputFilter;->handleCompositionEdit(Ljava/lang/CharSequence;III)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 5160
    return-object v1

    #@f
    .line 5164
    :cond_1
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->handleKeyboardEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)V

    #@12
    .line 5165
    return-object v1
.end method

.method public restoreInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 5128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    move v0, v1

    #@9
    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    #@b
    .line 5129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    #@13
    .line 5127
    return-void

    #@14
    :cond_0
    move v0, v2

    #@15
    .line 5128
    goto :goto_0

    #@16
    :cond_1
    move v1, v2

    #@17
    .line 5129
    goto :goto_1
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 5123
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 5124
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 5122
    return-void

    #@12
    :cond_0
    move v0, v2

    #@13
    .line 5123
    goto :goto_0

    #@14
    :cond_1
    move v1, v2

    #@15
    .line 5124
    goto :goto_1
.end method
