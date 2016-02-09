.class Landroid/widget/Editor$InputMethodState;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputMethodState"
.end annotation


# instance fields
.field mBatchEditNesting:I

.field mChangedDelta:I

.field mChangedEnd:I

.field mChangedStart:I

.field mContentChanged:Z

.field mCursorChanged:Z

.field final mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

.field mSelectionModeChanged:Z


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 5087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 5089
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    #@5
    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    #@8
    iput-object v0, p0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@a
    .line 5087
    return-void
.end method
