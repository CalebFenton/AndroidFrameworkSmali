.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$1;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS:F = 0.5f

.field private static final MENU_ITEM_ORDER_COPY:I = 0x2

.field private static final MENU_ITEM_ORDER_CUT:I = 0x1

.field private static final MENU_ITEM_ORDER_PASTE:I = 0x3

.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0xa

.field private static final MENU_ITEM_ORDER_REPLACE:I = 0x6

.field private static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x5

.field private static final MENU_ITEM_ORDER_SHARE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final UNSET_X_VALUE:I = -0x1


# instance fields
.field mAllowUndo:Z

.field mBlink:Landroid/widget/Editor$Blink;

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mDiscardNextActionUp:Z

.field mDoubleTap:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field private mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsInsertionActionModeStartPending:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field mPreserveDetachedSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field mTextActionMode:Landroid/view/ActionMode;

.field mTextIsSelectable:Z

.field mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field final mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final mUndoManager:Landroid/content/UndoManager;

.field private mUndoOwner:Landroid/content/UndoOwner;

.field private mUpdateWordIteratorText:Z

.field mWordIterator:Landroid/text/method/WordIterator;

.field private mWordIteratorWithText:Landroid/text/method/WordIterator;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/Editor;)Landroid/text/Layout;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Landroid/widget/Editor;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(Landroid/widget/Editor;Landroid/text/Layout;IF)I
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap12(Landroid/widget/Editor;IZ)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap13(Landroid/widget/Editor;I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap14(Landroid/widget/Editor;I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap15(Landroid/widget/Editor;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Landroid/widget/Editor;IIZ)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Landroid/widget/Editor;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/Editor;I)Z
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Landroid/widget/Editor;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(Landroid/widget/Editor;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 126
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    #@5
    .line 127
    const/16 v0, 0x14

    #@7
    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    #@9
    .line 121
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 144
    new-instance v0, Landroid/content/UndoManager;

    #@8
    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@d
    .line 145
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@f
    const-string/jumbo v1, "Editor"

    #@12
    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@18
    .line 146
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    #@1a
    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    #@1d
    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@1f
    .line 147
    iput-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    #@21
    .line 179
    iput v2, p0, Landroid/widget/Editor;->mInputType:I

    #@23
    .line 187
    iput-boolean v3, p0, Landroid/widget/Editor;->mCursorVisible:Z

    #@25
    .line 204
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@27
    .line 212
    const/4 v0, 0x2

    #@28
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    #@2a
    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@2c
    .line 229
    iput-boolean v2, p0, Landroid/widget/Editor;->mDoubleTap:Z

    #@2e
    .line 253
    new-instance v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    #@30
    invoke-direct {v0, p0, v4}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier;)V

    #@33
    iput-object v0, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    #@35
    .line 255
    new-instance v0, Landroid/widget/Editor$1;

    #@37
    invoke-direct {v0, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    #@3a
    iput-object v0, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    #@3c
    .line 264
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    #@3e
    .line 267
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@40
    .line 269
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@42
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@44
    invoke-virtual {v1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    #@4b
    .line 270
    new-instance v0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@4d
    invoke-direct {v0, p0, v4}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler;)V

    #@50
    iput-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@52
    .line 266
    return-void
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 708
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    #@7
    move-result v2

    #@8
    add-int v11, v1, v2

    #@a
    .line 709
    .local v11, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    #@11
    move-result v2

    #@12
    add-int v8, v1, v2

    #@14
    .line 711
    .local v8, "ht":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@16
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v1

    #@1a
    .line 712
    const v2, 0x1050052

    #@1d
    .line 711
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@20
    move-result v3

    #@21
    .line 713
    .local v3, "defaultWidthInPixels":I
    new-instance v0, Landroid/text/StaticLayout;

    #@23
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@26
    move-result-object v2

    #@27
    .line 714
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@29
    const/high16 v5, 0x3f800000    # 1.0f

    #@2b
    const/4 v6, 0x0

    #@2c
    const/4 v7, 0x1

    #@2d
    move-object v1, p2

    #@2e
    .line 713
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    #@31
    .line 715
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    #@32
    .line 716
    .local v10, "max":F
    const/4 v9, 0x0

    #@33
    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    #@36
    move-result v1

    #@37
    if-ge v9, v1, :cond_0

    #@39
    .line 717
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    #@3c
    move-result v1

    #@3d
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    #@40
    move-result v10

    #@41
    .line 716
    add-int/lit8 v9, v9, 0x1

    #@43
    goto :goto_0

    #@44
    .line 724
    :cond_0
    float-to-double v4, v10

    #@45
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@48
    move-result-wide v4

    #@49
    double-to-int v1, v4

    #@4a
    add-int/2addr v1, v11

    #@4b
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@4e
    .line 725
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@51
    move-result v1

    #@52
    add-int/2addr v1, v8

    #@53
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@56
    .line 707
    return-void
.end method

.method private destroyDisplayListsData()V
    .locals 3

    #@0
    .prologue
    .line 411
    iget-object v2, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2
    if-eqz v2, :cond_2

    #@4
    .line 412
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@7
    array-length v2, v2

    #@8
    if-ge v1, v2, :cond_2

    #@a
    .line 413
    iget-object v2, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@c
    aget-object v2, v2, v1

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 414
    iget-object v2, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@12
    aget-object v2, v2, v1

    #@14
    iget-object v0, v2, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    #@16
    .line 415
    :goto_1
    if-eqz v0, :cond_0

    #@18
    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 416
    invoke-virtual {v0}, Landroid/view/RenderNode;->destroyDisplayListData()V

    #@21
    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 414
    :cond_1
    const/4 v0, 0x0

    #@25
    .local v0, "displayList":Landroid/view/RenderNode;
    goto :goto_1

    #@26
    .line 410
    .end local v0    # "displayList":Landroid/view/RenderNode;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1138
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@6
    move-result-object v4

    #@7
    .line 1139
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    #@9
    if-eqz v5, :cond_1

    #@b
    move-object v2, v4

    #@c
    .line 1140
    check-cast v2, Landroid/text/Spannable;

    #@e
    .line 1142
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    #@11
    move-result v5

    #@12
    const-class v6, Landroid/text/style/SuggestionSpan;

    #@14
    .line 1141
    invoke-interface {v2, v7, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, [Landroid/text/style/SuggestionSpan;

    #@1a
    .line 1143
    .local v3, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    array-length v5, v3

    #@1c
    if-ge v1, v5, :cond_1

    #@1e
    .line 1144
    aget-object v5, v3, v1

    #@20
    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@23
    move-result v0

    #@24
    .line 1145
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 1146
    and-int/lit8 v5, v0, 0x2

    #@2a
    if-nez v5, :cond_0

    #@2c
    .line 1147
    and-int/lit8 v0, v0, -0x2

    #@2e
    .line 1148
    aget-object v5, v3, v1

    #@30
    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    #@33
    .line 1143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1137
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1634
    if-eqz p2, :cond_1

    #@3
    const/4 v1, 0x1

    #@4
    .line 1635
    .local v1, "translate":Z
    :goto_0
    if-eqz v1, :cond_0

    #@6
    int-to-float v2, p2

    #@7
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@a
    .line 1636
    :cond_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 1637
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@16
    .line 1636
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_1

    #@19
    .line 1634
    .end local v0    # "i":I
    .end local v1    # "translate":Z
    :cond_1
    const/4 v1, 0x0

    #@1a
    .restart local v1    # "translate":Z
    goto :goto_0

    #@1b
    .line 1639
    .restart local v0    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    #@1d
    neg-int v2, p2

    #@1e
    int-to-float v2, v2

    #@1f
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@22
    .line 1633
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    #@0
    .prologue
    .line 1516
    move-object/from16 v0, p2

    #@2
    move-object/from16 v1, p1

    #@4
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    #@7
    move-result-wide v28

    #@8
    .line 1517
    .local v28, "lineRange":J
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@b
    move-result v9

    #@c
    .line 1518
    .local v9, "firstLine":I
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@f
    move-result v10

    #@10
    .line 1519
    .local v10, "lastLine":I
    if-gez v10, :cond_0

    #@12
    return-void

    #@13
    :cond_0
    move-object/from16 v4, p2

    #@15
    move-object/from16 v5, p1

    #@17
    move-object/from16 v6, p3

    #@19
    move-object/from16 v7, p4

    #@1b
    move/from16 v8, p5

    #@1d
    .line 1521
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    #@20
    .line 1524
    move-object/from16 v0, p2

    #@22
    instance-of v4, v0, Landroid/text/DynamicLayout;

    #@24
    if-eqz v4, :cond_c

    #@26
    .line 1525
    move-object/from16 v0, p0

    #@28
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2a
    if-nez v4, :cond_1

    #@2c
    .line 1526
    const-class v4, Landroid/widget/Editor$TextRenderNode;

    #@2e
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    #@34
    move-object/from16 v0, p0

    #@36
    iput-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@38
    :cond_1
    move-object/from16 v21, p2

    #@3a
    .line 1529
    check-cast v21, Landroid/text/DynamicLayout;

    #@3c
    .line 1530
    .local v21, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    #@3f
    move-result-object v15

    #@40
    .line 1531
    .local v15, "blockEndLines":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    #@43
    move-result-object v17

    #@44
    .line 1532
    .local v17, "blockIndices":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    #@47
    move-result v31

    #@48
    .line 1533
    .local v31, "numberOfBlocks":I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    #@4b
    move-result v24

    #@4c
    .line 1535
    .local v24, "indexFirstChangedBlock":I
    const/16 v22, -0x1

    #@4e
    .line 1536
    .local v22, "endOfPreviousBlock":I
    const/16 v33, 0x0

    #@50
    .line 1537
    .local v33, "searchStartIndex":I
    const/16 v23, 0x0

    #@52
    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    #@54
    move/from16 v1, v31

    #@56
    if-ge v0, v1, :cond_b

    #@58
    .line 1538
    aget v14, v15, v23

    #@5a
    .line 1539
    .local v14, "blockEndLine":I
    aget v16, v17, v23

    #@5c
    .line 1541
    .local v16, "blockIndex":I
    const/4 v4, -0x1

    #@5d
    move/from16 v0, v16

    #@5f
    if-ne v0, v4, :cond_6

    #@61
    const/16 v18, 0x1

    #@63
    .line 1542
    .local v18, "blockIsInvalid":Z
    :goto_1
    if-eqz v18, :cond_3

    #@65
    .line 1543
    move-object/from16 v0, p0

    #@67
    move-object/from16 v1, v17

    #@69
    move/from16 v2, v31

    #@6b
    move/from16 v3, v33

    #@6d
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    #@70
    move-result v16

    #@71
    .line 1546
    aput v16, v17, v23

    #@73
    .line 1547
    move-object/from16 v0, p0

    #@75
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@77
    aget-object v4, v4, v16

    #@79
    if-eqz v4, :cond_2

    #@7b
    .line 1548
    move-object/from16 v0, p0

    #@7d
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@7f
    aget-object v4, v4, v16

    #@81
    const/4 v5, 0x1

    #@82
    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    #@84
    .line 1550
    :cond_2
    add-int/lit8 v33, v16, 0x1

    #@86
    .line 1553
    :cond_3
    move-object/from16 v0, p0

    #@88
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@8a
    aget-object v4, v4, v16

    #@8c
    if-nez v4, :cond_4

    #@8e
    .line 1554
    move-object/from16 v0, p0

    #@90
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@92
    .line 1555
    new-instance v5, Landroid/widget/Editor$TextRenderNode;

    #@94
    new-instance v6, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v7, "Text "

    #@9c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v6

    #@a0
    move/from16 v0, v16

    #@a2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v6

    #@aa
    invoke-direct {v5, v6}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    #@ad
    .line 1554
    aput-object v5, v4, v16

    #@af
    .line 1558
    :cond_4
    move-object/from16 v0, p0

    #@b1
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@b3
    aget-object v4, v4, v16

    #@b5
    invoke-virtual {v4}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    #@b8
    move-result v13

    #@b9
    .line 1559
    .local v13, "blockDisplayListIsInvalid":Z
    move-object/from16 v0, p0

    #@bb
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@bd
    aget-object v4, v4, v16

    #@bf
    iget-object v12, v4, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    #@c1
    .line 1560
    .local v12, "blockDisplayList":Landroid/view/RenderNode;
    move/from16 v0, v23

    #@c3
    move/from16 v1, v24

    #@c5
    if-ge v0, v1, :cond_5

    #@c7
    if-eqz v13, :cond_a

    #@c9
    .line 1561
    :cond_5
    add-int/lit8 v11, v22, 0x1

    #@cb
    .line 1562
    .local v11, "blockBeginLine":I
    move-object/from16 v0, p2

    #@cd
    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    #@d0
    move-result v34

    #@d1
    .line 1563
    .local v34, "top":I
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBottom(I)I

    #@d6
    move-result v19

    #@d7
    .line 1564
    .local v19, "bottom":I
    const/16 v25, 0x0

    #@d9
    .line 1565
    .local v25, "left":I
    move-object/from16 v0, p0

    #@db
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@dd
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    #@e0
    move-result v32

    #@e1
    .line 1566
    .local v32, "right":I
    move-object/from16 v0, p0

    #@e3
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@e5
    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    #@e8
    move-result v4

    #@e9
    if-eqz v4, :cond_8

    #@eb
    .line 1567
    const v30, 0x7f7fffff    # Float.MAX_VALUE

    #@ee
    .line 1568
    .local v30, "min":F
    const/16 v27, 0x1

    #@f0
    .line 1569
    .local v27, "max":F
    move/from16 v26, v11

    #@f2
    .local v26, "line":I
    :goto_2
    move/from16 v0, v26

    #@f4
    if-gt v0, v14, :cond_7

    #@f6
    .line 1570
    move-object/from16 v0, p2

    #@f8
    move/from16 v1, v26

    #@fa
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    #@fd
    move-result v4

    #@fe
    move/from16 v0, v30

    #@100
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    #@103
    move-result v30

    #@104
    .line 1571
    move-object/from16 v0, p2

    #@106
    move/from16 v1, v26

    #@108
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    #@10b
    move-result v4

    #@10c
    move/from16 v0, v27

    #@10e
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    #@111
    move-result v27

    #@112
    .line 1569
    add-int/lit8 v26, v26, 0x1

    #@114
    goto :goto_2

    #@115
    .line 1541
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_6
    const/16 v18, 0x0

    #@117
    .restart local v18    # "blockIsInvalid":Z
    goto/16 :goto_1

    #@119
    .line 1573
    .restart local v11    # "blockBeginLine":I
    .restart local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .restart local v13    # "blockDisplayListIsInvalid":Z
    .restart local v19    # "bottom":I
    .restart local v25    # "left":I
    .restart local v26    # "line":I
    .restart local v27    # "max":F
    .restart local v30    # "min":F
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :cond_7
    move/from16 v0, v30

    #@11b
    float-to-int v0, v0

    #@11c
    move/from16 v25, v0

    #@11e
    .line 1574
    const/high16 v4, 0x3f000000    # 0.5f

    #@120
    add-float v4, v4, v27

    #@122
    float-to-int v0, v4

    #@123
    move/from16 v32, v0

    #@125
    .line 1578
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    :cond_8
    if-eqz v13, :cond_9

    #@127
    .line 1580
    sub-int v4, v32, v25

    #@129
    sub-int v5, v19, v34

    #@12b
    .line 1579
    invoke-virtual {v12, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    #@12e
    move-result-object v20

    #@12f
    .line 1584
    .local v20, "displayListCanvas":Landroid/view/DisplayListCanvas;
    move/from16 v0, v25

    #@131
    neg-int v4, v0

    #@132
    int-to-float v4, v4

    #@133
    move/from16 v0, v34

    #@135
    neg-int v5, v0

    #@136
    int-to-float v5, v5

    #@137
    :try_start_0
    move-object/from16 v0, v20

    #@139
    invoke-virtual {v0, v4, v5}, Landroid/view/DisplayListCanvas;->translate(FF)V

    #@13c
    .line 1585
    move-object/from16 v0, p2

    #@13e
    move-object/from16 v1, v20

    #@140
    invoke-virtual {v0, v1, v11, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    #@143
    .line 1586
    move-object/from16 v0, p0

    #@145
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@147
    aget-object v4, v4, v16

    #@149
    const/4 v5, 0x0

    #@14a
    iput-boolean v5, v4, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14c
    .line 1590
    move-object/from16 v0, v20

    #@14e
    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@151
    .line 1592
    const/4 v4, 0x0

    #@152
    invoke-virtual {v12, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    #@155
    .line 1598
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    :cond_9
    move/from16 v0, v25

    #@157
    move/from16 v1, v34

    #@159
    move/from16 v2, v32

    #@15b
    move/from16 v3, v19

    #@15d
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    #@160
    .end local v11    # "blockBeginLine":I
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_a
    move-object/from16 v4, p1

    #@162
    .line 1601
    check-cast v4, Landroid/view/DisplayListCanvas;

    #@164
    invoke-virtual {v4, v12}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    #@167
    .line 1603
    move/from16 v22, v14

    #@169
    .line 1537
    add-int/lit8 v23, v23, 0x1

    #@16b
    goto/16 :goto_0

    #@16d
    .line 1589
    .restart local v11    # "blockBeginLine":I
    .restart local v19    # "bottom":I
    .restart local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .restart local v25    # "left":I
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :catchall_0
    move-exception v4

    #@16e
    .line 1590
    move-object/from16 v0, v20

    #@170
    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@173
    .line 1592
    const/4 v5, 0x0

    #@174
    invoke-virtual {v12, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    #@177
    .line 1589
    throw v4

    #@178
    .line 1606
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v14    # "blockEndLine":I
    .end local v16    # "blockIndex":I
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_b
    move-object/from16 v0, v21

    #@17a
    move/from16 v1, v31

    #@17c
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    #@17f
    .line 1515
    .end local v15    # "blockEndLines":[I
    .end local v17    # "blockIndices":[I
    .end local v21    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v22    # "endOfPreviousBlock":I
    .end local v23    # "i":I
    .end local v24    # "indexFirstChangedBlock":I
    .end local v31    # "numberOfBlocks":I
    .end local v33    # "searchStartIndex":I
    :goto_3
    return-void

    #@180
    .line 1609
    :cond_c
    move-object/from16 v0, p2

    #@182
    move-object/from16 v1, p1

    #@184
    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    #@187
    goto :goto_3
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 9
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1342
    if-eqz p1, :cond_0

    #@4
    if-nez p5, :cond_1

    #@6
    .line 1343
    :cond_0
    return v7

    #@7
    .line 1346
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@9
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@c
    move-result-object v1

    #@d
    .line 1347
    .local v1, "content":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    #@f
    .line 1348
    return v7

    #@10
    .line 1351
    :cond_2
    const/4 v6, -0x2

    #@11
    if-eq p2, v6, :cond_e

    #@13
    .line 1352
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@16
    move-result v0

    #@17
    .line 1353
    .local v0, "N":I
    if-gez p2, :cond_6

    #@19
    .line 1354
    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    #@1b
    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@1d
    .line 1355
    const/4 p2, 0x0

    #@1e
    .line 1356
    move p3, v0

    #@1f
    .line 1389
    :cond_3
    :goto_0
    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    #@21
    and-int/lit8 v6, v6, 0x1

    #@23
    if-eqz v6, :cond_d

    #@25
    .line 1390
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@28
    move-result-object v6

    #@29
    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@2b
    .line 1401
    .end local v0    # "N":I
    :goto_1
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@2d
    .line 1402
    const/16 v6, 0x800

    #@2f
    invoke-static {v1, v6}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_4

    #@35
    .line 1403
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@37
    or-int/lit8 v6, v6, 0x2

    #@39
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@3b
    .line 1405
    :cond_4
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3d
    invoke-virtual {v6}, Landroid/widget/TextView;->isSingleLine()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_5

    #@43
    .line 1406
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@45
    or-int/lit8 v6, v6, 0x1

    #@47
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@49
    .line 1408
    :cond_5
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    #@4b
    .line 1409
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4d
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    #@50
    move-result v6

    #@51
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    #@53
    .line 1410
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@55
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    #@58
    move-result v6

    #@59
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    #@5b
    .line 1411
    const/4 v6, 0x1

    #@5c
    return v6

    #@5d
    .line 1360
    .restart local v0    # "N":I
    :cond_6
    add-int/2addr p3, p4

    #@5e
    .line 1362
    instance-of v6, v1, Landroid/text/Spanned;

    #@60
    if-eqz v6, :cond_9

    #@62
    move-object v4, v1

    #@63
    .line 1363
    check-cast v4, Landroid/text/Spanned;

    #@65
    .line 1365
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Landroid/text/ParcelableSpan;

    #@67
    .line 1364
    invoke-interface {v4, p2, p3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@6a
    move-result-object v5

    #@6b
    .line 1366
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    #@6c
    .line 1367
    .local v2, "i":I
    :cond_7
    :goto_2
    if-lez v2, :cond_9

    #@6e
    .line 1368
    add-int/lit8 v2, v2, -0x1

    #@70
    .line 1369
    aget-object v6, v5, v2

    #@72
    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@75
    move-result v3

    #@76
    .line 1370
    .local v3, "j":I
    if-ge v3, p2, :cond_8

    #@78
    move p2, v3

    #@79
    .line 1371
    :cond_8
    aget-object v6, v5, v2

    #@7b
    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@7e
    move-result v3

    #@7f
    .line 1372
    if-le v3, p3, :cond_7

    #@81
    move p3, v3

    #@82
    goto :goto_2

    #@83
    .line 1375
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_9
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@85
    .line 1376
    sub-int v6, p3, p4

    #@87
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    #@89
    .line 1378
    if-le p2, v0, :cond_b

    #@8b
    .line 1379
    move p2, v0

    #@8c
    .line 1383
    :cond_a
    :goto_3
    if-le p3, v0, :cond_c

    #@8e
    .line 1384
    move p3, v0

    #@8f
    goto :goto_0

    #@90
    .line 1380
    :cond_b
    if-gez p2, :cond_a

    #@92
    .line 1381
    const/4 p2, 0x0

    #@93
    goto :goto_3

    #@94
    .line 1385
    :cond_c
    if-gez p3, :cond_3

    #@96
    .line 1386
    const/4 p3, 0x0

    #@97
    goto :goto_0

    #@98
    .line 1393
    :cond_d
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@9e
    goto :goto_1

    #@9f
    .line 1397
    .end local v0    # "N":I
    :cond_e
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@a1
    .line 1398
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    #@a3
    .line 1399
    const-string/jumbo v6, ""

    #@a6
    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@a8
    goto :goto_1
.end method

.method private getActiveLayout()Landroid/text/Layout;
    .locals 3

    #@0
    .prologue
    .line 3867
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@5
    move-result-object v1

    #@6
    .line 3868
    .local v1, "layout":Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v2}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    #@b
    move-result-object v0

    #@c
    .line 3869
    .local v0, "hintLayout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    #@f
    move-result-object v2

    #@10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 3870
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 3873
    :cond_0
    :goto_0
    return-object v1

    #@23
    .line 3871
    :cond_1
    move-object v1, v0

    #@24
    goto :goto_0
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 6
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    #@0
    .prologue
    .line 1615
    iget-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2
    array-length v3, v4

    #@3
    .line 1616
    .local v3, "length":I
    move v1, p3

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@6
    .line 1617
    const/4 v0, 0x0

    #@7
    .line 1618
    .local v0, "blockIndexFound":Z
    const/4 v2, 0x0

    #@8
    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    #@a
    .line 1619
    aget v4, p1, v2

    #@c
    if-ne v4, v1, :cond_1

    #@e
    .line 1620
    const/4 v0, 0x1

    #@f
    .line 1624
    :cond_0
    if-eqz v0, :cond_2

    #@11
    .line 1616
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1618
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_1

    #@17
    .line 1625
    :cond_2
    return v1

    #@18
    .line 1629
    .end local v0    # "blockIndexFound":Z
    .end local v2    # "j":I
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-static {v4, v3, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, [Landroid/widget/Editor$TextRenderNode;

    #@21
    iput-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@23
    .line 1630
    return v3
.end method

.method private getCharClusterRange(I)J
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 883
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result v0

    #@b
    .line 884
    .local v0, "textLength":I
    if-ge p1, v0, :cond_0

    #@d
    .line 885
    const/4 v1, 0x1

    #@e
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    #@11
    move-result v1

    #@12
    invoke-static {p1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@15
    move-result-wide v2

    #@16
    return-wide v2

    #@17
    .line 887
    :cond_0
    add-int/lit8 v1, p1, -0x1

    #@19
    if-ltz v1, :cond_1

    #@1b
    .line 888
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    #@1e
    move-result v1

    #@1f
    invoke-static {v1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@22
    move-result-wide v2

    #@23
    return-wide v2

    #@24
    .line 890
    :cond_1
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@27
    move-result-wide v2

    #@28
    return-wide v2
.end method

.method private getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 14
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    #@0
    .prologue
    .line 4527
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    move/from16 v0, p3

    #@4
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@7
    move-result v8

    #@8
    .line 4528
    .local v8, "trueLine":I
    if-eqz p1, :cond_0

    #@a
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@d
    move-result v12

    #@e
    move/from16 v0, p2

    #@10
    if-le v0, v12, :cond_1

    #@12
    .line 4531
    :cond_0
    return v8

    #@13
    .line 4529
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@16
    move-result v12

    #@17
    if-lez v12, :cond_0

    #@19
    if-ltz p2, :cond_0

    #@1b
    .line 4534
    sub-int v12, v8, p2

    #@1d
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    #@20
    move-result v12

    #@21
    const/4 v13, 0x2

    #@22
    if-lt v12, v13, :cond_2

    #@24
    .line 4536
    return v8

    #@25
    .line 4539
    :cond_2
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@27
    invoke-virtual {v12}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@2a
    move-result v12

    #@2b
    int-to-float v9, v12

    #@2c
    .line 4540
    .local v9, "verticalOffset":F
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@2f
    move-result v4

    #@30
    .line 4541
    .local v4, "lineCount":I
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@32
    invoke-virtual {v12}, Landroid/widget/TextView;->getLineHeight()I

    #@35
    move-result v12

    #@36
    int-to-float v12, v12

    #@37
    const/high16 v13, 0x3f000000    # 0.5f

    #@39
    mul-float v7, v12, v13

    #@3b
    .line 4543
    .local v7, "slop":F
    const/4 v12, 0x0

    #@3c
    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineTop(I)I

    #@3f
    move-result v12

    #@40
    int-to-float v12, v12

    #@41
    add-float v2, v12, v9

    #@43
    .line 4544
    .local v2, "firstLineTop":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    #@46
    move-result v12

    #@47
    int-to-float v12, v12

    #@48
    add-float v6, v12, v9

    #@4a
    .line 4545
    .local v6, "prevLineTop":F
    sub-float v12, v6, v7

    #@4c
    add-float v13, v2, v7

    #@4e
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    #@51
    move-result v11

    #@52
    .line 4547
    .local v11, "yTopBound":F
    add-int/lit8 v12, v4, -0x1

    #@54
    invoke-virtual {p1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    #@57
    move-result v12

    #@58
    int-to-float v12, v12

    #@59
    add-float v3, v12, v9

    #@5b
    .line 4548
    .local v3, "lastLineBottom":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    #@5e
    move-result v12

    #@5f
    int-to-float v12, v12

    #@60
    add-float v5, v12, v9

    #@62
    .line 4549
    .local v5, "prevLineBottom":F
    add-float v12, v5, v7

    #@64
    sub-float v13, v3, v7

    #@66
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    #@69
    move-result v10

    #@6a
    .line 4553
    .local v10, "yBottomBound":F
    cmpg-float v12, p3, v11

    #@6c
    if-gtz v12, :cond_3

    #@6e
    .line 4554
    add-int/lit8 v12, p2, -0x1

    #@70
    const/4 v13, 0x0

    #@71
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    #@74
    move-result v1

    #@75
    .line 4560
    .local v1, "currLine":I
    :goto_0
    return v1

    #@76
    .line 4555
    .end local v1    # "currLine":I
    :cond_3
    cmpl-float v12, p3, v10

    #@78
    if-ltz v12, :cond_4

    #@7a
    .line 4556
    add-int/lit8 v12, p2, 0x1

    #@7c
    add-int/lit8 v13, v4, -0x1

    #@7e
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    #@81
    move-result v1

    #@82
    .restart local v1    # "currLine":I
    goto :goto_0

    #@83
    .line 4558
    .end local v1    # "currLine":I
    :cond_4
    move/from16 v1, p2

    #@85
    .restart local v1    # "currLine":I
    goto :goto_0
.end method

.method private getErrorX()I
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/high16 v8, 0x41c80000    # 25.0f

    #@3
    const/high16 v7, 0x3f000000    # 0.5f

    #@5
    .line 502
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v6

    #@b
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object v6

    #@f
    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    #@11
    .line 504
    .local v4, "scale":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@13
    iget-object v0, v6, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@15
    .line 506
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    #@1a
    move-result v2

    #@1b
    .line 509
    .local v2, "layoutDirection":I
    packed-switch v2, :pswitch_data_0

    #@1e
    .line 512
    :pswitch_0
    if-eqz v0, :cond_0

    #@20
    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@22
    :cond_0
    neg-int v5, v5

    #@23
    div-int/lit8 v5, v5, 0x2

    #@25
    mul-float v6, v8, v4

    #@27
    add-float/2addr v6, v7

    #@28
    float-to-int v6, v6

    #@29
    add-int v3, v5, v6

    #@2b
    .line 513
    .local v3, "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2d
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    #@30
    move-result v5

    #@31
    iget-object v6, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@33
    invoke-virtual {v6}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    #@36
    move-result v6

    #@37
    sub-int/2addr v5, v6

    #@38
    .line 514
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3a
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    #@3d
    move-result v6

    #@3e
    .line 513
    sub-int/2addr v5, v6

    #@3f
    add-int v1, v5, v3

    #@41
    .line 521
    .local v1, "errorX":I
    :goto_0
    return v1

    #@42
    .line 517
    .end local v1    # "errorX":I
    .end local v3    # "offset":I
    :pswitch_1
    if-eqz v0, :cond_1

    #@44
    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@46
    :cond_1
    div-int/lit8 v5, v5, 0x2

    #@48
    mul-float v6, v8, v4

    #@4a
    add-float/2addr v6, v7

    #@4b
    float-to-int v6, v6

    #@4c
    sub-int v3, v5, v6

    #@4e
    .line 518
    .restart local v3    # "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@50
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    #@53
    move-result v5

    #@54
    add-int v1, v5, v3

    #@56
    .line 519
    .restart local v1    # "errorX":I
    goto :goto_0

    #@57
    .line 509
    nop

    #@58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getErrorY()I
    .locals 10

    #@0
    .prologue
    .line 533
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@5
    move-result v0

    #@6
    .line 534
    .local v0, "compoundPaddingTop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v7}, Landroid/widget/TextView;->getBottom()I

    #@b
    move-result v7

    #@c
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@e
    invoke-virtual {v8}, Landroid/widget/TextView;->getTop()I

    #@11
    move-result v8

    #@12
    sub-int/2addr v7, v8

    #@13
    .line 535
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@15
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@18
    move-result v8

    #@19
    .line 534
    sub-int/2addr v7, v8

    #@1a
    sub-int v6, v7, v0

    #@1c
    .line 537
    .local v6, "vspace":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1e
    iget-object v1, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@20
    .line 539
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@22
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutDirection()I

    #@25
    move-result v4

    #@26
    .line 541
    .local v4, "layoutDirection":I
    packed-switch v4, :pswitch_data_0

    #@29
    .line 544
    :pswitch_0
    if-eqz v1, :cond_0

    #@2b
    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@2d
    .line 551
    .local v2, "height":I
    :goto_0
    sub-int v7, v6, v2

    #@2f
    div-int/lit8 v7, v7, 0x2

    #@31
    add-int v3, v0, v7

    #@33
    .line 557
    .local v3, "icontop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@35
    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3c
    move-result-object v7

    #@3d
    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    #@3f
    .line 558
    .local v5, "scale":F
    add-int v7, v3, v2

    #@41
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@43
    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    #@46
    move-result v8

    #@47
    sub-int/2addr v7, v8

    #@48
    const/high16 v8, 0x40000000    # 2.0f

    #@4a
    mul-float/2addr v8, v5

    #@4b
    const/high16 v9, 0x3f000000    # 0.5f

    #@4d
    add-float/2addr v8, v9

    #@4e
    float-to-int v8, v8

    #@4f
    sub-int/2addr v7, v8

    #@50
    return v7

    #@51
    .line 544
    .end local v2    # "height":I
    .end local v3    # "icontop":I
    .end local v5    # "scale":F
    :cond_0
    const/4 v2, 0x0

    #@52
    .restart local v2    # "height":I
    goto :goto_0

    #@53
    .line 547
    .end local v2    # "height":I
    :pswitch_1
    if-eqz v1, :cond_1

    #@55
    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@57
    .restart local v2    # "height":I
    goto :goto_0

    #@58
    .end local v2    # "height":I
    :cond_1
    const/4 v2, 0x0

    #@59
    .restart local v2    # "height":I
    goto :goto_0

    #@5a
    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLastTapPosition()I
    .locals 2

    #@0
    .prologue
    .line 1173
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 1174
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@6
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    #@9
    move-result v0

    #@a
    .line 1175
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    #@c
    .line 1177
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@e
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@15
    move-result v1

    #@16
    if-le v0, v1, :cond_0

    #@18
    .line 1178
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1a
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@21
    move-result v0

    #@22
    .line 1180
    :cond_0
    return v0

    #@23
    .line 1184
    .end local v0    # "lastTapPosition":I
    :cond_1
    const/4 v1, -0x1

    #@24
    return v1
.end method

.method private getLastTouchOffsets()J
    .locals 6

    #@0
    .prologue
    .line 1034
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@3
    move-result-object v2

    #@4
    .line 1035
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    #@7
    move-result v1

    #@8
    .line 1036
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    #@b
    move-result v0

    #@c
    .line 1037
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@f
    move-result-wide v4

    #@10
    return-wide v4
.end method

.method private getNextCursorOffset(IZ)I
    .locals 9
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 873
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@6
    move-result-object v7

    #@7
    .line 874
    .local v7, "layout":Landroid/text/Layout;
    if-nez v7, :cond_0

    #@9
    return p1

    #@a
    .line 875
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    .line 876
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v7}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@17
    move-result v3

    #@18
    .line 877
    invoke-virtual {v7, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    const/4 v4, 0x1

    #@1f
    .line 878
    :goto_0
    if-eqz p2, :cond_2

    #@21
    move v6, v2

    #@22
    :goto_1
    move v5, p1

    #@23
    .line 876
    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    #@26
    move-result v8

    #@27
    .line 879
    .local v8, "nextOffset":I
    const/4 v0, -0x1

    #@28
    if-ne v8, v0, :cond_3

    #@2a
    .end local p1    # "offset":I
    :goto_2
    return p1

    #@2b
    .end local v8    # "nextOffset":I
    .restart local p1    # "offset":I
    :cond_1
    move v4, v2

    #@2c
    .line 877
    goto :goto_0

    #@2d
    .line 878
    :cond_2
    const/4 v6, 0x2

    #@2e
    goto :goto_1

    #@2f
    .restart local v8    # "nextOffset":I
    :cond_3
    move p1, v8

    #@30
    .line 879
    goto :goto_2
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 916
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 917
    new-instance v0, Landroid/widget/Editor$PositionListener;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener;)V

    #@a
    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@c
    .line 919
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@e
    return-object v0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x2

    #@2
    const/4 v4, 0x0

    #@3
    .line 2113
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v2

    #@9
    .line 2114
    const v3, 0x10900e7

    #@c
    .line 2113
    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/widget/TextView;

    #@12
    .line 2116
    .local v0, "shadowView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    #@14
    .line 2117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v3, "Unable to inflate text drag thumbnail"

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 2120
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@20
    move-result v2

    #@21
    sget v3, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    #@23
    if-le v2, v3, :cond_1

    #@25
    .line 2121
    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    #@27
    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@2a
    move-result-object p1

    #@2b
    .line 2123
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2e
    .line 2124
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@30
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@37
    .line 2126
    const/16 v2, 0x10

    #@39
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@3c
    .line 2127
    const/16 v2, 0x11

    #@3e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    #@41
    .line 2129
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@43
    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@46
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@49
    .line 2132
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@4c
    move-result v1

    #@4d
    .line 2133
    .local v1, "size":I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    #@50
    .line 2135
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@53
    move-result v2

    #@54
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@57
    move-result v3

    #@58
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    #@5b
    .line 2136
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    #@5e
    .line 2137
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    #@60
    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    #@63
    return-object v2
.end method

.method private getWordEnd(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 755
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    #@7
    move-result v0

    #@8
    .line 756
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 758
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    #@19
    move-result v0

    #@1a
    .line 763
    :goto_0
    const/4 v1, -0x1

    #@1b
    if-ne v0, v1, :cond_1

    #@1d
    .line 764
    return p1

    #@1e
    .line 761
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    .line 766
    :cond_1
    return v0
.end method

.method private getWordIteratorWithText()Landroid/text/method/WordIterator;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 856
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 857
    new-instance v1, Landroid/text/method/WordIterator;

    #@7
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@9
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    #@10
    iput-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    #@12
    .line 858
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    #@15
    .line 860
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 865
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1b
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1e
    move-result-object v0

    #@1f
    .line 866
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    #@21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@28
    .line 867
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    #@2a
    .line 869
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    #@2c
    return-object v1
.end method

.method private getWordStart(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 740
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    #@7
    move-result v0

    #@8
    .line 741
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 743
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    #@19
    move-result v0

    #@1a
    .line 748
    :goto_0
    const/4 v1, -0x1

    #@1b
    if-ne v0, v1, :cond_1

    #@1d
    .line 749
    return p1

    #@1e
    .line 746
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    .line 751
    :cond_1
    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 635
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@e
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 639
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    #@17
    .line 629
    return-void

    #@18
    .line 637
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@1a
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    #@1d
    goto :goto_0
.end method

.method private hideError()V
    .locals 1

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 485
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 486
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@e
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    #@11
    .line 490
    :cond_0
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@14
    .line 483
    return-void
.end method

.method private hideFloatingToolbar()V
    .locals 4

    #@0
    .prologue
    .line 1257
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1258
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6
    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 1259
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@d
    const-wide/16 v2, -0x1

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/view/ActionMode;->hide(J)V

    #@12
    .line 1256
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 625
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    #@9
    .line 623
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1907
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/text/Spannable;

    #@9
    .line 1908
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@b
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    #@e
    move-result v3

    #@f
    .line 1909
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@11
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    #@14
    move-result v4

    #@15
    const-class v5, Landroid/text/style/SuggestionSpan;

    #@17
    .line 1908
    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, [Landroid/text/style/SuggestionSpan;

    #@1d
    .line 1910
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@1f
    if-ge v0, v3, :cond_1

    #@21
    .line 1911
    aget-object v3, v2, v0

    #@23
    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@26
    move-result v3

    #@27
    and-int/lit8 v3, v3, 0x1

    #@29
    if-eqz v3, :cond_0

    #@2b
    .line 1912
    const/4 v3, 0x1

    #@2c
    return v3

    #@2d
    .line 1910
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 1915
    :cond_1
    return v6
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 968
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@5
    move-result-object v0

    #@6
    .line 969
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    #@8
    const/4 v4, 0x0

    #@9
    return v4

    #@a
    .line 971
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@d
    move-result v1

    #@e
    .line 972
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@11
    move-result v2

    #@12
    .line 973
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@15
    move-result v4

    #@16
    float-to-int v3, v4

    #@17
    .line 974
    .local v3, "primaryHorizontal":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@19
    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@1c
    move-result v4

    #@1d
    add-int/2addr v4, v3

    #@1e
    int-to-float v4, v4

    #@1f
    .line 975
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@21
    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@24
    move-result v5

    #@25
    add-int/2addr v5, v2

    #@26
    int-to-float v5, v5

    #@27
    .line 974
    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    #@2a
    move-result v4

    #@2b
    return v4
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 982
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@6
    move-result-object v0

    #@7
    .line 983
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    #@9
    return v3

    #@a
    .line 985
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@f
    move-result v1

    #@10
    .line 986
    .local v1, "line":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@15
    move-result p1

    #@16
    .line 988
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    #@19
    move-result v2

    #@1a
    cmpg-float v2, p1, v2

    #@1c
    if-gez v2, :cond_1

    #@1e
    return v3

    #@1f
    .line 989
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    #@22
    move-result v2

    #@23
    cmpl-float v2, p1, v2

    #@25
    if-lez v2, :cond_2

    #@27
    return v3

    #@28
    .line 990
    :cond_2
    const/4 v2, 0x1

    #@29
    return v2
.end method

.method private isPositionVisible(FF)Z
    .locals 11
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 928
    sget-object v5, Landroid/widget/Editor;->TEMP_POSITION:[F

    #@5
    monitor-enter v5

    #@6
    .line 929
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    #@8
    .line 930
    .local v2, "position":[F
    const/4 v4, 0x0

    #@9
    aput p1, v2, v4

    #@b
    .line 931
    const/4 v4, 0x1

    #@c
    aput p2, v2, v4

    #@e
    .line 932
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@10
    .line 934
    :goto_0
    if-eqz v3, :cond_5

    #@12
    .line 935
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@14
    if-eq v3, v4, :cond_0

    #@16
    .line 937
    const/4 v4, 0x0

    #@17
    aget v6, v2, v4

    #@19
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    #@1c
    move-result v7

    #@1d
    int-to-float v7, v7

    #@1e
    sub-float/2addr v6, v7

    #@1f
    aput v6, v2, v4

    #@21
    .line 938
    const/4 v4, 0x1

    #@22
    aget v6, v2, v4

    #@24
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    #@27
    move-result v7

    #@28
    int-to-float v7, v7

    #@29
    sub-float/2addr v6, v7

    #@2a
    aput v6, v2, v4

    #@2c
    .line 941
    :cond_0
    const/4 v4, 0x0

    #@2d
    aget v4, v2, v4

    #@2f
    cmpg-float v4, v4, v10

    #@31
    if-ltz v4, :cond_1

    #@33
    const/4 v4, 0x1

    #@34
    aget v4, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    cmpg-float v4, v4, v10

    #@38
    if-gez v4, :cond_2

    #@3a
    :cond_1
    monitor-exit v5

    #@3b
    .line 943
    return v8

    #@3c
    .line 942
    :cond_2
    const/4 v4, 0x0

    #@3d
    :try_start_1
    aget v4, v2, v4

    #@3f
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@42
    move-result v6

    #@43
    int-to-float v6, v6

    #@44
    cmpl-float v4, v4, v6

    #@46
    if-gtz v4, :cond_1

    #@48
    const/4 v4, 0x1

    #@49
    aget v4, v2, v4

    #@4b
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@4e
    move-result v6

    #@4f
    int-to-float v6, v6

    #@50
    cmpl-float v4, v4, v6

    #@52
    if-gtz v4, :cond_1

    #@54
    .line 946
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    #@5b
    move-result v4

    #@5c
    if-nez v4, :cond_3

    #@5e
    .line 947
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@65
    .line 950
    :cond_3
    const/4 v4, 0x0

    #@66
    aget v6, v2, v4

    #@68
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@6b
    move-result v7

    #@6c
    int-to-float v7, v7

    #@6d
    add-float/2addr v6, v7

    #@6e
    aput v6, v2, v4

    #@70
    .line 951
    const/4 v4, 0x1

    #@71
    aget v6, v2, v4

    #@73
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@76
    move-result v7

    #@77
    int-to-float v7, v7

    #@78
    add-float/2addr v6, v7

    #@79
    aput v6, v2, v4

    #@7b
    .line 953
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7e
    move-result-object v1

    #@7f
    .line 954
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/View;

    #@81
    if-eqz v4, :cond_4

    #@83
    .line 955
    move-object v0, v1

    #@84
    check-cast v0, Landroid/view/View;

    #@86
    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    .local v3, "view":Landroid/view/View;
    goto :goto_0

    #@88
    .line 958
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    #@89
    .local v3, "view":Landroid/view/View;
    goto :goto_0

    #@8a
    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    monitor-exit v5

    #@8b
    .line 964
    return v9

    #@8c
    .line 928
    .end local v2    # "position":[F
    :catchall_0
    move-exception v4

    #@8d
    monitor-exit v5

    #@8e
    throw v4
.end method

.method private static isValidRange(Ljava/lang/CharSequence;II)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5101
    if-ltz p1, :cond_0

    #@3
    if-gt p1, p2, :cond_0

    #@5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v1

    #@9
    if-gt p2, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method private resumeBlink()V
    .locals 1

    #@0
    .prologue
    .line 679
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 680
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    #@9
    .line 681
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    #@c
    .line 678
    :cond_0
    return-void
.end method

.method private selectCurrentWord()Z
    .locals 18

    #@0
    .prologue
    .line 774
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4
    move-object/from16 v16, v0

    #@6
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->canSelectText()Z

    #@9
    move-result v16

    #@a
    if-nez v16, :cond_0

    #@c
    .line 775
    const/16 v16, 0x0

    #@e
    return v16

    #@f
    .line 778
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@13
    move-object/from16 v16, v0

    #@15
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@18
    move-result v16

    #@19
    if-eqz v16, :cond_1

    #@1b
    .line 782
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1f
    move-object/from16 v16, v0

    #@21
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->selectAllText()Z

    #@24
    move-result v16

    #@25
    return v16

    #@26
    .line 785
    :cond_1
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2a
    move-object/from16 v16, v0

    #@2c
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getInputType()I

    #@2f
    move-result v2

    #@30
    .line 786
    .local v2, "inputType":I
    and-int/lit8 v3, v2, 0xf

    #@32
    .line 787
    .local v3, "klass":I
    and-int/lit16 v14, v2, 0xff0

    #@34
    .line 790
    .local v14, "variation":I
    const/16 v16, 0x2

    #@36
    move/from16 v0, v16

    #@38
    if-eq v3, v0, :cond_2

    #@3a
    .line 791
    const/16 v16, 0x3

    #@3c
    move/from16 v0, v16

    #@3e
    if-ne v3, v0, :cond_3

    #@40
    .line 797
    :cond_2
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@44
    move-object/from16 v16, v0

    #@46
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->selectAllText()Z

    #@49
    move-result v16

    #@4a
    return v16

    #@4b
    .line 792
    :cond_3
    const/16 v16, 0x4

    #@4d
    move/from16 v0, v16

    #@4f
    if-eq v3, v0, :cond_2

    #@51
    .line 793
    const/16 v16, 0x10

    #@53
    move/from16 v0, v16

    #@55
    if-eq v14, v0, :cond_2

    #@57
    .line 794
    const/16 v16, 0x20

    #@59
    move/from16 v0, v16

    #@5b
    if-eq v14, v0, :cond_2

    #@5d
    .line 795
    const/16 v16, 0xd0

    #@5f
    move/from16 v0, v16

    #@61
    if-eq v14, v0, :cond_2

    #@63
    .line 796
    const/16 v16, 0xb0

    #@65
    move/from16 v0, v16

    #@67
    if-eq v14, v0, :cond_2

    #@69
    .line 800
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    #@6c
    move-result-wide v4

    #@6d
    .line 801
    .local v4, "lastTouchOffsets":J
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@70
    move-result v7

    #@71
    .line 802
    .local v7, "minOffset":I
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@74
    move-result v6

    #@75
    .line 805
    .local v6, "maxOffset":I
    if-ltz v7, :cond_4

    #@77
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@7b
    move-object/from16 v16, v0

    #@7d
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@80
    move-result-object v16

    #@81
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    #@84
    move-result v16

    #@85
    move/from16 v0, v16

    #@87
    if-lt v7, v0, :cond_5

    #@89
    :cond_4
    const/16 v16, 0x0

    #@8b
    return v16

    #@8c
    .line 806
    :cond_5
    if-ltz v6, :cond_6

    #@8e
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@92
    move-object/from16 v16, v0

    #@94
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@97
    move-result-object v16

    #@98
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    #@9b
    move-result v16

    #@9c
    move/from16 v0, v16

    #@9e
    if-lt v6, v0, :cond_7

    #@a0
    :cond_6
    const/16 v16, 0x0

    #@a2
    return v16

    #@a3
    .line 811
    :cond_7
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@a7
    move-object/from16 v16, v0

    #@a9
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@ac
    move-result-object v16

    #@ad
    check-cast v16, Landroid/text/Spanned;

    #@af
    .line 812
    const-class v17, Landroid/text/style/URLSpan;

    #@b1
    .line 811
    move-object/from16 v0, v16

    #@b3
    move-object/from16 v1, v17

    #@b5
    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@b8
    move-result-object v13

    #@b9
    check-cast v13, [Landroid/text/style/URLSpan;

    #@bb
    .line 813
    .local v13, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v0, v13

    #@bc
    move/from16 v16, v0

    #@be
    const/16 v17, 0x1

    #@c0
    move/from16 v0, v16

    #@c2
    move/from16 v1, v17

    #@c4
    if-lt v0, v1, :cond_9

    #@c6
    .line 814
    const/16 v16, 0x0

    #@c8
    aget-object v12, v13, v16

    #@ca
    .line 815
    .local v12, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    #@cc
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@ce
    move-object/from16 v16, v0

    #@d0
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d3
    move-result-object v16

    #@d4
    check-cast v16, Landroid/text/Spanned;

    #@d6
    move-object/from16 v0, v16

    #@d8
    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@db
    move-result v11

    #@dc
    .line 816
    .local v11, "selectionStart":I
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@e0
    move-object/from16 v16, v0

    #@e2
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@e5
    move-result-object v16

    #@e6
    check-cast v16, Landroid/text/Spanned;

    #@e8
    move-object/from16 v0, v16

    #@ea
    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@ed
    move-result v10

    #@ee
    .line 835
    .end local v12    # "urlSpan":Landroid/text/style/URLSpan;
    .local v10, "selectionEnd":I
    :cond_8
    :goto_0
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@f2
    move-object/from16 v16, v0

    #@f4
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@f7
    move-result-object v16

    #@f8
    check-cast v16, Landroid/text/Spannable;

    #@fa
    move-object/from16 v0, v16

    #@fc
    invoke-static {v0, v11, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@ff
    .line 836
    if-le v10, v11, :cond_c

    #@101
    const/16 v16, 0x1

    #@103
    :goto_1
    return v16

    #@104
    .line 820
    .end local v10    # "selectionEnd":I
    .end local v11    # "selectionStart":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    #@107
    move-result-object v15

    #@108
    .line 821
    .local v15, "wordIterator":Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@10c
    move-object/from16 v16, v0

    #@10e
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@111
    move-result-object v16

    #@112
    move-object/from16 v0, v16

    #@114
    invoke-virtual {v15, v0, v7, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@117
    .line 823
    invoke-virtual {v15, v7}, Landroid/text/method/WordIterator;->getBeginning(I)I

    #@11a
    move-result v11

    #@11b
    .line 824
    .restart local v11    # "selectionStart":I
    invoke-virtual {v15, v6}, Landroid/text/method/WordIterator;->getEnd(I)I

    #@11e
    move-result v10

    #@11f
    .line 826
    .restart local v10    # "selectionEnd":I
    const/16 v16, -0x1

    #@121
    move/from16 v0, v16

    #@123
    if-eq v11, v0, :cond_a

    #@125
    const/16 v16, -0x1

    #@127
    move/from16 v0, v16

    #@129
    if-ne v10, v0, :cond_b

    #@12b
    .line 829
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    #@12d
    invoke-direct {v0, v7}, Landroid/widget/Editor;->getCharClusterRange(I)J

    #@130
    move-result-wide v8

    #@131
    .line 830
    .local v8, "range":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@134
    move-result v11

    #@135
    .line 831
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@138
    move-result v10

    #@139
    goto :goto_0

    #@13a
    .line 827
    .end local v8    # "range":J
    :cond_b
    if-ne v11, v10, :cond_8

    #@13c
    goto :goto_2

    #@13d
    .line 836
    .end local v15    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_c
    const/16 v16, 0x0

    #@13f
    goto :goto_1
.end method

.method private selectCurrentWordAndStartDrag()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1756
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1757
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@d
    .line 1759
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 1760
    return v2

    #@14
    .line 1762
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 1763
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@1a
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    #@1d
    .line 1765
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_3

    #@23
    .line 1766
    return v2

    #@24
    .line 1770
    :cond_3
    iput-boolean v3, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    #@26
    .line 1771
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@29
    .line 1772
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    #@2b
    .line 1774
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag()V

    #@32
    .line 1775
    return v3
.end method

.method private sendUpdateSelection()V
    .locals 7

    #@0
    .prologue
    .line 1455
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@6
    iget v1, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@8
    if-gtz v1, :cond_1

    #@a
    .line 1456
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@d
    move-result-object v0

    #@e
    .line 1457
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    #@10
    .line 1458
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    #@15
    move-result v2

    #@16
    .line 1459
    .local v2, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@18
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1b
    move-result v3

    #@1c
    .line 1460
    .local v3, "selectionEnd":I
    const/4 v4, -0x1

    #@1d
    .line 1461
    .local v4, "candStart":I
    const/4 v5, -0x1

    #@1e
    .line 1462
    .local v5, "candEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@20
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@23
    move-result-object v1

    #@24
    instance-of v1, v1, Landroid/text/Spannable;

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 1463
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2a
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@2d
    move-result-object v6

    #@2e
    check-cast v6, Landroid/text/Spannable;

    #@30
    .line 1464
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    #@33
    move-result v4

    #@34
    .line 1465
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    #@37
    move-result v5

    #@38
    .line 1469
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3a
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    #@3d
    .line 1454
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "selectionStart":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "candStart":I
    .end local v5    # "candEnd":I
    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 472
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@4
    .line 473
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    #@6
    .line 474
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8
    new-instance v0, Landroid/widget/TextView$Drawables;

    #@a
    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v0, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@13
    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@15
    .line 476
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    #@1a
    .line 478
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@1f
    .line 479
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@21
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    #@24
    .line 480
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@26
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    #@29
    .line 471
    return-void
.end method

.method private shouldBlink()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2059
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@9
    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 2061
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@11
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    #@14
    move-result v1

    #@15
    .line 2062
    .local v1, "start":I
    if-gez v1, :cond_1

    #@17
    return v2

    #@18
    .line 2059
    .end local v1    # "start":I
    :cond_0
    return v2

    #@19
    .line 2064
    .restart local v1    # "start":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1b
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1e
    move-result v0

    #@1f
    .line 2065
    .local v0, "end":I
    if-gez v0, :cond_2

    #@21
    return v2

    #@22
    .line 2067
    :cond_2
    if-ne v1, v0, :cond_3

    #@24
    const/4 v2, 0x1

    #@25
    :cond_3
    return v2
.end method

.method private shouldOfferToShowSuggestions()Z
    .locals 14

    #@0
    .prologue
    .line 1845
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@5
    move-result-object v10

    #@6
    .line 1846
    .local v10, "text":Ljava/lang/CharSequence;
    instance-of v13, v10, Landroid/text/Spannable;

    #@8
    if-nez v13, :cond_0

    #@a
    const/4 v13, 0x0

    #@b
    return v13

    #@c
    :cond_0
    move-object v8, v10

    #@d
    .line 1848
    check-cast v8, Landroid/text/Spannable;

    #@f
    .line 1849
    .local v8, "spannable":Landroid/text/Spannable;
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@11
    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    #@14
    move-result v5

    #@15
    .line 1850
    .local v5, "selectionStart":I
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1a
    move-result v4

    #@1b
    .line 1852
    .local v4, "selectionEnd":I
    const-class v13, Landroid/text/style/SuggestionSpan;

    #@1d
    .line 1851
    invoke-interface {v8, v5, v4, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@20
    move-result-object v9

    #@21
    check-cast v9, [Landroid/text/style/SuggestionSpan;

    #@23
    .line 1853
    .local v9, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v13, v9

    #@24
    if-nez v13, :cond_1

    #@26
    .line 1854
    const/4 v13, 0x0

    #@27
    return v13

    #@28
    .line 1856
    :cond_1
    if-ne v5, v4, :cond_4

    #@2a
    .line 1858
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_0
    array-length v13, v9

    #@2c
    if-ge v1, v13, :cond_3

    #@2e
    .line 1859
    aget-object v13, v9, v1

    #@30
    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    #@33
    move-result-object v13

    #@34
    array-length v13, v13

    #@35
    if-lez v13, :cond_2

    #@37
    .line 1860
    const/4 v13, 0x1

    #@38
    return v13

    #@39
    .line 1858
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1863
    :cond_3
    const/4 v13, 0x0

    #@3d
    return v13

    #@3e
    .line 1865
    .end local v1    # "i":I
    :cond_4
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@40
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@43
    move-result-object v13

    #@44
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    #@47
    move-result v3

    #@48
    .line 1866
    .local v3, "minSpanStart":I
    const/4 v2, 0x0

    #@49
    .line 1867
    .local v2, "maxSpanEnd":I
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4b
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@4e
    move-result-object v13

    #@4f
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    #@52
    move-result v12

    #@53
    .line 1868
    .local v12, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    #@54
    .line 1869
    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v0, 0x0

    #@55
    .line 1870
    .local v0, "hasValidSuggestions":Z
    const/4 v1, 0x0

    #@56
    .restart local v1    # "i":I
    :goto_1
    array-length v13, v9

    #@57
    if-ge v1, v13, :cond_9

    #@59
    .line 1871
    aget-object v13, v9, v1

    #@5b
    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@5e
    move-result v7

    #@5f
    .line 1872
    .local v7, "spanStart":I
    aget-object v13, v9, v1

    #@61
    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@64
    move-result v6

    #@65
    .line 1873
    .local v6, "spanEnd":I
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    #@68
    move-result v3

    #@69
    .line 1874
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@6c
    move-result v2

    #@6d
    .line 1875
    if-lt v5, v7, :cond_5

    #@6f
    if-le v5, v6, :cond_6

    #@71
    .line 1870
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@73
    goto :goto_1

    #@74
    .line 1880
    :cond_6
    if-nez v0, :cond_7

    #@76
    aget-object v13, v9, v1

    #@78
    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    #@7b
    move-result-object v13

    #@7c
    array-length v13, v13

    #@7d
    if-lez v13, :cond_8

    #@7f
    :cond_7
    const/4 v0, 0x1

    #@80
    .line 1882
    :goto_3
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    #@83
    move-result v12

    #@84
    .line 1884
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    #@87
    move-result v11

    #@88
    goto :goto_2

    #@89
    .line 1880
    :cond_8
    const/4 v0, 0x0

    #@8a
    goto :goto_3

    #@8b
    .line 1886
    .end local v6    # "spanEnd":I
    .end local v7    # "spanStart":I
    :cond_9
    if-nez v0, :cond_a

    #@8d
    .line 1887
    const/4 v13, 0x0

    #@8e
    return v13

    #@8f
    .line 1889
    :cond_a
    if-lt v12, v11, :cond_b

    #@91
    .line 1891
    const/4 v13, 0x0

    #@92
    return v13

    #@93
    .line 1893
    :cond_b
    if-lt v3, v12, :cond_c

    #@95
    .line 1894
    if-le v2, v11, :cond_d

    #@97
    .line 1897
    :cond_c
    const/4 v13, 0x0

    #@98
    return v13

    #@99
    .line 1899
    :cond_d
    const/4 v13, 0x1

    #@9a
    return v13
.end method

.method private showError()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/high16 v7, 0x3f000000    # 0.5f

    #@3
    const/4 v5, 0x0

    #@4
    .line 423
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    #@9
    move-result-object v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 424
    iput-boolean v8, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@e
    .line 425
    return-void

    #@f
    .line 428
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@11
    if-nez v4, :cond_1

    #@13
    .line 429
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@15
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@18
    move-result-object v4

    #@19
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@1c
    move-result-object v1

    #@1d
    .line 431
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x10900ef

    #@20
    .line 430
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/widget/TextView;

    #@26
    .line 433
    .local v0, "err":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@28
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2f
    move-result-object v4

    #@30
    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    #@32
    .line 434
    .local v2, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    #@34
    const/high16 v5, 0x43480000    # 200.0f

    #@36
    mul-float/2addr v5, v2

    #@37
    add-float/2addr v5, v7

    #@38
    float-to-int v5, v5

    #@39
    const/high16 v6, 0x42480000    # 50.0f

    #@3b
    mul-float/2addr v6, v2

    #@3c
    add-float/2addr v6, v7

    #@3d
    float-to-int v6, v6

    #@3e
    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    #@41
    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@43
    .line 435
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@45
    const/4 v5, 0x0

    #@46
    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    #@49
    .line 438
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@4b
    invoke-virtual {v4, v8}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    #@4e
    .line 441
    .end local v0    # "err":Landroid/widget/TextView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "scale":F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@50
    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    #@53
    move-result-object v3

    #@54
    check-cast v3, Landroid/widget/TextView;

    #@56
    .line 442
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@58
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@5a
    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    #@5d
    .line 443
    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@5f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@62
    .line 445
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@64
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@66
    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    #@69
    move-result v6

    #@6a
    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    #@6d
    move-result v7

    #@6e
    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    #@71
    .line 446
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@73
    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@75
    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    #@78
    move-result v5

    #@79
    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    #@7c
    .line 422
    return-void
.end method

.method private showFloatingToolbar()V
    .locals 6

    #@0
    .prologue
    .line 1264
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1267
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@7
    move-result v0

    #@8
    .line 1268
    .local v0, "delay":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@a
    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    #@c
    int-to-long v4, v0

    #@d
    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@10
    .line 1263
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private startSelectionActionModeInternal()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1799
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 1801
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@9
    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    #@c
    .line 1802
    return v6

    #@d
    .line 1805
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_1

    #@13
    .line 1806
    return v6

    #@14
    .line 1809
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@17
    move-result v3

    #@18
    .line 1813
    .local v3, "willExtract":Z
    if-nez v3, :cond_2

    #@1a
    .line 1815
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    #@1c
    invoke-direct {v0, p0, v7}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    #@1f
    .line 1816
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@21
    invoke-virtual {v4, v0, v7}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@24
    move-result-object v4

    #@25
    iput-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@27
    .line 1820
    .end local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@29
    if-nez v4, :cond_4

    #@2b
    move v2, v3

    #@2c
    .line 1821
    :goto_0
    if-eqz v2, :cond_3

    #@2e
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@30
    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_5

    #@36
    .line 1828
    :cond_3
    :goto_1
    return v2

    #@37
    .line 1820
    :cond_4
    const/4 v2, 0x1

    #@38
    .local v2, "selectionStarted":Z
    goto :goto_0

    #@39
    .line 1821
    .end local v2    # "selectionStarted":Z
    :cond_5
    iget-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@3b
    if-eqz v4, :cond_3

    #@3d
    .line 1823
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@40
    move-result-object v1

    #@41
    .line 1824
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    #@43
    .line 1825
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@45
    invoke-virtual {v1, v4, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    #@48
    goto :goto_1
.end method

.method private suspendBlink()V
    .locals 1

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 674
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    #@9
    .line 672
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 894
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    #@6
    move-result v4

    #@7
    .line 895
    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@9
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    #@c
    move-result v3

    #@d
    .line 897
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    #@f
    .line 898
    return v7

    #@10
    .line 901
    :cond_0
    if-le v4, v3, :cond_1

    #@12
    .line 902
    move v5, v4

    #@13
    .line 903
    .local v5, "tmp":I
    move v4, v3

    #@14
    .line 904
    move v3, v5

    #@15
    .line 905
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Landroid/text/Spannable;

    #@1d
    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@20
    .line 908
    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@23
    move-result-object v2

    #@24
    .line 909
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    #@27
    move-result v1

    #@28
    .line 910
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    #@2b
    move-result v0

    #@2c
    .line 912
    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    #@2e
    if-ge v0, v3, :cond_2

    #@30
    const/4 v6, 0x1

    #@31
    :goto_0
    return v6

    #@32
    :cond_2
    move v6, v7

    #@33
    goto :goto_0
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    #@0
    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    #@2
    .line 2006
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@4
    aget-object v2, v2, p1

    #@6
    if-nez v2, :cond_0

    #@8
    .line 2007
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@a
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v3

    #@10
    .line 2008
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    iget v4, v4, Landroid/widget/TextView;->mCursorDrawableRes:I

    #@14
    .line 2007
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v2, p1

    #@1a
    .line 2010
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@1c
    if-nez v2, :cond_1

    #@1e
    new-instance v2, Landroid/graphics/Rect;

    #@20
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@25
    .line 2011
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@27
    aget-object v2, v2, p1

    #@29
    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@2b
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@2e
    .line 2012
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@30
    aget-object v2, v2, p1

    #@32
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@35
    move-result v1

    #@36
    .line 2013
    .local v1, "width":I
    sub-float v2, p4, v5

    #@38
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    #@3b
    move-result p4

    #@3c
    .line 2014
    float-to-int v2, p4

    #@3d
    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@3f
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@41
    sub-int v0, v2, v3

    #@43
    .line 2015
    .local v0, "left":I
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@45
    aget-object v2, v2, p1

    #@47
    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@49
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@4b
    sub-int v3, p2, v3

    #@4d
    add-int v4, v0, v1

    #@4f
    .line 2016
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@51
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@53
    add-int/2addr v5, p3

    #@54
    .line 2015
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@57
    .line 2005
    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1244
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v0

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 1243
    :cond_0
    :goto_0
    return-void

    #@c
    .line 1247
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideFloatingToolbar()V

    #@f
    goto :goto_0

    #@10
    .line 1251
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    #@13
    goto :goto_0

    #@14
    .line 1245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    #@5
    .line 648
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    #@a
    .line 650
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@14
    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 651
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 645
    :cond_0
    :goto_0
    return-void

    #@23
    .line 652
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@25
    if-nez v0, :cond_2

    #@27
    if-eqz p3, :cond_2

    #@29
    .line 653
    new-instance v0, Landroid/widget/SpellChecker;

    #@2b
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2d
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    #@30
    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@32
    .line 655
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@34
    if-eqz v0, :cond_0

    #@36
    .line 656
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@38
    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    #@3b
    goto :goto_0
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;

    #@0
    .prologue
    const/16 v3, 0x12

    #@2
    const/4 v2, 0x0

    #@3
    .line 2210
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    #@6
    move-result v0

    #@7
    .line 2212
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2213
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@d
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@10
    .line 2216
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@12
    if-nez v1, :cond_1

    #@14
    .line 2217
    new-instance v1, Landroid/widget/Editor$SpanController;

    #@16
    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    #@19
    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@1b
    .line 2219
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@1d
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@20
    .line 2209
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    #@0
    .prologue
    .line 690
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_3

    #@7
    .line 691
    if-nez p1, :cond_0

    #@9
    if-eqz p2, :cond_1

    #@b
    .line 692
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    #@d
    and-int/lit16 v0, v0, -0xff1

    #@f
    or-int/lit16 v0, v0, 0x80

    #@11
    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    #@13
    .line 695
    :cond_1
    if-eqz p3, :cond_2

    #@15
    .line 696
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    #@17
    and-int/lit16 v0, v0, -0xff1

    #@19
    or-int/lit16 v0, v0, 0xe0

    #@1b
    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    #@1d
    .line 686
    :cond_2
    :goto_0
    return-void

    #@1e
    .line 699
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    #@20
    and-int/lit8 v0, v0, 0xf

    #@22
    const/4 v1, 0x2

    #@23
    if-ne v0, v1, :cond_2

    #@25
    .line 700
    if-eqz p4, :cond_2

    #@27
    .line 701
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    #@29
    and-int/lit16 v0, v0, -0xff1

    #@2b
    or-int/lit8 v0, v0, 0x10

    #@2d
    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    #@2f
    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1273
    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    #@5
    .line 1274
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@7
    .line 1275
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    #@9
    .line 1276
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@b
    add-int/lit8 v1, v2, 0x1

    #@d
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@f
    .line 1277
    .local v1, "nesting":I
    if-ne v1, v5, :cond_0

    #@11
    .line 1278
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    #@13
    .line 1279
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@15
    .line 1280
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 1283
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@1b
    .line 1284
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1d
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@24
    move-result v2

    #@25
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@27
    .line 1290
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@29
    invoke-virtual {v2}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    #@2c
    .line 1291
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2e
    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    #@31
    .line 1272
    .end local v1    # "nesting":I
    :cond_0
    return-void

    #@32
    .line 1286
    .restart local v1    # "nesting":I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@34
    .line 1287
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@36
    .line 1288
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@38
    goto :goto_0
.end method

.method canRedo()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 304
    new-array v0, v1, [Landroid/content/UndoOwner;

    #@4
    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@6
    aput-object v3, v0, v2

    #@8
    .line 305
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    #@a
    if-eqz v3, :cond_0

    #@c
    iget-object v3, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@e
    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    #@11
    move-result v3

    #@12
    if-lez v3, :cond_0

    #@14
    :goto_0
    return v1

    #@15
    :cond_0
    move v1, v2

    #@16
    goto :goto_0
.end method

.method canUndo()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 299
    new-array v0, v1, [Landroid/content/UndoOwner;

    #@4
    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@6
    aput-object v3, v0, v2

    #@8
    .line 300
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    #@a
    if-eqz v3, :cond_0

    #@c
    iget-object v3, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@e
    invoke-virtual {v3, v0}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    #@11
    move-result v3

    #@12
    if-lez v3, :cond_0

    #@14
    :goto_0
    return v1

    #@15
    :cond_0
    move v1, v2

    #@16
    goto :goto_0
.end method

.method checkFieldAndSelectCurrentWord()Z
    .locals 2

    #@0
    .prologue
    .line 1785
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@a
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1791
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 1793
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    #@1b
    move-result v0

    #@1c
    return v0

    #@1d
    .line 1786
    :cond_0
    const-string/jumbo v0, "TextView"

    #@20
    .line 1787
    const-string/jumbo v1, "TextView does not support text selection. Selection cancelled."

    #@23
    .line 1786
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1788
    const/4 v0, 0x0

    #@27
    return v0

    #@28
    .line 1795
    :cond_1
    const/4 v0, 0x1

    #@29
    return v0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 563
    new-instance v0, Landroid/widget/Editor$InputContentType;

    #@6
    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@b
    .line 561
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 568
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 569
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    #@6
    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@b
    .line 567
    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1297
    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    #@3
    .line 1298
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@5
    .line 1299
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    #@7
    .line 1300
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@9
    add-int/lit8 v1, v2, -0x1

    #@b
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@d
    .line 1301
    .local v1, "nesting":I
    if-nez v1, :cond_0

    #@f
    .line 1302
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    #@12
    .line 1296
    .end local v1    # "nesting":I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1308
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@3
    .line 1309
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    #@5
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1310
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@b
    .line 1311
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    #@e
    .line 1307
    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v3, v2

    #@4
    move v4, v2

    #@5
    move-object v5, p2

    #@6
    .line 1335
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method extractedTextModeWillBeStarted()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1832
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 1833
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@c
    move-result-object v0

    #@d
    .line 1834
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@f
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    #@12
    move-result v1

    #@13
    :cond_0
    return v1

    #@14
    .line 1836
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    #@0
    .prologue
    .line 1316
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    #@5
    .line 1317
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@7
    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    #@a
    .line 1319
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@c
    if-nez v0, :cond_0

    #@e
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 1320
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@14
    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    #@17
    .line 1321
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    #@1a
    .line 1328
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    #@1d
    .line 1315
    return-void

    #@1e
    .line 1322
    :cond_2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 1324
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@24
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    #@27
    goto :goto_0
.end method

.method forgetUndoRedo()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 293
    const/4 v1, 0x1

    #@2
    new-array v0, v1, [Landroid/content/UndoOwner;

    #@4
    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 294
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@b
    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    #@e
    .line 295
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@10
    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    #@13
    .line 292
    return-void
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1976
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1977
    return-object v2

    #@6
    .line 1980
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 1981
    new-instance v1, Landroid/widget/Editor$InsertionPointCursorController;

    #@c
    invoke-direct {v1, p0, v2}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$InsertionPointCursorController;)V

    #@f
    iput-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@11
    .line 1983
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@13
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v0

    #@17
    .line 1984
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@1c
    .line 1987
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@1e
    return-object v1
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1991
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1992
    return-object v2

    #@6
    .line 1995
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 1996
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    #@c
    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    #@f
    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@11
    .line 1998
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@13
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v0

    #@17
    .line 1999
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@1c
    .line 2002
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@1e
    return-object v1
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    #@0
    .prologue
    .line 849
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 850
    new-instance v0, Landroid/text/method/WordIterator;

    #@6
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    #@f
    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    #@11
    .line 852
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    #@13
    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    #@0
    .prologue
    .line 1965
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    #@2
    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    #@0
    .prologue
    .line 1972
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    #@2
    return v0
.end method

.method hideCursorAndSpanControllers()V
    .locals 0

    #@0
    .prologue
    .line 619
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    #@3
    .line 620
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    #@6
    .line 618
    return-void
.end method

.method hideInsertionPointCursorController()V
    .locals 1

    #@0
    .prologue
    .line 610
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 611
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    #@9
    .line 609
    :cond_0
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 3

    #@0
    .prologue
    .line 1675
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 1676
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 1677
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@c
    aget-object v1, v1, v0

    #@e
    if-eqz v1, :cond_0

    #@10
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@12
    aget-object v1, v1, v0

    #@14
    const/4 v2, 0x1

    #@15
    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    #@17
    .line 1676
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1674
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1646
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2
    if-eqz v8, :cond_2

    #@4
    instance-of v8, p1, Landroid/text/DynamicLayout;

    #@6
    if-eqz v8, :cond_2

    #@8
    .line 1647
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    #@b
    move-result v4

    #@c
    .line 1648
    .local v4, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    #@f
    move-result v6

    #@10
    .local v6, "lastLine":I
    move-object v3, p1

    #@11
    .line 1650
    check-cast v3, Landroid/text/DynamicLayout;

    #@13
    .line 1651
    .local v3, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    #@16
    move-result-object v0

    #@17
    .line 1652
    .local v0, "blockEndLines":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    #@1a
    move-result-object v2

    #@1b
    .line 1653
    .local v2, "blockIndices":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    #@1e
    move-result v7

    #@1f
    .line 1655
    .local v7, "numberOfBlocks":I
    const/4 v5, 0x0

    #@20
    .line 1657
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    #@22
    .line 1658
    aget v8, v0, v5

    #@24
    if-lt v8, v4, :cond_3

    #@26
    .line 1663
    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    #@28
    .line 1664
    aget v1, v2, v5

    #@2a
    .line 1665
    .local v1, "blockIndex":I
    const/4 v8, -0x1

    #@2b
    if-eq v1, v8, :cond_1

    #@2d
    .line 1666
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2f
    aget-object v8, v8, v1

    #@31
    const/4 v9, 0x1

    #@32
    iput-boolean v9, v8, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    #@34
    .line 1668
    :cond_1
    aget v8, v0, v5

    #@36
    if-lt v8, v6, :cond_4

    #@38
    .line 1645
    .end local v0    # "blockEndLines":[I
    .end local v1    # "blockIndex":I
    .end local v2    # "blockIndices":[I
    .end local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v4    # "firstLine":I
    .end local v5    # "i":I
    .end local v6    # "lastLine":I
    .end local v7    # "numberOfBlocks":I
    :cond_2
    return-void

    #@39
    .line 1659
    .restart local v0    # "blockEndLines":[I
    .restart local v2    # "blockIndices":[I
    .restart local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v4    # "firstLine":I
    .restart local v5    # "i":I
    .restart local v6    # "lastLine":I
    .restart local v7    # "numberOfBlocks":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1669
    .restart local v1    # "blockIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@3e
    goto :goto_1
.end method

.method isCursorVisible()Z
    .locals 1

    #@0
    .prologue
    .line 575
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method makeBlink()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2071
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 2072
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    #@d
    .line 2073
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@f
    if-nez v0, :cond_0

    #@11
    new-instance v0, Landroid/widget/Editor$Blink;

    #@13
    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$Blink;)V

    #@16
    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@18
    .line 2074
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@1a
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@1c
    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    #@1f
    .line 2075
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@21
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@23
    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    #@25
    const-wide/16 v4, 0x1f4

    #@27
    add-long/2addr v2, v4

    #@28
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    #@2b
    .line 2070
    :cond_1
    :goto_0
    return-void

    #@2c
    .line 2077
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@2e
    if-eqz v0, :cond_1

    #@30
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@32
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@34
    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    #@37
    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 332
    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 333
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    #@9
    .line 334
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@b
    .line 336
    :cond_0
    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    #@d
    .line 338
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@f
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@12
    move-result-object v0

    #@13
    .line 341
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 342
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@1c
    .line 344
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 345
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@22
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@25
    .line 346
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@27
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@2a
    .line 348
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2c
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@33
    move-result v1

    #@34
    invoke-direct {p0, v3, v1, v4}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    #@37
    .line 351
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@39
    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 352
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@41
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    #@44
    move-result v1

    #@45
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@47
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    #@4a
    move-result v2

    #@4b
    if-eq v1, v2, :cond_3

    #@4d
    .line 356
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4f
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    #@52
    .line 359
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@55
    .line 362
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    #@58
    move-result-object v1

    #@59
    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    #@5b
    invoke-virtual {v1, v2, v4}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    #@5e
    .line 363
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    #@61
    .line 331
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 2028
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2029
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    #@9
    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@b
    .line 2034
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    #@10
    .line 2027
    return-void

    #@11
    .line 2031
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-wrap0(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    #@17
    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 367
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    #@b
    .line 369
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 370
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    #@12
    .line 373
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    #@15
    .line 375
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 376
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@1b
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    #@1e
    .line 379
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@20
    if-eqz v0, :cond_2

    #@22
    .line 380
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@24
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    #@27
    .line 383
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 384
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2d
    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@2f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@32
    .line 388
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@34
    if-eqz v0, :cond_4

    #@36
    .line 389
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@38
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@3a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@3d
    .line 392
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3f
    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    #@41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@44
    .line 394
    invoke-direct {p0}, Landroid/widget/Editor;->destroyDisplayListsData()V

    #@47
    .line 396
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@49
    if-eqz v0, :cond_5

    #@4b
    .line 397
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@4d
    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    #@50
    .line 400
    iput-object v2, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@52
    .line 403
    :cond_5
    const/4 v0, 0x1

    #@53
    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    #@55
    .line 404
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@58
    .line 405
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@5b
    .line 406
    iput-boolean v3, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    #@5d
    .line 407
    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    #@5f
    .line 366
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    #@0
    .prologue
    .line 1477
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    #@5
    move-result v3

    #@6
    .line 1478
    .local v3, "selectionStart":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    #@b
    move-result v2

    #@c
    .line 1480
    .local v2, "selectionEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@e
    .line 1481
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_1

    #@10
    iget v4, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@12
    if-nez v4, :cond_1

    #@14
    .line 1482
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@17
    move-result-object v0

    #@18
    .line 1483
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    #@1a
    .line 1484
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 1485
    iget-boolean v4, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@24
    if-nez v4, :cond_0

    #@26
    iget-boolean v4, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 1489
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    #@2d
    .line 1495
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 1496
    iget-object v4, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@33
    invoke-virtual {v4, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    #@36
    .line 1499
    :cond_2
    if-eqz p3, :cond_3

    #@38
    if-ne v3, v2, :cond_3

    #@3a
    iget v4, p0, Landroid/widget/Editor;->mCursorCount:I

    #@3c
    if-lez v4, :cond_3

    #@3e
    .line 1500
    invoke-direct {p0, p1, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    #@41
    .line 1503
    const/4 p3, 0x0

    #@42
    .line 1506
    .end local p3    # "highlight":Landroid/graphics/Path;
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@44
    invoke-virtual {v4}, Landroid/widget/TextView;->canHaveDisplayList()Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_4

    #@4a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_4

    #@50
    .line 1507
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@53
    .line 1476
    :goto_0
    return-void

    #@54
    .line 1510
    :cond_4
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@57
    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    .line 2152
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v21, ""

    #@5
    move-object/from16 v0, v21

    #@7
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 2153
    .local v4, "content":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    #@d
    move-result-object v3

    #@e
    .line 2154
    .local v3, "clipData":Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    #@11
    move-result v11

    #@12
    .line 2155
    .local v11, "itemCount":I
    const/4 v9, 0x0

    #@13
    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_0

    #@15
    .line 2156
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@18
    move-result-object v10

    #@19
    .line 2157
    .local v10, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    #@1b
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1d
    move-object/from16 v21, v0

    #@1f
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@22
    move-result-object v21

    #@23
    move-object/from16 v0, v21

    #@25
    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    #@28
    move-result-object v21

    #@29
    move-object/from16 v0, v21

    #@2b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2e
    .line 2155
    add-int/lit8 v9, v9, 0x1

    #@30
    goto :goto_0

    #@31
    .line 2160
    .end local v10    # "item":Landroid/content/ClipData$Item;
    :cond_0
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@35
    move-object/from16 v21, v0

    #@37
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    #@3a
    move-result v22

    #@3b
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    #@3e
    move-result v23

    #@3f
    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@42
    move-result v16

    #@43
    .line 2162
    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    #@46
    move-result-object v12

    #@47
    .line 2163
    .local v12, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    #@48
    .line 2164
    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    #@4a
    move/from16 v21, v0

    #@4c
    if-eqz v21, :cond_1

    #@4e
    move-object v6, v12

    #@4f
    .line 2165
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    #@51
    .line 2167
    .end local v6    # "dragLocalState":Landroid/widget/Editor$DragLocalState;
    :cond_1
    if-eqz v6, :cond_3

    #@53
    .line 2168
    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    #@55
    move-object/from16 v21, v0

    #@57
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5b
    move-object/from16 v22, v0

    #@5d
    move-object/from16 v0, v21

    #@5f
    move-object/from16 v1, v22

    #@61
    if-ne v0, v1, :cond_2

    #@63
    const/4 v5, 0x1

    #@64
    .line 2170
    .local v5, "dragDropIntoItself":Z
    :goto_1
    if-eqz v5, :cond_4

    #@66
    .line 2171
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    #@68
    move/from16 v21, v0

    #@6a
    move/from16 v0, v16

    #@6c
    move/from16 v1, v21

    #@6e
    if-lt v0, v1, :cond_4

    #@70
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    #@72
    move/from16 v21, v0

    #@74
    move/from16 v0, v16

    #@76
    move/from16 v1, v21

    #@78
    if-ge v0, v1, :cond_4

    #@7a
    .line 2173
    return-void

    #@7b
    .line 2168
    .end local v5    # "dragDropIntoItself":Z
    :cond_2
    const/4 v5, 0x0

    #@7c
    .restart local v5    # "dragDropIntoItself":Z
    goto :goto_1

    #@7d
    .line 2167
    .end local v5    # "dragDropIntoItself":Z
    :cond_3
    const/4 v5, 0x0

    #@7e
    .restart local v5    # "dragDropIntoItself":Z
    goto :goto_1

    #@7f
    .line 2177
    :cond_4
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@83
    move-object/from16 v21, v0

    #@85
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@88
    move-result-object v21

    #@89
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    #@8c
    move-result v17

    #@8d
    .line 2178
    .local v17, "originalLength":I
    move/from16 v14, v16

    #@8f
    .line 2179
    .local v14, "min":I
    move/from16 v13, v16

    #@91
    .line 2181
    .local v13, "max":I
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@95
    move-object/from16 v21, v0

    #@97
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@9a
    move-result-object v21

    #@9b
    check-cast v21, Landroid/text/Spannable;

    #@9d
    move-object/from16 v0, v21

    #@9f
    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@a2
    .line 2182
    move-object/from16 v0, p0

    #@a4
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@a6
    move-object/from16 v21, v0

    #@a8
    move-object/from16 v0, v21

    #@aa
    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    #@ad
    .line 2184
    if-eqz v5, :cond_6

    #@af
    .line 2185
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    #@b1
    .line 2186
    .local v8, "dragSourceStart":I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    #@b3
    .line 2187
    .local v7, "dragSourceEnd":I
    if-gt v13, v8, :cond_5

    #@b5
    .line 2189
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@b9
    move-object/from16 v21, v0

    #@bb
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@be
    move-result-object v21

    #@bf
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    #@c2
    move-result v21

    #@c3
    sub-int v19, v21, v17

    #@c5
    .line 2190
    .local v19, "shift":I
    add-int v8, v8, v19

    #@c7
    .line 2191
    add-int v7, v7, v19

    #@c9
    .line 2195
    .end local v19    # "shift":I
    :cond_5
    move-object/from16 v0, p0

    #@cb
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@cd
    move-object/from16 v21, v0

    #@cf
    move-object/from16 v0, v21

    #@d1
    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    #@d4
    .line 2198
    add-int/lit8 v21, v8, -0x1

    #@d6
    const/16 v22, 0x0

    #@d8
    move/from16 v0, v22

    #@da
    move/from16 v1, v21

    #@dc
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@df
    move-result v18

    #@e0
    .line 2199
    .local v18, "prevCharIdx":I
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@e4
    move-object/from16 v21, v0

    #@e6
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@e9
    move-result-object v21

    #@ea
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    #@ed
    move-result v21

    #@ee
    add-int/lit8 v22, v8, 0x1

    #@f0
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    #@f3
    move-result v15

    #@f4
    .line 2200
    .local v15, "nextCharIdx":I
    add-int/lit8 v21, v18, 0x1

    #@f6
    move/from16 v0, v21

    #@f8
    if-le v15, v0, :cond_6

    #@fa
    .line 2201
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@fe
    move-object/from16 v21, v0

    #@100
    move-object/from16 v0, v21

    #@102
    move/from16 v1, v18

    #@104
    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    #@107
    move-result-object v20

    #@108
    .line 2202
    .local v20, "t":Ljava/lang/CharSequence;
    const/16 v21, 0x0

    #@10a
    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    #@10d
    move-result v21

    #@10e
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@111
    move-result v21

    #@112
    if-eqz v21, :cond_6

    #@114
    const/16 v21, 0x1

    #@116
    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    #@119
    move-result v21

    #@11a
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@11d
    move-result v21

    #@11e
    if-eqz v21, :cond_6

    #@120
    .line 2203
    move-object/from16 v0, p0

    #@122
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@124
    move-object/from16 v21, v0

    #@126
    add-int/lit8 v22, v18, 0x1

    #@128
    move-object/from16 v0, v21

    #@12a
    move/from16 v1, v18

    #@12c
    move/from16 v2, v22

    #@12e
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    #@131
    .line 2151
    .end local v7    # "dragSourceEnd":I
    .end local v8    # "dragSourceStart":I
    .end local v15    # "nextCharIdx":I
    .end local v18    # "prevCharIdx":I
    .end local v20    # "t":Ljava/lang/CharSequence;
    :cond_6
    return-void
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5
    move-result-wide v8

    #@6
    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    #@8
    .line 1042
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    #@b
    .line 1044
    if-eqz p1, :cond_d

    #@d
    .line 1045
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@f
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    #@12
    move-result v4

    #@13
    .line 1046
    .local v4, "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@15
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    #@18
    move-result v3

    #@19
    .line 1050
    .local v3, "selEnd":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    #@1b
    if-eqz v5, :cond_a

    #@1d
    if-nez v4, :cond_a

    #@1f
    .line 1051
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@21
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@24
    move-result-object v5

    #@25
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    #@28
    move-result v5

    #@29
    if-ne v3, v5, :cond_9

    #@2b
    const/4 v0, 0x1

    #@2c
    .line 1053
    .local v0, "isFocusHighlighted":Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    #@2e
    if-eqz v5, :cond_c

    #@30
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@32
    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_c

    #@38
    .line 1054
    if-eqz v0, :cond_b

    #@3a
    move v5, v6

    #@3b
    .line 1053
    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    #@3d
    .line 1056
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    #@3f
    if-eqz v5, :cond_0

    #@41
    if-ltz v4, :cond_0

    #@43
    if-gez v3, :cond_6

    #@45
    .line 1059
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    #@48
    move-result v1

    #@49
    .line 1060
    .local v1, "lastTapPosition":I
    if-ltz v1, :cond_1

    #@4b
    .line 1061
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4d
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@50
    move-result-object v5

    #@51
    check-cast v5, Landroid/text/Spannable;

    #@53
    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@56
    .line 1065
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@58
    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    #@5b
    move-result-object v2

    #@5c
    .line 1066
    .local v2, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    #@5e
    .line 1067
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@60
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@62
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@65
    move-result-object v5

    #@66
    check-cast v5, Landroid/text/Spannable;

    #@68
    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    #@6b
    .line 1075
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6d
    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@70
    move-result v5

    #@71
    if-nez v5, :cond_3

    #@73
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    #@75
    if-eqz v5, :cond_4

    #@77
    .line 1076
    :cond_3
    if-ltz v4, :cond_4

    #@79
    if-ltz v3, :cond_4

    #@7b
    .line 1086
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@7d
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@80
    move-result-object v5

    #@81
    check-cast v5, Landroid/text/Spannable;

    #@83
    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@86
    .line 1089
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    #@88
    if-eqz v5, :cond_5

    #@8a
    .line 1090
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8c
    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    #@8f
    .line 1093
    :cond_5
    iput-boolean v7, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    #@91
    .line 1096
    .end local v1    # "lastTapPosition":I
    .end local v2    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v6, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    #@93
    .line 1097
    iput-boolean v6, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    #@95
    .line 1099
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@97
    if-eqz v5, :cond_7

    #@99
    .line 1100
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    #@9c
    .line 1103
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    #@9f
    .line 1040
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_8
    :goto_2
    return-void

    #@a0
    .line 1051
    .restart local v3    # "selEnd":I
    .restart local v4    # "selStart":I
    :cond_9
    const/4 v0, 0x0

    #@a1
    .restart local v0    # "isFocusHighlighted":Z
    goto :goto_0

    #@a2
    .line 1050
    .end local v0    # "isFocusHighlighted":Z
    :cond_a
    const/4 v0, 0x0

    #@a3
    .restart local v0    # "isFocusHighlighted":Z
    goto :goto_0

    #@a4
    :cond_b
    move v5, v7

    #@a5
    .line 1054
    goto :goto_1

    #@a6
    :cond_c
    move v5, v6

    #@a7
    .line 1053
    goto :goto_1

    #@a8
    .line 1105
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_d
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@aa
    if-eqz v5, :cond_e

    #@ac
    .line 1106
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    #@af
    .line 1109
    :cond_e
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@b1
    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    #@b4
    .line 1111
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@b6
    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@b9
    move-result v5

    #@ba
    if-eqz v5, :cond_f

    #@bc
    .line 1114
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@be
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    #@c1
    move-result v4

    #@c2
    .line 1115
    .restart local v4    # "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@c4
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    #@c7
    move-result v3

    #@c8
    .line 1116
    .restart local v3    # "selEnd":I
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@cb
    .line 1117
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@ce
    .line 1118
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@d0
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d3
    move-result-object v5

    #@d4
    check-cast v5, Landroid/text/Spannable;

    #@d6
    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@d9
    .line 1127
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@db
    if-eqz v5, :cond_8

    #@dd
    .line 1128
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@df
    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@e2
    goto :goto_2

    #@e3
    .line 1120
    :cond_f
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    #@e5
    if-eqz v5, :cond_10

    #@e7
    iput-boolean v7, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    #@e9
    .line 1121
    :cond_10
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@ec
    .line 1122
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@ef
    .line 1123
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    #@f1
    if-eqz v5, :cond_11

    #@f3
    iput-boolean v6, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    #@f5
    .line 1124
    :cond_11
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    #@f8
    goto :goto_3
.end method

.method onLocaleChanged()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 841
    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    #@3
    .line 842
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    #@5
    .line 839
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    #@0
    .prologue
    .line 662
    packed-switch p1, :pswitch_data_0

    #@3
    .line 661
    :goto_0
    return-void

    #@4
    .line 664
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    #@7
    goto :goto_0

    #@8
    .line 667
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    #@b
    goto :goto_0

    #@c
    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    #@0
    .prologue
    .line 2047
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2048
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    #@9
    .line 2050
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2051
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@f
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    #@12
    .line 2046
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1221
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    #@5
    .line 1223
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1224
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    #@12
    .line 1227
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1228
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@18
    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@1a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1d
    .line 1229
    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@1f
    .line 1232
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_2

    #@25
    .line 1233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    #@2b
    .line 1234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    #@31
    .line 1238
    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    #@33
    .line 1239
    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    #@35
    .line 1220
    :cond_2
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1919
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    #@2
    if-eqz v3, :cond_3

    #@4
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    #@9
    move-result v1

    #@a
    .line 1920
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@d
    .line 1921
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@10
    .line 1922
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    .line 1923
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    #@18
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@1b
    move-result v3

    #@1c
    if-lez v3, :cond_2

    #@1e
    .line 1925
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@23
    move-result v4

    #@24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@27
    move-result v5

    #@28
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@2b
    move-result v0

    #@2c
    .line 1926
    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    #@2e
    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@31
    .line 1927
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 1929
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@37
    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    #@3a
    .line 1932
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@3d
    move-result v3

    #@3e
    if-nez v3, :cond_2

    #@40
    .line 1933
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_4

    #@46
    .line 1935
    iget-object v3, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@48
    if-eqz v3, :cond_1

    #@4a
    .line 1936
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4c
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@4e
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@51
    .line 1939
    :cond_1
    new-instance v3, Landroid/widget/Editor$2;

    #@53
    invoke-direct {v3, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    #@56
    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@58
    .line 1945
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5a
    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@5c
    .line 1946
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@5f
    move-result v5

    #@60
    int-to-long v6, v5

    #@61
    .line 1945
    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@64
    .line 1918
    .end local v0    # "offset":I
    :cond_2
    :goto_1
    return-void

    #@65
    .line 1919
    :cond_3
    const/4 v1, 0x0

    #@66
    .local v1, "selectAllGotFocus":Z
    goto :goto_0

    #@67
    .line 1947
    .end local v1    # "selectAllGotFocus":Z
    .restart local v0    # "offset":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_2

    #@6d
    .line 1948
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    #@74
    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 1188
    if-eqz p1, :cond_4

    #@2
    .line 1189
    iget-object v2, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1190
    iget-object v2, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@8
    invoke-virtual {v2}, Landroid/widget/Editor$Blink;->uncancel()V

    #@b
    .line 1191
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    #@e
    .line 1193
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@11
    move-result-object v0

    #@12
    .line 1194
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    #@14
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    #@17
    move-result v1

    #@18
    .line 1195
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1e
    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    .line 1196
    if-eqz v1, :cond_3

    #@26
    .line 1187
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_1
    return-void

    #@27
    .line 1194
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    const/4 v1, 0x0

    #@28
    .local v1, "immFullScreen":Z
    goto :goto_0

    #@29
    .line 1196
    .end local v1    # "immFullScreen":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 1197
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@2f
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    #@32
    goto :goto_1

    #@33
    .line 1200
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v2, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@35
    if-eqz v2, :cond_5

    #@37
    .line 1201
    iget-object v2, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@39
    invoke-virtual {v2}, Landroid/widget/Editor$Blink;->cancel()V

    #@3c
    .line 1203
    :cond_5
    iget-object v2, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@3e
    if-eqz v2, :cond_6

    #@40
    .line 1204
    iget-object v2, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@42
    const/4 v3, 0x0

    #@43
    iput-boolean v3, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    #@45
    .line 1207
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@48
    .line 1208
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@4a
    if-eqz v2, :cond_7

    #@4c
    .line 1209
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@4e
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    #@51
    .line 1211
    :cond_7
    iget-object v2, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@53
    if-eqz v2, :cond_8

    #@55
    .line 1212
    iget-object v2, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@57
    invoke-virtual {v2}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    #@5a
    .line 1216
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    #@5d
    goto :goto_1
.end method

.method public performLongClick(Z)Z
    .locals 11
    .param p1, "handled"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 995
    if-nez p1, :cond_0

    #@4
    iget v6, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    #@6
    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    #@8
    invoke-direct {p0, v6, v7}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_4

    #@e
    .line 1006
    .end local p1    # "handled":Z
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    #@10
    iget-object v6, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@12
    if-eqz v6, :cond_2

    #@14
    .line 1008
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_1

    #@1a
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v6}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_5

    #@22
    .line 1019
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@25
    .line 1020
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    #@28
    .line 1022
    :goto_1
    const/4 p1, 0x1

    #@29
    .line 1026
    :cond_2
    if-nez p1, :cond_3

    #@2b
    .line 1027
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    #@2e
    move-result p1

    #@2f
    .line 1030
    :cond_3
    return p1

    #@30
    .line 996
    .restart local p1    # "handled":Z
    :cond_4
    iget-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    #@32
    .line 995
    if-eqz v6, :cond_0

    #@34
    .line 997
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@36
    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    #@38
    .line 998
    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    #@3a
    .line 997
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@3d
    move-result v3

    #@3e
    .line 999
    .local v3, "offset":I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@41
    .line 1000
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@43
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@46
    move-result-object v6

    #@47
    check-cast v6, Landroid/text/Spannable;

    #@49
    invoke-static {v6, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@4c
    .line 1001
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    #@53
    .line 1002
    iput-boolean v9, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    #@55
    .line 1003
    const/4 p1, 0x1

    #@56
    .local p1, "handled":Z
    goto :goto_0

    #@57
    .line 1010
    .end local v3    # "offset":I
    .end local p1    # "handled":Z
    :cond_5
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@59
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    #@5c
    move-result v5

    #@5d
    .line 1011
    .local v5, "start":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5f
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    #@62
    move-result v1

    #@63
    .line 1012
    .local v1, "end":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@65
    invoke-virtual {v6, v5, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    #@68
    move-result-object v4

    #@69
    .line 1013
    .local v4, "selectedText":Ljava/lang/CharSequence;
    invoke-static {v10, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@6c
    move-result-object v0

    #@6d
    .line 1014
    .local v0, "data":Landroid/content/ClipData;
    new-instance v2, Landroid/widget/Editor$DragLocalState;

    #@6f
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@71
    invoke-direct {v2, v6, v5, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    #@74
    .line 1015
    .local v2, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@76
    invoke-direct {p0, v4}, Landroid/widget/Editor;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v6, v0, v7, v2, v9}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    #@7d
    .line 1017
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@80
    goto :goto_1
.end method

.method prepareCursorControllers()V
    .locals 8

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 579
    const/4 v3, 0x0

    #@3
    .line 581
    .local v3, "windowSupportsHandles":Z
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5
    invoke-virtual {v4}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@c
    move-result-object v1

    #@d
    .line 582
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    #@f
    if-eqz v4, :cond_0

    #@11
    move-object v2, v1

    #@12
    .line 583
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    #@14
    .line 584
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@16
    const/16 v6, 0x3e8

    #@18
    if-lt v4, v6, :cond_4

    #@1a
    .line 585
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1c
    const/16 v6, 0x7cf

    #@1e
    if-le v4, v6, :cond_5

    #@20
    const/4 v3, 0x1

    #@21
    .line 588
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    #@23
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@25
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@28
    move-result-object v4

    #@29
    if-eqz v4, :cond_6

    #@2b
    const/4 v0, 0x1

    #@2c
    .line 589
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_7

    #@2e
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    #@31
    move-result v4

    #@32
    :goto_2
    iput-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    #@34
    .line 590
    if-eqz v0, :cond_1

    #@36
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@38
    invoke-virtual {v4}, Landroid/widget/TextView;->textCanBeSelected()Z

    #@3b
    move-result v5

    #@3c
    :cond_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    #@3e
    .line 592
    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    #@40
    if-nez v4, :cond_2

    #@42
    .line 593
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    #@45
    .line 594
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@47
    if-eqz v4, :cond_2

    #@49
    .line 595
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@4b
    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    #@4e
    .line 596
    iput-object v7, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@50
    .line 600
    :cond_2
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    #@52
    if-nez v4, :cond_3

    #@54
    .line 601
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@57
    .line 602
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@59
    if-eqz v4, :cond_3

    #@5b
    .line 603
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@5d
    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    #@60
    .line 604
    iput-object v7, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@62
    .line 578
    :cond_3
    return-void

    #@63
    .line 584
    .end local v0    # "enabled":Z
    .restart local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v3, 0x1

    #@64
    goto :goto_0

    #@65
    .line 585
    :cond_5
    const/4 v3, 0x0

    #@66
    goto :goto_0

    #@67
    .line 588
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    const/4 v0, 0x0

    #@68
    .restart local v0    # "enabled":Z
    goto :goto_1

    #@69
    :cond_7
    move v4, v5

    #@6a
    .line 589
    goto :goto_2
.end method

.method redo()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 317
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 318
    return-void

    #@6
    .line 320
    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    #@8
    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 321
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@f
    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    #@12
    .line 316
    return-void
.end method

.method replace()V
    .locals 3

    #@0
    .prologue
    .line 325
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    #@b
    move-result v2

    #@c
    add-int/2addr v1, v2

    #@d
    div-int/lit8 v0, v1, 0x2

    #@f
    .line 326
    .local v0, "middle":I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@12
    .line 327
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@14
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/text/Spannable;

    #@1a
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@1d
    .line 328
    invoke-virtual {p0}, Landroid/widget/Editor;->showSuggestions()V

    #@20
    .line 324
    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1415
    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@4
    .line 1416
    .local v8, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_3

    #@6
    .line 1417
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@8
    .line 1418
    .local v6, "contentChanged":Z
    if-nez v6, :cond_0

    #@a
    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@c
    if-eqz v0, :cond_3

    #@e
    .line 1419
    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@10
    .line 1420
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@12
    .line 1421
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    #@14
    .line 1422
    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_3

    #@16
    .line 1423
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@19
    move-result-object v7

    #@1a
    .line 1424
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_3

    #@1c
    .line 1429
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@1e
    if-gez v0, :cond_1

    #@20
    if-eqz v6, :cond_2

    #@22
    .line 1432
    :cond_1
    :goto_0
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@24
    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@26
    .line 1433
    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@28
    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@2a
    move-object v0, p0

    #@2b
    .line 1432
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_3

    #@31
    .line 1440
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@33
    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    #@35
    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@37
    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    #@3a
    .line 1441
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@3c
    .line 1442
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@3e
    .line 1443
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@40
    .line 1444
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@42
    .line 1445
    const/4 v0, 0x1

    #@43
    return v0

    #@44
    .line 1430
    :cond_2
    const/4 v0, -0x2

    #@45
    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@47
    goto :goto_0

    #@48
    .line 1451
    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6    # "contentChanged":Z
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    return v9
.end method

.method restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .locals 3
    .param p1, "state"    # Landroid/os/ParcelableParcel;

    #@0
    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 283
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@6
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@d
    .line 284
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@f
    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    #@12
    .line 286
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@14
    const-string/jumbo v2, "Editor"

    #@17
    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@1d
    .line 281
    return-void
.end method

.method saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    #@0
    .prologue
    .line 274
    new-instance v1, Landroid/os/ParcelableParcel;

    #@2
    invoke-virtual {p0}, Landroid/widget/Editor;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v1, v2}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    #@d
    .line 275
    .local v1, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    #@10
    move-result-object v0

    #@11
    .line 276
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@13
    invoke-virtual {v2, v0}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    #@16
    .line 277
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@18
    invoke-virtual {v2, v0}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    #@1b
    .line 278
    return-object v1
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "after"    # I

    #@0
    .prologue
    .line 1155
    add-int v0, p1, p2

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    #@6
    .line 1158
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    #@9
    .line 1163
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    #@c
    .line 1165
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1166
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@12
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@15
    .line 1168
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@18
    .line 1154
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 450
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@7
    .line 451
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    #@a
    .line 453
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@c
    if-nez v0, :cond_3

    #@e
    .line 454
    invoke-direct {p0, v1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 455
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 456
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@17
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 457
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@1f
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    #@22
    .line 460
    :cond_0
    iput-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@24
    .line 462
    :cond_1
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@27
    .line 449
    :cond_2
    :goto_0
    return-void

    #@28
    .line 464
    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    #@2b
    .line 465
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2d
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 466
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    #@36
    goto :goto_0
.end method

.method setFrame()V
    .locals 7

    #@0
    .prologue
    .line 729
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 730
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    #@9
    move-result-object v6

    #@a
    check-cast v6, Landroid/widget/TextView;

    #@c
    .line 731
    .local v6, "tv":Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@e
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@10
    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    #@13
    .line 732
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@15
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    #@1a
    move-result v2

    #@1b
    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    #@1e
    move-result v3

    #@1f
    .line 733
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@21
    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    #@24
    move-result v4

    #@25
    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@27
    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    #@2a
    move-result v5

    #@2b
    .line 732
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    #@2e
    .line 728
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method showSuggestions()V
    .locals 1

    #@0
    .prologue
    .line 2038
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2039
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    #@9
    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@b
    .line 2041
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@e
    .line 2042
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@11
    .line 2043
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@13
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    #@16
    .line 2037
    return-void
.end method

.method startInsertionActionMode()V
    .locals 3

    #@0
    .prologue
    .line 1715
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1716
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 1718
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1719
    return-void

    #@12
    .line 1721
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@15
    .line 1724
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    #@1b
    .line 1725
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1d
    .line 1726
    const/4 v2, 0x1

    #@1e
    .line 1725
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@24
    .line 1727
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@26
    if-eqz v1, :cond_2

    #@28
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@2b
    move-result-object v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 1728
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    #@35
    .line 1714
    :cond_2
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 2

    #@0
    .prologue
    .line 1740
    invoke-direct {p0}, Landroid/widget/Editor;->startSelectionActionModeInternal()Z

    #@3
    move-result v0

    #@4
    .line 1741
    .local v0, "selectionStarted":Z
    if-eqz v0, :cond_1

    #@6
    .line 1742
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    #@d
    .line 1746
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1743
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1744
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    #@1b
    goto :goto_0
.end method

.method protected stopTextActionMode()V
    .locals 1

    #@0
    .prologue
    .line 1955
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1957
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@6
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    #@9
    .line 1954
    :cond_0
    return-void
.end method

.method undo()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 309
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 310
    return-void

    #@6
    .line 312
    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    #@8
    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 313
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@f
    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    #@12
    .line 308
    return-void
.end method

.method updateCursorsPositions()V
    .locals 11

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v10, 0x0

    #@3
    .line 1683
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5
    iget v7, v7, Landroid/widget/TextView;->mCursorDrawableRes:I

    #@7
    if-nez v7, :cond_0

    #@9
    .line 1684
    iput v10, p0, Landroid/widget/Editor;->mCursorCount:I

    #@b
    .line 1685
    return-void

    #@c
    .line 1688
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;

    #@f
    move-result-object v2

    #@10
    .line 1689
    .local v2, "layout":Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    #@15
    move-result v5

    #@16
    .line 1690
    .local v5, "offset":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    #@19
    move-result v3

    #@1a
    .line 1691
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    #@1d
    move-result v6

    #@1e
    .line 1692
    .local v6, "top":I
    add-int/lit8 v7, v3, 0x1

    #@20
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    #@23
    move-result v0

    #@24
    .line 1694
    .local v0, "bottom":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->isLevelBoundary(I)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_3

    #@2a
    move v7, v8

    #@2b
    :goto_0
    iput v7, p0, Landroid/widget/Editor;->mCursorCount:I

    #@2d
    .line 1696
    move v4, v0

    #@2e
    .line 1697
    .local v4, "middle":I
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    #@30
    if-ne v7, v8, :cond_1

    #@32
    .line 1699
    add-int v7, v6, v0

    #@34
    shr-int/lit8 v4, v7, 0x1

    #@36
    .line 1702
    :cond_1
    invoke-virtual {v2, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    #@39
    move-result v1

    #@3a
    .line 1703
    .local v1, "clamped":Z
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    #@3d
    move-result v7

    #@3e
    invoke-direct {p0, v10, v6, v4, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    #@41
    .line 1705
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    #@43
    if-ne v7, v8, :cond_2

    #@45
    .line 1707
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    #@48
    move-result v7

    #@49
    .line 1706
    invoke-direct {p0, v9, v4, v0, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    #@4c
    .line 1682
    :cond_2
    return-void

    #@4d
    .end local v1    # "clamped":Z
    .end local v4    # "middle":I
    :cond_3
    move v7, v9

    #@4e
    .line 1694
    goto :goto_0
.end method
