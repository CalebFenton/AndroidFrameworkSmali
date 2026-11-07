.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$SuggestionHelper;,
        Landroid/widget/Editor$ProcessTextIntentActionsHandler;,
        Landroid/widget/Editor$AccessibilitySmartActions;,
        Landroid/widget/Editor$MagnifierMotionAnimator;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextRenderNode;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$InsertModeController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$TextActionModeCallback;,
        Landroid/widget/Editor$TextActionMode;,
        Landroid/widget/Editor$AssistantCallbackHelper;,
        Landroid/widget/Editor$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionSpanInfo;,
        Landroid/widget/Editor$EditOperation;,
        Landroid/widget/Editor$SelectionHandleView;,
        Landroid/widget/Editor$HandleType;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$MagnifierHandleTrigger;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_ASSIST:I = 0x0

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_AUTOFILL:I = 0xa

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_COPY:I = 0x5

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_CUT:I = 0x4

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_PASTE:I = 0x6

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_PASTE_AS_PLAIN_TEXT:I = 0xb

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_REPLACE:I = 0x9

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SECONDARY_ASSIST_ACTIONS_START:I = 0x32

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SELECT_ALL:I = 0x8

.field private static final blacklist ACTION_MODE_MENU_ITEM_ORDER_SHARE:I = 0x7

.field static final greylist-max-o BLINK:I = 0x1f4

.field private static final blacklist CONTEXT_MENU_GROUP_CLIPBOARD:I = 0x2

.field private static final blacklist CONTEXT_MENU_GROUP_MISC:I = 0x3

.field private static final blacklist CONTEXT_MENU_GROUP_UNDO_REDO:I = 0x1

.field private static final blacklist CONTEXT_MENU_ITEM_ORDER_REPLACE:I = 0xb

.field private static final blacklist CURSOR_START_FLOAT_DISTANCE_PX:I = 0x14

.field private static final greylist-max-o DEBUG_UNDO:Z = false

.field private static final blacklist DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field private static final greylist-max-o DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x14

.field static final greylist-max-o EXTRACT_NOTHING:I = -0x2

.field static final greylist-max-o EXTRACT_UNKNOWN:I = -0x1

.field private static final blacklist FLAG_MISSPELLED_OR_GRAMMAR_ERROR:I = 0xa

.field private static final greylist-max-o FLAG_USE_MAGNIFIER:Z = true

.field public static final greylist-max-o HANDLE_TYPE_SELECTION_END:I = 0x1

.field public static final greylist-max-o HANDLE_TYPE_SELECTION_START:I = 0x0

.field private static final blacklist LINE_CHANGE_SLOP_MAX_DP:I = 0x2d

.field private static final blacklist LINE_CHANGE_SLOP_MIN_DP:I = 0x8

.field private static final blacklist MAX_LINE_HEIGHT_FOR_MAGNIFIER:I = 0x20

.field private static final blacklist MIN_LINE_HEIGHT_FOR_MAGNIFIER:I = 0x14

.field private static final blacklist RECENT_CUT_COPY_DURATION_MS:I = 0x3a98

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Editor"

.field private static final greylist-max-o UNDO_OWNER_TAG:Ljava/lang/String; = "Editor"

.field private static final greylist-max-o UNSET_LINE:I = -0x1

.field private static final greylist-max-o UNSET_X_VALUE:I = -0x1


# instance fields
.field private final blacklist mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

.field greylist-max-o mAllowUndo:Z

.field private final blacklist mBackCallback:Landroid/window/OnBackInvokedCallback;

.field private blacklist mBackCallbackRegistered:Z

.field private greylist-max-o mBlink:Landroid/widget/Editor$Blink;

.field private greylist-max-o mContextMenuAnchorX:F

.field private greylist-max-o mContextMenuAnchorY:F

.field private greylist-max-o mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field greylist-max-r mCreatedWithASelection:Z

.field private final greylist-max-o mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field private blacklist mCursorDragDirectionMinXYRatio:F

.field greylist-max-o mCursorVisible:Z

.field greylist-max-o mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

.field greylist-max-o mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private final blacklist mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

.field greylist-max-o mDiscardNextActionUp:Z

.field private blacklist mDrawCursorOnMagnifier:Z

.field greylist-max-o mDrawableForCursor:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mError:Ljava/lang/CharSequence;

.field private greylist-max-o mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field greylist-max-o mErrorWasChanged:Z

.field private blacklist mFlagCursorDragFromAnywhereEnabled:Z

.field private blacklist mFlagInsertionHandleGesturesEnabled:Z

.field greylist-max-o mFrozenWithFocus:Z

.field private final greylist-max-o mHapticTextHandleEnabled:Z

.field private blacklist mHasPendingRestartInputForSetText:Z

.field greylist-max-o mIgnoreActionUpEvent:Z

.field greylist-max-o mInBatchEditControllers:Z

.field private blacklist mInitialZoom:F

.field greylist-max-o mInputContentType:Landroid/widget/Editor$InputContentType;

.field greylist-max-o mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field greylist-max-o mInputType:I

.field private blacklist mInsertModeController:Landroid/widget/Editor$InsertModeController;

.field private greylist-max-o mInsertionActionModeRunnable:Ljava/lang/Runnable;

.field private greylist mInsertionControllerEnabled:Z

.field greylist-max-o mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field greylist-max-o mIsBeingLongClicked:Z

.field blacklist mIsBeingLongClickedByAccessibility:Z

.field greylist-max-o mIsInsertionActionModeStartPending:Z

.field greylist-max-o mKeyListener:Landroid/text/method/KeyListener;

.field private greylist-max-o mLastButtonState:I

.field private blacklist mLineChangeSlopMax:I

.field private blacklist mLineChangeSlopMin:I

.field private final blacklist mLineSlopRatio:F

.field private greylist-max-o mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

.field private final greylist-max-o mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private blacklist mMaxLineHeightForMagnifier:I

.field private final greylist-max-o mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private blacklist mMinLineHeightForMagnifier:I

.field private final blacklist mNewMagnifierEnabled:Z

.field private final greylist-max-o mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private greylist-max-o mPositionListener:Landroid/widget/Editor$PositionListener;

.field private greylist-max-o mPreserveSelection:Z

.field final greylist-max-o mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

.field private greylist-max-o mRenderCursorRegardlessTiming:Z

.field private greylist-max-o mRequestingLinkActionMode:Z

.field private greylist-max-o mRestartActionModeOnNextRefresh:Z

.field greylist-max-o mSelectAllOnFocus:Z

.field greylist-max-p mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

.field private greylist mSelectionControllerEnabled:Z

.field greylist-max-o mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field greylist-max-o mSelectionMoved:Z

.field private greylist-max-p mShowCursor:J

.field private greylist-max-o mShowErrorAfterAttach:Z

.field private final greylist-max-o mShowFloatingToolbar:Ljava/lang/Runnable;

.field greylist-max-r mShowSoftInputOnFocus:Z

.field private greylist-max-o mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mSpanController:Landroid/widget/Editor$SpanController;

.field greylist-max-o mSpellChecker:Landroid/widget/SpellChecker;

.field private final greylist-max-o mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

.field greylist-max-o mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field private greylist-max-o mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist-max-o mTextActionMode:Landroid/view/ActionMode;

.field greylist-max-o mTextIsSelectable:Z

.field private greylist-max-o mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

.field private final greylist-max-o mTextView:Landroid/widget/TextView;

.field greylist-max-o mTouchFocusSelected:Z

.field private final blacklist mTouchState:Landroid/widget/EditorTouchState;

.field final greylist-max-o mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

.field private final greylist-max-o mUndoManager:Landroid/content/UndoManager;

.field private greylist-max-o mUndoOwner:Landroid/content/UndoOwner;

.field private final greylist-max-o mUpdateMagnifierRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mUpdateWordIteratorText:Z

.field private greylist-max-o mWordIterator:Landroid/text/method/WordIterator;

.field private greylist-max-o mWordIteratorWithText:Landroid/text/method/WordIterator;


