.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$1;,
        Landroid/widget/Editor$2;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$UndoInputFilter;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final HANDLE_TYPE_SELECTION_END:I = 0x1

.field public static final HANDLE_TYPE_SELECTION_START:I = 0x0

.field private static final LINE_SLOP_MULTIPLIER_FOR_HANDLEVIEWS:F = 0.5f

.field private static final MENU_ITEM_ORDER_COPY:I = 0x4

.field private static final MENU_ITEM_ORDER_CUT:I = 0x3

.field private static final MENU_ITEM_ORDER_PASTE:I = 0x5

.field private static final MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0x6

.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0xa

.field private static final MENU_ITEM_ORDER_REDO:I = 0x2

.field private static final MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final MENU_ITEM_ORDER_SHARE:I = 0x7

.field private static final MENU_ITEM_ORDER_UNDO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TAP_STATE_DOUBLE_TAP:I = 0x2

.field private static final TAP_STATE_FIRST_TAP:I = 0x1

.field private static final TAP_STATE_INITIAL:I = 0x0

.field private static final TAP_STATE_TRIPLE_CLICK:I = 0x3

.field private static final TEMP_POSITION:[F

.field private static final UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final UNSET_LINE:I = -0x1

.field private static final UNSET_X_VALUE:I = -0x1


# instance fields
.field mAllowUndo:Z

.field mBlink:Landroid/widget/Editor$Blink;

.field private mContextMenuAnchorX:F

.field private mContextMenuAnchorY:F

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mDiscardNextActionUp:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field private mIgnoreNextMouseActionUpOrDown:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field private mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mIsBeingLongClicked:Z

.field mIsInsertionActionModeStartPending:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field private mLastButtonState:I

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mLastTouchUpTime:J

.field private final mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field private mPreserveSelection:Z

.field final mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private mRestartActionModeOnNextRefresh:Z

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

.field private final mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTapState:I

.field private mTempRect:Landroid/graphics/Rect;

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

.method static synthetic -get1(Landroid/widget/Editor;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    #@2
    return v0
.end method

.method static synthetic -get10(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/Editor;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/Editor;->mTapState:I

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

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

.method static synthetic -set1(Landroid/widget/Editor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 1
    .param p1, "suggestionSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Landroid/widget/Editor;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(Landroid/widget/Editor;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap12(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontal"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap13(Landroid/widget/Editor;Landroid/text/Layout;IF)I
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

.method static synthetic -wrap14(Landroid/widget/Editor;IZ)I
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

.method static synthetic -wrap15(Landroid/widget/Editor;I)I
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

.method static synthetic -wrap16(Landroid/widget/Editor;I)I
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

.method static synthetic -wrap17(Landroid/widget/Editor;II)J
    .locals 2
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap18(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Landroid/widget/Editor;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

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

.method static synthetic -wrap20(Landroid/widget/Editor;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap22(Landroid/widget/Editor;IIZ)V
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
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentParagraph()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(Landroid/widget/Editor;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    #@5
    .line 138
    const/16 v0, 0x14

    #@7
    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    #@9
    .line 132
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
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 158
    new-instance v0, Landroid/content/UndoManager;

    #@8
    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@d
    .line 159
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
    .line 160
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    #@1a
    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    #@1d
    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@1f
    .line 161
    iput-boolean v3, p0, Landroid/widget/Editor;->mAllowUndo:Z

    #@21
    .line 193
    iput v2, p0, Landroid/widget/Editor;->mInputType:I

    #@23
    .line 202
    iput-boolean v3, p0, Landroid/widget/Editor;->mCursorVisible:Z

    #@25
    .line 219
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@27
    .line 229
    const/4 v0, 0x2

    #@28
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    #@2a
    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@2c
    .line 248
    iput v2, p0, Landroid/widget/Editor;->mTapState:I

    #@2e
    .line 249
    const-wide/16 v0, 0x0

    #@30
    iput-wide v0, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    #@32
    .line 281
    new-instance v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    #@34
    invoke-direct {v0, p0, v4}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier;)V

    #@37
    iput-object v0, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    #@39
    .line 283
    new-instance v0, Landroid/widget/Editor$1;

    #@3b
    invoke-direct {v0, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    #@3e
    iput-object v0, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    #@40
    .line 292
    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    #@42
    .line 294
    new-instance v0, Landroid/widget/Editor$SuggestionHelper;

    #@44
    invoke-direct {v0, p0, v4}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionHelper;)V

    #@47
    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    #@49
    .line 2664
    new-instance v0, Landroid/widget/Editor$2;

    #@4b
    invoke-direct {v0, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    #@4e
    .line 2663
    iput-object v0, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@50
    .line 297
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@52
    .line 299
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@54
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@56
    invoke-virtual {v1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    #@5d
    .line 300
    new-instance v0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@5f
    invoke-direct {v0, p0, v4}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler;)V

    #@62
    iput-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@64
    .line 296
    return-void
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 731
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
    .line 732
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
    .line 734
    .local v8, "ht":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@16
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v1

    #@1a
    .line 735
    const v2, 0x1050067

    #@1d
    .line 734
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@20
    move-result v3

    #@21
    .line 736
    .local v3, "defaultWidthInPixels":I
    new-instance v0, Landroid/text/StaticLayout;

    #@23
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@26
    move-result-object v2

    #@27
    .line 737
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
    .line 736
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    #@31
    .line 738
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    #@32
    .line 739
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
    .line 740
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    #@3c
    move-result v1

    #@3d
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    #@40
    move-result v10

    #@41
    .line 739
    add-int/lit8 v9, v9, 0x1

    #@43
    goto :goto_0

    #@44
    .line 747
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
    .line 748
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@51
    move-result v1

    #@52
    add-int/2addr v1, v8

    #@53
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@56
    .line 730
    return-void
.end method

.method private clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontal"    # F

    #@0
    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    #@2
    const/high16 v7, 0x3f800000    # 1.0f

    #@4
    .line 2233
    sub-float v5, p2, v6

    #@6
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    #@9
    move-result p2

    #@a
    .line 2234
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@c
    if-nez v5, :cond_0

    #@e
    new-instance v5, Landroid/graphics/Rect;

    #@10
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@13
    iput-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@15
    .line 2236
    :cond_0
    const/4 v0, 0x0

    #@16
    .line 2237
    .local v0, "drawableWidth":I
    if-eqz p1, :cond_1

    #@18
    .line 2238
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@1d
    .line 2239
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@20
    move-result v0

    #@21
    .line 2244
    :goto_0
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@23
    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    #@26
    move-result v3

    #@27
    .line 2245
    .local v3, "scrollX":I
    int-to-float v5, v3

    #@28
    sub-float v1, p2, v5

    #@2a
    .line 2246
    .local v1, "horizontalDiff":F
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2c
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    #@2f
    move-result v5

    #@30
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@32
    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@35
    move-result v6

    #@36
    sub-int/2addr v5, v6

    #@37
    .line 2247
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@39
    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@3c
    move-result v6

    #@3d
    .line 2246
    sub-int v4, v5, v6

    #@3f
    .line 2250
    .local v4, "viewClippedWidth":I
    int-to-float v5, v4

    #@40
    sub-float/2addr v5, v7

    #@41
    cmpl-float v5, v1, v5

    #@43
    if-ltz v5, :cond_2

    #@45
    .line 2252
    add-int v5, v4, v3

    #@47
    iget-object v6, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@49
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@4b
    sub-int v6, v0, v6

    #@4d
    sub-int v2, v5, v6

    #@4f
    .line 2262
    .local v2, "left":I
    :goto_1
    return v2

    #@50
    .line 2241
    .end local v1    # "horizontalDiff":F
    .end local v2    # "left":I
    .end local v3    # "scrollX":I
    .end local v4    # "viewClippedWidth":I
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@52
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    #@55
    goto :goto_0

    #@56
    .line 2253
    .restart local v1    # "horizontalDiff":F
    .restart local v3    # "scrollX":I
    .restart local v4    # "viewClippedWidth":I
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@59
    move-result v5

    #@5a
    cmpg-float v5, v5, v7

    #@5c
    if-lez v5, :cond_3

    #@5e
    .line 2254
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@60
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@63
    move-result-object v5

    #@64
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@67
    move-result v5

    #@68
    if-eqz v5, :cond_4

    #@6a
    .line 2255
    const/high16 v5, 0x100000

    #@6c
    sub-int/2addr v5, v3

    #@6d
    int-to-float v5, v5

    #@6e
    int-to-float v6, v4

    #@6f
    add-float/2addr v6, v7

    #@70
    cmpg-float v5, v5, v6

    #@72
    if-gtz v5, :cond_4

    #@74
    .line 2256
    cmpg-float v5, p2, v7

    #@76
    if-gtz v5, :cond_4

    #@78
    .line 2258
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@7a
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@7c
    sub-int v2, v3, v5

    #@7e
    .line 2256
    .restart local v2    # "left":I
    goto :goto_1

    #@7f
    .line 2260
    .end local v2    # "left":I
    :cond_4
    float-to-int v5, p2

    #@80
    iget-object v6, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@82
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@84
    sub-int v2, v5, v6

    #@86
    .restart local v2    # "left":I
    goto :goto_1
.end method

.method private discardTextDisplayLists()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 434
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@3
    if-eqz v3, :cond_2

    #@5
    .line 435
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@8
    array-length v3, v3

    #@9
    if-ge v1, v3, :cond_2

    #@b
    .line 436
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@d
    aget-object v3, v3, v1

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 437
    iget-object v3, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@13
    aget-object v3, v3, v1

    #@15
    iget-object v0, v3, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    #@17
    .line 438
    .local v0, "displayList":Landroid/view/RenderNode;
    :goto_1
    if-eqz v0, :cond_0

    #@19
    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 439
    invoke-virtual {v0}, Landroid/view/RenderNode;->discardDisplayList()V

    #@22
    .line 435
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .end local v0    # "displayList":Landroid/view/RenderNode;
    :cond_1
    move-object v0, v2

    #@26
    .line 437
    goto :goto_1

    #@27
    .line 433
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
    .line 1232
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@6
    move-result-object v4

    #@7
    .line 1233
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    #@9
    if-eqz v5, :cond_1

    #@b
    move-object v2, v4

    #@c
    .line 1234
    check-cast v2, Landroid/text/Spannable;

    #@e
    .line 1236
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    #@11
    move-result v5

    #@12
    const-class v6, Landroid/text/style/SuggestionSpan;

    #@14
    .line 1235
    invoke-interface {v2, v7, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, [Landroid/text/style/SuggestionSpan;

    #@1a
    .line 1237
    .local v3, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    array-length v5, v3

    #@1c
    if-ge v1, v5, :cond_1

    #@1e
    .line 1238
    aget-object v5, v3, v1

    #@20
    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@23
    move-result v0

    #@24
    .line 1239
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 1240
    and-int/lit8 v5, v0, 0x2

    #@2a
    if-nez v5, :cond_0

    #@2c
    .line 1241
    and-int/lit8 v0, v0, -0x2

    #@2e
    .line 1242
    aget-object v5, v3, v1

    #@30
    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    #@33
    .line 1237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1231
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
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1784
    if-eqz p2, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    .line 1785
    .local v1, "translate":Z
    :cond_0
    if-eqz v1, :cond_1

    #@7
    int-to-float v2, p2

    #@8
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@b
    .line 1786
    :cond_1
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    #@e
    if-ge v0, v2, :cond_2

    #@10
    .line 1787
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@12
    aget-object v2, v2, v0

    #@14
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@17
    .line 1786
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1789
    :cond_2
    if-eqz v1, :cond_3

    #@1c
    neg-int v2, p2

    #@1d
    int-to-float v2, v2

    #@1e
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@21
    .line 1783
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
    .line 1666
    move-object/from16 v0, p2

    #@2
    move-object/from16 v1, p1

    #@4
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    #@7
    move-result-wide v28

    #@8
    .line 1667
    .local v28, "lineRange":J
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@b
    move-result v9

    #@c
    .line 1668
    .local v9, "firstLine":I
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@f
    move-result v10

    #@10
    .line 1669
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
    .line 1671
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    #@20
    .line 1674
    move-object/from16 v0, p2

    #@22
    instance-of v4, v0, Landroid/text/DynamicLayout;

    #@24
    if-eqz v4, :cond_c

    #@26
    .line 1675
    move-object/from16 v0, p0

    #@28
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2a
    if-nez v4, :cond_1

    #@2c
    .line 1676
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
    .line 1679
    check-cast v21, Landroid/text/DynamicLayout;

    #@3c
    .line 1680
    .local v21, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    #@3f
    move-result-object v15

    #@40
    .line 1681
    .local v15, "blockEndLines":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    #@43
    move-result-object v17

    #@44
    .line 1682
    .local v17, "blockIndices":[I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    #@47
    move-result v31

    #@48
    .line 1683
    .local v31, "numberOfBlocks":I
    invoke-virtual/range {v21 .. v21}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    #@4b
    move-result v24

    #@4c
    .line 1685
    .local v24, "indexFirstChangedBlock":I
    const/16 v22, -0x1

    #@4e
    .line 1686
    .local v22, "endOfPreviousBlock":I
    const/16 v33, 0x0

    #@50
    .line 1687
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
    .line 1688
    aget v14, v15, v23

    #@5a
    .line 1689
    .local v14, "blockEndLine":I
    aget v16, v17, v23

    #@5c
    .line 1691
    .local v16, "blockIndex":I
    const/4 v4, -0x1

    #@5d
    move/from16 v0, v16

    #@5f
    if-ne v0, v4, :cond_6

    #@61
    const/16 v18, 0x1

    #@63
    .line 1692
    .local v18, "blockIsInvalid":Z
    :goto_1
    if-eqz v18, :cond_3

    #@65
    .line 1693
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
    .line 1696
    aput v16, v17, v23

    #@73
    .line 1697
    move-object/from16 v0, p0

    #@75
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@77
    aget-object v4, v4, v16

    #@79
    if-eqz v4, :cond_2

    #@7b
    .line 1698
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
    .line 1700
    :cond_2
    add-int/lit8 v33, v16, 0x1

    #@86
    .line 1703
    :cond_3
    move-object/from16 v0, p0

    #@88
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@8a
    aget-object v4, v4, v16

    #@8c
    if-nez v4, :cond_4

    #@8e
    .line 1704
    move-object/from16 v0, p0

    #@90
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@92
    .line 1705
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
    .line 1704
    aput-object v5, v4, v16

    #@af
    .line 1708
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
    .line 1709
    .local v13, "blockDisplayListIsInvalid":Z
    move-object/from16 v0, p0

    #@bb
    iget-object v4, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@bd
    aget-object v4, v4, v16

    #@bf
    iget-object v12, v4, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/view/RenderNode;

    #@c1
    .line 1710
    .local v12, "blockDisplayList":Landroid/view/RenderNode;
    move/from16 v0, v23

    #@c3
    move/from16 v1, v24

    #@c5
    if-ge v0, v1, :cond_5

    #@c7
    if-eqz v13, :cond_a

    #@c9
    .line 1711
    :cond_5
    add-int/lit8 v11, v22, 0x1

    #@cb
    .line 1712
    .local v11, "blockBeginLine":I
    move-object/from16 v0, p2

    #@cd
    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    #@d0
    move-result v34

    #@d1
    .line 1713
    .local v34, "top":I
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBottom(I)I

    #@d6
    move-result v19

    #@d7
    .line 1714
    .local v19, "bottom":I
    const/16 v25, 0x0

    #@d9
    .line 1715
    .local v25, "left":I
    move-object/from16 v0, p0

    #@db
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@dd
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    #@e0
    move-result v32

    #@e1
    .line 1716
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
    .line 1717
    const v30, 0x7f7fffff    # Float.MAX_VALUE

    #@ee
    .line 1718
    .local v30, "min":F
    const/16 v27, 0x1

    #@f0
    .line 1719
    .local v27, "max":F
    move/from16 v26, v11

    #@f2
    .local v26, "line":I
    :goto_2
    move/from16 v0, v26

    #@f4
    if-gt v0, v14, :cond_7

    #@f6
    .line 1720
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
    .line 1721
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
    .line 1719
    add-int/lit8 v26, v26, 0x1

    #@114
    goto :goto_2

    #@115
    .line 1691
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
    goto/16 :goto_1

    #@119
    .line 1723
    .restart local v11    # "blockBeginLine":I
    .restart local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .restart local v13    # "blockDisplayListIsInvalid":Z
    .restart local v18    # "blockIsInvalid":Z
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
    .line 1724
    const/high16 v4, 0x3f000000    # 0.5f

    #@120
    add-float v4, v4, v27

    #@122
    float-to-int v0, v4

    #@123
    move/from16 v32, v0

    #@125
    .line 1728
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    :cond_8
    if-eqz v13, :cond_9

    #@127
    .line 1730
    sub-int v4, v32, v25

    #@129
    sub-int v5, v19, v34

    #@12b
    .line 1729
    invoke-virtual {v12, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    #@12e
    move-result-object v20

    #@12f
    .line 1734
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
    .line 1735
    move-object/from16 v0, p2

    #@13e
    move-object/from16 v1, v20

    #@140
    invoke-virtual {v0, v1, v11, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    #@143
    .line 1736
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
    .line 1740
    move-object/from16 v0, v20

    #@14e
    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@151
    .line 1742
    const/4 v4, 0x0

    #@152
    invoke-virtual {v12, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    #@155
    .line 1748
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
    .line 1751
    check-cast v4, Landroid/view/DisplayListCanvas;

    #@164
    invoke-virtual {v4, v12}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    #@167
    .line 1753
    move/from16 v22, v14

    #@169
    .line 1687
    add-int/lit8 v23, v23, 0x1

    #@16b
    goto/16 :goto_0

    #@16d
    .line 1739
    .restart local v11    # "blockBeginLine":I
    .restart local v19    # "bottom":I
    .restart local v20    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    .restart local v25    # "left":I
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :catchall_0
    move-exception v4

    #@16e
    .line 1740
    move-object/from16 v0, v20

    #@170
    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    #@173
    .line 1742
    const/4 v5, 0x0

    #@174
    invoke-virtual {v12, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    #@177
    .line 1739
    throw v4

    #@178
    .line 1756
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
    .line 1665
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
    .line 1759
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
    .line 1492
    if-eqz p1, :cond_0

    #@4
    if-nez p5, :cond_1

    #@6
    .line 1493
    :cond_0
    return v7

    #@7
    .line 1496
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@9
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@c
    move-result-object v1

    #@d
    .line 1497
    .local v1, "content":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    #@f
    .line 1498
    return v7

    #@10
    .line 1501
    :cond_2
    const/4 v6, -0x2

    #@11
    if-eq p2, v6, :cond_e

    #@13
    .line 1502
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@16
    move-result v0

    #@17
    .line 1503
    .local v0, "N":I
    if-gez p2, :cond_6

    #@19
    .line 1504
    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    #@1b
    iput v8, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@1d
    .line 1505
    const/4 p2, 0x0

    #@1e
    .line 1506
    move p3, v0

    #@1f
    .line 1539
    :cond_3
    :goto_0
    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    #@21
    and-int/lit8 v6, v6, 0x1

    #@23
    if-eqz v6, :cond_d

    #@25
    .line 1540
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@28
    move-result-object v6

    #@29
    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@2b
    .line 1551
    .end local v0    # "N":I
    :goto_1
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@2d
    .line 1552
    const/16 v6, 0x800

    #@2f
    invoke-static {v1, v6}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_4

    #@35
    .line 1553
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@37
    or-int/lit8 v6, v6, 0x2

    #@39
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@3b
    .line 1555
    :cond_4
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3d
    invoke-virtual {v6}, Landroid/widget/TextView;->isSingleLine()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_5

    #@43
    .line 1556
    iget v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@45
    or-int/lit8 v6, v6, 0x1

    #@47
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@49
    .line 1558
    :cond_5
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    #@4b
    .line 1559
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4d
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    #@50
    move-result v6

    #@51
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    #@53
    .line 1560
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@55
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    #@58
    move-result v6

    #@59
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    #@5b
    .line 1561
    const/4 v6, 0x1

    #@5c
    return v6

    #@5d
    .line 1510
    .restart local v0    # "N":I
    :cond_6
    add-int/2addr p3, p4

    #@5e
    .line 1512
    instance-of v6, v1, Landroid/text/Spanned;

    #@60
    if-eqz v6, :cond_9

    #@62
    move-object v4, v1

    #@63
    .line 1513
    check-cast v4, Landroid/text/Spanned;

    #@65
    .line 1515
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Landroid/text/ParcelableSpan;

    #@67
    .line 1514
    invoke-interface {v4, p2, p3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@6a
    move-result-object v5

    #@6b
    .line 1516
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    #@6c
    .line 1517
    .local v2, "i":I
    :cond_7
    :goto_2
    if-lez v2, :cond_9

    #@6e
    .line 1518
    add-int/lit8 v2, v2, -0x1

    #@70
    .line 1519
    aget-object v6, v5, v2

    #@72
    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@75
    move-result v3

    #@76
    .line 1520
    .local v3, "j":I
    if-ge v3, p2, :cond_8

    #@78
    move p2, v3

    #@79
    .line 1521
    :cond_8
    aget-object v6, v5, v2

    #@7b
    invoke-interface {v4, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@7e
    move-result v3

    #@7f
    .line 1522
    if-le v3, p3, :cond_7

    #@81
    move p3, v3

    #@82
    goto :goto_2

    #@83
    .line 1525
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_9
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@85
    .line 1526
    sub-int v6, p3, p4

    #@87
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    #@89
    .line 1528
    if-le p2, v0, :cond_b

    #@8b
    .line 1529
    move p2, v0

    #@8c
    .line 1533
    :cond_a
    :goto_3
    if-le p3, v0, :cond_c

    #@8e
    .line 1534
    move p3, v0

    #@8f
    goto :goto_0

    #@90
    .line 1530
    :cond_b
    if-gez p2, :cond_a

    #@92
    .line 1531
    const/4 p2, 0x0

    #@93
    goto :goto_3

    #@94
    .line 1535
    :cond_c
    if-gez p3, :cond_3

    #@96
    .line 1536
    const/4 p3, 0x0

    #@97
    goto :goto_0

    #@98
    .line 1543
    :cond_d
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@9e
    goto :goto_1

    #@9f
    .line 1547
    .end local v0    # "N":I
    :cond_e
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@a1
    .line 1548
    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    #@a3
    .line 1549
    const-string/jumbo v6, ""

    #@a6
    iput-object v6, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@a8
    goto :goto_1
.end method

.method private findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .locals 9
    .param p1, "suggestionSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2570
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/Editable;

    #@9
    .line 2571
    .local v0, "editable":Landroid/text/Editable;
    iget-object v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@b
    invoke-interface {v0, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@e
    move-result v6

    #@f
    if-ltz v6, :cond_0

    #@11
    .line 2573
    iget-object v5, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@13
    return-object v5

    #@14
    .line 2577
    :cond_0
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@16
    .line 2578
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    #@18
    const-class v8, Landroid/text/style/SuggestionSpan;

    #@1a
    .line 2577
    invoke-interface {v0, v6, v7, v8}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, [Landroid/text/style/SuggestionSpan;

    #@20
    .line 2579
    .local v4, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v6, v4

    #@21
    :goto_0
    if-ge v5, v6, :cond_3

    #@23
    aget-object v3, v4, v5

    #@25
    .line 2580
    .local v3, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@28
    move-result v2

    #@29
    .line 2581
    .local v2, "start":I
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@2b
    if-eq v2, v7, :cond_2

    #@2d
    .line 2579
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 2584
    :cond_2
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@33
    move-result v1

    #@34
    .line 2585
    .local v1, "end":I
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    #@36
    if-ne v1, v7, :cond_1

    #@38
    .line 2588
    iget-object v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@3a
    invoke-virtual {v3, v7}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_1

    #@40
    .line 2589
    return-object v3

    #@41
    .line 2592
    .end local v1    # "end":I
    .end local v2    # "start":I
    .end local v3    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_3
    const/4 v5, 0x0

    #@42
    return-object v5
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 6
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    #@0
    .prologue
    .line 1765
    iget-object v4, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2
    array-length v3, v4

    #@3
    .line 1766
    .local v3, "length":I
    move v1, p3

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@6
    .line 1767
    const/4 v0, 0x0

    #@7
    .line 1768
    .local v0, "blockIndexFound":Z
    const/4 v2, 0x0

    #@8
    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    #@a
    .line 1769
    aget v4, p1, v2

    #@c
    if-ne v4, v1, :cond_1

    #@e
    .line 1770
    const/4 v0, 0x1

    #@f
    .line 1774
    :cond_0
    if-eqz v0, :cond_2

    #@11
    .line 1766
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1768
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_1

    #@17
    .line 1775
    :cond_2
    return v1

    #@18
    .line 1779
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
    .line 1780
    return v3
.end method

.method private getCharClusterRange(I)J
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 968
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@7
    move-result-object v3

    #@8
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v2

    #@c
    .line 969
    .local v2, "textLength":I
    if-ge p1, v2, :cond_0

    #@e
    .line 970
    invoke-direct {p0, p1, v5}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    #@11
    move-result v0

    #@12
    .line 972
    .local v0, "clusterEndOffset":I
    invoke-direct {p0, v0, v4}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    #@15
    move-result v3

    #@16
    .line 971
    invoke-static {v3, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@19
    move-result-wide v4

    #@1a
    return-wide v4

    #@1b
    .line 974
    .end local v0    # "clusterEndOffset":I
    :cond_0
    add-int/lit8 v3, p1, -0x1

    #@1d
    if-ltz v3, :cond_1

    #@1f
    .line 975
    invoke-direct {p0, p1, v4}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    #@22
    move-result v1

    #@23
    .line 977
    .local v1, "clusterStartOffset":I
    invoke-direct {p0, v1, v5}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    #@26
    move-result v3

    #@27
    .line 976
    invoke-static {v1, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@2a
    move-result-wide v4

    #@2b
    return-wide v4

    #@2c
    .line 979
    .end local v1    # "clusterStartOffset":I
    :cond_1
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@2f
    move-result-wide v4

    #@30
    return-wide v4
.end method

.method private getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .locals 14
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    #@0
    .prologue
    .line 4981
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    move/from16 v0, p3

    #@4
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@7
    move-result v8

    #@8
    .line 4982
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
    .line 4985
    :cond_0
    return v8

    #@13
    .line 4983
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@16
    move-result v12

    #@17
    if-lez v12, :cond_0

    #@19
    if-ltz p2, :cond_0

    #@1b
    .line 4988
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
    .line 4990
    return v8

    #@25
    .line 4993
    :cond_2
    iget-object v12, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@27
    invoke-virtual {v12}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@2a
    move-result v12

    #@2b
    int-to-float v9, v12

    #@2c
    .line 4994
    .local v9, "verticalOffset":F
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@2f
    move-result v4

    #@30
    .line 4995
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
    .line 4997
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
    .line 4998
    .local v2, "firstLineTop":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineTop(I)I

    #@46
    move-result v12

    #@47
    int-to-float v12, v12

    #@48
    add-float v6, v12, v9

    #@4a
    .line 4999
    .local v6, "prevLineTop":F
    sub-float v12, v6, v7

    #@4c
    add-float v13, v2, v7

    #@4e
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    #@51
    move-result v11

    #@52
    .line 5001
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
    .line 5002
    .local v3, "lastLineBottom":F
    invoke-virtual/range {p1 .. p2}, Landroid/text/Layout;->getLineBottom(I)I

    #@5e
    move-result v12

    #@5f
    int-to-float v12, v12

    #@60
    add-float v5, v12, v9

    #@62
    .line 5003
    .local v5, "prevLineBottom":F
    add-float v12, v5, v7

    #@64
    sub-float v13, v3, v7

    #@66
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    #@69
    move-result v10

    #@6a
    .line 5007
    .local v10, "yBottomBound":F
    cmpg-float v12, p3, v11

    #@6c
    if-gtz v12, :cond_3

    #@6e
    .line 5008
    add-int/lit8 v12, p2, -0x1

    #@70
    const/4 v13, 0x0

    #@71
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    #@74
    move-result v1

    #@75
    .line 5014
    .local v1, "currLine":I
    :goto_0
    return v1

    #@76
    .line 5009
    .end local v1    # "currLine":I
    :cond_3
    cmpl-float v12, p3, v10

    #@78
    if-ltz v12, :cond_4

    #@7a
    .line 5010
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
    .line 5012
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
    .line 525
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
    .line 527
    .local v4, "scale":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@13
    iget-object v0, v6, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@15
    .line 529
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    #@1a
    move-result v2

    #@1b
    .line 532
    .local v2, "layoutDirection":I
    packed-switch v2, :pswitch_data_0

    #@1e
    .line 535
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
    .line 536
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
    .line 537
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3a
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    #@3d
    move-result v6

    #@3e
    .line 536
    sub-int/2addr v5, v6

    #@3f
    add-int v1, v5, v3

    #@41
    .line 544
    .local v1, "errorX":I
    :goto_0
    return v1

    #@42
    .line 540
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
    .line 541
    .restart local v3    # "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@50
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    #@53
    move-result v5

    #@54
    add-int v1, v5, v3

    #@56
    .line 542
    .restart local v1    # "errorX":I
    goto :goto_0

    #@57
    .line 532
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
    .line 556
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@5
    move-result v0

    #@6
    .line 557
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
    .line 558
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@15
    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@18
    move-result v8

    #@19
    .line 557
    sub-int/2addr v7, v8

    #@1a
    sub-int v6, v7, v0

    #@1c
    .line 560
    .local v6, "vspace":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1e
    iget-object v1, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@20
    .line 562
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@22
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutDirection()I

    #@25
    move-result v4

    #@26
    .line 564
    .local v4, "layoutDirection":I
    packed-switch v4, :pswitch_data_0

    #@29
    .line 567
    :pswitch_0
    if-eqz v1, :cond_0

    #@2b
    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@2d
    .line 574
    .local v2, "height":I
    :goto_0
    sub-int v7, v6, v2

    #@2f
    div-int/lit8 v7, v7, 0x2

    #@31
    add-int v3, v0, v7

    #@33
    .line 580
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
    .line 581
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
    .line 567
    .end local v2    # "height":I
    .end local v3    # "icontop":I
    .end local v5    # "scale":F
    :cond_0
    const/4 v2, 0x0

    #@52
    .restart local v2    # "height":I
    goto :goto_0

    #@53
    .line 570
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
    .line 564
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
    .line 1267
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 1268
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@6
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    #@9
    move-result v0

    #@a
    .line 1269
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    #@c
    .line 1271
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
    .line 1272
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
    .line 1274
    :cond_0
    return v0

    #@23
    .line 1278
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
    .line 1131
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@3
    move-result-object v2

    #@4
    .line 1132
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    #@7
    move-result v1

    #@8
    .line 1133
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    #@b
    move-result v0

    #@c
    .line 1134
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@f
    move-result-wide v4

    #@10
    return-wide v4
.end method

.method private getNextCursorOffset(IZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    #@0
    .prologue
    .line 961
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@5
    move-result-object v0

    #@6
    .line 962
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    #@8
    return p1

    #@9
    .line 963
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@c
    move-result v1

    #@d
    if-ne p2, v1, :cond_1

    #@f
    .line 964
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    #@12
    move-result v1

    #@13
    .line 963
    :goto_0
    return v1

    #@14
    .line 964
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    #@17
    move-result v1

    #@18
    goto :goto_0
.end method

.method private getParagraphsRange(II)J
    .locals 9
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v7, -0x1

    #@3
    .line 900
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@8
    move-result-object v0

    #@9
    .line 901
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    #@b
    .line 902
    invoke-static {v7, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@e
    move-result-wide v6

    #@f
    return-wide v6

    #@10
    .line 904
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@15
    move-result-object v5

    #@16
    .line 905
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@19
    move-result v3

    #@1a
    .line 907
    .local v3, "minLine":I
    :goto_0
    if-lez v3, :cond_1

    #@1c
    .line 908
    add-int/lit8 v6, v3, -0x1

    #@1e
    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineEnd(I)I

    #@21
    move-result v4

    #@22
    .line 909
    .local v4, "prevLineEndOffset":I
    add-int/lit8 v6, v4, -0x1

    #@24
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@27
    move-result v6

    #@28
    if-ne v6, v8, :cond_3

    #@2a
    .line 914
    .end local v4    # "prevLineEndOffset":I
    :cond_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    #@2d
    move-result v2

    #@2e
    .line 916
    .local v2, "maxLine":I
    :goto_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    #@31
    move-result v6

    #@32
    add-int/lit8 v6, v6, -0x1

    #@34
    if-ge v2, v6, :cond_2

    #@36
    .line 917
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    #@39
    move-result v1

    #@3a
    .line 918
    .local v1, "lineEndOffset":I
    add-int/lit8 v6, v1, -0x1

    #@3c
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@3f
    move-result v6

    #@40
    if-ne v6, v8, :cond_4

    #@42
    .line 923
    .end local v1    # "lineEndOffset":I
    :cond_2
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    #@45
    move-result v6

    #@46
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    #@49
    move-result v7

    #@4a
    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@4d
    move-result-wide v6

    #@4e
    return-wide v6

    #@4f
    .line 912
    .end local v2    # "maxLine":I
    .restart local v4    # "prevLineEndOffset":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    #@51
    goto :goto_0

    #@52
    .line 921
    .end local v4    # "prevLineEndOffset":I
    .restart local v1    # "lineEndOffset":I
    .restart local v2    # "maxLine":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@54
    goto :goto_1
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1005
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1006
    new-instance v0, Landroid/widget/Editor$PositionListener;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$PositionListener;)V

    #@a
    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@c
    .line 1008
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@e
    return-object v0
.end method

.method private getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x2

    #@2
    const/4 v7, 0x0

    #@3
    .line 2350
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v5

    #@9
    .line 2351
    const v6, 0x10900ee

    #@c
    .line 2350
    invoke-static {v5, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/widget/TextView;

    #@12
    .line 2353
    .local v2, "shadowView":Landroid/widget/TextView;
    if-nez v2, :cond_0

    #@14
    .line 2354
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v6, "Unable to inflate text drag thumbnail"

    #@19
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v5

    #@1d
    .line 2357
    :cond_0
    sub-int v5, p2, p1

    #@1f
    sget v6, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    #@21
    if-le v5, v6, :cond_1

    #@23
    .line 2358
    sget v5, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    #@25
    add-int/2addr v5, p1

    #@26
    invoke-direct {p0, v5}, Landroid/widget/Editor;->getCharClusterRange(I)J

    #@29
    move-result-wide v0

    #@2a
    .line 2359
    .local v0, "range":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@2d
    move-result p2

    #@2e
    .line 2361
    .end local v0    # "range":J
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@30
    invoke-virtual {v5, p1, p2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    #@33
    move-result-object v4

    #@34
    .line 2362
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@37
    .line 2363
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@39
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@40
    .line 2365
    const/16 v5, 0x10

    #@42
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@45
    .line 2366
    const/16 v5, 0x11

    #@47
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    #@4a
    .line 2368
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    #@4c
    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@4f
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@52
    .line 2371
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@55
    move-result v3

    #@56
    .line 2372
    .local v3, "size":I
    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    #@59
    .line 2374
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@5c
    move-result v5

    #@5d
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@60
    move-result v6

    #@61
    invoke-virtual {v2, v7, v7, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    #@64
    .line 2375
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    #@67
    .line 2376
    new-instance v5, Landroid/view/View$DragShadowBuilder;

    #@69
    invoke-direct {v5, v2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    #@6c
    return-object v5
.end method

.method private getWordEnd(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 778
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    #@7
    move-result v0

    #@8
    .line 779
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
    .line 781
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    #@19
    move-result v0

    #@1a
    .line 786
    :goto_0
    const/4 v1, -0x1

    #@1b
    if-ne v0, v1, :cond_1

    #@1d
    .line 787
    return p1

    #@1e
    .line 784
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
    .line 789
    :cond_1
    return v0
.end method

.method private getWordIteratorWithText()Landroid/text/method/WordIterator;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 944
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 945
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
    .line 946
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    #@15
    .line 948
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 953
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1b
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1e
    move-result-object v0

    #@1f
    .line 954
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    #@21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@28
    .line 955
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    #@2a
    .line 957
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
    .line 763
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    #@7
    move-result v0

    #@8
    .line 764
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
    .line 766
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    #@19
    move-result v0

    #@1a
    .line 771
    :goto_0
    const/4 v1, -0x1

    #@1b
    if-ne v0, v1, :cond_1

    #@1d
    .line 772
    return p1

    #@1e
    .line 769
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
    .line 774
    :cond_1
    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    #@0
    .prologue
    .line 657
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
    .line 658
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@e
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 662
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    #@17
    .line 652
    return-void

    #@18
    .line 660
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
    .line 507
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 508
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 509
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@e
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    #@11
    .line 513
    :cond_0
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@14
    .line 506
    return-void
.end method

.method private hideFloatingToolbar()V
    .locals 4

    #@0
    .prologue
    .line 1397
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1398
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6
    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 1399
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@d
    const-wide/16 v2, -0x1

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/view/ActionMode;->hide(J)V

    #@12
    .line 1396
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 648
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    #@9
    .line 646
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2095
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/text/Spannable;

    #@9
    .line 2096
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@b
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    #@e
    move-result v3

    #@f
    .line 2097
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@11
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    #@14
    move-result v4

    #@15
    const-class v5, Landroid/text/style/SuggestionSpan;

    #@17
    .line 2096
    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, [Landroid/text/style/SuggestionSpan;

    #@1d
    .line 2098
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@1f
    if-ge v0, v3, :cond_1

    #@21
    .line 2099
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
    .line 2100
    const/4 v3, 0x1

    #@2c
    return v3

    #@2d
    .line 2098
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 2103
    :cond_1
    return v6
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 1057
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@5
    move-result-object v0

    #@6
    .line 1058
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    #@8
    const/4 v4, 0x0

    #@9
    return v4

    #@a
    .line 1060
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@d
    move-result v1

    #@e
    .line 1061
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@11
    move-result v2

    #@12
    .line 1062
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@15
    move-result v4

    #@16
    float-to-int v3, v4

    #@17
    .line 1063
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
    .line 1064
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
    .line 1063
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
    .line 1071
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@6
    move-result-object v0

    #@7
    .line 1072
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    #@9
    return v3

    #@a
    .line 1074
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@f
    move-result v1

    #@10
    .line 1075
    .local v1, "line":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@15
    move-result p1

    #@16
    .line 1077
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
    .line 1078
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
    .line 1079
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
    .line 1017
    sget-object v5, Landroid/widget/Editor;->TEMP_POSITION:[F

    #@5
    monitor-enter v5

    #@6
    .line 1018
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    #@8
    .line 1019
    .local v2, "position":[F
    const/4 v4, 0x0

    #@9
    aput p1, v2, v4

    #@b
    .line 1020
    const/4 v4, 0x1

    #@c
    aput p2, v2, v4

    #@e
    .line 1021
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@10
    .line 1023
    :goto_0
    if-eqz v3, :cond_5

    #@12
    .line 1024
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@14
    if-eq v3, v4, :cond_0

    #@16
    .line 1026
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
    .line 1027
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
    .line 1030
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
    .line 1032
    return v8

    #@3c
    .line 1031
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
    .line 1035
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
    .line 1036
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@65
    .line 1039
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
    .line 1040
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
    .line 1042
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7e
    move-result-object v1

    #@7f
    .line 1043
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/View;

    #@81
    if-eqz v4, :cond_4

    #@83
    .line 1044
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
    .line 1047
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
    .line 1053
    return v9

    #@8c
    .line 1017
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
    .line 5688
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

.method private needsToSelectAllToSelectWordOrParagraph()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 793
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v3}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 797
    return v4

    #@a
    .line 800
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    #@f
    move-result v0

    #@10
    .line 801
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    #@12
    .line 802
    .local v1, "klass":I
    and-int/lit16 v2, v0, 0xff0

    #@14
    .line 805
    .local v2, "variation":I
    const/4 v3, 0x2

    #@15
    if-eq v1, v3, :cond_1

    #@17
    .line 806
    const/4 v3, 0x3

    #@18
    if-ne v1, v3, :cond_2

    #@1a
    .line 812
    :cond_1
    return v4

    #@1b
    .line 807
    :cond_2
    const/4 v3, 0x4

    #@1c
    if-eq v1, v3, :cond_1

    #@1e
    .line 808
    const/16 v3, 0x10

    #@20
    if-eq v2, v3, :cond_1

    #@22
    .line 809
    const/16 v3, 0x20

    #@24
    if-eq v2, v3, :cond_1

    #@26
    .line 810
    const/16 v3, 0xd0

    #@28
    if-eq v2, v3, :cond_1

    #@2a
    .line 811
    const/16 v3, 0xb0

    #@2c
    if-eq v2, v3, :cond_1

    #@2e
    .line 814
    const/4 v3, 0x0

    #@2f
    return v3
.end method

.method private replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .locals 27
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;

    #@0
    .prologue
    .line 2597
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@4
    move-object/from16 v22, v0

    #@6
    .line 2596
    move-object/from16 v0, p0

    #@8
    move-object/from16 v1, v22

    #@a
    invoke-direct {v0, v1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    #@d
    move-result-object v21

    #@e
    .line 2598
    .local v21, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-nez v21, :cond_0

    #@10
    .line 2600
    return-void

    #@11
    .line 2602
    :cond_0
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@15
    move-object/from16 v22, v0

    #@17
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/text/Editable;

    #@1d
    .line 2603
    .local v3, "editable":Landroid/text/Editable;
    move-object/from16 v0, v21

    #@1f
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@22
    move-result v10

    #@23
    .line 2604
    .local v10, "spanStart":I
    move-object/from16 v0, v21

    #@25
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@28
    move-result v9

    #@29
    .line 2605
    .local v9, "spanEnd":I
    if-ltz v10, :cond_1

    #@2b
    if-gt v9, v10, :cond_2

    #@2d
    .line 2607
    :cond_1
    return-void

    #@2e
    .line 2610
    :cond_2
    invoke-static {v3, v10, v9}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    .line 2613
    .local v8, "originalText":Ljava/lang/String;
    const-class v22, Landroid/text/style/SuggestionSpan;

    #@34
    .line 2612
    move-object/from16 v0, v22

    #@36
    invoke-interface {v3, v10, v9, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@39
    move-result-object v15

    #@3a
    check-cast v15, [Landroid/text/style/SuggestionSpan;

    #@3c
    .line 2614
    .local v15, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v5, v15

    #@3d
    .line 2615
    .local v5, "length":I
    new-array v0, v5, [I

    #@3f
    move-object/from16 v18, v0

    #@41
    .line 2616
    .local v18, "suggestionSpansStarts":[I
    new-array v0, v5, [I

    #@43
    move-object/from16 v16, v0

    #@45
    .line 2617
    .local v16, "suggestionSpansEnds":[I
    new-array v0, v5, [I

    #@47
    move-object/from16 v17, v0

    #@49
    .line 2618
    .local v17, "suggestionSpansFlags":[I
    const/4 v4, 0x0

    #@4a
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    #@4c
    .line 2619
    aget-object v13, v15, v4

    #@4e
    .line 2620
    .local v13, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@51
    move-result v22

    #@52
    aput v22, v18, v4

    #@54
    .line 2621
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@57
    move-result v22

    #@58
    aput v22, v16, v4

    #@5a
    .line 2622
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    #@5d
    move-result v22

    #@5e
    aput v22, v17, v4

    #@60
    .line 2625
    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@63
    move-result v14

    #@64
    .line 2626
    .local v14, "suggestionSpanFlags":I
    and-int/lit8 v22, v14, 0x2

    #@66
    if-eqz v22, :cond_3

    #@68
    .line 2627
    and-int/lit8 v14, v14, -0x3

    #@6a
    .line 2628
    and-int/lit8 v14, v14, -0x2

    #@6c
    .line 2629
    invoke-virtual {v13, v14}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    #@6f
    .line 2618
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@71
    goto :goto_0

    #@72
    .line 2635
    .end local v13    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v14    # "suggestionSpanFlags":I
    :cond_4
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@76
    move-object/from16 v22, v0

    #@78
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@7b
    move-result-object v22

    #@7c
    move-object/from16 v0, p1

    #@7e
    iget v0, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    #@80
    move/from16 v23, v0

    #@82
    .line 2634
    move-object/from16 v0, v21

    #@84
    move-object/from16 v1, v22

    #@86
    move/from16 v2, v23

    #@88
    invoke-virtual {v0, v1, v8, v2}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    #@8b
    .line 2638
    move-object/from16 v0, p1

    #@8d
    iget v0, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    #@8f
    move/from16 v19, v0

    #@91
    .line 2639
    .local v19, "suggestionStart":I
    move-object/from16 v0, p1

    #@93
    iget v12, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    #@95
    .line 2640
    .local v12, "suggestionEnd":I
    move-object/from16 v0, p1

    #@97
    iget-object v0, v0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@99
    move-object/from16 v22, v0

    #@9b
    move-object/from16 v0, v22

    #@9d
    move/from16 v1, v19

    #@9f
    invoke-virtual {v0, v1, v12}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    #@a2
    move-result-object v22

    #@a3
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@a6
    move-result-object v11

    #@a7
    .line 2642
    .local v11, "suggestion":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@ab
    move-object/from16 v22, v0

    #@ad
    move-object/from16 v0, v22

    #@af
    invoke-virtual {v0, v10, v9, v11}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    #@b2
    .line 2644
    invoke-virtual/range {v21 .. v21}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    #@b5
    move-result-object v20

    #@b6
    .line 2645
    .local v20, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, p1

    #@b8
    iget v0, v0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    #@ba
    move/from16 v22, v0

    #@bc
    aput-object v8, v20, v22

    #@be
    .line 2648
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@c1
    move-result v22

    #@c2
    sub-int v23, v9, v10

    #@c4
    sub-int v6, v22, v23

    #@c6
    .line 2649
    .local v6, "lengthDelta":I
    const/4 v4, 0x0

    #@c7
    :goto_1
    if-ge v4, v5, :cond_6

    #@c9
    .line 2653
    aget v22, v18, v4

    #@cb
    move/from16 v0, v22

    #@cd
    if-gt v0, v10, :cond_5

    #@cf
    aget v22, v16, v4

    #@d1
    move/from16 v0, v22

    #@d3
    if-lt v0, v9, :cond_5

    #@d5
    .line 2654
    move-object/from16 v0, p0

    #@d7
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@d9
    move-object/from16 v22, v0

    #@db
    aget-object v23, v15, v4

    #@dd
    aget v24, v18, v4

    #@df
    .line 2655
    aget v25, v16, v4

    #@e1
    add-int v25, v25, v6

    #@e3
    aget v26, v17, v4

    #@e5
    .line 2654
    invoke-virtual/range {v22 .. v26}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    #@e8
    .line 2649
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@ea
    goto :goto_1

    #@eb
    .line 2659
    :cond_6
    add-int v7, v9, v6

    #@ed
    .line 2660
    .local v7, "newCursorPosition":I
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@f1
    move-object/from16 v22, v0

    #@f3
    move-object/from16 v0, v22

    #@f5
    invoke-virtual {v0, v7, v7}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    #@f8
    .line 2595
    return-void
.end method

.method private resumeBlink()V
    .locals 1

    #@0
    .prologue
    .line 702
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 703
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    #@9
    .line 704
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    #@c
    .line 701
    :cond_0
    return-void
.end method

.method private selectCurrentParagraph()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 874
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v8}, Landroid/widget/TextView;->canSelectText()Z

    #@6
    move-result v8

    #@7
    if-nez v8, :cond_0

    #@9
    .line 875
    return v9

    #@a
    .line 878
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    #@d
    move-result v8

    #@e
    if-eqz v8, :cond_1

    #@10
    .line 879
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v8}, Landroid/widget/TextView;->selectAllText()Z

    #@15
    move-result v8

    #@16
    return v8

    #@17
    .line 882
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    #@1a
    move-result-wide v2

    #@1b
    .line 883
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@1e
    move-result v4

    #@1f
    .line 884
    .local v4, "minLastTouchOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@22
    move-result v1

    #@23
    .line 886
    .local v1, "maxLastTouchOffset":I
    invoke-direct {p0, v4, v1}, Landroid/widget/Editor;->getParagraphsRange(II)J

    #@26
    move-result-wide v6

    #@27
    .line 887
    .local v6, "paragraphsRange":J
    invoke-static {v6, v7}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@2a
    move-result v5

    #@2b
    .line 888
    .local v5, "start":I
    invoke-static {v6, v7}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@2e
    move-result v0

    #@2f
    .line 889
    .local v0, "end":I
    if-ge v5, v0, :cond_2

    #@31
    .line 890
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@33
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@36
    move-result-object v8

    #@37
    check-cast v8, Landroid/text/Spannable;

    #@39
    invoke-static {v8, v5, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@3c
    .line 891
    const/4 v8, 0x1

    #@3d
    return v8

    #@3e
    .line 893
    :cond_2
    return v9
.end method

.method private selectCurrentWord()Z
    .locals 13

    #@0
    .prologue
    .line 822
    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v11}, Landroid/widget/TextView;->canSelectText()Z

    #@5
    move-result v11

    #@6
    if-nez v11, :cond_0

    #@8
    .line 823
    const/4 v11, 0x0

    #@9
    return v11

    #@a
    .line 826
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    #@d
    move-result v11

    #@e
    if-eqz v11, :cond_1

    #@10
    .line 827
    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v11}, Landroid/widget/TextView;->selectAllText()Z

    #@15
    move-result v11

    #@16
    return v11

    #@17
    .line 830
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    #@1a
    move-result-wide v0

    #@1b
    .line 831
    .local v0, "lastTouchOffsets":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@1e
    move-result v3

    #@1f
    .line 832
    .local v3, "minOffset":I
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@22
    move-result v2

    #@23
    .line 835
    .local v2, "maxOffset":I
    if-ltz v3, :cond_2

    #@25
    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@27
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@2a
    move-result-object v11

    #@2b
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    #@2e
    move-result v11

    #@2f
    if-le v3, v11, :cond_3

    #@31
    :cond_2
    const/4 v11, 0x0

    #@32
    return v11

    #@33
    .line 836
    :cond_3
    if-ltz v2, :cond_4

    #@35
    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@37
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3a
    move-result-object v11

    #@3b
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    #@3e
    move-result v11

    #@3f
    if-le v2, v11, :cond_5

    #@41
    :cond_4
    const/4 v11, 0x0

    #@42
    return v11

    #@43
    .line 841
    :cond_5
    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@45
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@48
    move-result-object v11

    #@49
    check-cast v11, Landroid/text/Spanned;

    #@4b
    .line 842
    const-class v12, Landroid/text/style/URLSpan;

    #@4d
    .line 841
    invoke-interface {v11, v3, v2, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@50
    move-result-object v9

    #@51
    check-cast v9, [Landroid/text/style/URLSpan;

    #@53
    .line 843
    .local v9, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v11, v9

    #@54
    const/4 v12, 0x1

    #@55
    if-lt v11, v12, :cond_7

    #@57
    .line 844
    const/4 v11, 0x0

    #@58
    aget-object v8, v9, v11

    #@5a
    .line 845
    .local v8, "urlSpan":Landroid/text/style/URLSpan;
    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5c
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@5f
    move-result-object v11

    #@60
    check-cast v11, Landroid/text/Spanned;

    #@62
    invoke-interface {v11, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@65
    move-result v7

    #@66
    .line 846
    .local v7, "selectionStart":I
    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@68
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@6b
    move-result-object v11

    #@6c
    check-cast v11, Landroid/text/Spanned;

    #@6e
    invoke-interface {v11, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@71
    move-result v6

    #@72
    .line 865
    .end local v8    # "urlSpan":Landroid/text/style/URLSpan;
    .local v6, "selectionEnd":I
    :cond_6
    :goto_0
    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@74
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@77
    move-result-object v11

    #@78
    check-cast v11, Landroid/text/Spannable;

    #@7a
    invoke-static {v11, v7, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@7d
    .line 866
    if-le v6, v7, :cond_a

    #@7f
    const/4 v11, 0x1

    #@80
    :goto_1
    return v11

    #@81
    .line 850
    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    #@84
    move-result-object v10

    #@85
    .line 851
    .local v10, "wordIterator":Landroid/text/method/WordIterator;
    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@87
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@8a
    move-result-object v11

    #@8b
    invoke-virtual {v10, v11, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    #@8e
    .line 853
    invoke-virtual {v10, v3}, Landroid/text/method/WordIterator;->getBeginning(I)I

    #@91
    move-result v7

    #@92
    .line 854
    .restart local v7    # "selectionStart":I
    invoke-virtual {v10, v2}, Landroid/text/method/WordIterator;->getEnd(I)I

    #@95
    move-result v6

    #@96
    .line 856
    .restart local v6    # "selectionEnd":I
    const/4 v11, -0x1

    #@97
    if-eq v7, v11, :cond_8

    #@99
    const/4 v11, -0x1

    #@9a
    if-ne v6, v11, :cond_9

    #@9c
    .line 859
    :cond_8
    :goto_2
    invoke-direct {p0, v3}, Landroid/widget/Editor;->getCharClusterRange(I)J

    #@9f
    move-result-wide v4

    #@a0
    .line 860
    .local v4, "range":J
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@a3
    move-result v7

    #@a4
    .line 861
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@a7
    move-result v6

    #@a8
    goto :goto_0

    #@a9
    .line 857
    .end local v4    # "range":J
    :cond_9
    if-ne v7, v6, :cond_6

    #@ab
    goto :goto_2

    #@ac
    .line 866
    .end local v10    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_a
    const/4 v11, 0x0

    #@ad
    goto :goto_1
.end method

.method private selectCurrentWordAndStartDrag()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1957
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1958
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@7
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@c
    .line 1960
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1961
    return v2

    #@13
    .line 1963
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_2

    #@19
    .line 1964
    return v2

    #@1a
    .line 1966
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_3

    #@22
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_4

    #@28
    .line 1970
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    #@2b
    .line 1971
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@2e
    move-result-object v0

    #@2f
    .line 1972
    const/4 v1, 0x2

    #@30
    .line 1971
    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    #@33
    .line 1973
    const/4 v0, 0x1

    #@34
    return v0

    #@35
    .line 1968
    :cond_4
    return v2
.end method

.method private sendUpdateSelection()V
    .locals 7

    #@0
    .prologue
    .line 1605
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
    .line 1606
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@d
    move-result-object v0

    #@e
    .line 1607
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    #@10
    .line 1608
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    #@15
    move-result v2

    #@16
    .line 1609
    .local v2, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@18
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1b
    move-result v3

    #@1c
    .line 1610
    .local v3, "selectionEnd":I
    const/4 v4, -0x1

    #@1d
    .line 1611
    .local v4, "candStart":I
    const/4 v5, -0x1

    #@1e
    .line 1612
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
    .line 1613
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2a
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@2d
    move-result-object v6

    #@2e
    check-cast v6, Landroid/text/Spannable;

    #@30
    .line 1614
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    #@33
    move-result v4

    #@34
    .line 1615
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    #@37
    move-result v5

    #@38
    .line 1619
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3a
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    #@3d
    .line 1604
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
    .line 495
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@4
    .line 496
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    #@6
    .line 497
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
    .line 499
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    #@1a
    .line 501
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@1f
    .line 502
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@21
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    #@24
    .line 503
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@26
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    #@29
    .line 494
    return-void
.end method

.method private shouldBlink()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2296
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
    .line 2298
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@11
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    #@14
    move-result v1

    #@15
    .line 2299
    .local v1, "start":I
    if-gez v1, :cond_1

    #@17
    return v2

    #@18
    .line 2296
    .end local v1    # "start":I
    :cond_0
    return v2

    #@19
    .line 2301
    .restart local v1    # "start":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1b
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1e
    move-result v0

    #@1f
    .line 2302
    .local v0, "end":I
    if-gez v0, :cond_2

    #@21
    return v2

    #@22
    .line 2304
    :cond_2
    if-ne v1, v0, :cond_3

    #@24
    const/4 v2, 0x1

    #@25
    :cond_3
    return v2
.end method

.method private shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1334
    const/16 v2, 0x2002

    #@4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 1335
    return v4

    #@b
    .line 1338
    :cond_0
    iget v2, p0, Landroid/widget/Editor;->mLastButtonState:I

    #@d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    #@10
    move-result v3

    #@11
    xor-int/2addr v2, v3

    #@12
    and-int/lit8 v2, v2, 0x1

    #@14
    if-eqz v2, :cond_4

    #@16
    const/4 v1, 0x1

    #@17
    .line 1339
    .local v1, "primaryButtonStateChanged":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@1a
    move-result v0

    #@1b
    .line 1340
    .local v0, "action":I
    if-eqz v0, :cond_1

    #@1d
    if-ne v0, v5, :cond_2

    #@1f
    .line 1341
    :cond_1
    if-eqz v1, :cond_5

    #@21
    .line 1344
    :cond_2
    const/4 v2, 0x2

    #@22
    if-ne v0, v2, :cond_3

    #@24
    .line 1345
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_6

    #@2a
    .line 1348
    :cond_3
    return v4

    #@2b
    .line 1338
    .end local v0    # "action":I
    .end local v1    # "primaryButtonStateChanged":Z
    :cond_4
    const/4 v1, 0x0

    #@2c
    .restart local v1    # "primaryButtonStateChanged":Z
    goto :goto_0

    #@2d
    .line 1342
    .restart local v0    # "action":I
    :cond_5
    return v5

    #@2e
    .line 1346
    :cond_6
    return v5
.end method

.method private shouldOfferToShowSuggestions()Z
    .locals 14

    #@0
    .prologue
    .line 2033
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@5
    move-result-object v10

    #@6
    .line 2034
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
    .line 2036
    check-cast v8, Landroid/text/Spannable;

    #@f
    .line 2037
    .local v8, "spannable":Landroid/text/Spannable;
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@11
    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionStart()I

    #@14
    move-result v5

    #@15
    .line 2038
    .local v5, "selectionStart":I
    iget-object v13, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1a
    move-result v4

    #@1b
    .line 2040
    .local v4, "selectionEnd":I
    const-class v13, Landroid/text/style/SuggestionSpan;

    #@1d
    .line 2039
    invoke-interface {v8, v5, v4, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@20
    move-result-object v9

    #@21
    check-cast v9, [Landroid/text/style/SuggestionSpan;

    #@23
    .line 2041
    .local v9, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v13, v9

    #@24
    if-nez v13, :cond_1

    #@26
    .line 2042
    const/4 v13, 0x0

    #@27
    return v13

    #@28
    .line 2044
    :cond_1
    if-ne v5, v4, :cond_4

    #@2a
    .line 2046
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_0
    array-length v13, v9

    #@2c
    if-ge v1, v13, :cond_3

    #@2e
    .line 2047
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
    .line 2048
    const/4 v13, 0x1

    #@38
    return v13

    #@39
    .line 2046
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 2051
    :cond_3
    const/4 v13, 0x0

    #@3d
    return v13

    #@3e
    .line 2053
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
    .line 2054
    .local v3, "minSpanStart":I
    const/4 v2, 0x0

    #@49
    .line 2055
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
    .line 2056
    .local v12, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    #@54
    .line 2057
    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v0, 0x0

    #@55
    .line 2058
    .local v0, "hasValidSuggestions":Z
    const/4 v1, 0x0

    #@56
    .restart local v1    # "i":I
    :goto_1
    array-length v13, v9

    #@57
    if-ge v1, v13, :cond_9

    #@59
    .line 2059
    aget-object v13, v9, v1

    #@5b
    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@5e
    move-result v7

    #@5f
    .line 2060
    .local v7, "spanStart":I
    aget-object v13, v9, v1

    #@61
    invoke-interface {v8, v13}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@64
    move-result v6

    #@65
    .line 2061
    .local v6, "spanEnd":I
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    #@68
    move-result v3

    #@69
    .line 2062
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@6c
    move-result v2

    #@6d
    .line 2063
    if-lt v5, v7, :cond_5

    #@6f
    if-le v5, v6, :cond_6

    #@71
    .line 2058
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@73
    goto :goto_1

    #@74
    .line 2068
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
    .line 2070
    :goto_3
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    #@83
    move-result v12

    #@84
    .line 2072
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    #@87
    move-result v11

    #@88
    goto :goto_2

    #@89
    .line 2068
    :cond_8
    const/4 v0, 0x0

    #@8a
    goto :goto_3

    #@8b
    .line 2074
    .end local v6    # "spanEnd":I
    .end local v7    # "spanStart":I
    :cond_9
    if-nez v0, :cond_a

    #@8d
    .line 2075
    const/4 v13, 0x0

    #@8e
    return v13

    #@8f
    .line 2077
    :cond_a
    if-lt v12, v11, :cond_b

    #@91
    .line 2079
    const/4 v13, 0x0

    #@92
    return v13

    #@93
    .line 2081
    :cond_b
    if-lt v3, v12, :cond_c

    #@95
    .line 2082
    if-le v2, v11, :cond_d

    #@97
    .line 2085
    :cond_c
    const/4 v13, 0x0

    #@98
    return v13

    #@99
    .line 2087
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
    .line 446
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6
    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    #@9
    move-result-object v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 447
    iput-boolean v8, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@e
    .line 448
    return-void

    #@f
    .line 451
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@11
    if-nez v4, :cond_1

    #@13
    .line 452
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
    .line 454
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x10900f9

    #@20
    .line 453
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/widget/TextView;

    #@26
    .line 456
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
    .line 457
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
    .line 458
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@45
    const/4 v5, 0x0

    #@46
    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    #@49
    .line 461
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@4b
    invoke-virtual {v4, v8}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    #@4e
    .line 464
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
    .line 465
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@58
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@5a
    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    #@5d
    .line 466
    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@5f
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@62
    .line 468
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
    .line 469
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
    .line 445
    return-void
.end method

.method private showFloatingToolbar()V
    .locals 6

    #@0
    .prologue
    .line 1404
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1407
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@7
    move-result v0

    #@8
    .line 1408
    .local v0, "delay":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@a
    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    #@c
    int-to-long v4, v0

    #@d
    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@10
    .line 1403
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method private startDragAndDrop()V
    .locals 8

    #@0
    .prologue
    .line 1084
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 1085
    return-void

    #@9
    .line 1087
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@b
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    #@e
    move-result v4

    #@f
    .line 1088
    .local v4, "start":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@11
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    #@14
    move-result v1

    #@15
    .line 1089
    .local v1, "end":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v5, v4, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    #@1a
    move-result-object v3

    #@1b
    .line 1090
    .local v3, "selectedText":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    #@1c
    invoke-static {v5, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@1f
    move-result-object v0

    #@20
    .line 1091
    .local v0, "data":Landroid/content/ClipData;
    new-instance v2, Landroid/widget/Editor$DragLocalState;

    #@22
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@24
    invoke-direct {v2, v5, v4, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    #@27
    .line 1092
    .local v2, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@29
    invoke-direct {p0, v4, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 1093
    const/16 v7, 0x100

    #@2f
    .line 1092
    invoke-virtual {v5, v0, v6, v2, v7}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    #@32
    .line 1094
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@35
    .line 1095
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_1

    #@3b
    .line 1096
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@42
    .line 1082
    :cond_1
    return-void
.end method

.method private startSelectionActionModeInternal()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1991
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 1992
    return v3

    #@a
    .line 1994
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 1996
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@10
    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    #@13
    .line 1997
    return v3

    #@14
    .line 2000
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_3

    #@1a
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v4}, Landroid/widget/TextView;->hasSelection()Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_3

    #@22
    .line 2005
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    #@24
    invoke-direct {v0, p0, v2}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    #@27
    .line 2006
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@29
    invoke-virtual {v4, v0, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@2c
    move-result-object v4

    #@2d
    iput-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2f
    .line 2008
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@31
    if-eqz v4, :cond_4

    #@33
    .line 2009
    .local v2, "selectionStarted":Z
    :goto_0
    if-eqz v2, :cond_2

    #@35
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@37
    invoke-virtual {v4}, Landroid/widget/TextView;->isTextSelectable()Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_5

    #@3d
    .line 2016
    :cond_2
    :goto_1
    return v2

    #@3e
    .line 2001
    .end local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    .end local v2    # "selectionStarted":Z
    :cond_3
    return v3

    #@3f
    .restart local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :cond_4
    move v2, v3

    #@40
    .line 2008
    goto :goto_0

    #@41
    .line 2009
    .restart local v2    # "selectionStarted":Z
    :cond_5
    iget-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@43
    if-eqz v4, :cond_2

    #@45
    .line 2011
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@48
    move-result-object v1

    #@49
    .line 2012
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2

    #@4b
    .line 2013
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4d
    invoke-virtual {v1, v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    #@50
    goto :goto_1
.end method

.method private stopTextActionModeWithPreservingSelection()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2150
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2151
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    #@7
    .line 2153
    :cond_0
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    #@9
    .line 2154
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@c
    .line 2155
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    #@f
    .line 2149
    return-void
.end method

.method private suspendBlink()V
    .locals 1

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 697
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    #@9
    .line 695
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 983
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    #@6
    move-result v4

    #@7
    .line 984
    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@9
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    #@c
    move-result v3

    #@d
    .line 986
    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    #@f
    .line 987
    return v7

    #@10
    .line 990
    :cond_0
    if-le v4, v3, :cond_1

    #@12
    .line 991
    move v5, v4

    #@13
    .line 992
    .local v5, "tmp":I
    move v4, v3

    #@14
    .line 993
    move v3, v5

    #@15
    .line 994
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Landroid/text/Spannable;

    #@1d
    invoke-static {v6, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@20
    .line 997
    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@23
    move-result-object v2

    #@24
    .line 998
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    #@27
    move-result v1

    #@28
    .line 999
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    #@2b
    move-result v0

    #@2c
    .line 1001
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
    .line 2211
    iget-object v3, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@2
    aget-object v3, v3, p1

    #@4
    if-nez v3, :cond_0

    #@6
    .line 2212
    iget-object v3, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@8
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@a
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@d
    move-result-object v4

    #@e
    .line 2213
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@10
    iget v5, v5, Landroid/widget/TextView;->mCursorDrawableRes:I

    #@12
    .line 2212
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v4

    #@16
    aput-object v4, v3, p1

    #@18
    .line 2214
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@1a
    aget-object v0, v3, p1

    #@1c
    .line 2215
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, p4}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    #@1f
    move-result v1

    #@20
    .line 2216
    .local v1, "left":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@23
    move-result v2

    #@24
    .line 2217
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@26
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@28
    sub-int v3, p2, v3

    #@2a
    add-int v4, v1, v2

    #@2c
    .line 2218
    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    #@2e
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@30
    add-int/2addr v5, p3

    #@31
    .line 2217
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@34
    .line 2210
    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1384
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@7
    move-result v0

    #@8
    packed-switch v0, :pswitch_data_0

    #@b
    .line 1383
    :cond_0
    :goto_0
    return-void

    #@c
    .line 1387
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideFloatingToolbar()V

    #@f
    goto :goto_0

    #@10
    .line 1391
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    #@13
    goto :goto_0

    #@14
    .line 1385
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
    .line 670
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    #@5
    .line 671
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    #@a
    .line 673
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
    .line 674
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 668
    :cond_0
    :goto_0
    return-void

    #@23
    .line 675
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@25
    if-nez v0, :cond_2

    #@27
    if-eqz p3, :cond_2

    #@29
    .line 676
    new-instance v0, Landroid/widget/SpellChecker;

    #@2b
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2d
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    #@30
    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@32
    .line 678
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@34
    if-eqz v0, :cond_0

    #@36
    .line 679
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@38
    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    #@3b
    goto :goto_0
.end method

.method private updateTapState(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    .line 1311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 1312
    .local v0, "action":I
    if-nez v0, :cond_1

    #@8
    .line 1313
    const/16 v2, 0x2002

    #@a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@d
    move-result v1

    #@e
    .line 1315
    .local v1, "isMouse":Z
    iget v2, p0, Landroid/widget/Editor;->mTapState:I

    #@10
    if-eq v2, v6, :cond_0

    #@12
    .line 1316
    iget v2, p0, Landroid/widget/Editor;->mTapState:I

    #@14
    if-ne v2, v7, :cond_4

    #@16
    .line 1315
    if-eqz v1, :cond_4

    #@18
    .line 1317
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1b
    move-result-wide v2

    #@1c
    iget-wide v4, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    #@1e
    sub-long/2addr v2, v4

    #@1f
    .line 1318
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@22
    move-result v4

    #@23
    int-to-long v4, v4

    #@24
    .line 1317
    cmp-long v2, v2, v4

    #@26
    if-gtz v2, :cond_4

    #@28
    .line 1319
    iget v2, p0, Landroid/widget/Editor;->mTapState:I

    #@2a
    if-ne v2, v6, :cond_3

    #@2c
    .line 1320
    iput v7, p0, Landroid/widget/Editor;->mTapState:I

    #@2e
    .line 1328
    .end local v1    # "isMouse":Z
    :cond_1
    :goto_0
    if-ne v0, v6, :cond_2

    #@30
    .line 1329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@33
    move-result-wide v2

    #@34
    iput-wide v2, p0, Landroid/widget/Editor;->mLastTouchUpTime:J

    #@36
    .line 1310
    :cond_2
    return-void

    #@37
    .line 1322
    .restart local v1    # "isMouse":Z
    :cond_3
    const/4 v2, 0x3

    #@38
    iput v2, p0, Landroid/widget/Editor;->mTapState:I

    #@3a
    goto :goto_0

    #@3b
    .line 1325
    :cond_4
    iput v6, p0, Landroid/widget/Editor;->mTapState:I

    #@3d
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
    .line 2467
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    #@6
    move-result v0

    #@7
    .line 2469
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2470
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@d
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@10
    .line 2473
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@12
    if-nez v1, :cond_1

    #@14
    .line 2474
    new-instance v1, Landroid/widget/Editor$SpanController;

    #@16
    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    #@19
    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@1b
    .line 2476
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    #@1d
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@20
    .line 2466
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
    .line 713
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    #@2
    and-int/lit8 v0, v0, 0xf

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_3

    #@7
    .line 714
    if-nez p1, :cond_0

    #@9
    if-eqz p2, :cond_1

    #@b
    .line 715
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    #@d
    and-int/lit16 v0, v0, -0xff1

    #@f
    or-int/lit16 v0, v0, 0x80

    #@11
    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    #@13
    .line 718
    :cond_1
    if-eqz p3, :cond_2

    #@15
    .line 719
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    #@17
    and-int/lit16 v0, v0, -0xff1

    #@19
    or-int/lit16 v0, v0, 0xe0

    #@1b
    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    #@1d
    .line 709
    :cond_2
    :goto_0
    return-void

    #@1e
    .line 722
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    #@20
    and-int/lit8 v0, v0, 0xf

    #@22
    const/4 v1, 0x2

    #@23
    if-ne v0, v1, :cond_2

    #@25
    .line 723
    if-eqz p4, :cond_2

    #@27
    .line 724
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
    .line 1413
    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    #@5
    .line 1414
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@7
    .line 1415
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    #@9
    .line 1416
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@b
    add-int/lit8 v1, v2, 0x1

    #@d
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@f
    .line 1417
    .local v1, "nesting":I
    if-ne v1, v5, :cond_0

    #@11
    .line 1418
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    #@13
    .line 1419
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@15
    .line 1420
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 1423
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@1b
    .line 1424
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
    .line 1430
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@29
    invoke-virtual {v2}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    #@2c
    .line 1431
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2e
    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    #@31
    .line 1412
    .end local v1    # "nesting":I
    :cond_0
    return-void

    #@32
    .line 1426
    .restart local v1    # "nesting":I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@34
    .line 1427
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@36
    .line 1428
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
    .line 334
    new-array v0, v1, [Landroid/content/UndoOwner;

    #@4
    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@6
    aput-object v3, v0, v2

    #@8
    .line 335
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
    .line 329
    new-array v0, v1, [Landroid/content/UndoOwner;

    #@4
    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@6
    aput-object v3, v0, v2

    #@8
    .line 330
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

.method checkField()Z
    .locals 2

    #@0
    .prologue
    .line 1982
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
    .line 1987
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 1983
    :cond_0
    const-string/jumbo v0, "TextView"

    #@15
    .line 1984
    const-string/jumbo v1, "TextView does not support text selection. Selection cancelled."

    #@18
    .line 1983
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1985
    const/4 v0, 0x0

    #@1c
    return v0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 585
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 586
    new-instance v0, Landroid/widget/Editor$InputContentType;

    #@6
    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@b
    .line 584
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 591
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 592
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    #@6
    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@b
    .line 590
    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1437
    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    #@3
    .line 1438
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@5
    .line 1439
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    #@7
    .line 1440
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@9
    add-int/lit8 v1, v2, -0x1

    #@b
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@d
    .line 1441
    .local v1, "nesting":I
    if-nez v1, :cond_0

    #@f
    .line 1442
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    #@12
    .line 1436
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
    .line 1448
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@3
    .line 1449
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    #@5
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1450
    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@b
    .line 1451
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    #@e
    .line 1447
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
    .line 1485
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
    .line 2020
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3
    invoke-virtual {v2}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 2021
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@c
    move-result-object v0

    #@d
    .line 2022
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
    .line 2024
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 2
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    #@0
    .prologue
    .line 1456
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v1}, Landroid/widget/TextView;->onEndBatchEdit()V

    #@5
    .line 1457
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@7
    invoke-virtual {v1}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    #@a
    .line 1459
    iget-boolean v1, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@c
    if-nez v1, :cond_0

    #@e
    iget-boolean v1, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@10
    if-eqz v1, :cond_3

    #@12
    .line 1460
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@14
    invoke-virtual {v1}, Landroid/widget/TextView;->updateAfterEdit()V

    #@17
    .line 1461
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    #@1a
    .line 1468
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    #@1d
    .line 1471
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 1472
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@23
    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 1473
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@2c
    move-result-object v0

    #@2d
    .line 1474
    .local v0, "cursorController":Landroid/widget/Editor$CursorController;
    :goto_1
    if-eqz v0, :cond_2

    #@2f
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isActive()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_5

    #@35
    .line 1455
    .end local v0    # "cursorController":Landroid/widget/Editor$CursorController;
    :cond_2
    :goto_2
    return-void

    #@36
    .line 1462
    :cond_3
    iget-boolean v1, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 1464
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3c
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidateCursor()V

    #@3f
    goto :goto_0

    #@40
    .line 1473
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@43
    move-result-object v0

    #@44
    goto :goto_1

    #@45
    .line 1475
    .restart local v0    # "cursorController":Landroid/widget/Editor$CursorController;
    :cond_5
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_2

    #@4b
    .line 1476
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->show()V

    #@4e
    goto :goto_2
.end method

.method forgetUndoRedo()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 323
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
    .line 324
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@b
    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    #@e
    .line 325
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@10
    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    #@13
    .line 322
    return-void
.end method

.method public getCursorDrawable()[Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 2207
    iget-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2173
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2174
    return-object v2

    #@6
    .line 2177
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 2178
    new-instance v1, Landroid/widget/Editor$InsertionPointCursorController;

    #@c
    invoke-direct {v1, p0, v2}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$InsertionPointCursorController;)V

    #@f
    iput-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@11
    .line 2180
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@13
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v0

    #@17
    .line 2181
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@1c
    .line 2184
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
    .line 2188
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2189
    return-object v2

    #@6
    .line 2192
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 2193
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    #@c
    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    #@f
    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@11
    .line 2195
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@13
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v0

    #@17
    .line 2196
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@1c
    .line 2199
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@1e
    return-object v1
.end method

.method public getSuggestionsPopupWindowForTesting()Landroid/widget/Editor$SuggestionsPopupWindow;
    .locals 1

    #@0
    .prologue
    .line 5693
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    return-object v0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    #@0
    .prologue
    .line 937
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 938
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
    .line 940
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    #@13
    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    #@0
    .prologue
    .line 2162
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    #@2
    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    #@0
    .prologue
    .line 2169
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    #@2
    return v0
.end method

.method hideCursorAndSpanControllers()V
    .locals 0

    #@0
    .prologue
    .line 642
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    #@3
    .line 643
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    #@6
    .line 641
    return-void
.end method

.method hideInsertionPointCursorController()V
    .locals 1

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 634
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    #@9
    .line 632
    :cond_0
    return-void
.end method

.method invalidateHandlesAndActionMode()V
    .locals 1

    #@0
    .prologue
    .line 1793
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1794
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    #@9
    .line 1796
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1797
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@f
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    #@12
    .line 1799
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1800
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@18
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    #@1b
    .line 1792
    :cond_2
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 3

    #@0
    .prologue
    .line 1837
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 1838
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
    .line 1839
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
    .line 1838
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1836
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
    .line 1808
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2
    if-eqz v8, :cond_2

    #@4
    instance-of v8, p1, Landroid/text/DynamicLayout;

    #@6
    if-eqz v8, :cond_2

    #@8
    .line 1809
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    #@b
    move-result v4

    #@c
    .line 1810
    .local v4, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    #@f
    move-result v6

    #@10
    .local v6, "lastLine":I
    move-object v3, p1

    #@11
    .line 1812
    check-cast v3, Landroid/text/DynamicLayout;

    #@13
    .line 1813
    .local v3, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    #@16
    move-result-object v0

    #@17
    .line 1814
    .local v0, "blockEndLines":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    #@1a
    move-result-object v2

    #@1b
    .line 1815
    .local v2, "blockIndices":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    #@1e
    move-result v7

    #@1f
    .line 1817
    .local v7, "numberOfBlocks":I
    const/4 v5, 0x0

    #@20
    .line 1819
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    #@22
    .line 1820
    aget v8, v0, v5

    #@24
    if-lt v8, v4, :cond_3

    #@26
    .line 1825
    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    #@28
    .line 1826
    aget v1, v2, v5

    #@2a
    .line 1827
    .local v1, "blockIndex":I
    const/4 v8, -0x1

    #@2b
    if-eq v1, v8, :cond_1

    #@2d
    .line 1828
    iget-object v8, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    #@2f
    aget-object v8, v8, v1

    #@31
    const/4 v9, 0x1

    #@32
    iput-boolean v9, v8, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    #@34
    .line 1830
    :cond_1
    aget v8, v0, v5

    #@36
    if-lt v8, v6, :cond_4

    #@38
    .line 1807
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
    .line 1821
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
    .line 1831
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
    .line 598
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
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2308
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 2309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    #@d
    .line 2310
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
    .line 2311
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1a
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@1c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1f
    .line 2312
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@21
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@23
    const-wide/16 v2, 0x1f4

    #@25
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@28
    .line 2307
    :cond_1
    :goto_0
    return-void

    #@29
    .line 2314
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@2b
    if-eqz v0, :cond_1

    #@2d
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2f
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@34
    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 366
    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 367
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    #@9
    .line 368
    iput-boolean v2, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@b
    .line 371
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@d
    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@10
    move-result-object v0

    #@11
    .line 374
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 375
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@1a
    .line 377
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 378
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@20
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@23
    .line 379
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@25
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@28
    .line 381
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2a
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@31
    move-result v1

    #@32
    invoke-direct {p0, v2, v1, v3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    #@35
    .line 384
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@37
    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_3

    #@3d
    .line 385
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    #@40
    .line 388
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    #@43
    move-result-object v1

    #@44
    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    #@46
    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    #@49
    .line 389
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    #@4c
    .line 365
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 2274
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2275
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    #@9
    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@b
    .line 2280
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    #@10
    .line 2273
    return-void

    #@11
    .line 2277
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-wrap0(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    #@17
    goto :goto_0
.end method

.method onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/ContextMenu;

    #@0
    .prologue
    .line 2485
    iget-boolean v7, p0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    #@2
    if-nez v7, :cond_0

    #@4
    iget v7, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    #@6
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    #@9
    move-result v7

    #@a
    if-nez v7, :cond_0

    #@c
    .line 2486
    iget v7, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    #@e
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    #@11
    move-result v7

    #@12
    .line 2485
    if-eqz v7, :cond_1

    #@14
    .line 2487
    :cond_0
    return-void

    #@15
    .line 2489
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@17
    iget v8, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    #@19
    iget v9, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    #@1b
    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@1e
    move-result v4

    #@1f
    .line 2490
    .local v4, "offset":I
    const/4 v7, -0x1

    #@20
    if-ne v4, v7, :cond_2

    #@22
    .line 2491
    return-void

    #@23
    .line 2493
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    #@26
    .line 2494
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@28
    invoke-virtual {v7}, Landroid/widget/TextView;->hasSelection()Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_5

    #@2e
    .line 2495
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@30
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    #@33
    move-result v7

    #@34
    if-lt v4, v7, :cond_5

    #@36
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@38
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3b
    move-result v7

    #@3c
    if-gt v4, v7, :cond_4

    #@3e
    const/4 v7, 0x1

    #@3f
    :goto_0
    move v2, v7

    #@40
    .line 2496
    .local v2, "isOnSelection":Z
    :goto_1
    if-nez v2, :cond_3

    #@42
    .line 2499
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@44
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@47
    move-result-object v7

    #@48
    check-cast v7, Landroid/text/Spannable;

    #@4a
    invoke-static {v7, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@4d
    .line 2500
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@50
    .line 2503
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    #@53
    move-result v7

    #@54
    if-eqz v7, :cond_7

    #@56
    .line 2505
    const/4 v7, 0x5

    #@57
    new-array v6, v7, [Landroid/widget/Editor$SuggestionInfo;

    #@59
    .line 2506
    .local v6, "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    const/4 v0, 0x0

    #@5a
    .local v0, "i":I
    :goto_2
    array-length v7, v6

    #@5b
    if-ge v0, v7, :cond_6

    #@5d
    .line 2507
    new-instance v7, Landroid/widget/Editor$SuggestionInfo;

    #@5f
    const/4 v8, 0x0

    #@60
    invoke-direct {v7, v8}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionInfo;)V

    #@63
    aput-object v7, v6, v0

    #@65
    .line 2506
    add-int/lit8 v0, v0, 0x1

    #@67
    goto :goto_2

    #@68
    .line 2495
    .end local v0    # "i":I
    .end local v2    # "isOnSelection":Z
    .end local v6    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    :cond_4
    const/4 v7, 0x0

    #@69
    goto :goto_0

    #@6a
    .line 2494
    :cond_5
    const/4 v2, 0x0

    #@6b
    goto :goto_1

    #@6c
    .line 2509
    .restart local v0    # "i":I
    .restart local v2    # "isOnSelection":Z
    .restart local v6    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    :cond_6
    const/4 v7, 0x0

    #@6d
    const/4 v8, 0x0

    #@6e
    const/16 v9, 0x9

    #@70
    .line 2510
    const v10, 0x104035e

    #@73
    .line 2509
    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    #@76
    move-result-object v5

    #@77
    .line 2511
    .local v5, "subMenu":Landroid/view/SubMenu;
    iget-object v7, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    #@79
    const/4 v8, 0x0

    #@7a
    invoke-virtual {v7, v6, v8}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    #@7d
    move-result v3

    #@7e
    .line 2512
    .local v3, "numItems":I
    const/4 v0, 0x0

    #@7f
    :goto_3
    if-ge v0, v3, :cond_7

    #@81
    .line 2513
    aget-object v1, v6, v0

    #@83
    .line 2514
    .local v1, "info":Landroid/widget/Editor$SuggestionInfo;
    iget-object v7, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@85
    const/4 v8, 0x0

    #@86
    const/4 v9, 0x0

    #@87
    invoke-interface {v5, v8, v9, v0, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@8a
    move-result-object v7

    #@8b
    .line 2515
    new-instance v8, Landroid/widget/Editor$4;

    #@8d
    invoke-direct {v8, p0, v1}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    #@90
    .line 2514
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@93
    .line 2512
    add-int/lit8 v0, v0, 0x1

    #@95
    goto :goto_3

    #@96
    .line 2525
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/widget/Editor$SuggestionInfo;
    .end local v3    # "numItems":I
    .end local v5    # "subMenu":Landroid/view/SubMenu;
    .end local v6    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    :cond_7
    const/4 v7, 0x0

    #@97
    const v8, 0x1020032

    #@9a
    const/4 v9, 0x1

    #@9b
    .line 2526
    const v10, 0x1040360

    #@9e
    .line 2525
    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    #@a1
    move-result-object v7

    #@a2
    .line 2527
    const/16 v8, 0x7a

    #@a4
    .line 2525
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@a7
    move-result-object v7

    #@a8
    .line 2528
    iget-object v8, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@aa
    .line 2525
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@ad
    move-result-object v7

    #@ae
    .line 2529
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@b0
    invoke-virtual {v8}, Landroid/widget/TextView;->canUndo()Z

    #@b3
    move-result v8

    #@b4
    .line 2525
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@b7
    .line 2530
    const/4 v7, 0x0

    #@b8
    const v8, 0x1020033

    #@bb
    const/4 v9, 0x2

    #@bc
    .line 2531
    const v10, 0x1040361

    #@bf
    .line 2530
    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    #@c2
    move-result-object v7

    #@c3
    .line 2532
    iget-object v8, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@c5
    .line 2530
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@c8
    move-result-object v7

    #@c9
    .line 2533
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@cb
    invoke-virtual {v8}, Landroid/widget/TextView;->canRedo()Z

    #@ce
    move-result v8

    #@cf
    .line 2530
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@d2
    .line 2535
    const/4 v7, 0x0

    #@d3
    const v8, 0x1020020

    #@d6
    const/4 v9, 0x3

    #@d7
    .line 2536
    const v10, 0x1040003

    #@da
    .line 2535
    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    #@dd
    move-result-object v7

    #@de
    .line 2537
    const/16 v8, 0x78

    #@e0
    .line 2535
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@e3
    move-result-object v7

    #@e4
    .line 2538
    iget-object v8, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@e6
    .line 2535
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@e9
    move-result-object v7

    #@ea
    .line 2539
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@ec
    invoke-virtual {v8}, Landroid/widget/TextView;->canCut()Z

    #@ef
    move-result v8

    #@f0
    .line 2535
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@f3
    .line 2540
    const/4 v7, 0x0

    #@f4
    const v8, 0x1020021

    #@f7
    const/4 v9, 0x4

    #@f8
    .line 2541
    const v10, 0x1040001

    #@fb
    .line 2540
    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    #@fe
    move-result-object v7

    #@ff
    .line 2542
    const/16 v8, 0x63

    #@101
    .line 2540
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@104
    move-result-object v7

    #@105
    .line 2543
    iget-object v8, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@107
    .line 2540
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@10a
    move-result-object v7

    #@10b
    .line 2544
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@10d
    invoke-virtual {v8}, Landroid/widget/TextView;->canCopy()Z

    #@110
    move-result v8

    #@111
    .line 2540
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@114
    .line 2545
    const/4 v7, 0x0

    #@115
    const v8, 0x1020022

    #@118
    const/4 v9, 0x5

    #@119
    .line 2546
    const v10, 0x104000b

    #@11c
    .line 2545
    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    #@11f
    move-result-object v7

    #@120
    .line 2547
    const/16 v8, 0x76

    #@122
    .line 2545
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@125
    move-result-object v7

    #@126
    .line 2548
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@128
    invoke-virtual {v8}, Landroid/widget/TextView;->canPaste()Z

    #@12b
    move-result v8

    #@12c
    .line 2545
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@12f
    move-result-object v7

    #@130
    .line 2549
    iget-object v8, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@132
    .line 2545
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@135
    .line 2550
    const/4 v7, 0x0

    #@136
    const v8, 0x1020022

    #@139
    const/4 v9, 0x6

    #@13a
    .line 2551
    const v10, 0x104035d

    #@13d
    .line 2550
    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    #@140
    move-result-object v7

    #@141
    .line 2552
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@143
    invoke-virtual {v8}, Landroid/widget/TextView;->canPaste()Z

    #@146
    move-result v8

    #@147
    .line 2550
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@14a
    move-result-object v7

    #@14b
    .line 2553
    iget-object v8, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@14d
    .line 2550
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@150
    .line 2554
    const/4 v7, 0x0

    #@151
    const v8, 0x1020035

    #@154
    const/4 v9, 0x7

    #@155
    .line 2555
    const v10, 0x1040483

    #@158
    .line 2554
    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    #@15b
    move-result-object v7

    #@15c
    .line 2556
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@15e
    invoke-virtual {v8}, Landroid/widget/TextView;->canShare()Z

    #@161
    move-result v8

    #@162
    .line 2554
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@165
    move-result-object v7

    #@166
    .line 2557
    iget-object v8, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@168
    .line 2554
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@16b
    .line 2558
    const/4 v7, 0x0

    #@16c
    const v8, 0x102001f

    #@16f
    const/16 v9, 0x8

    #@171
    .line 2559
    const v10, 0x104000d

    #@174
    .line 2558
    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    #@177
    move-result-object v7

    #@178
    .line 2560
    const/16 v8, 0x61

    #@17a
    .line 2558
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@17d
    move-result-object v7

    #@17e
    .line 2561
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@180
    invoke-virtual {v8}, Landroid/widget/TextView;->canSelectAllText()Z

    #@183
    move-result v8

    #@184
    .line 2558
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@187
    move-result-object v7

    #@188
    .line 2562
    iget-object v8, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@18a
    .line 2558
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@18d
    .line 2564
    const/4 v7, 0x1

    #@18e
    iput-boolean v7, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    #@190
    .line 2484
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 393
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    #@4
    move-result-object v0

    #@5
    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    #@7
    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    #@a
    .line 395
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 396
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    #@11
    .line 399
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    #@14
    .line 401
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 402
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@1a
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    #@1d
    .line 405
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 406
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@23
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    #@26
    .line 409
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 410
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2c
    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@2e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@31
    .line 414
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 415
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@37
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@3c
    .line 418
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@3e
    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    #@40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@43
    .line 420
    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    #@46
    .line 422
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@48
    if-eqz v0, :cond_5

    #@4a
    .line 423
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@4c
    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    #@4f
    .line 426
    iput-object v2, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@51
    .line 429
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@54
    .line 430
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    #@57
    .line 392
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
    .line 1627
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    #@5
    move-result v3

    #@6
    .line 1628
    .local v3, "selectionStart":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    #@b
    move-result v2

    #@c
    .line 1630
    .local v2, "selectionEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@e
    .line 1631
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_1

    #@10
    iget v4, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@12
    if-nez v4, :cond_1

    #@14
    .line 1632
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@17
    move-result-object v0

    #@18
    .line 1633
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    #@1a
    .line 1634
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 1635
    iget-boolean v4, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@24
    if-nez v4, :cond_0

    #@26
    iget-boolean v4, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 1639
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    #@2d
    .line 1645
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 1646
    iget-object v4, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    #@33
    invoke-virtual {v4, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    #@36
    .line 1649
    :cond_2
    if-eqz p3, :cond_3

    #@38
    if-ne v3, v2, :cond_3

    #@3a
    iget v4, p0, Landroid/widget/Editor;->mCursorCount:I

    #@3c
    if-lez v4, :cond_3

    #@3e
    .line 1650
    invoke-direct {p0, p1, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    #@41
    .line 1653
    const/4 p3, 0x0

    #@42
    .line 1656
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
    .line 1657
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@53
    .line 1626
    :goto_0
    return-void

    #@54
    .line 1660
    :cond_4
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@57
    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    .line 2391
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v22, ""

    #@5
    move-object/from16 v0, v22

    #@7
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@a
    .line 2393
    .local v4, "content":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    #@d
    move-result-object v18

    #@e
    .line 2394
    .local v18, "permissions":Landroid/view/DragAndDropPermissions;
    if-eqz v18, :cond_0

    #@10
    .line 2395
    invoke-virtual/range {v18 .. v18}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    #@13
    .line 2399
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    #@16
    move-result-object v3

    #@17
    .line 2400
    .local v3, "clipData":Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    #@1a
    move-result v11

    #@1b
    .line 2401
    .local v11, "itemCount":I
    const/4 v9, 0x0

    #@1c
    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_1

    #@1e
    .line 2402
    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@21
    move-result-object v10

    #@22
    .line 2403
    .local v10, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@26
    move-object/from16 v22, v0

    #@28
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v22

    #@2c
    move-object/from16 v0, v22

    #@2e
    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    #@31
    move-result-object v22

    #@32
    move-object/from16 v0, v22

    #@34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 2401
    add-int/lit8 v9, v9, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 2407
    .end local v10    # "item":Landroid/content/ClipData$Item;
    :cond_1
    if-eqz v18, :cond_2

    #@3c
    .line 2408
    invoke-virtual/range {v18 .. v18}, Landroid/view/DragAndDropPermissions;->release()V

    #@3f
    .line 2412
    :cond_2
    move-object/from16 v0, p0

    #@41
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@43
    move-object/from16 v22, v0

    #@45
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    #@48
    move-result v23

    #@49
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    #@4c
    move-result v24

    #@4d
    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@50
    move-result v16

    #@51
    .line 2414
    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    #@54
    move-result-object v12

    #@55
    .line 2415
    .local v12, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    #@56
    .line 2416
    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    #@58
    move/from16 v22, v0

    #@5a
    if-eqz v22, :cond_3

    #@5c
    move-object v6, v12

    #@5d
    .line 2417
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    #@5f
    .line 2419
    .end local v6    # "dragLocalState":Landroid/widget/Editor$DragLocalState;
    :cond_3
    if-eqz v6, :cond_6

    #@61
    .line 2420
    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    #@63
    move-object/from16 v22, v0

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@69
    move-object/from16 v23, v0

    #@6b
    move-object/from16 v0, v22

    #@6d
    move-object/from16 v1, v23

    #@6f
    if-ne v0, v1, :cond_5

    #@71
    const/4 v5, 0x1

    #@72
    .line 2422
    .local v5, "dragDropIntoItself":Z
    :goto_1
    if-eqz v5, :cond_7

    #@74
    .line 2423
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    #@76
    move/from16 v22, v0

    #@78
    move/from16 v0, v16

    #@7a
    move/from16 v1, v22

    #@7c
    if-lt v0, v1, :cond_7

    #@7e
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    #@80
    move/from16 v22, v0

    #@82
    move/from16 v0, v16

    #@84
    move/from16 v1, v22

    #@86
    if-ge v0, v1, :cond_7

    #@88
    .line 2425
    return-void

    #@89
    .line 2406
    .end local v3    # "clipData":Landroid/content/ClipData;
    .end local v5    # "dragDropIntoItself":Z
    .end local v9    # "i":I
    .end local v11    # "itemCount":I
    .end local v12    # "localState":Ljava/lang/Object;
    .end local v16    # "offset":I
    :catchall_0
    move-exception v22

    #@8a
    .line 2407
    if-eqz v18, :cond_4

    #@8c
    .line 2408
    invoke-virtual/range {v18 .. v18}, Landroid/view/DragAndDropPermissions;->release()V

    #@8f
    .line 2406
    :cond_4
    throw v22

    #@90
    .line 2420
    .restart local v3    # "clipData":Landroid/content/ClipData;
    .restart local v9    # "i":I
    .restart local v11    # "itemCount":I
    .restart local v12    # "localState":Ljava/lang/Object;
    .restart local v16    # "offset":I
    :cond_5
    const/4 v5, 0x0

    #@91
    goto :goto_1

    #@92
    .line 2419
    :cond_6
    const/4 v5, 0x0

    #@93
    goto :goto_1

    #@94
    .line 2429
    .restart local v5    # "dragDropIntoItself":Z
    :cond_7
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@98
    move-object/from16 v22, v0

    #@9a
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@9d
    move-result-object v22

    #@9e
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    #@a1
    move-result v17

    #@a2
    .line 2430
    .local v17, "originalLength":I
    move/from16 v14, v16

    #@a4
    .line 2431
    .local v14, "min":I
    move/from16 v13, v16

    #@a6
    .line 2433
    .local v13, "max":I
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@aa
    move-object/from16 v22, v0

    #@ac
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@af
    move-result-object v22

    #@b0
    check-cast v22, Landroid/text/Spannable;

    #@b2
    move-object/from16 v0, v22

    #@b4
    move/from16 v1, v16

    #@b6
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@b9
    .line 2434
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@bd
    move-object/from16 v22, v0

    #@bf
    move-object/from16 v0, v22

    #@c1
    move/from16 v1, v16

    #@c3
    move/from16 v2, v16

    #@c5
    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    #@c8
    .line 2436
    if-eqz v5, :cond_a

    #@ca
    .line 2437
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    #@cc
    .line 2438
    .local v8, "dragSourceStart":I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    #@ce
    .line 2439
    .local v7, "dragSourceEnd":I
    move/from16 v0, v16

    #@d0
    if-gt v0, v8, :cond_8

    #@d2
    .line 2441
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@d6
    move-object/from16 v22, v0

    #@d8
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@db
    move-result-object v22

    #@dc
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    #@df
    move-result v22

    #@e0
    sub-int v20, v22, v17

    #@e2
    .line 2442
    .local v20, "shift":I
    add-int v8, v8, v20

    #@e4
    .line 2443
    add-int v7, v7, v20

    #@e6
    .line 2446
    .end local v20    # "shift":I
    :cond_8
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@ea
    move-object/from16 v22, v0

    #@ec
    const/16 v23, 0x1

    #@ee
    invoke-virtual/range {v22 .. v23}, Landroid/widget/Editor$UndoInputFilter;->setForceMerge(Z)V

    #@f1
    .line 2449
    :try_start_1
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@f5
    move-object/from16 v22, v0

    #@f7
    move-object/from16 v0, v22

    #@f9
    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    #@fc
    .line 2452
    add-int/lit8 v22, v8, -0x1

    #@fe
    const/16 v23, 0x0

    #@100
    move/from16 v0, v23

    #@102
    move/from16 v1, v22

    #@104
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@107
    move-result v19

    #@108
    .line 2453
    .local v19, "prevCharIdx":I
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@10c
    move-object/from16 v22, v0

    #@10e
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@111
    move-result-object v22

    #@112
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    #@115
    move-result v22

    #@116
    add-int/lit8 v23, v8, 0x1

    #@118
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    #@11b
    move-result v15

    #@11c
    .line 2454
    .local v15, "nextCharIdx":I
    add-int/lit8 v22, v19, 0x1

    #@11e
    move/from16 v0, v22

    #@120
    if-le v15, v0, :cond_9

    #@122
    .line 2455
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@126
    move-object/from16 v22, v0

    #@128
    move-object/from16 v0, v22

    #@12a
    move/from16 v1, v19

    #@12c
    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    #@12f
    move-result-object v21

    #@130
    .line 2456
    .local v21, "t":Ljava/lang/CharSequence;
    const/16 v22, 0x0

    #@132
    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    #@135
    move-result v22

    #@136
    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@139
    move-result v22

    #@13a
    if-eqz v22, :cond_9

    #@13c
    const/16 v22, 0x1

    #@13e
    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    #@141
    move-result v22

    #@142
    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@145
    move-result v22

    #@146
    if-eqz v22, :cond_9

    #@148
    .line 2457
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@14c
    move-object/from16 v22, v0

    #@14e
    add-int/lit8 v23, v19, 0x1

    #@150
    move-object/from16 v0, v22

    #@152
    move/from16 v1, v19

    #@154
    move/from16 v2, v23

    #@156
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@159
    .line 2461
    .end local v21    # "t":Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    #@15b
    iget-object v0, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@15d
    move-object/from16 v22, v0

    #@15f
    const/16 v23, 0x0

    #@161
    invoke-virtual/range {v22 .. v23}, Landroid/widget/Editor$UndoInputFilter;->setForceMerge(Z)V

    #@164
    .line 2390
    .end local v7    # "dragSourceEnd":I
    .end local v8    # "dragSourceStart":I
    .end local v15    # "nextCharIdx":I
    .end local v19    # "prevCharIdx":I
    :cond_a
    return-void

    #@165
    .line 2460
    .restart local v7    # "dragSourceEnd":I
    .restart local v8    # "dragSourceStart":I
    :catchall_1
    move-exception v22

    #@166
    .line 2461
    move-object/from16 v0, p0

    #@168
    iget-object v0, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@16a
    move-object/from16 v23, v0

    #@16c
    const/16 v24, 0x0

    #@16e
    invoke-virtual/range {v23 .. v24}, Landroid/widget/Editor$UndoInputFilter;->setForceMerge(Z)V

    #@171
    .line 2460
    throw v22
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
    .line 1138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5
    move-result-wide v8

    #@6
    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    #@8
    .line 1139
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    #@b
    .line 1141
    if-eqz p1, :cond_d

    #@d
    .line 1142
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@f
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    #@12
    move-result v4

    #@13
    .line 1143
    .local v4, "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@15
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    #@18
    move-result v3

    #@19
    .line 1147
    .local v3, "selEnd":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    #@1b
    if-eqz v5, :cond_a

    #@1d
    if-nez v4, :cond_a

    #@1f
    .line 1148
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
    .line 1150
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
    .line 1151
    if-eqz v0, :cond_b

    #@3a
    move v5, v6

    #@3b
    .line 1150
    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    #@3d
    .line 1153
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    #@3f
    if-eqz v5, :cond_0

    #@41
    if-ltz v4, :cond_0

    #@43
    if-gez v3, :cond_6

    #@45
    .line 1156
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    #@48
    move-result v1

    #@49
    .line 1157
    .local v1, "lastTapPosition":I
    if-ltz v1, :cond_1

    #@4b
    .line 1158
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
    .line 1162
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@58
    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    #@5b
    move-result-object v2

    #@5c
    .line 1163
    .local v2, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    #@5e
    .line 1164
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
    .line 1172
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
    .line 1173
    :cond_3
    if-ltz v4, :cond_4

    #@79
    if-ltz v3, :cond_4

    #@7b
    .line 1183
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
    .line 1186
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    #@88
    if-eqz v5, :cond_5

    #@8a
    .line 1187
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@8c
    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    #@8f
    .line 1190
    :cond_5
    iput-boolean v7, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    #@91
    .line 1193
    .end local v1    # "lastTapPosition":I
    .end local v2    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v6, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    #@93
    .line 1194
    iput-boolean v6, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    #@95
    .line 1196
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@97
    if-eqz v5, :cond_7

    #@99
    .line 1197
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    #@9c
    .line 1200
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    #@9f
    .line 1137
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_8
    :goto_2
    return-void

    #@a0
    .line 1148
    .restart local v3    # "selEnd":I
    .restart local v4    # "selStart":I
    :cond_9
    const/4 v0, 0x0

    #@a1
    .restart local v0    # "isFocusHighlighted":Z
    goto :goto_0

    #@a2
    .line 1147
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
    .line 1151
    goto :goto_1

    #@a6
    :cond_c
    move v5, v6

    #@a7
    .line 1150
    goto :goto_1

    #@a8
    .line 1202
    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_d
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@aa
    if-eqz v5, :cond_e

    #@ac
    .line 1203
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    #@af
    .line 1206
    :cond_e
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@b1
    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    #@b4
    .line 1208
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@b6
    invoke-virtual {v5}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@b9
    move-result v5

    #@ba
    if-eqz v5, :cond_f

    #@bc
    .line 1209
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@bf
    .line 1210
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    #@c2
    .line 1221
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@c4
    if-eqz v5, :cond_8

    #@c6
    .line 1222
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@c8
    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@cb
    goto :goto_2

    #@cc
    .line 1212
    :cond_f
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@cf
    .line 1213
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@d1
    invoke-virtual {v5}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    #@d4
    move-result v5

    #@d5
    if-eqz v5, :cond_10

    #@d7
    .line 1214
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    #@da
    .line 1218
    :goto_4
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    #@dd
    goto :goto_3

    #@de
    .line 1216
    :cond_10
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@e1
    goto :goto_4
.end method

.method onLocaleChanged()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 929
    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    #@3
    .line 930
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    #@5
    .line 926
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    #@0
    .prologue
    .line 685
    packed-switch p1, :pswitch_data_0

    #@3
    .line 684
    :goto_0
    return-void

    #@4
    .line 687
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    #@7
    goto :goto_0

    #@8
    .line 690
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    #@b
    goto :goto_0

    #@c
    .line 685
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
    .line 2284
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2285
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    #@9
    .line 2287
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2288
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@f
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    #@12
    .line 2283
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1352
    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    #@6
    move-result v0

    #@7
    .line 1353
    .local v0, "filterOutEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    #@d
    .line 1354
    if-eqz v0, :cond_1

    #@f
    .line 1355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@12
    move-result v1

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 1356
    iput-boolean v2, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@17
    .line 1358
    :cond_0
    return-void

    #@18
    .line 1360
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateTapState(Landroid/view/MotionEvent;)V

    #@1b
    .line 1361
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    #@1e
    .line 1363
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 1364
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    #@2b
    .line 1367
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@2d
    if-eqz v1, :cond_3

    #@2f
    .line 1368
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@31
    iget-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@36
    .line 1369
    iput-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@38
    .line 1372
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_4

    #@3e
    .line 1373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@41
    move-result v1

    #@42
    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    #@44
    .line 1374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@47
    move-result v1

    #@48
    iput v1, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    #@4a
    .line 1378
    iput-boolean v3, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    #@4c
    .line 1379
    iput-boolean v3, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    #@4e
    .line 1351
    :cond_4
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2107
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
    .line 2108
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@d
    .line 2109
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@10
    .line 2110
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@12
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    .line 2111
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    #@18
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@1b
    move-result v3

    #@1c
    if-lez v3, :cond_2

    #@1e
    .line 2113
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
    .line 2114
    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    #@2e
    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@31
    .line 2115
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@33
    if-eqz v3, :cond_0

    #@35
    .line 2117
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@37
    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    #@3a
    .line 2120
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@3d
    move-result v3

    #@3e
    if-nez v3, :cond_2

    #@40
    .line 2121
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_4

    #@46
    .line 2123
    iget-object v3, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@48
    if-eqz v3, :cond_1

    #@4a
    .line 2124
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@4c
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@4e
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@51
    .line 2127
    :cond_1
    new-instance v3, Landroid/widget/Editor$3;

    #@53
    invoke-direct {v3, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    #@56
    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@58
    .line 2133
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5a
    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    #@5c
    .line 2134
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@5f
    move-result v5

    #@60
    int-to-long v6, v5

    #@61
    .line 2133
    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@64
    .line 2106
    .end local v0    # "offset":I
    :cond_2
    :goto_1
    return-void

    #@65
    .line 2107
    :cond_3
    const/4 v1, 0x0

    #@66
    .local v1, "selectAllGotFocus":Z
    goto :goto_0

    #@67
    .line 2135
    .end local v1    # "selectAllGotFocus":Z
    .restart local v0    # "offset":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_2

    #@6d
    .line 2136
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    #@74
    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 1282
    if-eqz p1, :cond_3

    #@2
    .line 1283
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1284
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@8
    invoke-virtual {v1}, Landroid/widget/Editor$Blink;->uncancel()V

    #@b
    .line 1285
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    #@e
    .line 1287
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@11
    move-result-object v0

    #@12
    .line 1288
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@14
    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 1281
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    return-void

    #@21
    .line 1289
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    #@24
    goto :goto_0

    #@25
    .line 1292
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 1293
    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    #@2b
    invoke-virtual {v1}, Landroid/widget/Editor$Blink;->cancel()V

    #@2e
    .line 1295
    :cond_4
    iget-object v1, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@30
    if-eqz v1, :cond_5

    #@32
    .line 1296
    iget-object v1, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@34
    const/4 v2, 0x0

    #@35
    iput-boolean v2, v1, Landroid/widget/Editor$InputContentType;->enterDown:Z

    #@37
    .line 1299
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@3a
    .line 1300
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    #@3d
    .line 1301
    iget-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@3f
    if-eqz v1, :cond_6

    #@41
    .line 1302
    iget-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@43
    invoke-virtual {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    #@46
    .line 1306
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    #@49
    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 4
    .param p1, "handled"    # Z

    #@0
    .prologue
    .line 1102
    if-nez p1, :cond_0

    #@2
    iget v1, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    #@4
    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    #@6
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_3

    #@c
    .line 1112
    .end local p1    # "handled":Z
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    #@e
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 1113
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_4

    #@18
    .line 1114
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    #@1b
    .line 1119
    :goto_1
    const/4 p1, 0x1

    #@1c
    .line 1123
    :cond_1
    if-nez p1, :cond_2

    #@1e
    .line 1124
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    #@21
    move-result p1

    #@22
    .line 1127
    :cond_2
    return p1

    #@23
    .line 1103
    .restart local p1    # "handled":Z
    :cond_3
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    #@25
    .line 1102
    if-eqz v1, :cond_0

    #@27
    .line 1104
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@29
    iget v2, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    #@2b
    .line 1105
    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    #@2d
    .line 1104
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@30
    move-result v0

    #@31
    .line 1106
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@33
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Landroid/text/Spannable;

    #@39
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@3c
    .line 1107
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    #@43
    .line 1108
    const/4 v1, 0x1

    #@44
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    #@46
    .line 1109
    const/4 p1, 0x1

    #@47
    .local p1, "handled":Z
    goto :goto_0

    #@48
    .line 1116
    .end local v0    # "offset":I
    .end local p1    # "handled":Z
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@4b
    .line 1117
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    #@4e
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
    .line 602
    const/4 v3, 0x0

    #@3
    .line 604
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
    .line 605
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    #@f
    if-eqz v4, :cond_0

    #@11
    move-object v2, v1

    #@12
    .line 606
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    #@14
    .line 607
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@16
    const/16 v6, 0x3e8

    #@18
    if-lt v4, v6, :cond_4

    #@1a
    .line 608
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1c
    const/16 v6, 0x7cf

    #@1e
    if-le v4, v6, :cond_5

    #@20
    const/4 v3, 0x1

    #@21
    .line 611
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
    .line 612
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
    .line 613
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
    .line 615
    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    #@40
    if-nez v4, :cond_2

    #@42
    .line 616
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    #@45
    .line 617
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@47
    if-eqz v4, :cond_2

    #@49
    .line 618
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@4b
    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    #@4e
    .line 619
    iput-object v7, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    #@50
    .line 623
    :cond_2
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    #@52
    if-nez v4, :cond_3

    #@54
    .line 624
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@57
    .line 625
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@59
    if-eqz v4, :cond_3

    #@5b
    .line 626
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@5d
    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    #@60
    .line 627
    iput-object v7, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@62
    .line 601
    :cond_3
    return-void

    #@63
    .line 607
    .end local v0    # "enabled":Z
    .restart local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v3, 0x1

    #@64
    goto :goto_0

    #@65
    .line 608
    :cond_5
    const/4 v3, 0x0

    #@66
    goto :goto_0

    #@67
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move v0, v5

    #@68
    .line 611
    goto :goto_1

    #@69
    .restart local v0    # "enabled":Z
    :cond_7
    move v4, v5

    #@6a
    .line 612
    goto :goto_2
.end method

.method redo()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 347
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 348
    return-void

    #@6
    .line 350
    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    #@8
    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 351
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@f
    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    #@12
    .line 346
    return-void
.end method

.method refreshTextActionMode()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1873
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 1874
    iput-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    #@9
    .line 1875
    return-void

    #@a
    .line 1877
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    #@f
    move-result v0

    #@10
    .line 1878
    .local v0, "hasSelection":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@13
    move-result-object v2

    #@14
    .line 1879
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@17
    move-result-object v1

    #@18
    .line 1880
    .local v1, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v2, :cond_1

    #@1a
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_2

    #@20
    .line 1881
    :cond_1
    if-eqz v1, :cond_3

    #@22
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    #@25
    move-result v3

    #@26
    .line 1880
    if-eqz v3, :cond_3

    #@28
    .line 1883
    :cond_2
    iput-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    #@2a
    .line 1884
    return-void

    #@2b
    .line 1886
    :cond_3
    if-eqz v0, :cond_7

    #@2d
    .line 1887
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    #@30
    .line 1888
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@32
    if-nez v3, :cond_5

    #@34
    .line 1889
    iget-boolean v3, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    #@36
    if-eqz v3, :cond_4

    #@38
    .line 1892
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@3b
    .line 1910
    :cond_4
    :goto_0
    iput-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    #@3d
    .line 1872
    return-void

    #@3e
    .line 1894
    :cond_5
    if-eqz v2, :cond_6

    #@40
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_6

    #@46
    .line 1899
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@48
    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidateContentRect()V

    #@4b
    goto :goto_0

    #@4c
    .line 1896
    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    #@4f
    .line 1897
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@52
    goto :goto_0

    #@53
    .line 1904
    :cond_7
    if-eqz v1, :cond_8

    #@55
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_8

    #@5b
    .line 1906
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@5d
    if-eqz v3, :cond_4

    #@5f
    .line 1907
    iget-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@61
    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidateContentRect()V

    #@64
    goto :goto_0

    #@65
    .line 1905
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@68
    goto :goto_0
.end method

.method replace()V
    .locals 3

    #@0
    .prologue
    .line 355
    iget-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 356
    new-instance v1, Landroid/widget/Editor$SuggestionsPopupWindow;

    #@6
    invoke-direct {v1, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    #@9
    iput-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@b
    .line 358
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@e
    .line 359
    iget-object v1, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@10
    invoke-virtual {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    #@13
    .line 361
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@15
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    #@18
    move-result v1

    #@19
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1b
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1e
    move-result v2

    #@1f
    add-int/2addr v1, v2

    #@20
    div-int/lit8 v0, v1, 0x2

    #@22
    .line 362
    .local v0, "middle":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@24
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Landroid/text/Spannable;

    #@2a
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@2d
    .line 354
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
    .line 1565
    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@4
    .line 1566
    .local v8, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_3

    #@6
    .line 1567
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@8
    .line 1568
    .local v6, "contentChanged":Z
    if-nez v6, :cond_0

    #@a
    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@c
    if-eqz v0, :cond_3

    #@e
    .line 1569
    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@10
    .line 1570
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@12
    .line 1571
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    #@14
    .line 1572
    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_3

    #@16
    .line 1573
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@19
    move-result-object v7

    #@1a
    .line 1574
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_3

    #@1c
    .line 1579
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@1e
    if-gez v0, :cond_1

    #@20
    if-eqz v6, :cond_2

    #@22
    .line 1582
    :cond_1
    :goto_0
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@24
    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@26
    .line 1583
    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@28
    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@2a
    move-object v0, p0

    #@2b
    .line 1582
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_3

    #@31
    .line 1590
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@33
    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    #@35
    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    #@37
    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    #@3a
    .line 1591
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@3c
    .line 1592
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@3e
    .line 1593
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@40
    .line 1594
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@42
    .line 1595
    const/4 v0, 0x1

    #@43
    return v0

    #@44
    .line 1580
    :cond_2
    const/4 v0, -0x2

    #@45
    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@47
    goto :goto_0

    #@48
    .line 1601
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
    .line 312
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 313
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@6
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@d
    .line 314
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@f
    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    #@12
    .line 316
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
    .line 311
    return-void
.end method

.method saveInstanceState()Landroid/os/ParcelableParcel;
    .locals 3

    #@0
    .prologue
    .line 304
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
    .line 305
    .local v1, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    #@10
    move-result-object v0

    #@11
    .line 306
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@13
    invoke-virtual {v2, v0}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    #@16
    .line 307
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@18
    invoke-virtual {v2, v0}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    #@1b
    .line 308
    return-object v1
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "after"    # I

    #@0
    .prologue
    .line 1249
    add-int v0, p1, p2

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    #@6
    .line 1252
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    #@9
    .line 1257
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    #@c
    .line 1259
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1260
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@12
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@15
    .line 1262
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@18
    .line 1248
    return-void
.end method

.method setContextMenuAnchor(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 2480
    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    #@2
    .line 2481
    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    #@4
    .line 2479
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
    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@7
    .line 474
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    #@a
    .line 476
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@c
    if-nez v0, :cond_3

    #@e
    .line 477
    invoke-direct {p0, v1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 478
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 479
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@17
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 480
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@1f
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    #@22
    .line 483
    :cond_0
    iput-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@24
    .line 485
    :cond_1
    const/4 v0, 0x0

    #@25
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    #@27
    .line 472
    :cond_2
    :goto_0
    return-void

    #@28
    .line 487
    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    #@2b
    .line 488
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@2d
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 489
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    #@36
    goto :goto_0
.end method

.method setFrame()V
    .locals 7

    #@0
    .prologue
    .line 752
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 753
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    #@9
    move-result-object v6

    #@a
    check-cast v6, Landroid/widget/TextView;

    #@c
    .line 754
    .local v6, "tv":Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    #@e
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@10
    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    #@13
    .line 755
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
    .line 756
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
    .line 755
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    #@2e
    .line 751
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method startInsertionActionMode()V
    .locals 3

    #@0
    .prologue
    .line 1917
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1918
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@6
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    #@8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@b
    .line 1920
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1921
    return-void

    #@12
    .line 1923
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@15
    .line 1926
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    #@17
    const/4 v1, 0x0

    #@18
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;Z)V

    #@1b
    .line 1927
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@1d
    .line 1928
    const/4 v2, 0x1

    #@1e
    .line 1927
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@24
    .line 1929
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
    .line 1930
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    #@35
    .line 1916
    :cond_2
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 2

    #@0
    .prologue
    .line 1942
    invoke-direct {p0}, Landroid/widget/Editor;->startSelectionActionModeInternal()Z

    #@3
    move-result v0

    #@4
    .line 1943
    .local v0, "selectionStarted":Z
    if-eqz v0, :cond_0

    #@6
    .line 1944
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    #@d
    .line 1946
    :cond_0
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    #@10
    .line 1947
    return v0
.end method

.method protected stopTextActionMode()V
    .locals 1

    #@0
    .prologue
    .line 2143
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2145
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@6
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    #@9
    .line 2142
    :cond_0
    return-void
.end method

.method undo()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 339
    iget-boolean v1, p0, Landroid/widget/Editor;->mAllowUndo:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 340
    return-void

    #@6
    .line 342
    :cond_0
    new-array v0, v3, [Landroid/content/UndoOwner;

    #@8
    iget-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 343
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    #@f
    invoke-virtual {v1, v0, v3}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    #@12
    .line 338
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
    .line 1845
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@5
    iget v7, v7, Landroid/widget/TextView;->mCursorDrawableRes:I

    #@7
    if-nez v7, :cond_0

    #@9
    .line 1846
    iput v10, p0, Landroid/widget/Editor;->mCursorCount:I

    #@b
    .line 1847
    return-void

    #@c
    .line 1850
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@e
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@11
    move-result-object v2

    #@12
    .line 1851
    .local v2, "layout":Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    #@14
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    #@17
    move-result v5

    #@18
    .line 1852
    .local v5, "offset":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    #@1b
    move-result v3

    #@1c
    .line 1853
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    #@1f
    move-result v6

    #@20
    .line 1854
    .local v6, "top":I
    add-int/lit8 v7, v3, 0x1

    #@22
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    #@25
    move-result v0

    #@26
    .line 1856
    .local v0, "bottom":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->isLevelBoundary(I)Z

    #@29
    move-result v7

    #@2a
    if-eqz v7, :cond_3

    #@2c
    move v7, v8

    #@2d
    :goto_0
    iput v7, p0, Landroid/widget/Editor;->mCursorCount:I

    #@2f
    .line 1858
    move v4, v0

    #@30
    .line 1859
    .local v4, "middle":I
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    #@32
    if-ne v7, v8, :cond_1

    #@34
    .line 1861
    add-int v7, v6, v0

    #@36
    shr-int/lit8 v4, v7, 0x1

    #@38
    .line 1864
    :cond_1
    invoke-virtual {v2, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    #@3b
    move-result v1

    #@3c
    .line 1865
    .local v1, "clamped":Z
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    #@3f
    move-result v7

    #@40
    invoke-direct {p0, v10, v6, v4, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    #@43
    .line 1867
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    #@45
    if-ne v7, v8, :cond_2

    #@47
    .line 1868
    invoke-virtual {v2, v5, v1}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    #@4a
    move-result v7

    #@4b
    invoke-direct {p0, v9, v4, v0, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    #@4e
    .line 1844
    :cond_2
    return-void

    #@4f
    .end local v1    # "clamped":Z
    .end local v4    # "middle":I
    :cond_3
    move v7, v9

    #@50
    .line 1856
    goto :goto_0
.end method