# direct methods
.method public static synthetic blacklist $r8$lambda$GRBrITjWGGT8h7sSZa63vDb9MPs(Landroid/widget/Editor;Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->lambda$setAssistContextMenuItems$1(Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$wQ33dZlDHVA0D7aARwa214iyOhk(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->lambda$startActionModeInternal$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmA11ySmartActions(Landroid/widget/Editor;)Landroid/widget/Editor$AccessibilitySmartActions;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorDragDirectionMinXYRatio(Landroid/widget/Editor;)F
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialZoom(Landroid/widget/Editor;)F
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mInitialZoom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLineHeightForMagnifier(Landroid/widget/Editor;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mMaxLineHeightForMagnifier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I
    .registers 1

    iget p0, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreserveSelection(Landroid/widget/Editor;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestionHelper(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUndoManager(Landroid/widget/Editor;)Landroid/content/UndoManager;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateMagnifierRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCorrectionHighlighter(Landroid/widget/Editor;Landroid/widget/Editor$CorrectionHighlighter;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInsertionActionModeRunnable(Landroid/widget/Editor;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreserveSelection(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestingLinkActionMode(Landroid/widget/Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTempRect(Landroid/widget/Editor;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTextActionMode(Landroid/widget/Editor;Landroid/view/ActionMode;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextractedTextModeWillBeStarted(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindEquivalentSuggestionSpan(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInputMethodManager(Landroid/widget/Editor;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetParagraphsRange(Landroid/widget/Editor;II)J
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSelectionActionModeHelper(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordEnd(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWordStart(Landroid/widget/Editor;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->getWordStart(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misCursorInsideEasyCorrectionSpan(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misOffsetVisible(Landroid/widget/Editor;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPositionOnText(Landroid/widget/Editor;FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreplaceWithSuggestion(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresumeBlink(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mselectCurrentParagraph(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentParagraph()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mselectCurrentWordAndStartDrag(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendUpdateSelection(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldBlink(Landroid/widget/Editor;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDragAndDrop(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msuspendBlink(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoggleInsertionActionMode(Landroid/widget/Editor;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor;->toggleInsertionActionMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/Editor;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSpellCheckSpans(Landroid/widget/Editor;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .registers 7
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Landroid/widget/TextViewOnReceiveContentListener;

    invoke-direct {v0}, Landroid/widget/TextViewOnReceiveContentListener;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    .line 237
    new-instance v0, Landroid/content/UndoManager;

    invoke-direct {v0}, Landroid/content/UndoManager;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 238
    iget-object v0, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v1, "Editor"

    invoke-virtual {v0, v1, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 239
    new-instance v0, Landroid/widget/Editor$UndoInputFilter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 242
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 256
    new-instance v1, Landroid/widget/Editor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 262
    new-instance v1, Landroid/widget/Editor$1;

    invoke-direct {v1, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mUpdateMagnifierRunnable:Ljava/lang/Runnable;

    .line 272
    new-instance v1, Landroid/widget/Editor$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 332
    iput v1, p0, Landroid/widget/Editor;->mInputType:I

    .line 349
    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 366
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 381
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 404
    new-instance v3, Landroid/widget/EditorTouchState;

    invoke-direct {v3}, Landroid/widget/EditorTouchState;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 428
    new-instance v3, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    .line 431
    new-instance v3, Landroid/widget/Editor$3;

    invoke-direct {v3, p0}, Landroid/widget/Editor$3;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 440
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 442
    new-instance v3, Landroid/widget/Editor$SuggestionHelper;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    .line 462
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/Editor;->mInitialZoom:F

    .line 3514
    new-instance v3, Landroid/widget/Editor$5;

    invoke-direct {v3, p0}, Landroid/widget/Editor$5;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 483
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 485
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 486
    new-instance v3, Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    .line 487
    new-instance v3, Landroid/widget/Editor$AccessibilitySmartActions;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4, v2}, Landroid/widget/Editor$AccessibilitySmartActions;-><init>(Landroid/widget/TextView;Landroid/widget/Editor-IA;)V

    iput-object v3, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    .line 488
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111017b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/Editor;->mHapticTextHandleEnabled:Z

    .line 491
    const-string/jumbo v2, "widget__enable_cursor_drag_from_anywhere"

    invoke-static {v2, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b1

    move v2, v0

    goto :goto_b2

    :cond_b1
    move v2, v1

    :goto_b2
    iput-boolean v2, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    .line 494
    const-string/jumbo v2, "widget__min_angle_from_vertical_to_start_cursor_drag"

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v2

    .line 497
    .local v2, "cursorDragMinAngleFromVertical":I
    invoke-static {v2}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result v3

    iput v3, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    .line 499
    const-string/jumbo v3, "widget__enable_insertion_handle_gestures"

    invoke-static {v3, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_ce

    move v3, v0

    goto :goto_cf

    :cond_ce
    move v3, v1

    :goto_cf
    iput-boolean v3, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    .line 502
    const-string/jumbo v3, "widget__enable_new_magnifier"

    invoke-static {v3, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_db

    move v1, v0

    :cond_db
    iput-boolean v1, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    .line 505
    const-string/jumbo v1, "widget__line_slop_ratio"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v3}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    .line 519
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 521
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 519
    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    .line 522
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 524
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 522
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    .line 526
    return-void
.end method

.method private greylist-max-o chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .registers 11
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .line 1133
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1134
    .local v0, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1136
    .local v1, "ht":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105038c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1138
    .local v2, "defaultWidthInPixels":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p2, v5, v3, v4, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 1140
    invoke-virtual {p3}, Landroid/widget/TextView;->isFallbackLineSpacingForStaticLayout()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 1141
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    .line 1143
    .local v3, "l":Landroid/text/StaticLayout;
    const/4 v4, 0x0

    .line 1144
    .local v4, "max":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 1145
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1144
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 1152
    .end local v5    # "i":I
    :cond_4b
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1153
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1154
    return-void
.end method

.method private greylist-max-o clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I
    .registers 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontal"    # F

    .line 2888
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 2889
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_13

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 2891
    :cond_13
    const/4 v0, 0x0

    .line 2892
    .local v0, "drawableWidth":I
    if-eqz p1, :cond_20

    .line 2893
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2894
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_25

    .line 2896
    :cond_20
    iget-object v1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2899
    :goto_25
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 2900
    .local v1, "scrollX":I
    int-to-float v2, v1

    sub-float v2, p2, v2

    .line 2901
    .local v2, "horizontalDiff":F
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2902
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2905
    .local v3, "viewClippedWidth":I
    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_54

    .line 2907
    add-int v4, v3, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v5

    sub-int/2addr v4, v5

    .local v4, "left":I
    goto :goto_84

    .line 2908
    .end local v4    # "left":I
    :cond_54
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-lez v4, :cond_7e

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2909
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_77

    const/high16 v4, 0x100000

    sub-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v6, v3

    add-float/2addr v6, v5

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_77

    cmpg-float v4, p2, v5

    if-gtz v4, :cond_77

    goto :goto_7e

    .line 2915
    :cond_77
    float-to-int v4, p2

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .restart local v4    # "left":I
    goto :goto_84

    .line 2913
    .end local v4    # "left":I
    :cond_7e
    :goto_7e
    iget-object v4, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v4

    .line 2917
    .restart local v4    # "left":I
    :goto_84
    return v4
.end method

.method private blacklist createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;
    .registers 15

    .line 567
    new-instance v0, Landroid/widget/Magnifier$Builder;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    .line 569
    .local v0, "params":Landroid/widget/Magnifier$Builder;
    const-string/jumbo v1, "widget__magnifier_zoom_factor"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v1, v2}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    .line 572
    .local v1, "zoom":F
    const-string/jumbo v2, "widget__magnifier_aspect_ratio"

    const/high16 v3, 0x40b00000    # 5.5f

    invoke-static {v2, v3}, Landroid/app/AppGlobals;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v2

    .line 576
    .local v2, "aspectRatio":F
    const v3, 0x3f99999a    # 1.2f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_27

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_29

    .line 577
    :cond_27
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 579
    :cond_29
    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_35

    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_37

    .line 580
    :cond_35
    const/high16 v2, 0x40b00000    # 5.5f

    .line 583
    :cond_37
    iput v1, p0, Landroid/widget/Editor;->mInitialZoom:F

    .line 584
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 586
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 584
    const/4 v4, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    .line 587
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 589
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 587
    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor;->mMaxLineHeightForMagnifier:I

    .line 591
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 592
    .local v3, "layout":Landroid/text/Layout;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStartTransformed()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 593
    .local v5, "line":I
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v7

    .line 594
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 595
    .local v7, "sourceHeight":I
    int-to-float v8, v7

    mul-float/2addr v8, v1

    float-to-int v8, v8

    .line 596
    .local v8, "height":I
    iget v9, p0, Landroid/widget/Editor;->mMinLineHeightForMagnifier:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    .line 598
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->setFishEyeStyle()Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 599
    invoke-virtual {v10, v9, v8}, Landroid/widget/Magnifier$Builder;->setSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 600
    invoke-virtual {v10, v9, v7}, Landroid/widget/Magnifier$Builder;->setSourceSize(II)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 601
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Magnifier$Builder;->setElevation(F)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 602
    invoke-virtual {v10, v1}, Landroid/widget/Magnifier$Builder;->setInitialZoom(F)Landroid/widget/Magnifier$Builder;

    move-result-object v10

    .line 603
    invoke-virtual {v10, v6}, Landroid/widget/Magnifier$Builder;->setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;

    .line 605
    iget-object v10, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 606
    .local v10, "context":Landroid/content/Context;
    sget-object v11, Lcom/android/internal/R$styleable;->Magnifier:[I

    const v12, 0x112008c

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11, v12, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 609
    .local v11, "a":Landroid/content/res/TypedArray;
    nop

    .line 610
    const/4 v12, 0x3

    invoke-virtual {v11, v12, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 612
    const/4 v13, 0x4

    invoke-virtual {v11, v13, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 609
    invoke-virtual {v0, v12, v13}, Landroid/widget/Magnifier$Builder;->setDefaultSourceToMagnifierOffset(II)Landroid/widget/Magnifier$Builder;

    .line 614
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 616
    invoke-virtual {v0, v4, v6, v4, v6}, Landroid/widget/Magnifier$Builder;->setSourceBounds(IIII)Landroid/widget/Magnifier$Builder;

    move-result-object v4

    return-object v4
.end method

.method private blacklist deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    .registers 11
    .param p1, "dragLocalState"    # Landroid/widget/Editor$DragLocalState;
    .param p2, "dropOffset"    # I
    .param p3, "lengthBeforeDrop"    # I

    .line 3102
    iget v0, p1, Landroid/widget/Editor$DragLocalState;->start:I

    .line 3103
    .local v0, "dragSourceStart":I
    iget v1, p1, Landroid/widget/Editor$DragLocalState;->end:I

    .line 3104
    .local v1, "dragSourceEnd":I
    if-gt p2, v0, :cond_13

    .line 3106
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    .line 3107
    .local v2, "shift":I
    add-int/2addr v0, v2

    .line 3108
    add-int/2addr v1, v2

    .line 3112
    .end local v2    # "shift":I
    :cond_13
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3115
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3116
    .local v2, "prevCharIdx":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3117
    .local v4, "nextCharIdx":I
    add-int/lit8 v5, v2, 0x1

    if-le v4, v5, :cond_55

    .line 3118
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v4}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3119
    .local v5, "t":Ljava/lang/CharSequence;
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 3120
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3123
    .end local v5    # "t":Ljava/lang/CharSequence;
    :cond_55
    return-void
.end method

.method private greylist-max-o discardTextDisplayLists()V
    .registers 4

    .line 814
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_26

    .line 815
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 816
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    .line 817
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 818
    .local v1, "displayList":Landroid/graphics/RenderNode;
    :goto_18
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 819
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->discardDisplayList()V

    .line 815
    .end local v1    # "displayList":Landroid/graphics/RenderNode;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 823
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method private greylist-max-o downgradeEasyCorrectionSpans()V
    .registers 7

    .line 1679
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1680
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_37

    .line 1681
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 1682
    .local v1, "spannable":Landroid/text/Spannable;
    nop

    .line 1683
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 1682
    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1684
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    array-length v4, v2

    if-ge v3, v4, :cond_37

    .line 1685
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v4

    .line 1686
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_34

    and-int/lit8 v5, v4, 0xa

    if-nez v5, :cond_34

    .line 1688
    and-int/lit8 v4, v4, -0x2

    .line 1689
    aget-object v5, v2, v3

    invoke-virtual {v5, v4}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1684
    .end local v4    # "flags":I
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1693
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v3    # "i":I
    :cond_37
    return-void
.end method

.method private greylist-max-o drawCursor(Landroid/graphics/Canvas;I)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .line 2356
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 2357
    .local v0, "translate":Z
    :goto_5
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    int-to-float v2, p2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2358
    :cond_c
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_15

    .line 2359
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2361
    :cond_15
    if-eqz v0, :cond_1c

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2362
    :cond_1c
    return-void
.end method

.method private blacklist drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V
    .registers 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p5, "selectionHighlight"    # Landroid/graphics/Path;
    .param p6, "selectionHighlightPaint"    # Landroid/graphics/Paint;
    .param p7, "cursorOffsetVertical"    # I
    .param p8, "shouldDrawHighlightsOnTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "IZ)V"
        }
    .end annotation

    .line 2173
    .local p3, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p4, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v11

    .line 2174
    .local v11, "lineRange":J
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 2175
    .local v7, "firstLine":I
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    .line 2176
    .local v8, "lastLine":I
    if-gez v8, :cond_15

    return-void

    .line 2179
    :cond_15
    if-nez p8, :cond_2f

    .line 2180
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v9, v8

    move v8, v7

    move/from16 v7, p7

    .end local v7    # "firstLine":I
    .local v8, "firstLine":I
    .local v9, "lastLine":I
    invoke-virtual/range {v1 .. v9}, Landroid/text/Layout;->drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    move v13, v8

    move v14, v9

    .end local v8    # "firstLine":I
    .end local v9    # "lastLine":I
    .local v13, "firstLine":I
    .local v14, "lastLine":I
    goto :goto_34

    .line 2183
    .end local v13    # "firstLine":I
    .end local v14    # "lastLine":I
    .restart local v7    # "firstLine":I
    .local v8, "lastLine":I
    :cond_2f
    move v13, v7

    move v14, v8

    .end local v7    # "firstLine":I
    .end local v8    # "lastLine":I
    .restart local v13    # "firstLine":I
    .restart local v14    # "lastLine":I
    invoke-virtual {v2, v1, v13, v14}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 2186
    :goto_34
    instance-of v3, v2, Landroid/text/DynamicLayout;

    if-eqz v3, :cond_160

    .line 2187
    iget-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-nez v3, :cond_46

    .line 2188
    const-class v3, Landroid/widget/Editor$TextRenderNode;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/widget/Editor$TextRenderNode;

    iput-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2191
    :cond_46
    move-object v15, v2

    check-cast v15, Landroid/text/DynamicLayout;

    .line 2192
    .local v15, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v15}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v6

    .line 2193
    .local v6, "blockEndLines":[I
    invoke-virtual {v15}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v7

    .line 2194
    .local v7, "blockIndices":[I
    invoke-virtual {v15}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v9

    .line 2195
    .local v9, "numberOfBlocks":I
    invoke-virtual {v15}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v3

    .line 2197
    .local v3, "indexFirstChangedBlock":I
    invoke-virtual {v15}, Landroid/text/DynamicLayout;->getBlocksAlwaysNeedToBeRedrawn()Landroid/util/ArraySet;

    move-result-object v4

    .line 2198
    .local v4, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    if-eqz v4, :cond_8a

    .line 2199
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_61
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v10, v8, :cond_8a

    .line 2200
    invoke-virtual {v4, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v15, v8}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v8

    .line 2201
    .local v8, "blockIndex":I
    if-eq v8, v5, :cond_84

    iget-object v5, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v5, v5, v8

    if-eqz v5, :cond_84

    .line 2203
    iget-object v5, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v5, v5, v8

    const/4 v1, 0x1

    iput-boolean v1, v5, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2199
    .end local v8    # "blockIndex":I
    :cond_84
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    const/4 v5, -0x1

    goto :goto_61

    .line 2208
    .end local v10    # "i":I
    :cond_8a
    const/4 v1, 0x0

    invoke-static {v6, v1, v9, v13}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v1

    .line 2209
    .local v1, "startBlock":I
    if-gez v1, :cond_94

    .line 2210
    add-int/lit8 v5, v1, 0x1

    neg-int v1, v5

    .line 2212
    :cond_94
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 2214
    .end local v1    # "startBlock":I
    .local v18, "startBlock":I
    const/4 v1, 0x0

    .line 2215
    .local v1, "startIndexToFindAvailableRenderNode":I
    move/from16 v19, v9

    .line 2217
    .local v19, "lastIndex":I
    move/from16 v5, v18

    move v10, v1

    move v8, v5

    .end local v1    # "startIndexToFindAvailableRenderNode":I
    .local v8, "i":I
    .local v10, "startIndexToFindAvailableRenderNode":I
    :goto_9f
    if-ge v8, v9, :cond_f6

    .line 2218
    aget v1, v7, v8

    .line 2219
    .local v1, "blockIndex":I
    if-lt v8, v3, :cond_b6

    const/4 v5, -0x1

    if-eq v1, v5, :cond_b6

    iget-object v5, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v5, v5, v1

    if-eqz v5, :cond_b6

    .line 2222
    iget-object v5, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v5, v5, v1

    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    goto :goto_b7

    .line 2219
    :cond_b6
    const/4 v0, 0x1

    .line 2224
    :goto_b7
    aget v5, v6, v8

    if-ge v5, v13, :cond_c7

    .line 2227
    move/from16 v22, v0

    move-wide/from16 v20, v11

    move/from16 v17, v13

    const/4 v13, -0x1

    move-object/from16 v0, p0

    move v11, v3

    move-object v12, v4

    goto :goto_eb

    .line 2229
    :cond_c7
    move/from16 v5, p7

    move/from16 v22, v0

    move/from16 v16, v1

    move-wide/from16 v20, v11

    move/from16 v17, v13

    const/4 v13, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v11, v3

    move-object v12, v4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .end local v1    # "blockIndex":I
    .end local v3    # "indexFirstChangedBlock":I
    .end local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v13    # "firstLine":I
    .local v11, "indexFirstChangedBlock":I
    .local v12, "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v16, "blockIndex":I
    .local v17, "firstLine":I
    .local v20, "lineRange":J
    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v10

    .line 2233
    aget v1, v6, v8

    if-lt v1, v14, :cond_eb

    .line 2234
    add-int/lit8 v1, v8, 0x1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2235
    goto :goto_fd

    .line 2217
    .end local v16    # "blockIndex":I
    :cond_eb
    :goto_eb
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    move v3, v11

    move-object v4, v12

    move/from16 v13, v17

    move-wide/from16 v11, v20

    goto :goto_9f

    .end local v12    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v17    # "firstLine":I
    .end local v20    # "lineRange":J
    .restart local v3    # "indexFirstChangedBlock":I
    .restart local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v11, "lineRange":J
    .restart local v13    # "firstLine":I
    :cond_f6
    move-wide/from16 v20, v11

    move/from16 v17, v13

    const/4 v13, -0x1

    move v11, v3

    move-object v12, v4

    .line 2238
    .end local v3    # "indexFirstChangedBlock":I
    .end local v4    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v8    # "i":I
    .end local v13    # "firstLine":I
    .local v11, "indexFirstChangedBlock":I
    .restart local v12    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v17    # "firstLine":I
    .restart local v20    # "lineRange":J
    :goto_fd
    if-eqz v12, :cond_154

    .line 2239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_100
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_14b

    .line 2240
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2241
    .local v8, "block":I
    invoke-virtual {v15, v8}, Landroid/text/DynamicLayout;->getBlockIndex(I)I

    move-result v2

    .line 2242
    .local v2, "blockIndex":I
    if-eq v2, v13, :cond_12e

    iget-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v2

    if-eqz v3, :cond_12e

    iget-object v3, v0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-eqz v3, :cond_125

    goto :goto_12e

    :cond_125
    move-object/from16 v2, p2

    move/from16 v16, v1

    move/from16 v13, v19

    move-object/from16 v1, p1

    goto :goto_142

    .line 2245
    :cond_12e
    :goto_12e
    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v16, v1

    move/from16 v22, v2

    move/from16 v13, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .end local v1    # "i":I
    .end local v2    # "blockIndex":I
    .end local v19    # "lastIndex":I
    .local v13, "lastIndex":I
    .local v16, "i":I
    .local v22, "blockIndex":I
    invoke-direct/range {v0 .. v10}, Landroid/widget/Editor;->drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I

    move-result v10

    .line 2239
    .end local v8    # "block":I
    .end local v22    # "blockIndex":I
    :goto_142
    add-int/lit8 v0, v16, 0x1

    move v1, v0

    move/from16 v19, v13

    const/4 v13, -0x1

    move-object/from16 v0, p0

    .end local v16    # "i":I
    .local v0, "i":I
    goto :goto_100

    .end local v0    # "i":I
    .end local v13    # "lastIndex":I
    .restart local v1    # "i":I
    .restart local v19    # "lastIndex":I
    :cond_14b
    move-object/from16 v2, p2

    move/from16 v16, v1

    move/from16 v13, v19

    move-object/from16 v1, p1

    .end local v1    # "i":I
    .end local v19    # "lastIndex":I
    .restart local v13    # "lastIndex":I
    .restart local v16    # "i":I
    goto :goto_15a

    .line 2238
    .end local v13    # "lastIndex":I
    .end local v16    # "i":I
    .restart local v19    # "lastIndex":I
    :cond_154
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v13, v19

    .line 2253
    .end local v19    # "lastIndex":I
    .restart local v13    # "lastIndex":I
    :goto_15a
    invoke-virtual {v15, v13}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    .line 2254
    .end local v6    # "blockEndLines":[I
    .end local v7    # "blockIndices":[I
    .end local v9    # "numberOfBlocks":I
    .end local v10    # "startIndexToFindAvailableRenderNode":I
    .end local v11    # "indexFirstChangedBlock":I
    .end local v12    # "blockSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v13    # "lastIndex":I
    .end local v15    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v18    # "startBlock":I
    move/from16 v7, v17

    goto :goto_169

    .line 2256
    .end local v17    # "firstLine":I
    .end local v20    # "lineRange":J
    .local v11, "lineRange":J
    .local v13, "firstLine":I
    :cond_160
    move-wide/from16 v20, v11

    move/from16 v17, v13

    .end local v11    # "lineRange":J
    .end local v13    # "firstLine":I
    .restart local v17    # "firstLine":I
    .restart local v20    # "lineRange":J
    move/from16 v7, v17

    .end local v17    # "firstLine":I
    .local v7, "firstLine":I
    invoke-virtual {v2, v1, v7, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 2259
    :goto_169
    if-eqz p8, :cond_17b

    .line 2260
    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object v0, v2

    move v8, v14

    move-object/from16 v2, p3

    .end local v14    # "lastLine":I
    .local v8, "lastLine":I
    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    goto :goto_17c

    .line 2259
    .end local v8    # "lastLine":I
    .restart local v14    # "lastLine":I
    :cond_17b
    move v8, v14

    .line 2263
    .end local v14    # "lastLine":I
    .restart local v8    # "lastLine":I
    :goto_17c
    return-void
.end method

.method private greylist-max-o drawHardwareAcceleratedInner(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I[I[IIII)I
    .registers 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I
    .param p6, "blockEndLines"    # [I
    .param p7, "blockIndices"    # [I
    .param p8, "blockInfoIndex"    # I
    .param p9, "numberOfBlocks"    # I
    .param p10, "startIndexToFindAvailableRenderNode"    # I

    .line 2269
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    aget v4, p6, p8

    .line 2270
    .local v4, "blockEndLine":I
    aget v0, v3, p8

    .line 2272
    .local v0, "blockIndex":I
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v0, v5, :cond_10

    move v5, v6

    goto :goto_11

    :cond_10
    const/4 v5, 0x0

    .line 2273
    .local v5, "blockIsInvalid":Z
    :goto_11
    if-eqz v5, :cond_2d

    .line 2274
    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct {v1, v3, v8, v9}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v0

    .line 2277
    aput v0, v3, p8

    .line 2278
    iget-object v10, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v10, v10, v0

    if-eqz v10, :cond_29

    .line 2279
    iget-object v10, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v10, v10, v0

    iput-boolean v6, v10, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2281
    :cond_29
    add-int/lit8 v9, v0, 0x1

    move v10, v0

    .end local p10    # "startIndexToFindAvailableRenderNode":I
    .local v9, "startIndexToFindAvailableRenderNode":I
    goto :goto_32

    .line 2273
    .end local v9    # "startIndexToFindAvailableRenderNode":I
    .restart local p10    # "startIndexToFindAvailableRenderNode":I
    :cond_2d
    move/from16 v8, p9

    move/from16 v9, p10

    move v10, v0

    .line 2284
    .end local v0    # "blockIndex":I
    .end local p10    # "startIndexToFindAvailableRenderNode":I
    .restart local v9    # "startIndexToFindAvailableRenderNode":I
    .local v10, "blockIndex":I
    :goto_32
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    if-nez v0, :cond_54

    .line 2285
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    new-instance v11, Landroid/widget/Editor$TextRenderNode;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Text "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/Editor$TextRenderNode;-><init>(Ljava/lang/String;)V

    aput-object v11, v0, v10

    .line 2288
    :cond_54
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/widget/Editor$TextRenderNode;->needsRecord()Z

    move-result v11

    .line 2289
    .local v11, "blockDisplayListIsInvalid":Z
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iget-object v12, v0, Landroid/widget/Editor$TextRenderNode;->renderNode:Landroid/graphics/RenderNode;

    .line 2290
    .local v12, "blockDisplayList":Landroid/graphics/RenderNode;
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iget-boolean v0, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    if-nez v0, :cond_71

    if-eqz v11, :cond_6d

    goto :goto_71

    :cond_6d
    move/from16 v16, v5

    goto/16 :goto_fc

    .line 2291
    :cond_71
    :goto_71
    if-nez p8, :cond_75

    .line 2292
    const/4 v0, 0x0

    goto :goto_7a

    :cond_75
    add-int/lit8 v0, p8, -0x1

    aget v0, p6, v0

    add-int/2addr v0, v6

    :goto_7a
    move v6, v0

    .line 2293
    .local v6, "blockBeginLine":I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 2294
    .local v13, "top":I
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v14

    .line 2295
    .local v14, "bottom":I
    const/4 v0, 0x0

    .line 2296
    .local v0, "left":I
    iget-object v15, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    .line 2297
    .local v15, "right":I
    iget-object v7, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 2298
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 2299
    .local v7, "min":F
    const/16 v16, 0x1

    .line 2300
    .local v16, "max":F
    move/from16 v17, v6

    move/from16 p10, v0

    move/from16 v0, v16

    move/from16 v3, v17

    .end local v16    # "max":F
    .local v0, "max":F
    .local v3, "line":I
    .local p10, "left":I
    :goto_9f
    if-gt v3, v4, :cond_b8

    .line 2301
    move/from16 v16, v5

    .end local v5    # "blockIsInvalid":Z
    .local v16, "blockIsInvalid":Z
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 2302
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2300
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v16

    goto :goto_9f

    .end local v16    # "blockIsInvalid":Z
    .restart local v5    # "blockIsInvalid":Z
    :cond_b8
    move/from16 v16, v5

    .line 2304
    .end local v3    # "line":I
    .end local v5    # "blockIsInvalid":Z
    .restart local v16    # "blockIsInvalid":Z
    float-to-int v3, v7

    .line 2305
    .end local p10    # "left":I
    .local v3, "left":I
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v0

    float-to-int v15, v5

    goto :goto_c6

    .line 2297
    .end local v3    # "left":I
    .end local v7    # "min":F
    .end local v16    # "blockIsInvalid":Z
    .local v0, "left":I
    .restart local v5    # "blockIsInvalid":Z
    :cond_c0
    move/from16 p10, v0

    move/from16 v16, v5

    .end local v0    # "left":I
    .end local v5    # "blockIsInvalid":Z
    .restart local v16    # "blockIsInvalid":Z
    .restart local p10    # "left":I
    move/from16 v3, p10

    .line 2309
    .end local p10    # "left":I
    .restart local v3    # "left":I
    :goto_c6
    if-eqz v11, :cond_f2

    .line 2310
    sub-int v0, v15, v3

    sub-int v5, v14, v13

    invoke-virtual {v12, v0, v5}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v5

    .line 2315
    .local v5, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    neg-int v0, v3

    int-to-float v0, v0

    neg-int v7, v13

    int-to-float v7, v7

    :try_start_d4
    invoke-virtual {v5, v0, v7}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 2316
    invoke-virtual {v2, v5, v6, v4}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 2317
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->isDirty:Z
    :try_end_e1
    .catchall {:try_start_d4 .. :try_end_e1} :catchall_e9

    .line 2321
    invoke-virtual {v12}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2323
    invoke-virtual {v12, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 2324
    const/4 v7, 0x0

    goto :goto_f3

    .line 2321
    :catchall_e9
    move-exception v0

    invoke-virtual {v12}, Landroid/graphics/RenderNode;->endRecording()V

    .line 2323
    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 2324
    throw v0

    .line 2309
    .end local v5    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    :cond_f2
    const/4 v7, 0x0

    .line 2328
    :goto_f3
    invoke-virtual {v12, v3, v13, v15, v14}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 2329
    iget-object v0, v1, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v0, v0, v10

    iput-boolean v7, v0, Landroid/widget/Editor$TextRenderNode;->needsToBeShifted:Z

    .line 2331
    .end local v3    # "left":I
    .end local v6    # "blockBeginLine":I
    .end local v13    # "top":I
    .end local v14    # "bottom":I
    .end local v15    # "right":I
    :goto_fc
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-virtual {v0, v12}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 2332
    return v9
.end method

.method private blacklist drawLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p5, "selectionHighlight"    # Landroid/graphics/Path;
    .param p6, "selectionHighlightPaint"    # Landroid/graphics/Paint;
    .param p7, "cursorOffsetVertical"    # I
    .param p8, "shouldDrawHighlightsOnTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "IZ)V"
        }
    .end annotation

    .line 2159
    .local p3, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p4, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2160
    invoke-direct/range {p0 .. p8}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V

    goto :goto_1b

    .line 2164
    :cond_12
    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    .local p1, "layout":Landroid/text/Layout;
    .local p2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    .line 2167
    .local p1, "canvas":Landroid/graphics/Canvas;
    .local p2, "layout":Landroid/text/Layout;
    :goto_1b
    return-void
.end method

.method private greylist-max-o ensureNoSelectionIfNonSelectable()V
    .registers 4

    .line 1668
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1669
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1670
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 1669
    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1672
    :cond_27
    return-void
.end method

.method private greylist-max-o extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .registers 15
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .line 1952
    const/4 v0, 0x0

    if-eqz p1, :cond_af

    if-nez p5, :cond_7

    goto/16 :goto_af

    .line 1956
    :cond_7
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1957
    .local v1, "content":Ljava/lang/CharSequence;
    if-nez v1, :cond_10

    .line 1958
    return v0

    .line 1961
    :cond_10
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_6f

    .line 1962
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1963
    .local v2, "N":I
    if-gez p2, :cond_22

    .line 1964
    const/4 v4, -0x1

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1965
    const/4 p2, 0x0

    .line 1966
    move p3, v2

    goto :goto_5c

    .line 1970
    :cond_22
    add-int/2addr p3, p4

    .line 1972
    instance-of v4, v1, Landroid/text/Spanned;

    if-eqz v4, :cond_48

    .line 1973
    move-object v4, v1

    check-cast v4, Landroid/text/Spanned;

    .line 1974
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v5, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1976
    .local v5, "spans":[Ljava/lang/Object;
    array-length v6, v5

    .line 1977
    .local v6, "i":I
    :goto_31
    if-lez v6, :cond_48

    .line 1978
    add-int/lit8 v6, v6, -0x1

    .line 1979
    aget-object v7, v5, v6

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1980
    .local v7, "j":I
    if-ge v7, p2, :cond_3e

    move p2, v7

    .line 1981
    :cond_3e
    aget-object v8, v5, v6

    invoke-interface {v4, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 1982
    if-le v7, p3, :cond_47

    move p3, v7

    .line 1983
    .end local v7    # "j":I
    :cond_47
    goto :goto_31

    .line 1985
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    .end local v6    # "i":I
    :cond_48
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1986
    sub-int v4, p3, p4

    iput v4, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1988
    if-le p2, v2, :cond_52

    .line 1989
    move p2, v2

    goto :goto_55

    .line 1990
    :cond_52
    if-gez p2, :cond_55

    .line 1991
    const/4 p2, 0x0

    .line 1993
    :cond_55
    :goto_55
    if-le p3, v2, :cond_59

    .line 1994
    move p3, v2

    goto :goto_5c

    .line 1995
    :cond_59
    if-gez p3, :cond_5c

    .line 1996
    const/4 p3, 0x0

    .line 1999
    :cond_5c
    :goto_5c
    iget v4, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_68

    .line 2000
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_6e

    .line 2003
    :cond_68
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2006
    .end local v2    # "N":I
    :goto_6e
    goto :goto_77

    .line 2007
    :cond_6f
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2008
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 2009
    const-string v2, ""

    iput-object v2, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2011
    :goto_77
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2012
    const/16 v2, 0x800

    invoke-static {v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_87

    .line 2013
    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2015
    :cond_87
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 2016
    iget v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/2addr v2, v3

    iput v2, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2018
    :cond_94
    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 2019
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 2020
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 2021
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p5, Landroid/view/inputmethod/ExtractedText;->hint:Ljava/lang/CharSequence;

    .line 2022
    return v3

    .line 1953
    .end local v1    # "content":Ljava/lang/CharSequence;
    :cond_af
    :goto_af
    return v0
.end method

.method private greylist-max-o extractedTextModeWillBeStarted()Z
    .registers 4

    .line 2648
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 2649
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2650
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 2652
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_17
    return v1
.end method

.method private greylist-max-o findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;
    .registers 10
    .param p1, "suggestionSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    .line 3424
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 3425
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_13

    .line 3427
    iget-object v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    return-object v1

    .line 3431
    :cond_13
    iget v1, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    iget v2, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    const-class v3, Landroid/text/style/SuggestionSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 3433
    .local v1, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_43

    aget-object v4, v1, v3

    .line 3434
    .local v4, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 3435
    .local v5, "start":I
    iget v6, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-eq v5, v6, :cond_2e

    .line 3436
    goto :goto_40

    .line 3438
    :cond_2e
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 3439
    .local v6, "end":I
    iget v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    if-eq v6, v7, :cond_37

    .line 3440
    goto :goto_40

    .line 3442
    :cond_37
    iget-object v7, p1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v4, v7}, Landroid/text/style/SuggestionSpan;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 3443
    return-object v4

    .line 3433
    .end local v4    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3446
    :cond_43
    const/4 v2, 0x0

    return-object v2
.end method

.method private greylist-max-o getAvailableDisplayListIndex([III)I
    .registers 9
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .line 2337
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v0, v0

    .line 2338
    .local v0, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_19

    .line 2339
    const/4 v2, 0x0

    .line 2340
    .local v2, "blockIndexFound":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_8
    if-ge v3, p2, :cond_13

    .line 2341
    aget v4, p1, v3

    if-ne v4, v1, :cond_10

    .line 2342
    const/4 v2, 0x1

    .line 2343
    goto :goto_13

    .line 2340
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2346
    .end local v3    # "j":I
    :cond_13
    :goto_13
    if-eqz v2, :cond_18

    .line 2338
    .end local v2    # "blockIndexFound":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2347
    .restart local v2    # "blockIndexFound":Z
    :cond_18
    return v1

    .line 2351
    .end local v1    # "i":I
    .end local v2    # "blockIndexFound":Z
    :cond_19
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/Editor$TextRenderNode;

    iput-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    .line 2352
    return v0
.end method

.method private greylist-max-o getCharClusterRange(I)J
    .registers 7
    .param p1, "offset"    # I

    .line 1386
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1387
    .local v0, "textLength":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1c

    .line 1388
    invoke-direct {p0, p1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    .line 1389
    .local v2, "clusterEndOffset":I
    nop

    .line 1390
    invoke-direct {p0, v2, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    .line 1389
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3

    .line 1392
    .end local v2    # "clusterEndOffset":I
    :cond_1c
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_2e

    .line 1393
    invoke-direct {p0, p1, v1}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v1

    .line 1394
    .local v1, "clusterStartOffset":I
    nop

    .line 1395
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor;->getNextCursorOffset(IZ)I

    move-result v2

    .line 1394
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 1397
    .end local v1    # "clusterStartOffset":I
    :cond_2e
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    return-wide v1
.end method

.method private greylist-max-o getErrorX()I
    .registers 7

    .line 907
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 909
    .local v0, "scale":F
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 911
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 914
    .local v2, "layoutDirection":I
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_54

    .line 917
    if-eqz v1, :cond_35

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_35

    .line 922
    :pswitch_23
    if-eqz v1, :cond_27

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_27
    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v5, v3

    .line 923
    .local v5, "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v5

    .local v3, "errorX":I
    goto :goto_52

    .line 917
    .end local v3    # "errorX":I
    .end local v5    # "offset":I
    :cond_35
    :goto_35
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v5, v3

    .line 918
    .restart local v5    # "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 919
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v5

    .line 920
    .restart local v3    # "errorX":I
    nop

    .line 926
    :goto_52
    return v3

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method

.method private greylist-max-o getErrorY()I
    .registers 11

    .line 938
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 939
    .local v0, "compoundPaddingTop":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 940
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 942
    .local v1, "vspace":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 944
    .local v2, "dr":Landroid/widget/TextView$Drawables;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v3

    .line 946
    .local v3, "layoutDirection":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_58

    .line 949
    if-eqz v2, :cond_33

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_33

    .line 952
    :pswitch_2e
    if-eqz v2, :cond_32

    iget v4, v2, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .local v4, "height":I
    :cond_32
    goto :goto_34

    .line 950
    :cond_33
    :goto_33
    nop

    .line 956
    :goto_34
    sub-int v5, v1, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    .line 962
    .local v5, "icontop":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 963
    .local v6, "scale":F
    add-int v7, v5, v4

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method

.method private blacklist getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .line 1845
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private greylist-max-o getLastTapPosition()I
    .registers 3

    .line 1715
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_23

    .line 1716
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1717
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_23

    .line 1719
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_22

    .line 1720
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1722
    :cond_22
    return v0

    .line 1726
    .end local v0    # "lastTapPosition":I
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getLastTouchOffsets()J
    .registers 6

    .line 1557
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 1558
    .local v0, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 1559
    .local v1, "minOffset":I
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v2

    .line 1560
    .local v2, "maxOffset":I
    invoke-static {v1, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private blacklist getMagnifierAnimator()Landroid/widget/Editor$MagnifierMotionAnimator;
    .registers 5

    .line 555
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    if-nez v0, :cond_20

    .line 558
    iget-boolean v0, p0, Landroid/widget/Editor;->mNewMagnifierEnabled:Z

    if-eqz v0, :cond_d

    .line 559
    invoke-direct {p0}, Landroid/widget/Editor;->createBuilderWithInlineMagnifierDefaults()Landroid/widget/Magnifier$Builder;

    move-result-object v0

    goto :goto_13

    .line 560
    :cond_d
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/Magnifier;->createBuilderWithOldMagnifierDefaults(Landroid/view/View;)Landroid/widget/Magnifier$Builder;

    move-result-object v0

    :goto_13
    nop

    .line 561
    .local v0, "builder":Landroid/widget/Magnifier$Builder;
    new-instance v1, Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-virtual {v0}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/Editor$MagnifierMotionAnimator;-><init>(Landroid/widget/Magnifier;Landroid/widget/Editor-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    .line 563
    .end local v0    # "builder":Landroid/widget/Magnifier$Builder;
    :cond_20
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierAnimator:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-object v0
.end method

.method private greylist-max-o getNextCursorOffset(IZ)I
    .registers 8
    .param p1, "offset"    # I
    .param p2, "findAfterGivenOffset"    # Z

    .line 1371
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1372
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_9

    return p1

    .line 1373
    :cond_9
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1374
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    .line 1376
    .local v1, "offsetTransformed":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    if-ne p2, v3, :cond_1b

    .line 1377
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v3

    .local v3, "nextCursor":I
    goto :goto_1f

    .line 1379
    .end local v3    # "nextCursor":I
    :cond_1b
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v3

    .line 1382
    .restart local v3    # "nextCursor":I
    :goto_1f
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v2

    return v2
.end method

.method private greylist-max-o getParagraphsRange(II)J
    .registers 13
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I

    .line 1305
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 1307
    .local v0, "startOffsetTransformed":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v2

    .line 1309
    .local v2, "endOffsetTransformed":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 1310
    .local v3, "layout":Landroid/text/Layout;
    if-nez v3, :cond_1b

    .line 1311
    const/4 v1, -0x1

    invoke-static {v1, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 1313
    :cond_1b
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1314
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 1316
    .local v5, "minLine":I
    :goto_23
    const/16 v6, 0xa

    if-lez v5, :cond_3a

    .line 1317
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 1318
    .local v7, "prevLineEndOffset":I
    add-int/lit8 v8, v7, -0x1

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_36

    .line 1319
    goto :goto_3a

    .line 1321
    :cond_36
    nop

    .end local v7    # "prevLineEndOffset":I
    add-int/lit8 v5, v5, -0x1

    .line 1322
    goto :goto_23

    .line 1323
    :cond_3a
    :goto_3a
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1325
    .local v7, "maxLine":I
    :goto_3e
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v1

    if-ge v7, v8, :cond_56

    .line 1326
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 1327
    .local v8, "lineEndOffset":I
    add-int/lit8 v9, v8, -0x1

    invoke-interface {v4, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_52

    .line 1328
    goto :goto_56

    .line 1330
    :cond_52
    nop

    .end local v8    # "lineEndOffset":I
    add-int/lit8 v7, v7, 0x1

    .line 1331
    goto :goto_3e

    .line 1332
    :cond_56
    :goto_56
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    invoke-virtual {v6, v8, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v6

    .line 1334
    .local v6, "paragraphStart":I
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/widget/TextView;->transformedToOriginal(II)I

    move-result v1

    .line 1336
    .local v1, "paragraphEnd":I
    invoke-static {v6, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8
.end method

.method private greylist-max-o getPositionListener()Landroid/widget/Editor$PositionListener;
    .registers 3

    .line 1423
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_c

    .line 1424
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 1426
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private greylist-max-o getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;
    .registers 2

    .line 2556
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-nez v0, :cond_b

    .line 2557
    new-instance v0, Landroid/widget/SelectionActionModeHelper;

    invoke-direct {v0, p0}, Landroid/widget/SelectionActionModeHelper;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    .line 2559
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    return-object v0
.end method

.method private greylist-max-o getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 3021
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090160

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3024
    .local v0, "shadowView":Landroid/widget/TextView;
    if-eqz v0, :cond_63

    .line 3028
    sub-int v1, p2, p1

    const/16 v2, 0x14

    if-le v1, v2, :cond_22

    .line 3029
    add-int/lit8 v1, p1, 0x14

    invoke-direct {p0, v1}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v1

    .line 3030
    .local v1, "range":J
    invoke-static {v1, v2}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p2

    .line 3032
    .end local v1    # "range":J
    :cond_22
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3033
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3034
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3036
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 3037
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 3039
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3042
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3043
    .local v3, "size":I
    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 3045
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 3046
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 3047
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 3025
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v3    # "size":I
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to inflate text drag thumbnail"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o getWordEnd(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 1183
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 1184
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1186
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationEnd(I)I

    move-result v0

    goto :goto_23

    .line 1189
    :cond_1b
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getNextWordEndOnTwoWordBoundary(I)I

    move-result v0

    .line 1191
    :goto_23
    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 1192
    return p1

    .line 1194
    :cond_27
    return v0
.end method

.method private greylist-max-o getWordIteratorWithText()Landroid/text/method/WordIterator;
    .registers 5

    .line 1354
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    if-nez v0, :cond_14

    .line 1355
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1358
    :cond_14
    iget-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    if-eqz v0, :cond_2a

    .line 1363
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1364
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1365
    iput-boolean v3, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1367
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_2a
    iget-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method private greylist-max-o getWordStart(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 1168
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 1169
    .local v0, "retOffset":I
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1171
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPunctuationBeginning(I)I

    move-result v0

    goto :goto_23

    .line 1174
    :cond_1b
    invoke-direct {p0}, Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->getPrevWordBeginningOnTwoWordsBoundary(I)I

    move-result v0

    .line 1176
    :goto_23
    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 1177
    return p1

    .line 1179
    :cond_27
    return v0
.end method

.method private greylist-max-o hideCursorControllers()V
    .registers 2

    .line 1050
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 1051
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1053
    :cond_14
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 1055
    :cond_19
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 1056
    return-void
.end method

.method private greylist-max-o hideError()V
    .registers 2

    .line 889
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_11

    .line 890
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 891
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 895
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 896
    return-void
.end method

.method private greylist-max-o hideSpanControllers()V
    .registers 2

    .line 1040
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_9

    .line 1041
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 1043
    :cond_9
    return-void
.end method

.method private greylist-max-o invalidateActionMode()V
    .registers 2

    .line 2550
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2551
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2553
    :cond_9
    return-void
.end method

.method private greylist-max-o isCursorInsideEasyCorrectionSpan()Z
    .registers 6

    .line 2723
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 2724
    .local v0, "spannable":Landroid/text/Spannable;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2725
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-class v3, Landroid/text/style/SuggestionSpan;

    .line 2724
    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    .line 2726
    .local v1, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v3, v1

    if-ge v2, v3, :cond_2e

    .line 2727
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2b

    .line 2728
    return v4

    .line 2726
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2731
    .end local v2    # "i":I
    :cond_2e
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o isCursorVisible()Z
    .registers 2

    .line 980
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o isOffsetVisible(I)Z
    .registers 10
    .param p1, "offset"    # I

    .line 1435
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1436
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    .line 1438
    :cond_a
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1439
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    .line 1440
    .local v1, "offsetTransformed":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1441
    .local v2, "line":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 1442
    .local v3, "lineBottom":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    .line 1443
    .local v4, "primaryHorizontal":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1444
    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1445
    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    .line 1443
    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v5

    return v5
.end method

.method private greylist-max-o isPositionOnText(FF)Z
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1452
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1453
    .local v0, "layout":Landroid/text/Layout;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1455
    :cond_a
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v2

    .line 1456
    .local v2, "line":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 1458
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1f

    return v1

    .line 1459
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_28

    return v1

    .line 1460
    :cond_28
    const/4 v1, 0x1

    return v1
.end method

.method private static greylist-max-o isValidRange(Ljava/lang/CharSequence;II)Z
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 7502
    if-ltz p1, :cond_c

    if-gt p1, p2, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private synthetic blacklist lambda$setAssistContextMenuItems$1(Landroid/widget/Editor$AssistantCallbackHelper;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "helper"    # Landroid/widget/Editor$AssistantCallbackHelper;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 3153
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 3154
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SelectionActionModeHelper;->onSelectionAction(ILjava/lang/String;)V

    .line 3156
    iget-object v0, p0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p2}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 3157
    return v1

    .line 3159
    :cond_1d
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v2, 0x1020041

    if-ne v0, v2, :cond_2d

    invoke-virtual {p1, p2}, Landroid/widget/Editor$AssistantCallbackHelper;->onAssistMenuItemClicked(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3160
    return v1

    .line 3162
    :cond_2d
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$startActionModeInternal$0()V
    .registers 1

    .line 2631
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method

.method static varargs blacklist logCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "msgArgs"    # [Ljava/lang/Object;

    .line 8409
    const-string v0, "Editor"

    if-nez p1, :cond_8

    .line 8410
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 8412
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8414
    :goto_26
    return-void
.end method

.method private greylist-max-o needsToSelectAllToSelectWordOrParagraph()Z
    .registers 6

    .line 1198
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1202
    return v1

    .line 1205
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 1206
    .local v0, "inputType":I
    and-int/lit8 v2, v0, 0xf

    .line 1207
    .local v2, "klass":I
    and-int/lit16 v3, v0, 0xff0

    .line 1210
    .local v3, "variation":I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_30

    const/4 v4, 0x3

    if-eq v2, v4, :cond_30

    const/4 v4, 0x4

    if-eq v2, v4, :cond_30

    const/16 v4, 0x10

    if-eq v3, v4, :cond_30

    const/16 v4, 0x20

    if-eq v3, v4, :cond_30

    const/16 v4, 0xd0

    if-eq v3, v4, :cond_30

    const/16 v4, 0xb0

    if-ne v3, v4, :cond_2e

    goto :goto_30

    .line 1219
    :cond_2e
    const/4 v1, 0x0

    return v1

    .line 1217
    :cond_30
    :goto_30
    return v1
.end method

.method private blacklist registerOnBackInvokedCallback()V
    .registers 5

    .line 801
    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-eqz v0, :cond_5

    .line 802
    return-void

    .line 804
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 805
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_24

    .line 806
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 807
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v1, v2, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    .line 811
    :cond_24
    return-void
.end method

.method private greylist-max-o replaceWithSuggestion(Landroid/widget/Editor$SuggestionInfo;)V
    .registers 24
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;

    .line 3450
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-direct {v0, v2}, Landroid/widget/Editor;->findEquivalentSuggestionSpan(Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v2

    .line 3452
    .local v2, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-nez v2, :cond_d

    .line 3454
    return-void

    .line 3456
    :cond_d
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    .line 3457
    .local v3, "editable":Landroid/text/Editable;
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 3458
    .local v4, "spanStart":I
    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 3459
    .local v5, "spanEnd":I
    if-ltz v4, :cond_d7

    if-gt v5, v4, :cond_2b

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move/from16 v21, v4

    move/from16 v20, v5

    goto/16 :goto_df

    .line 3464
    :cond_2b
    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    .line 3466
    .local v6, "originalText":Ljava/lang/String;
    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v3, v4, v5, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/SuggestionSpan;

    .line 3468
    .local v7, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v8, v7

    .line 3469
    .local v8, "length":I
    new-array v9, v8, [I

    .line 3470
    .local v9, "suggestionSpansStarts":[I
    new-array v10, v8, [I

    .line 3471
    .local v10, "suggestionSpansEnds":[I
    new-array v11, v8, [I

    .line 3472
    .local v11, "suggestionSpansFlags":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3f
    if-ge v12, v8, :cond_69

    .line 3473
    aget-object v13, v7, v12

    .line 3474
    .local v13, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aput v14, v9, v12

    .line 3475
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    aput v14, v10, v12

    .line 3476
    invoke-interface {v3, v13}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v14

    aput v14, v11, v12

    .line 3479
    invoke-virtual {v13}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v14

    .line 3480
    .local v14, "suggestionSpanFlags":I
    and-int/lit8 v15, v14, 0xa

    if-eqz v15, :cond_66

    .line 3481
    and-int/lit8 v14, v14, -0x3

    .line 3482
    and-int/lit8 v14, v14, -0x9

    .line 3483
    and-int/lit8 v14, v14, -0x2

    .line 3484
    invoke-virtual {v13, v14}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 3472
    .end local v13    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v14    # "suggestionSpanFlags":I
    :cond_66
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f

    .line 3489
    .end local v12    # "i":I
    :cond_69
    iget v12, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 3490
    .local v12, "suggestionStart":I
    iget v13, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 3491
    .local v13, "suggestionEnd":I
    iget-object v14, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v14, v12, v13}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 3492
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3493
    .local v14, "suggestion":Ljava/lang/String;
    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v4, v5, v14}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 3495
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v15

    .line 3496
    .local v15, "suggestions":[Ljava/lang/String;
    move-object/from16 v16, v2

    .end local v2    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .local v16, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    iget v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    aput-object v6, v15, v2

    .line 3499
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v17, v5, v4

    sub-int v2, v2, v17

    .line 3500
    .local v2, "lengthDelta":I
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "i":I
    :goto_92
    if-ge v1, v8, :cond_c9

    .line 3504
    move/from16 v17, v1

    .end local v1    # "i":I
    .local v17, "i":I
    aget v1, v9, v17

    if-gt v1, v4, :cond_b6

    aget v1, v10, v17

    if-lt v1, v5, :cond_b6

    .line 3505
    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move/from16 v18, v2

    .end local v2    # "lengthDelta":I
    .local v18, "lengthDelta":I
    aget-object v2, v7, v17

    move-object/from16 v19, v3

    .end local v3    # "editable":Landroid/text/Editable;
    .local v19, "editable":Landroid/text/Editable;
    aget v3, v9, v17

    aget v20, v10, v17

    move/from16 v21, v4

    .end local v4    # "spanStart":I
    .local v21, "spanStart":I
    add-int v4, v20, v18

    move/from16 v20, v5

    .end local v5    # "spanEnd":I
    .local v20, "spanEnd":I
    aget v5, v11, v17

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    goto :goto_be

    .line 3504
    .end local v18    # "lengthDelta":I
    .end local v19    # "editable":Landroid/text/Editable;
    .end local v20    # "spanEnd":I
    .end local v21    # "spanStart":I
    .restart local v2    # "lengthDelta":I
    .restart local v3    # "editable":Landroid/text/Editable;
    .restart local v4    # "spanStart":I
    .restart local v5    # "spanEnd":I
    :cond_b6
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v21, v4

    move/from16 v20, v5

    .line 3500
    .end local v2    # "lengthDelta":I
    .end local v3    # "editable":Landroid/text/Editable;
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    .restart local v18    # "lengthDelta":I
    .restart local v19    # "editable":Landroid/text/Editable;
    .restart local v20    # "spanEnd":I
    .restart local v21    # "spanStart":I
    :goto_be
    add-int/lit8 v1, v17, 0x1

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v5, v20

    move/from16 v4, v21

    .end local v17    # "i":I
    .restart local v1    # "i":I
    goto :goto_92

    .end local v18    # "lengthDelta":I
    .end local v19    # "editable":Landroid/text/Editable;
    .end local v20    # "spanEnd":I
    .end local v21    # "spanStart":I
    .restart local v2    # "lengthDelta":I
    .restart local v3    # "editable":Landroid/text/Editable;
    .restart local v4    # "spanStart":I
    .restart local v5    # "spanEnd":I
    :cond_c9
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v20, v5

    .line 3510
    .end local v1    # "i":I
    .end local v2    # "lengthDelta":I
    .end local v5    # "spanEnd":I
    .restart local v18    # "lengthDelta":I
    .restart local v20    # "spanEnd":I
    add-int v5, v20, v18

    .line 3511
    .local v5, "newCursorPosition":I
    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    .line 3512
    return-void

    .line 3459
    .end local v6    # "originalText":Ljava/lang/String;
    .end local v7    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v8    # "length":I
    .end local v9    # "suggestionSpansStarts":[I
    .end local v10    # "suggestionSpansEnds":[I
    .end local v11    # "suggestionSpansFlags":[I
    .end local v12    # "suggestionStart":I
    .end local v13    # "suggestionEnd":I
    .end local v14    # "suggestion":Ljava/lang/String;
    .end local v15    # "suggestions":[Ljava/lang/String;
    .end local v16    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v18    # "lengthDelta":I
    .end local v20    # "spanEnd":I
    .local v2, "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .local v5, "spanEnd":I
    :cond_d7
    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move/from16 v21, v4

    move/from16 v20, v5

    .line 3461
    .end local v2    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v3    # "editable":Landroid/text/Editable;
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    .restart local v16    # "targetSuggestionSpan":Landroid/text/style/SuggestionSpan;
    .restart local v19    # "editable":Landroid/text/Editable;
    .restart local v20    # "spanEnd":I
    .restart local v21    # "spanStart":I
    :goto_df
    return-void
.end method

.method private greylist-max-o resumeBlink()V
    .registers 2

    .line 1101
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_9

    .line 1102
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1106
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1107
    return-void
.end method

.method private greylist-max-o selectCurrentParagraph()Z
    .registers 10

    .line 1279
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1280
    return v1

    .line 1283
    :cond_a
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1284
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 1287
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 1288
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1289
    .local v0, "minLastTouchOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 1291
    .local v4, "maxLastTouchOffset":I
    invoke-direct {p0, v0, v4}, Landroid/widget/Editor;->getParagraphsRange(II)J

    move-result-wide v5

    .line 1292
    .local v5, "paragraphsRange":J
    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 1293
    .local v7, "start":I
    invoke-static {v5, v6}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    .line 1294
    .local v8, "end":I
    if-ge v7, v8, :cond_3e

    .line 1295
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1296
    const/4 v1, 0x1

    return v1

    .line 1298
    :cond_3e
    return v1
.end method

.method private greylist-max-o selectCurrentWordAndStartDrag()Z
    .registers 3

    .line 2569
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 2570
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2572
    :cond_b
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2573
    return v1

    .line 2575
    :cond_13
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2576
    return v1

    .line 2578
    :cond_1a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2580
    return v1

    .line 2582
    :cond_29
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2583
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 2585
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o sendUpdateSelection()V
    .registers 8

    .line 2074
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v0, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v0, :cond_46

    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-nez v0, :cond_46

    .line 2076
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2077
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_46

    .line 2078
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 2079
    .local v3, "selectionStart":I
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 2080
    .local v4, "selectionEnd":I
    const/4 v0, -0x1

    .line 2081
    .local v0, "candStart":I
    const/4 v2, -0x1

    .line 2082
    .local v2, "candEnd":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_3f

    .line 2083
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    .line 2084
    .local v5, "sp":Landroid/text/Spannable;
    invoke-static {v5}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 2085
    invoke-static {v5}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    move v5, v0

    move v6, v2

    goto :goto_41

    .line 2082
    .end local v5    # "sp":Landroid/text/Spannable;
    :cond_3f
    move v5, v0

    move v6, v2

    .line 2089
    .end local v0    # "candStart":I
    .end local v2    # "candEnd":I
    .local v5, "candStart":I
    .local v6, "candEnd":I
    :goto_41
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2093
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "selectionStart":I
    .end local v4    # "selectionEnd":I
    .end local v5    # "candStart":I
    .end local v6    # "candEnd":I
    :cond_46
    return-void
.end method

.method private blacklist setAssistContextMenuItems(Landroid/view/Menu;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3144
    nop

    .line 3145
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 3146
    .local v0, "textClassification":Landroid/view/textclassifier/TextClassification;
    if-nez v0, :cond_c

    .line 3147
    return-void

    .line 3150
    :cond_c
    new-instance v1, Landroid/widget/Editor$AssistantCallbackHelper;

    .line 3151
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/Editor$AssistantCallbackHelper;-><init>(Landroid/widget/Editor;Landroid/widget/SelectionActionModeHelper;)V

    .line 3152
    .local v1, "helper":Landroid/widget/Editor$AssistantCallbackHelper;
    new-instance v2, Landroid/widget/Editor$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$$ExternalSyntheticLambda3;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$AssistantCallbackHelper;)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/Editor$AssistantCallbackHelper;->updateAssistMenuItems(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 3164
    return-void
.end method

.method private greylist-max-o setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 877
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 878
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_16

    .line 879
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView$Drawables;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    iput-object v2, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 881
    :cond_16
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 883
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 884
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 885
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 886
    return-void
.end method

.method private greylist-max-o shouldBlink()Z
    .registers 4

    .line 2952
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2953
    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2e

    .line 2955
    :cond_18
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 2956
    .local v0, "start":I
    if-gez v0, :cond_21

    return v1

    .line 2958
    :cond_21
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2959
    .local v2, "end":I
    if-gez v2, :cond_2a

    return v1

    .line 2961
    :cond_2a
    if-ne v0, v2, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1

    .line 2953
    .end local v0    # "start":I
    .end local v2    # "end":I
    :cond_2e
    :goto_2e
    return v1
.end method

.method private greylist-max-o shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1755
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1756
    return v1

    .line 1758
    :cond_a
    iget v0, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    .line 1760
    .local v0, "primaryButtonStateChanged":Z
    :goto_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1761
    .local v3, "action":I
    if-eqz v3, :cond_20

    if-ne v3, v2, :cond_23

    :cond_20
    if-nez v0, :cond_23

    .line 1763
    return v2

    .line 1765
    :cond_23
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    .line 1766
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1767
    return v2

    .line 1769
    :cond_2d
    return v1
.end method

.method private greylist-max-o showError()V
    .registers 9

    .line 826
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 827
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 828
    return-void

    .line 831
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v0, :cond_4e

    .line 832
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 833
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x109016b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 836
    .local v2, "err":Landroid/widget/TextView;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 837
    .local v3, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v7, 0x42480000    # 50.0f

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-direct {v4, v2, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 839
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 842
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v1}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 845
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "err":Landroid/widget/TextView;
    .end local v3    # "scale":F
    :cond_4e
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 846
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 847
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v3

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v4

    const/16 v5, 0x33

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 851
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v2}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    .line 852
    return-void
.end method

.method private greylist-max-o showFloatingToolbar()V
    .registers 6

    .line 1831
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1834
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 1835
    .local v0, "delay":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1840
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateActionModeAsync()V

    .line 1842
    .end local v0    # "delay":I
    :cond_1b
    return-void
.end method

.method private greylist-max-o startDragAndDrop()V
    .registers 9

    .line 1464
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->onSelectionDrag()V

    .line 1467
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1468
    return-void

    .line 1470
    :cond_10
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1471
    .local v0, "start":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1472
    .local v1, "end":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1473
    .local v2, "selectedText":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 1474
    .local v3, "data":Landroid/content/ClipData;
    new-instance v4, Landroid/widget/Editor$DragLocalState;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v4, v5, v0, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 1475
    .local v4, "localState":Landroid/widget/Editor$DragLocalState;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor;->getTextThumbnailBuilder(II)Landroid/view/View$DragShadowBuilder;

    move-result-object v6

    const/16 v7, 0x100

    invoke-virtual {v5, v3, v6, v4, v7}, Landroid/widget/TextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 1477
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1478
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1479
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1481
    :cond_49
    return-void
.end method

.method private greylist-max-o suspendBlink()V
    .registers 2

    .line 1095
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_9

    .line 1096
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1098
    :cond_9
    return-void
.end method

.method private blacklist toggleInsertionActionMode()V
    .registers 2

    .line 1541
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8

    .line 1542
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_b

    .line 1544
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 1546
    :goto_b
    return-void
.end method

.method private greylist-max-o touchPositionIsInSelection()Z
    .registers 7

    .line 1401
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1402
    .local v0, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1404
    .local v1, "selectionEnd":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    .line 1405
    return v2

    .line 1408
    :cond_10
    if-le v0, v1, :cond_20

    .line 1409
    move v3, v0

    .line 1410
    .local v3, "tmp":I
    move v0, v1

    .line 1411
    move v1, v3

    .line 1412
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1415
    .end local v3    # "tmp":I
    :cond_20
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    .line 1416
    .local v3, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v4

    .line 1417
    .local v4, "minOffset":I
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v5

    .line 1419
    .local v5, "maxOffset":I
    if-lt v4, v0, :cond_31

    if-ge v5, v1, :cond_31

    const/4 v2, 0x1

    :cond_31
    return v2
.end method

.method private blacklist unregisterOnBackInvokedCallback()V
    .registers 4

    .line 788
    iget-boolean v0, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    if-nez v0, :cond_5

    .line 789
    return-void

    .line 791
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 792
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_25

    .line 793
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 794
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 795
    invoke-virtual {v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 796
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mBackCallbackRegistered:Z

    .line 798
    :cond_25
    return-void
.end method

.method private greylist-max-o updateCursorPosition(IIF)V
    .registers 10
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "horizontal"    # F

    .line 2866
    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    .line 2867
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p3}, Landroid/widget/Editor;->clampHorizontalPosition(Landroid/graphics/drawable/Drawable;F)I

    move-result v0

    .line 2868
    .local v0, "left":I
    iget-object v1, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2872
    .local v1, "width":I
    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p1, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p2

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2874
    return-void
.end method

.method private greylist-max-o updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1811
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_14

    .line 1812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    goto :goto_14

    .line 1814
    :pswitch_c
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->hideFloatingToolbar(I)V

    .line 1815
    goto :goto_14

    .line 1818
    :pswitch_11
    invoke-direct {p0}, Landroid/widget/Editor;->showFloatingToolbar()V

    .line 1821
    :cond_14
    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method

.method private greylist-max-o updateSpellCheckSpans(IIZ)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .line 1063
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 1064
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    .line 1066
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1067
    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-nez v0, :cond_47

    .line 1068
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1069
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodSuppressingSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1072
    return-void

    .line 1074
    :cond_2f
    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v1, :cond_3e

    if-eqz p3, :cond_3e

    .line 1075
    new-instance v1, Landroid/widget/SpellChecker;

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 1077
    :cond_3e
    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v1, :cond_47

    .line 1078
    iget-object v1, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v1, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 1081
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_47
    return-void
.end method


# virtual methods
.method public greylist-max-o addSpanWatchers(Landroid/text/Spannable;)V
    .registers 7
    .param p1, "text"    # Landroid/text/Spannable;

    .line 3126
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 3128
    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    .line 3129
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3132
    :cond_10
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1c

    .line 3133
    new-instance v1, Landroid/widget/Editor$SpanController;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    .line 3135
    :cond_1c
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3136
    return-void
.end method

.method public blacklist adjustIconSpacing(Landroid/view/ContextMenu;)V
    .registers 8
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .line 3392
    const/4 v0, -0x1

    .line 3393
    .local v0, "width":I
    const/4 v1, -0x1

    .line 3394
    .local v1, "height":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 3395
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3396
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3397
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_14

    .line 3398
    goto :goto_24

    .line 3401
    :cond_14
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3402
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3394
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3405
    .end local v2    # "i":I
    :cond_27
    if-ltz v0, :cond_4c

    if-gez v1, :cond_2c

    goto :goto_4c

    .line 3409
    :cond_2c
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 3410
    .local v2, "paddingDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 3412
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b

    .line 3413
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 3414
    .local v4, "item":Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3415
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_48

    .line 3416
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3412
    .end local v4    # "item":Landroid/view/MenuItem;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 3419
    .end local v3    # "i":I
    :cond_4b
    return-void

    .line 3406
    .end local v2    # "paddingDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_4c
    :goto_4c
    return-void
.end method

.method greylist-max-o adjustInputType(ZZZZ)V
    .registers 7
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .line 1114
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 1115
    if-nez p1, :cond_b

    if-eqz p2, :cond_13

    .line 1116
    :cond_b
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 1119
    :cond_13
    if-eqz p3, :cond_2f

    .line 1120
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_2f

    .line 1123
    :cond_1e
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 1124
    if-eqz p4, :cond_2f

    .line 1125
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 1129
    :cond_2f
    :goto_2f
    return-void
.end method

.method blacklist beforeSetText()V
    .registers 2

    .line 8389
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_5

    return-void

    .line 8390
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->beforeSetText()V

    .line 8391
    return-void
.end method

.method public greylist-max-o beginBatchEdit()V
    .registers 5

    .line 1849
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1850
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1851
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_37

    .line 1852
    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1853
    .local v2, "nesting":I
    if-ne v2, v0, :cond_37

    .line 1854
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1855
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1856
    iget-boolean v3, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v3, :cond_26

    .line 1859
    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1860
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_2d

    .line 1862
    :cond_26
    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1863
    iput v3, v1, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1864
    iput-boolean v0, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1866
    :goto_2d
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->beginBatchEdit()V

    .line 1867
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1870
    .end local v2    # "nesting":I
    :cond_37
    return-void
.end method

.method greylist-max-o canRedo()Z
    .registers 5

    .line 669
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 670
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countRedos([Landroid/content/UndoOwner;)I

    move-result v2

    if-lez v2, :cond_15

    goto :goto_16

    :cond_15
    move v0, v3

    :goto_16
    return v0
.end method

.method greylist-max-o canUndo()Z
    .registers 5

    .line 664
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 665
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-boolean v2, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->countUndos([Landroid/content/UndoOwner;)I

    move-result v2

    if-lez v2, :cond_15

    goto :goto_16

    :cond_15
    move v0, v3

    :goto_16
    return v0
.end method

.method greylist-max-o checkField()Z
    .registers 3

    .line 2594
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    .line 2599
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 2595
    :cond_13
    :goto_13
    const-string v0, "TextView"

    const-string v1, "TextView does not support text selection. Selection cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o createInputContentTypeIfNeeded()V
    .registers 2

    .line 967
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_b

    .line 968
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 970
    :cond_b
    return-void
.end method

.method greylist-max-o createInputMethodStateIfNeeded()V
    .registers 2

    .line 973
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_b

    .line 974
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 976
    :cond_b
    return-void
.end method

.method public greylist-max-o endBatchEdit()V
    .registers 3

    .line 1873
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1874
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1875
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_12

    .line 1876
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1877
    .local v1, "nesting":I
    if-nez v1, :cond_12

    .line 1878
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1881
    .end local v1    # "nesting":I
    :cond_12
    return-void
.end method

.method greylist-max-o ensureEndedBatchEdit()V
    .registers 3

    .line 1884
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1885
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_e

    .line 1886
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1887
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1889
    :cond_e
    return-void
.end method

.method blacklist enterInsertMode(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 8357
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_13

    .line 8358
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 8359
    :cond_a
    new-instance v0, Landroid/widget/Editor$InsertModeController;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Editor$InsertModeController;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    .line 8361
    :cond_13
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertModeController;->enterInsertMode(I)Z

    move-result v0

    return v0
.end method

.method blacklist exitInsertMode()V
    .registers 2

    .line 8368
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_5

    return-void

    .line 8369
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode()V

    .line 8370
    return-void
.end method

.method greylist-max-o extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .registers 9
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .line 1945
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .end local p1    # "request":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local p2    # "outText":Landroid/view/inputmethod/ExtractedText;
    .local v1, "request":Landroid/view/inputmethod/ExtractedTextRequest;
    .local v5, "outText":Landroid/view/inputmethod/ExtractedText;
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result p1

    return p1
.end method

.method greylist-max-o finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .registers 4
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .line 1892
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1893
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->endBatchEdit()V

    .line 1895
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_13

    goto :goto_1d

    .line 1898
    :cond_13
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_25

    .line 1900
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_25

    .line 1896
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1897
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1904
    :cond_25
    :goto_25
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    .line 1907
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_56

    .line 1908
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1909
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    goto :goto_3d

    :cond_39
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    .line 1910
    .local v0, "cursorController":Landroid/widget/Editor$CursorController;
    :goto_3d
    if-eqz v0, :cond_56

    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_56

    .line 1911
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->isCursorBeingModified()Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1912
    invoke-virtual {v1}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1913
    invoke-interface {v0}, Landroid/widget/Editor$CursorController;->show()V

    .line 1916
    .end local v0    # "cursorController":Landroid/widget/Editor$CursorController;
    :cond_56
    return-void
.end method

.method greylist-max-o forgetUndoRedo()V
    .registers 4

    .line 658
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/UndoOwner;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v2, v0, v1

    .line 659
    .local v0, "owners":[Landroid/content/UndoOwner;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetUndos([Landroid/content/UndoOwner;I)I

    .line 660
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->forgetRedos([Landroid/content/UndoOwner;I)I

    .line 661
    return-void
.end method

.method public greylist-max-o getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    .registers 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "prevLine"    # I
    .param p3, "y"    # F

    .line 6565
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 6566
    .local v0, "trueLine":I
    if-eqz p1, :cond_64

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge p2, v1, :cond_64

    .line 6567
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_64

    if-gez p2, :cond_17

    goto :goto_64

    .line 6572
    :cond_17
    sub-int v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_21

    .line 6574
    return v0

    .line 6577
    :cond_21
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 6578
    .local v1, "lineHeight":I
    iget v2, p0, Landroid/widget/Editor;->mLineSlopRatio:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 6579
    .local v2, "slop":I
    iget v3, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    iget v4, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    add-int v5, v1, v2

    .line 6580
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 6579
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v1

    .line 6581
    .end local v2    # "slop":I
    .local v3, "slop":I
    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6583
    .end local v3    # "slop":I
    .restart local v2    # "slop":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v3

    int-to-float v3, v3

    .line 6584
    .local v3, "verticalOffset":F
    if-le v0, p2, :cond_55

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, p3, v4

    if-ltz v4, :cond_55

    .line 6585
    return v0

    .line 6587
    :cond_55
    if-ge v0, p2, :cond_63

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_63

    .line 6588
    return v0

    .line 6590
    :cond_63
    return p2

    .line 6569
    .end local v1    # "lineHeight":I
    .end local v2    # "slop":I
    .end local v3    # "verticalOffset":F
    :cond_64
    :goto_64
    return v0
.end method

.method public greylist-max-o getCursorDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2862
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getDefaultOnReceiveContentListener()Landroid/widget/TextViewOnReceiveContentListener;
    .registers 2

    .line 651
    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    return-object v0
.end method

.method public blacklist getFlagCursorDragFromAnywhereEnabled()Z
    .registers 2

    .line 530
    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    return v0
.end method

.method public blacklist getFlagInsertionHandleGesturesEnabled()Z
    .registers 2

    .line 545
    iget-boolean v0, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    return v0
.end method

.method public greylist-max-o getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .registers 3

    .line 2828
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v0, :cond_6

    .line 2829
    const/4 v0, 0x0

    return-object v0

    .line 2832
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v0, :cond_1c

    .line 2833
    new-instance v0, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 2835
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2836
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2839
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    return-object v0
.end method

.method greylist-max-o getLastUpPositionX()F
    .registers 2

    .line 1549
    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpX()F

    move-result v0

    return v0
.end method

.method greylist-max-o getLastUpPositionY()F
    .registers 2

    .line 1553
    iget-object v0, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v0}, Landroid/widget/EditorTouchState;->getLastUpY()F

    move-result v0

    return v0
.end method

.method public greylist-max-o getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .registers 3

    .line 2845
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v0, :cond_6

    .line 2846
    const/4 v0, 0x0

    return-object v0

    .line 2849
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v0, :cond_1c

    .line 2850
    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 2852
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2853
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2856
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1c
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    return-object v0
.end method

.method greylist-max-o getTextActionMode()Landroid/view/ActionMode;
    .registers 2

    .line 2516
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method greylist-max-o getTextView()Landroid/widget/TextView;
    .registers 2

    .line 2511
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public greylist-max-o getWordIterator()Landroid/text/method/WordIterator;
    .registers 3

    .line 1347
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_11

    .line 1348
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1350
    :cond_11
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method greylist-max-o hasInsertionController()Z
    .registers 2

    .line 2815
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method greylist-max-o hasSelectionController()Z
    .registers 2

    .line 2822
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method greylist-max-o hideCursorAndSpanControllers()V
    .registers 1

    .line 1035
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1036
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 1037
    return-void
.end method

.method greylist-max-o hideFloatingToolbar(I)V
    .registers 5
    .param p1, "duration"    # I

    .line 1824
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_11

    .line 1825
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1826
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 1828
    :cond_11
    return-void
.end method

.method greylist-max-o hideInsertionPointCursorController()V
    .registers 2

    .line 1026
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_9

    .line 1027
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 1029
    :cond_9
    return-void
.end method

.method greylist-max-o invalidateActionModeAsync()V
    .registers 2

    .line 2543
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    .line 2544
    return-void
.end method

.method greylist-max-o invalidateHandlesAndActionMode()V
    .registers 2

    .line 2365
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_9

    .line 2366
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->invalidateHandles()V

    .line 2368
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_12

    .line 2369
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->invalidateHandle()V

    .line 2371
    :cond_12
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_19

    .line 2372
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2374
    :cond_19
    return-void
.end method

.method greylist invalidateTextDisplayList()V
    .registers 4

    .line 2421
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_1a

    .line 2422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 2423
    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    iget-object v1, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2422
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2426
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method greylist-max-o invalidateTextDisplayList(Landroid/text/Layout;II)V
    .registers 16
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2380
    iget-object v0, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    if-eqz v0, :cond_60

    instance-of v0, p1, Landroid/text/DynamicLayout;

    if-eqz v0, :cond_60

    .line 2381
    invoke-static {}, Lcom/android/text/flags/Flags;->insertModeCrashWhenDelete()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2382
    invoke-virtual {v0}, Landroid/widget/TextView;->isOffsetMappingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2385
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 2386
    return-void

    .line 2388
    :cond_1a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2389
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    .line 2390
    .local v0, "startTransformed":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2391
    invoke-virtual {v2, p3, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v1

    .line 2392
    .local v1, "endTransformed":I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 2393
    .local v2, "firstLine":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2395
    .local v3, "lastLine":I
    move-object v4, p1

    check-cast v4, Landroid/text/DynamicLayout;

    .line 2396
    .local v4, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v5

    .line 2397
    .local v5, "blockEndLines":[I
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v6

    .line 2398
    .local v6, "blockIndices":[I
    invoke-virtual {v4}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 2400
    .local v7, "numberOfBlocks":I
    const/4 v8, 0x0

    .line 2402
    .local v8, "i":I
    :goto_3f
    if-ge v8, v7, :cond_49

    .line 2403
    aget v9, v5, v8

    if-lt v9, v2, :cond_46

    goto :goto_49

    .line 2404
    :cond_46
    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    .line 2408
    :cond_49
    :goto_49
    if-ge v8, v7, :cond_60

    .line 2409
    aget v9, v6, v8

    .line 2410
    .local v9, "blockIndex":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_57

    .line 2411
    iget-object v10, p0, Landroid/widget/Editor;->mTextRenderNodes:[Landroid/widget/Editor$TextRenderNode;

    aget-object v10, v10, v9

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/widget/Editor$TextRenderNode;->isDirty:Z

    .line 2413
    :cond_57
    aget v10, v5, v8

    if-lt v10, v3, :cond_5c

    goto :goto_60

    .line 2414
    :cond_5c
    nop

    .end local v9    # "blockIndex":I
    add-int/lit8 v8, v8, 0x1

    .line 2415
    goto :goto_49

    .line 2417
    .end local v0    # "startTransformed":I
    .end local v1    # "endTransformed":I
    .end local v2    # "firstLine":I
    .end local v3    # "lastLine":I
    .end local v4    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v5    # "blockEndLines":[I
    .end local v6    # "blockIndices":[I
    .end local v7    # "numberOfBlocks":I
    .end local v8    # "i":I
    :cond_60
    :goto_60
    return-void
.end method

.method public blacklist isBlinking()Z
    .registers 2

    .line 2985
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2986
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-static {v0}, Landroid/widget/Editor$Blink;->-$$Nest$fgetmCancelled(Landroid/widget/Editor$Blink;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist loadCursorDrawable()V
    .registers 2

    .line 6622
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    .line 6623
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    .line 6625
    :cond_c
    return-void
.end method

.method blacklist loadHandleDrawables(Z)V
    .registers 3
    .param p1, "overwrite"    # Z

    .line 7307
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_1b

    .line 7308
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    .line 7309
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7310
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$InsertionPointCursorController;->-$$Nest$mreloadHandleDrawable(Landroid/widget/Editor$InsertionPointCursorController;)V

    .line 7314
    :cond_1b
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    if-eqz p1, :cond_42

    .line 7315
    :cond_25
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 7316
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 7317
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 7318
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$mreloadHandleDrawables(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .line 7321
    :cond_42
    return-void
.end method

.method greylist-max-o makeBlink()V
    .registers 5

    .line 2965
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2966
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 2967
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_18

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 2970
    :cond_18
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 2971
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2972
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_39

    .line 2974
    :cond_2e
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2976
    :cond_39
    :goto_39
    return-void
.end method

.method blacklist maybeFireScheduledRestartInputForSetText()V
    .registers 3

    .line 1932
    iget-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    if-eqz v0, :cond_12

    .line 1933
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1934
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_f

    .line 1935
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->invalidateInput(Landroid/view/View;)V

    .line 1937
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 1939
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    return-void
.end method

.method greylist-max-o onAttachedToWindow()V
    .registers 5

    .line 701
    iget-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 702
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 703
    iput-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 706
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 707
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 710
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v2, :cond_1f

    .line 711
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 713
    :cond_1f
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v2, :cond_2d

    .line 714
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 715
    iget-object v2, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 718
    :cond_2d
    iget-object v2, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 722
    :cond_32
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 725
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 726
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    .line 729
    :cond_4b
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 733
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 734
    return-void
.end method

.method public greylist-max-o onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 2929
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_c

    .line 2930
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    goto :goto_12

    .line 2932
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->-$$Nest$minvalidate(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    .line 2935
    :goto_12
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 2936
    iget-object v0, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v0}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 2937
    return-void
.end method

.method public greylist-max-o onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 12
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .line 3170
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    if-nez v0, :cond_be

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_be

    iget v0, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 3171
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_be

    .line 3174
    :cond_16
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    iget v2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 3175
    .local v0, "offset":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    .line 3176
    return-void

    .line 3179
    :cond_24
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 3180
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5c

    .line 3181
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3182
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-lt v0, v1, :cond_4b

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3183
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gt v0, v1, :cond_4b

    move v1, v3

    goto :goto_4c

    :cond_4b
    move v1, v2

    .line 3184
    .local v1, "isOnSelection":Z
    :goto_4c
    if-nez v1, :cond_5c

    .line 3187
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3188
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 3192
    .end local v1    # "isOnSelection":Z
    :cond_5c
    invoke-virtual {p0}, Landroid/widget/Editor;->shouldOfferToShowSuggestions()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 3193
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/widget/Editor$SuggestionInfo;

    .line 3195
    .local v1, "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_66
    array-length v5, v1

    const/4 v6, 0x0

    if-ge v4, v5, :cond_74

    .line 3196
    new-instance v5, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v5, v6}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor-IA;)V

    aput-object v5, v1, v4

    .line 3195
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 3198
    .end local v4    # "i":I
    :cond_74
    const/16 v4, 0xb

    const v5, 0x1040918

    invoke-interface {p1, v2, v2, v4, v5}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    .line 3200
    .local v4, "subMenu":Landroid/view/SubMenu;
    iget-object v5, p0, Landroid/widget/Editor;->mSuggestionHelper:Landroid/widget/Editor$SuggestionHelper;

    invoke-virtual {v5, v1, v6}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v5

    .line 3201
    .local v5, "numItems":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_84
    if-ge v6, v5, :cond_99

    .line 3202
    aget-object v7, v1, v6

    .line 3203
    .local v7, "info":Landroid/widget/Editor$SuggestionInfo;
    iget-object v8, v7, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v4, v2, v2, v6, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    new-instance v9, Landroid/widget/Editor$4;

    invoke-direct {v9, p0, v7}, Landroid/widget/Editor$4;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 3204
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3201
    .end local v7    # "info":Landroid/widget/Editor$SuggestionInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_84

    .line 3214
    .end local v1    # "suggestionInfoArray":[Landroid/widget/Editor$SuggestionInfo;
    .end local v4    # "subMenu":Landroid/view/SubMenu;
    .end local v5    # "numItems":I
    .end local v6    # "i":I
    :cond_99
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setOptionalIconsVisible(Z)V

    .line 3215
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setGroupDividerEnabled(Z)V

    .line 3217
    invoke-direct {p0, p1}, Landroid/widget/Editor;->setAssistContextMenuItems(Landroid/view/Menu;)V

    .line 3219
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 3220
    .local v1, "keyboard":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_b2

    move v2, v3

    :cond_b2
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setQwertyMode(Z)V

    .line 3222
    invoke-virtual {p0, p1}, Landroid/widget/Editor;->setTextContextMenuItems(Landroid/view/ContextMenu;)V

    .line 3224
    iput-boolean v3, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 3227
    invoke-virtual {p0, p1}, Landroid/widget/Editor;->adjustIconSpacing(Landroid/view/ContextMenu;)V

    .line 3228
    return-void

    .line 3172
    .end local v0    # "offset":I
    .end local v1    # "keyboard":I
    :cond_be
    :goto_be
    return-void
.end method

.method greylist-max-o onDetachedFromWindow()V
    .registers 3

    .line 737
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 739
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_10

    .line 740
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 743
    :cond_10
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 745
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_1c

    .line 746
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 749
    :cond_1c
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_25

    .line 750
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 753
    :cond_25
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_30

    .line 754
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 758
    :cond_30
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3b

    .line 759
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 762
    :cond_3b
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 764
    invoke-direct {p0}, Landroid/widget/Editor;->discardTextDisplayLists()V

    .line 766
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_51

    .line 767
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 774
    :cond_51
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 775
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 776
    iget-object v1, p0, Landroid/widget/Editor;->mMagnifierOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 780
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_62
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 781
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 783
    iget-object v0, p0, Landroid/widget/Editor;->mDefaultOnReceiveContentListener:Landroid/widget/TextViewOnReceiveContentListener;

    invoke-virtual {v0}, Landroid/widget/TextViewOnReceiveContentListener;->clearInputConnectionInfo()V

    .line 784
    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    .line 785
    return-void
.end method

.method blacklist onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p5, "selectionHighlight"    # Landroid/graphics/Path;
    .param p6, "selectionHighlightPaint"    # Landroid/graphics/Paint;
    .param p7, "cursorOffsetVertical"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    .line 2100
    .local p3, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p4, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 2101
    .local v9, "selectionStart":I
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    .line 2103
    .local v10, "selectionEnd":I
    iget-object v11, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2104
    .local v11, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v11, :cond_2d

    iget v0, v11, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v0, :cond_2d

    iget-boolean v0, v11, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_1c

    iget-boolean v0, v11, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2d

    .line 2106
    :cond_1c
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2107
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2d

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2111
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 2115
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2d
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHighContrastTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    move v8, v0

    .line 2121
    .local v8, "shouldDrawHighlightsOnTop":Z
    if-eqz v8, :cond_4f

    .line 2122
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/widget/Editor;->drawLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V

    goto :goto_51

    .line 2121
    :cond_4f
    move/from16 v7, p7

    .line 2126
    :goto_51
    iget-object v2, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v2, :cond_5a

    .line 2127
    iget-object v2, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v2, p1, v7}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 2130
    :cond_5a
    if-eqz p5, :cond_6f

    if-ne v9, v10, :cond_6f

    iget-object v2, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2132
    invoke-virtual {v2}, Landroid/widget/TextView;->hasGesturePreviewHighlight()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 2133
    invoke-direct {p0, p1, v7}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 2136
    const/4 v2, 0x0

    .end local p5    # "selectionHighlight":Landroid/graphics/Path;
    .local v2, "selectionHighlight":Landroid/graphics/Path;
    goto :goto_71

    .line 2139
    .end local v2    # "selectionHighlight":Landroid/graphics/Path;
    .restart local p5    # "selectionHighlight":Landroid/graphics/Path;
    :cond_6f
    move-object/from16 v2, p5

    .end local p5    # "selectionHighlight":Landroid/graphics/Path;
    .restart local v2    # "selectionHighlight":Landroid/graphics/Path;
    :goto_71
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    if-eqz v3, :cond_85

    .line 2140
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v3, p1}, Landroid/widget/SelectionActionModeHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 2141
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionActionModeHelper:Landroid/widget/SelectionActionModeHelper;

    invoke-virtual {v3}, Landroid/widget/SelectionActionModeHelper;->isDrawingHighlight()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 2142
    const/4 v2, 0x0

    move-object v5, v2

    goto :goto_86

    .line 2146
    :cond_85
    move-object v5, v2

    .end local v2    # "selectionHighlight":Landroid/graphics/Path;
    .local v5, "selectionHighlight":Landroid/graphics/Path;
    :goto_86
    iget-object v2, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-eqz v2, :cond_8f

    .line 2147
    iget-object v2, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v2, p1}, Landroid/widget/Editor$InsertModeController;->onDraw(Landroid/graphics/Canvas;)V

    .line 2150
    :cond_8f
    if-nez v8, :cond_9c

    .line 2151
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/Editor;->drawLayout(Landroid/graphics/Canvas;Landroid/text/Layout;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;IZ)V

    .line 2154
    :cond_9c
    return-void
.end method

.method greylist-max-o onDrop(Landroid/view/DragEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 3062
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 3063
    .local v0, "offset":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    .line 3064
    .local v1, "localState":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 3065
    .local v2, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v3, v1, Landroid/widget/Editor$DragLocalState;

    if-eqz v3, :cond_1a

    .line 3066
    move-object v2, v1

    check-cast v2, Landroid/widget/Editor$DragLocalState;

    .line 3068
    :cond_1a
    if-eqz v2, :cond_24

    iget-object v3, v2, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-ne v3, v4, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    .line 3070
    .local v3, "dragDropIntoItself":Z
    :goto_25
    if-eqz v3, :cond_30

    .line 3071
    iget v4, v2, Landroid/widget/Editor$DragLocalState;->start:I

    if-lt v0, v4, :cond_30

    iget v4, v2, Landroid/widget/Editor$DragLocalState;->end:I

    if-ge v0, v4, :cond_30

    .line 3073
    return-void

    .line 3077
    :cond_30
    invoke-static {p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v4

    .line 3078
    .local v4, "permissions":Landroid/view/DragAndDropPermissions;
    if-eqz v4, :cond_39

    .line 3079
    invoke-virtual {v4}, Landroid/view/DragAndDropPermissions;->takeTransient()Z

    .line 3081
    :cond_39
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 3082
    iget-object v5, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3084
    :try_start_43
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 3085
    .local v5, "originalLength":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3086
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    .line 3087
    .local v6, "clip":Landroid/content/ClipData;
    new-instance v7, Landroid/view/ContentInfo$Builder;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v8}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 3088
    invoke-virtual {v7, v4}, Landroid/view/ContentInfo$Builder;->setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;

    move-result-object v7

    .line 3089
    invoke-virtual {v7}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v7

    .line 3090
    .local v7, "payload":Landroid/view/ContentInfo;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 3091
    if-eqz v3, :cond_74

    .line 3092
    invoke-direct {p0, v2, v0, v5}, Landroid/widget/Editor;->deleteSourceAfterLocalDrop(Landroid/widget/Editor$DragLocalState;II)V
    :try_end_74
    .catchall {:try_start_43 .. :try_end_74} :catchall_80

    .line 3095
    .end local v5    # "originalLength":I
    .end local v6    # "clip":Landroid/content/ClipData;
    .end local v7    # "payload":Landroid/view/ContentInfo;
    :cond_74
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->endBatchEdit()V

    .line 3096
    iget-object v5, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v5}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3097
    nop

    .line 3098
    return-void

    .line 3095
    :catchall_80
    move-exception v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->endBatchEdit()V

    .line 3096
    iget-object v6, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v6}, Landroid/widget/Editor$UndoInputFilter;->freezeLastEdit()V

    .line 3097
    throw v5
.end method

.method greylist-max-o onFocusChanged(ZI)V
    .registers 12
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .line 1568
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1569
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1571
    if-eqz p1, :cond_a4

    .line 1572
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 1573
    .local v0, "selStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1577
    .local v1, "selEnd":I
    iget-boolean v2, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2d

    if-nez v0, :cond_2d

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1578
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v4

    .line 1580
    .local v2, "isFocusHighlighted":Z
    :goto_2e
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_3e

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_3e

    if-nez v2, :cond_3e

    move v5, v3

    goto :goto_3f

    :cond_3e
    move v5, v4

    :goto_3f
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1583
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_49

    if-ltz v0, :cond_49

    if-gez v1, :cond_95

    .line 1586
    :cond_49
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v5

    .line 1587
    .local v5, "lastTapPosition":I
    if-ltz v5, :cond_5a

    .line 1591
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1595
    :cond_5a
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v6

    .line 1596
    .local v6, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v6, :cond_6f

    .line 1597
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-interface {v6, v7, v8, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1605
    :cond_6f
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v7

    if-nez v7, :cond_7b

    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v7, :cond_8a

    :cond_7b
    if-ltz v0, :cond_8a

    if-ltz v1, :cond_8a

    .line 1616
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1619
    :cond_8a
    iget-boolean v7, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v7, :cond_93

    .line 1620
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->selectAllText()Z

    .line 1623
    :cond_93
    iput-boolean v3, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1626
    .end local v5    # "lastTapPosition":I
    .end local v6    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_95
    iput-boolean v4, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1627
    iput-boolean v4, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1629
    iget-object v3, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a0

    .line 1630
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1633
    :cond_a0
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1634
    .end local v0    # "selStart":I
    .end local v1    # "selEnd":I
    .end local v2    # "isFocusHighlighted":Z
    goto :goto_e9

    .line 1635
    :cond_a4
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_ab

    .line 1636
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1639
    :cond_ab
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1641
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1642
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1643
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_d4

    .line 1645
    :cond_bf
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1646
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1647
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    goto :goto_d1

    .line 1649
    :cond_ce
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1651
    :goto_d1
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    .line 1654
    :goto_d4
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_dd

    .line 1655
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1658
    :cond_dd
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-eqz v0, :cond_e6

    .line 1659
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertModeController;->exitInsertMode()V

    .line 1662
    :cond_e6
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1664
    :goto_e9
    return-void
.end method

.method blacklist onInitializeSmartActionsAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8397
    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8398
    return-void
.end method

.method greylist-max-o onLocaleChanged()V
    .registers 2

    .line 1342
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 1343
    iput-object v0, p0, Landroid/widget/Editor;->mWordIteratorWithText:Landroid/text/method/WordIterator;

    .line 1344
    return-void
.end method

.method greylist-max-o onScreenStateChanged(I)V
    .registers 2
    .param p1, "screenState"    # I

    .line 1084
    packed-switch p1, :pswitch_data_c

    goto :goto_b

    .line 1086
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 1087
    goto :goto_b

    .line 1089
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 1092
    :goto_b
    return-void

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method greylist-max-o onScrollChanged()V
    .registers 2

    .line 2940
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_9

    .line 2941
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 2943
    :cond_9
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_12

    .line 2944
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 2946
    :cond_12
    return-void
.end method

.method final blacklist onTextOperationUserChanged()V
    .registers 2

    .line 2789
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_9

    .line 2790
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 2792
    :cond_9
    return-void
.end method

.method public greylist-max-o onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1777
    invoke-direct {p0, p1}, Landroid/widget/Editor;->shouldFilterOutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1779
    .local v0, "filterOutEvent":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor;->mLastButtonState:I

    .line 1780
    if-eqz v0, :cond_16

    .line 1781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 1782
    iput-boolean v2, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 1784
    :cond_15
    return-void

    .line 1786
    :cond_16
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1787
    .local v1, "viewConfiguration":Landroid/view/ViewConfiguration;
    iget-object v2, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v2, p1, v1}, Landroid/widget/EditorTouchState;->update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V

    .line 1788
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 1790
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1791
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Editor$InsertionPointCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1793
    :cond_35
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1794
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1797
    :cond_42
    iget-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_50

    .line 1798
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1799
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1802
    :cond_50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_5b

    .line 1805
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1806
    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1808
    :cond_5b
    return-void
.end method

.method greylist-max-o onTouchUpEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2738
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    .line 2739
    invoke-virtual {p0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 2738
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper;->resetSelection(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2740
    return-void

    .line 2743
    :cond_1b
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 2744
    .local v0, "selectAllGotFocus":Z
    :goto_2b
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 2745
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2746
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2747
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_ab

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_ab

    .line 2749
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 2751
    .local v3, "offset":I
    iget-boolean v4, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    xor-int/2addr v1, v4

    .line 2752
    .local v1, "shouldInsertCursor":Z
    if-eqz v1, :cond_61

    .line 2753
    move-object v4, v2

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2754
    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v4, :cond_61

    .line 2756
    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v4}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 2760
    :cond_61
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 2761
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 2763
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_78

    .line 2764
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2767
    :cond_78
    new-instance v4, Landroid/widget/Editor$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Editor;)V

    iput-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2770
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 2771
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    .line 2770
    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ab

    .line 2772
    :cond_8c
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 2773
    if-eqz v1, :cond_a4

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 2774
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_ab

    .line 2776
    :cond_a4
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 2781
    .end local v1    # "shouldInsertCursor":Z
    .end local v3    # "offset":I
    :cond_ab
    :goto_ab
    return-void
.end method

.method greylist-max-o onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .line 1730
    if-eqz p1, :cond_17

    .line 1731
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 1732
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1733
    invoke-virtual {p0}, Landroid/widget/Editor;->refreshTextActionMode()V

    goto :goto_38

    .line 1736
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 1737
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_23

    .line 1738
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1741
    :cond_23
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 1742
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 1743
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_32

    .line 1744
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1748
    :cond_32
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1750
    invoke-direct {p0}, Landroid/widget/Editor;->ensureNoSelectionIfNonSelectable()V

    .line 1752
    :cond_38
    :goto_38
    return-void
.end method

.method public greylist-max-o performLongClick(Z)Z
    .registers 7
    .param p1, "handled"    # Z

    .line 1487
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsBeingLongClickedByAccessibility:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 1488
    if-nez p1, :cond_a

    .line 1489
    invoke-direct {p0}, Landroid/widget/Editor;->toggleInsertionActionMode()V

    .line 1491
    :cond_a
    return v1

    .line 1494
    :cond_b
    const/16 v0, 0x275

    if-nez p1, :cond_5e

    iget-object v2, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v2, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 1495
    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v2

    if-nez v2, :cond_5e

    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v2, :cond_5e

    .line 1496
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTouchState:Landroid/widget/EditorTouchState;

    .line 1497
    invoke-virtual {v4}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v4

    .line 1496
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .line 1498
    .local v2, "offset":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1499
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 1500
    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 1501
    const/4 p1, 0x1

    .line 1502
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1503
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1502
    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1508
    .end local v2    # "offset":I
    :cond_5e
    if-nez p1, :cond_88

    iget-object v2, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_88

    .line 1509
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1510
    invoke-direct {p0}, Landroid/widget/Editor;->startDragAndDrop()V

    .line 1511
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1512
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1511
    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_87

    .line 1516
    :cond_78
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1517
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    .line 1518
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1519
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1518
    invoke-static {v2, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1523
    :goto_87
    const/4 p1, 0x1

    .line 1527
    :cond_88
    if-nez p1, :cond_99

    .line 1528
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWordAndStartDrag()Z

    move-result p1

    .line 1529
    if-eqz p1, :cond_99

    .line 1530
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1531
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1530
    invoke-static {v2, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1537
    :cond_99
    return p1
.end method

.method blacklist performSmartActionsAccessibilityAction(I)Z
    .registers 3
    .param p1, "actionId"    # I

    .line 8405
    iget-object v0, p0, Landroid/widget/Editor;->mA11ySmartActions:Landroid/widget/Editor$AccessibilitySmartActions;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->performAccessibilityAction(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o prepareCursorControllers()V
    .registers 8

    .line 995
    const/4 v0, 0x0

    .line 997
    .local v0, "windowSupportsHandles":Z
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 998
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    .line 999
    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1000
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_23

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-le v5, v6, :cond_21

    goto :goto_23

    :cond_21
    move v5, v4

    goto :goto_24

    :cond_23
    :goto_23
    move v5, v3

    :goto_24
    move v0, v5

    .line 1004
    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_25
    if-eqz v0, :cond_31

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_31

    move v2, v3

    goto :goto_32

    :cond_31
    move v2, v4

    .line 1005
    .local v2, "enabled":Z
    :goto_32
    if-eqz v2, :cond_40

    iget-boolean v5, p0, Landroid/widget/Editor;->mDrawCursorOnMagnifier:Z

    if-nez v5, :cond_3e

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_3e
    move v5, v3

    goto :goto_41

    :cond_40
    move v5, v4

    :goto_41
    iput-boolean v5, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 1006
    if-eqz v2, :cond_4e

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v5

    if-eqz v5, :cond_4e

    goto :goto_4f

    :cond_4e
    move v3, v4

    :goto_4f
    iput-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 1008
    iget-boolean v3, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    const/4 v4, 0x0

    if-nez v3, :cond_64

    .line 1009
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 1010
    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v3, :cond_64

    .line 1011
    iget-object v3, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 1012
    iput-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 1016
    :cond_64
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v3, :cond_76

    .line 1017
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1018
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v3, :cond_76

    .line 1019
    iget-object v3, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 1020
    iput-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 1023
    :cond_76
    return-void
.end method

.method greylist-max-o redo()V
    .registers 5

    .line 682
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_5

    .line 683
    return-void

    .line 685
    :cond_5
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    .line 686
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->redo([Landroid/content/UndoOwner;I)I

    .line 687
    return-void
.end method

.method greylist-max-o refreshTextActionMode()V
    .registers 6

    .line 2447
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2448
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2449
    return-void

    .line 2451
    :cond_a
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    .line 2452
    .local v0, "hasSelection":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 2453
    .local v2, "selectionController":Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    .line 2454
    .local v3, "insertionController":Landroid/widget/Editor$InsertionPointCursorController;
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isCursorBeingModified()Z

    move-result v4

    if-nez v4, :cond_28

    :cond_20
    if-eqz v3, :cond_2b

    .line 2455
    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isCursorBeingModified()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2457
    :cond_28
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2458
    return-void

    .line 2460
    :cond_2b
    if-eqz v0, :cond_52

    .line 2461
    invoke-virtual {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 2462
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_3c

    .line 2463
    iget-boolean v4, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    if-eqz v4, :cond_68

    .line 2466
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_68

    .line 2468
    :cond_3c
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_4b

    .line 2473
    :cond_45
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_68

    .line 2470
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionModeWithPreservingSelection()V

    .line 2471
    invoke-virtual {p0, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_68

    .line 2478
    :cond_52
    if-eqz v3, :cond_65

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->isActive()Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_65

    .line 2480
    :cond_5b
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_68

    .line 2481
    iget-object v4, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidateContentRect()V

    goto :goto_68

    .line 2479
    :cond_65
    :goto_65
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2484
    :cond_68
    :goto_68
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2485
    return-void
.end method

.method greylist-max-o replace()V
    .registers 3

    .line 690
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_b

    .line 691
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 693
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 694
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 696
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 697
    .local v0, "middle":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 698
    return-void
.end method

.method greylist-max-o reportExtractedText()Z
    .registers 11

    .line 2026
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 2027
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2028
    return v1

    .line 2030
    :cond_6
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2031
    .local v2, "wasContentChanged":Z
    if-nez v2, :cond_f

    iget-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-nez v3, :cond_f

    .line 2032
    return v1

    .line 2034
    :cond_f
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2035
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 2036
    iget-object v5, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 2037
    .local v5, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-nez v5, :cond_18

    .line 2038
    return v1

    .line 2040
    :cond_18
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 2041
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v3, :cond_1f

    .line 2042
    return v1

    .line 2050
    :cond_1f
    iget v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v4, :cond_28

    if-nez v2, :cond_28

    .line 2051
    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2053
    :cond_28
    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v7, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v8, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v9, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 2063
    iget-object v6, v4, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, v5, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v8, v0, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 2064
    const/4 v6, -0x1

    iput v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 2065
    iput v6, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 2066
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 2067
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 2068
    const/4 v1, 0x1

    return v1

    .line 2070
    :cond_4b
    return v1
.end method

.method greylist-max-o restoreInstanceState(Landroid/os/ParcelableParcel;)V
    .registers 5
    .param p1, "state"    # Landroid/os/ParcelableParcel;

    .line 632
    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 633
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {p1}, Landroid/os/ParcelableParcel;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/UndoManager;->restoreInstanceState(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 634
    iget-object v1, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v1, v0}, Landroid/widget/Editor$UndoInputFilter;->restoreInstanceState(Landroid/os/Parcel;)V

    .line 636
    iget-object v1, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    const-string v2, "Editor"

    invoke-virtual {v1, v2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 637
    return-void
.end method

.method greylist-max-o saveInstanceState()Landroid/os/ParcelableParcel;
    .registers 4

    .line 624
    new-instance v0, Landroid/os/ParcelableParcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelableParcel;-><init>(Ljava/lang/ClassLoader;)V

    .line 625
    .local v0, "state":Landroid/os/ParcelableParcel;
    invoke-virtual {v0}, Landroid/os/ParcelableParcel;->getParcel()Landroid/os/Parcel;

    move-result-object v1

    .line 626
    .local v1, "parcel":Landroid/os/Parcel;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->saveInstanceState(Landroid/os/Parcel;)V

    .line 627
    iget-object v2, p0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    invoke-virtual {v2, v1}, Landroid/widget/Editor$UndoInputFilter;->saveInstanceState(Landroid/os/Parcel;)V

    .line 628
    return-object v0
.end method

.method blacklist scheduleRestartInputForSetText()V
    .registers 2

    .line 1923
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mHasPendingRestartInputForSetText:Z

    .line 1924
    return-void
.end method

.method greylist-max-o selectCurrentWord()Z
    .registers 13

    .line 1227
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1228
    return v1

    .line 1231
    :cond_a
    invoke-direct {p0}, Landroid/widget/Editor;->needsToSelectAllToSelectWordOrParagraph()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1232
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0

    .line 1235
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v2

    .line 1236
    .local v2, "lastTouchOffsets":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v0

    .line 1237
    .local v0, "minOffset":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 1240
    .local v4, "maxOffset":I
    if-ltz v0, :cond_ad

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v0, v5, :cond_33

    goto/16 :goto_ad

    .line 1241
    :cond_33
    if-ltz v4, :cond_ac

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_42

    goto :goto_ac

    .line 1246
    :cond_42
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 1247
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v5, v0, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    .line 1248
    .local v5, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v6, v5

    const/4 v7, 0x1

    if-lt v6, v7, :cond_71

    .line 1249
    aget-object v6, v5, v1

    .line 1250
    .local v6, "urlSpan":Landroid/text/style/URLSpan;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 1251
    .local v8, "selectionStart":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spanned;

    invoke-interface {v9, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1252
    .local v6, "selectionEnd":I
    goto :goto_9d

    .line 1255
    .end local v6    # "selectionEnd":I
    .end local v8    # "selectionStart":I
    :cond_71
    invoke-virtual {p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v6

    .line 1256
    .local v6, "wordIterator":Landroid/text/method/WordIterator;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 1258
    invoke-virtual {v6, v0}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v8

    .line 1259
    .restart local v8    # "selectionStart":I
    invoke-virtual {v6, v4}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    .line 1261
    .local v9, "selectionEnd":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_90

    if-eq v9, v10, :cond_90

    if-ne v8, v9, :cond_8e

    goto :goto_90

    :cond_8e
    move v6, v9

    goto :goto_9d

    .line 1264
    :cond_90
    :goto_90
    invoke-direct {p0, v0}, Landroid/widget/Editor;->getCharClusterRange(I)J

    move-result-wide v10

    .line 1265
    .local v10, "range":J
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v8

    .line 1266
    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    move v6, v9

    .line 1270
    .end local v9    # "selectionEnd":I
    .end local v10    # "range":J
    .local v6, "selectionEnd":I
    :goto_9d
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, v8, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1271
    if-le v6, v8, :cond_ab

    move v1, v7

    :cond_ab
    return v1

    .line 1241
    .end local v5    # "urlSpans":[Landroid/text/style/URLSpan;
    .end local v6    # "selectionEnd":I
    .end local v8    # "selectionStart":I
    :cond_ac
    :goto_ac
    return v1

    .line 1240
    :cond_ad
    :goto_ad
    return v1
.end method

.method greylist-max-o sendOnTextChanged(III)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .line 1696
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper;->onTextChanged(II)V

    .line 1697
    add-int v0, p1, p3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1700
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mUpdateWordIteratorText:Z

    .line 1705
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1707
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1e

    .line 1708
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1710
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 1711
    return-void
.end method

.method greylist-max-o setContextMenuAnchor(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3139
    iput p1, p0, Landroid/widget/Editor;->mContextMenuAnchorX:F

    .line 3140
    iput p2, p0, Landroid/widget/Editor;->mContextMenuAnchorY:F

    .line 3141
    return-void
.end method

.method public blacklist setCursorDragMinAngleFromVertical(I)V
    .registers 3
    .param p1, "degreesFromVertical"    # I

    .line 540
    invoke-static {p1}, Landroid/widget/EditorTouchState;->getXYRatio(I)F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mCursorDragDirectionMinXYRatio:F

    .line 541
    return-void
.end method

.method public greylist-max-o setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 855
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 858
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_28

    .line 859
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 860
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v1, :cond_24

    .line 861
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 862
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 865
    :cond_22
    iput-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 867
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    goto :goto_36

    .line 869
    :cond_28
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    .line 870
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 871
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 874
    :cond_36
    :goto_36
    return-void
.end method

.method public blacklist setFlagCursorDragFromAnywhereEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 535
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagCursorDragFromAnywhereEnabled:Z

    .line 536
    return-void
.end method

.method public blacklist setFlagInsertionHandleGesturesEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 550
    iput-boolean p1, p0, Landroid/widget/Editor;->mFlagInsertionHandleGesturesEnabled:Z

    .line 551
    return-void
.end method

.method greylist-max-o setFrame()V
    .registers 10

    .line 1157
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_2e

    .line 1158
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1159
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v2, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 1160
    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v6

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 1161
    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v7

    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v8

    .line 1160
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 1163
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_2e
    return-void
.end method

.method public blacklist setLineChangeSlopMinMaxForTesting(II)V
    .registers 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 6559
    iput p1, p0, Landroid/widget/Editor;->mLineChangeSlopMin:I

    .line 6560
    iput p2, p0, Landroid/widget/Editor;->mLineChangeSlopMax:I

    .line 6561
    return-void
.end method

.method greylist-max-o setRestartActionModeOnNextRefresh(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 2520
    iput-boolean p1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2521
    return-void
.end method

.method public blacklist setTextContextMenuItems(Landroid/view/ContextMenu;)V
    .registers 19
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .line 3233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_312

    invoke-virtual {v2, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3244
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    .line 3245
    .local v4, "menuItemOrderUndo":I
    const/4 v5, 0x3

    .line 3246
    .local v5, "menuItemOrderRedo":I
    const/4 v6, 0x4

    .line 3247
    .local v6, "menuItemOrderCut":I
    const/4 v7, 0x5

    .line 3248
    .local v7, "menuItemOrderCopy":I
    const/4 v8, 0x6

    .line 3249
    .local v8, "menuItemOrderPaste":I
    const/4 v9, 0x7

    .line 3250
    .local v9, "menuItemOrderPasteAsPlainText":I
    const/16 v10, 0x8

    .line 3251
    .local v10, "menuItemOrderSelectAll":I
    const/16 v11, 0x9

    .line 3252
    .local v11, "menuItemOrderShare":I
    const/16 v12, 0xa

    .line 3254
    .local v12, "menuItemOrderAutofill":I
    invoke-static {}, Lcom/android/text/flags/Flags;->contextMenuHideUnavailableItems()Z

    move-result v13

    const v14, 0x1040a56

    const/4 v15, 0x1

    const/4 v3, 0x2

    if-eqz v13, :cond_195

    .line 3255
    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->canUndo()Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 3256
    const v13, 0x1020032

    invoke-interface {v1, v15, v13, v3, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    .line 3258
    const/16 v14, 0x7a

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v13

    iget-object v14, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3259
    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v13

    .line 3260
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3263
    :cond_4e
    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->canRedo()Z

    move-result v13

    if-eqz v13, :cond_76

    .line 3264
    const/4 v3, 0x3

    const v13, 0x1040904

    const v14, 0x1020033

    invoke-interface {v1, v15, v14, v3, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    .line 3266
    const/16 v3, 0x1001

    const/16 v14, 0x7a

    invoke-interface {v13, v14, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v13

    iget-object v3, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3267
    invoke-interface {v13, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3268
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3271
    :cond_76
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canCut()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 3272
    const v3, 0x1040003

    const v13, 0x1020020

    const/4 v14, 0x4

    const/4 v15, 0x2

    invoke-interface {v1, v15, v13, v14, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3274
    const/16 v13, 0x78

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3275
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3276
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_9f

    .line 3271
    :cond_9e
    const/4 v15, 0x2

    .line 3279
    :goto_9f
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 3280
    const v3, 0x1040001

    const v13, 0x1020021

    const/4 v14, 0x5

    invoke-interface {v1, v15, v13, v14, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3282
    const/16 v13, 0x63

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3283
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3284
    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3287
    :cond_c6
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canPaste()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 3288
    const v3, 0x104000b

    const v13, 0x1020022

    const/4 v14, 0x6

    const/4 v15, 0x2

    invoke-interface {v1, v15, v13, v14, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3290
    const/16 v13, 0x76

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 3291
    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3292
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3295
    :cond_ee
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v3

    if-eqz v3, :cond_118

    .line 3296
    const v3, 0x1020031

    const v13, 0x1040019

    const/4 v14, 0x7

    const/4 v15, 0x2

    invoke-interface {v1, v15, v3, v14, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3299
    const/16 v13, 0x76

    const/16 v14, 0x1001

    invoke-interface {v3, v13, v14}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    .line 3300
    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3301
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3304
    :cond_118
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v3

    if-eqz v3, :cond_141

    .line 3305
    const/16 v3, 0x8

    const v13, 0x104000d

    const v14, 0x102001f

    const/4 v15, 0x2

    invoke-interface {v1, v15, v14, v3, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3307
    const/16 v13, 0x61

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 3308
    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3309
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3312
    :cond_141
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canShare()Z

    move-result v3

    if-eqz v3, :cond_164

    .line 3313
    const/16 v3, 0x9

    const v13, 0x10409b7

    const v14, 0x1020035

    const/4 v15, 0x3

    invoke-interface {v1, v15, v14, v3, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3315
    const/4 v14, 0x6

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3316
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3319
    :cond_164
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    .line 3320
    .local v3, "selected":Ljava/lang/String;
    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v13

    if-eqz v13, :cond_18f

    if-eqz v3, :cond_17a

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_191

    .line 3321
    :cond_17a
    const/16 v13, 0xa

    const v14, 0x104001a

    const v15, 0x1020043

    move-object/from16 v16, v3

    const/4 v3, 0x3

    .end local v3    # "selected":Ljava/lang/String;
    .local v16, "selected":Ljava/lang/String;
    invoke-interface {v1, v3, v15, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3323
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_191

    .line 3320
    .end local v16    # "selected":Ljava/lang/String;
    .restart local v3    # "selected":Ljava/lang/String;
    :cond_18f
    move-object/from16 v16, v3

    .line 3325
    .end local v3    # "selected":Ljava/lang/String;
    :cond_191
    :goto_191
    move-object/from16 v16, v2

    goto/16 :goto_30e

    .line 3326
    :cond_195
    const/4 v3, 0x2

    const v13, 0x1020032

    invoke-interface {v1, v15, v13, v3, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v13

    .line 3328
    const/16 v14, 0x7a

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3329
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3330
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3331
    invoke-virtual {v13}, Landroid/widget/TextView;->canUndo()Z

    move-result v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3332
    const v3, 0x1020033

    const v13, 0x1040904

    const/4 v14, 0x3

    invoke-interface {v1, v15, v3, v14, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3334
    const/16 v13, 0x7a

    const/16 v14, 0x1001

    invoke-interface {v3, v13, v14}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3335
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3336
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3337
    invoke-virtual {v13}, Landroid/widget/TextView;->canRedo()Z

    move-result v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3339
    const v3, 0x1040003

    const v13, 0x1020020

    const/4 v14, 0x4

    const/4 v15, 0x2

    invoke-interface {v1, v15, v13, v14, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3341
    const/16 v13, 0x78

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3342
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3343
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3344
    invoke-virtual {v13}, Landroid/widget/TextView;->canCut()Z

    move-result v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3345
    const v3, 0x1040001

    const v13, 0x1020021

    const/4 v14, 0x5

    invoke-interface {v1, v15, v13, v14, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3347
    const/16 v13, 0x63

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3348
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 3349
    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3350
    invoke-virtual {v13}, Landroid/widget/TextView;->canCopy()Z

    move-result v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3351
    const v3, 0x104000b

    const v13, 0x1020022

    const/4 v14, 0x6

    const/4 v15, 0x2

    invoke-interface {v1, v15, v13, v14, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3353
    const/16 v13, 0x76

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3354
    invoke-virtual {v13}, Landroid/widget/TextView;->canPaste()Z

    move-result v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    .line 3355
    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3356
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3357
    const v3, 0x1020031

    const v13, 0x1040019

    const/4 v14, 0x7

    const/4 v15, 0x2

    invoke-interface {v1, v15, v3, v14, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3360
    const/16 v13, 0x76

    const/16 v14, 0x1001

    invoke-interface {v3, v13, v14}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3361
    invoke-virtual {v13}, Landroid/widget/TextView;->canPasteAsPlainText()Z

    move-result v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    .line 3362
    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3363
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3364
    const/16 v3, 0x8

    const v13, 0x104000d

    const v14, 0x102001f

    const/4 v15, 0x2

    invoke-interface {v1, v15, v14, v3, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3366
    const/16 v13, 0x61

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3367
    invoke-virtual {v13}, Landroid/widget/TextView;->canSelectAllText()Z

    move-result v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    .line 3368
    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3369
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3371
    const/16 v3, 0x9

    const v13, 0x10409b7

    const v14, 0x1020035

    const/4 v15, 0x3

    invoke-interface {v1, v15, v14, v3, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3373
    invoke-virtual {v13}, Landroid/widget/TextView;->canShare()Z

    move-result v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    .line 3374
    const/4 v14, 0x6

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3375
    invoke-interface {v3, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3376
    iget-object v3, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    .line 3377
    .restart local v3    # "selected":Ljava/lang/String;
    const/16 v13, 0xa

    const v14, 0x104001a

    const v15, 0x1020043

    move-object/from16 v16, v2

    const/4 v2, 0x3

    .end local v2    # "a":Landroid/content/res/TypedArray;
    .local v16, "a":Landroid/content/res/TypedArray;
    invoke-interface {v1, v2, v15, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v13, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 3379
    invoke-virtual {v13}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v13

    if-eqz v13, :cond_304

    if-eqz v3, :cond_302

    .line 3380
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_304

    :cond_302
    const/4 v15, 0x1

    goto :goto_305

    :cond_304
    const/4 v15, 0x0

    .line 3379
    :goto_305
    invoke-interface {v2, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v13, v0, Landroid/widget/Editor;->mOnContextMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3381
    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3383
    .end local v3    # "selected":Ljava/lang/String;
    :goto_30e
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3384
    return-void

    :array_312
    .array-data 4
        0x112000a
        0x1120009
        0x1010311
        0x1010312
        0x1010313
        0x101037e
        0x1010479
    .end array-data
.end method

.method blacklist setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .registers 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    .line 8378
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    if-nez v0, :cond_b

    .line 8379
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTransformationMethodInternal(Landroid/text/method/TransformationMethod;Z)V

    .line 8380
    return-void

    .line 8382
    :cond_b
    iget-object v0, p0, Landroid/widget/Editor;->mInsertModeController:Landroid/widget/Editor$InsertModeController;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$InsertModeController;->updateTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8383
    return-void
.end method

.method greylist-max-o shouldOfferToShowSuggestions()Z
    .registers 19

    .line 2661
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2662
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    const/4 v3, 0x0

    if-nez v2, :cond_e

    return v3

    .line 2664
    :cond_e
    move-object v2, v1

    check-cast v2, Landroid/text/Spannable;

    .line 2665
    .local v2, "spannable":Landroid/text/Spannable;
    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2666
    .local v4, "selectionStart":I
    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 2667
    .local v5, "selectionEnd":I
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/SuggestionSpan;

    .line 2669
    .local v6, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v7, v6

    if-nez v7, :cond_29

    .line 2670
    return v3

    .line 2672
    :cond_29
    const/4 v7, 0x1

    if-ne v4, v5, :cond_3e

    .line 2674
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2d
    array-length v9, v6

    if-ge v8, v9, :cond_3d

    .line 2675
    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_3a

    .line 2676
    return v7

    .line 2674
    :cond_3a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 2679
    .end local v8    # "i":I
    :cond_3d
    return v3

    .line 2681
    :cond_3e
    iget-object v8, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 2682
    .local v8, "minSpanStart":I
    const/4 v9, 0x0

    .line 2683
    .local v9, "maxSpanEnd":I
    iget-object v10, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 2684
    .local v10, "unionOfSpansCoveringSelectionStartStart":I
    const/4 v11, 0x0

    .line 2685
    .local v11, "unionOfSpansCoveringSelectionStartEnd":I
    const/4 v12, 0x0

    .line 2686
    .local v12, "hasValidSuggestions":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_56
    array-length v14, v6

    if-ge v13, v14, :cond_9b

    .line 2687
    aget-object v14, v6, v13

    invoke-interface {v2, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 2688
    .local v14, "spanStart":I
    aget-object v15, v6, v13

    invoke-interface {v2, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 2689
    .local v15, "spanEnd":I
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2690
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2691
    if-lt v4, v14, :cond_94

    if-le v4, v15, :cond_74

    .line 2693
    move/from16 v17, v3

    goto :goto_96

    .line 2695
    :cond_74
    if-nez v12, :cond_85

    aget-object v16, v6, v13

    .line 2696
    move/from16 v17, v3

    invoke-virtual/range {v16 .. v16}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_82

    goto :goto_87

    :cond_82
    move/from16 v3, v17

    goto :goto_88

    .line 2695
    :cond_85
    move/from16 v17, v3

    .line 2696
    :goto_87
    move v3, v7

    .line 2697
    .end local v12    # "hasValidSuggestions":Z
    .local v3, "hasValidSuggestions":Z
    :goto_88
    nop

    .line 2698
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2699
    nop

    .line 2700
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v12, v3

    goto :goto_96

    .line 2691
    .end local v3    # "hasValidSuggestions":Z
    .restart local v12    # "hasValidSuggestions":Z
    :cond_94
    move/from16 v17, v3

    .line 2686
    .end local v14    # "spanStart":I
    .end local v15    # "spanEnd":I
    :goto_96
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v17

    goto :goto_56

    :cond_9b
    move/from16 v17, v3

    .line 2702
    .end local v13    # "i":I
    if-nez v12, :cond_a0

    .line 2703
    return v17

    .line 2705
    :cond_a0
    if-lt v10, v11, :cond_a3

    .line 2707
    return v17

    .line 2709
    :cond_a3
    if-lt v8, v10, :cond_a9

    if-le v9, v11, :cond_a8

    goto :goto_a9

    .line 2715
    :cond_a8
    return v7

    .line 2713
    :cond_a9
    :goto_a9
    return v17
.end method

.method greylist-max-o shouldRenderCursor()Z
    .registers 10

    .line 984
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 985
    return v1

    .line 987
    :cond_8
    iget-boolean v0, p0, Landroid/widget/Editor;->mRenderCursorRegardlessTiming:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 988
    return v2

    .line 990
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v3, v5

    .line 991
    .local v3, "showCursorDelta":J
    const-wide/16 v5, 0x3e8

    rem-long v5, v3, v5

    const-wide/16 v7, 0x1f4

    cmp-long v0, v5, v7

    if-gez v0, :cond_20

    move v1, v2

    :cond_20
    return v1
.end method

.method greylist-max-o startActionModeInternal(I)Z
    .registers 9
    .param p1, "actionMode"    # I

    .line 2603
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2604
    return v1

    .line 2606
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_10

    .line 2608
    invoke-direct {p0}, Landroid/widget/Editor;->invalidateActionMode()V

    .line 2609
    return v1

    .line 2612
    :cond_10
    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    .line 2613
    invoke-virtual {p0}, Landroid/widget/Editor;->checkField()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_22

    .line 2614
    :cond_21
    return v1

    .line 2617
    :cond_22
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2618
    return v1

    .line 2621
    :cond_2b
    new-instance v2, Landroid/widget/Editor$TextActionModeCallback;

    invoke-direct {v2, p0, p1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2622
    .local v2, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2623
    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    .line 2625
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-eqz v3, :cond_4d

    goto :goto_4f

    :cond_4d
    move v3, v1

    goto :goto_50

    :cond_4f
    :goto_4f
    move v3, v4

    .line 2626
    .local v3, "selectableText":Z
    :goto_50
    if-ne p1, v0, :cond_66

    if-nez v3, :cond_66

    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    instance-of v0, v0, Lcom/android/internal/view/FloatingActionMode;

    if-eqz v0, :cond_66

    .line 2630
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    new-instance v5, Landroid/widget/Editor$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Landroid/widget/Editor$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Editor;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/view/FloatingActionMode;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V

    .line 2634
    :cond_66
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6b

    goto :goto_6c

    :cond_6b
    move v4, v1

    .line 2635
    .local v4, "selectionStarted":Z
    :goto_6c
    if-eqz v4, :cond_8e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 2636
    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v0

    if-nez v0, :cond_8e

    iget-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_8e

    .line 2639
    invoke-direct {p0}, Landroid/widget/Editor;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2640
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_8e

    .line 2641
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 2644
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8e
    return v4
.end method

.method greylist-max-o startInsertionActionMode()V
    .registers 4

    .line 2491
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 2492
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2494
    :cond_b
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2495
    return-void

    .line 2497
    :cond_12
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2499
    new-instance v0, Landroid/widget/Editor$TextActionModeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$TextActionModeCallback;-><init>(Landroid/widget/Editor;I)V

    .line 2501
    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    .line 2503
    invoke-direct {p0}, Landroid/widget/Editor;->registerOnBackInvokedCallback()V

    .line 2504
    iget-object v1, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 2505
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    .line 2507
    :cond_37
    return-void
.end method

.method greylist-max-o startLinkActionModeAsync(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2531
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_b

    .line 2532
    return-void

    .line 2534
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2535
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mRequestingLinkActionMode:Z

    .line 2536
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/SelectionActionModeHelper;->startLinkActionModeAsync(II)V

    .line 2537
    return-void
.end method

.method greylist-max-o startSelectionActionModeAsync(Z)V
    .registers 3
    .param p1, "adjustSelection"    # Z

    .line 2527
    invoke-direct {p0}, Landroid/widget/Editor;->getSelectionActionModeHelper()Landroid/widget/SelectionActionModeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionModeAsync(Z)V

    .line 2528
    return-void
.end method

.method protected greylist-max-o stopTextActionMode()V
    .registers 2

    .line 2795
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2797
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2799
    :cond_9
    invoke-direct {p0}, Landroid/widget/Editor;->unregisterOnBackInvokedCallback()V

    .line 2800
    return-void
.end method

.method greylist-max-o stopTextActionModeWithPreservingSelection()V
    .registers 3

    .line 2803
    iget-object v0, p0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 2804
    iput-boolean v1, p0, Landroid/widget/Editor;->mRestartActionModeOnNextRefresh:Z

    .line 2806
    :cond_7
    iput-boolean v1, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2807
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 2808
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveSelection:Z

    .line 2809
    return-void
.end method

.method greylist-max-o undo()V
    .registers 5

    .line 674
    iget-boolean v0, p0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_5

    .line 675
    return-void

    .line 677
    :cond_5
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/content/UndoOwner;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    aput-object v3, v1, v2

    .line 678
    .local v1, "owners":[Landroid/content/UndoOwner;
    iget-object v2, p0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/UndoManager;->undo([Landroid/content/UndoOwner;I)I

    .line 679
    return-void
.end method

.method greylist-max-o updateCursorPosition()V
    .registers 9

    .line 2429
    invoke-virtual {p0}, Landroid/widget/Editor;->loadCursorDrawable()V

    .line 2430
    iget-object v0, p0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 2431
    return-void

    .line 2434
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 2435
    .local v0, "layout":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2436
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v2

    .line 2438
    .local v2, "transformedOffset":I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2439
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 2440
    .local v4, "top":I
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    .line 2442
    .local v5, "bottom":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v6

    .line 2443
    .local v6, "clamped":Z
    invoke-virtual {v0, v2, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v7

    invoke-direct {p0, v4, v5, v7}, Landroid/widget/Editor;->updateCursorPosition(IIF)V

    .line 2444
    return-void
.end method
