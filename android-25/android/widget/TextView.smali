.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$SavedState;
    }
.end annotation


# static fields
.field private static final synthetic -android-text-Layout$AlignmentSwitchesValues:[I = null

.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final DEVICE_PROVISIONED_NO:I = 0x1

.field private static final DEVICE_PROVISIONED_UNKNOWN:I = 0x0

.field private static final DEVICE_PROVISIONED_YES:I = 0x2

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_PASTE:I = 0x1020022

.field static final ID_PASTE_AS_PLAIN_TEXT:I = 0x1020031

.field static final ID_REDO:I = 0x1020033

.field static final ID_REPLACE:I = 0x1020034

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x1020035

.field static final ID_UNDO:I = 0x1020032

.field private static final KEY_DOWN_HANDLED_BY_KEY_LISTENER:I = 0x1

.field private static final KEY_DOWN_HANDLED_BY_MOVEMENT_METHOD:I = 0x2

.field private static final KEY_EVENT_HANDLED:I = -0x1

.field private static final KEY_EVENT_NOT_HANDLED:I = 0x0

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field static final VERY_WIDE:I = 0x100000

.field static sLastCutCopyOrTextChangedTime:J


# instance fields
.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDeviceProvisionedState:I

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalesChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mTempRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionContainerLayout:I

.field mTextEditSuggestionHighlightStyle:I

.field mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z


# direct methods
.method static synthetic -get0(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    return-object v0
.end method

.method private static synthetic -getandroid-text-Layout$AlignmentSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/widget/TextView;->-android-text-Layout$AlignmentSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/widget/TextView;->-android-text-Layout$AlignmentSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@10
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@19
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@22
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@2b
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@34
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3b
    :goto_4
    sput-object v0, Landroid/widget/TextView;->-android-text-Layout$AlignmentSwitchesValues:[I

    #@3d
    return-object v0

    #@3e
    :catch_0
    move-exception v1

    #@3f
    goto :goto_4

    #@40
    :catch_1
    move-exception v1

    #@41
    goto :goto_3

    #@42
    :catch_2
    move-exception v1

    #@43
    goto :goto_2

    #@44
    :catch_3
    move-exception v1

    #@45
    goto :goto_1

    #@46
    :catch_4
    move-exception v1

    #@47
    goto :goto_0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "inputType"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/TextView;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/TextView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 287
    new-instance v0, Landroid/graphics/RectF;

    #@3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@6
    sput-object v0, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@8
    .line 293
    new-array v0, v2, [Landroid/text/InputFilter;

    #@a
    sput-object v0, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    #@c
    .line 294
    new-instance v0, Landroid/text/SpannedString;

    #@e
    const-string/jumbo v1, ""

    #@11
    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    #@14
    sput-object v0, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    #@16
    .line 299
    const/4 v0, 0x1

    #@17
    new-array v0, v0, [I

    #@19
    const v1, 0x101034d

    #@1c
    aput v1, v0, v2

    #@1e
    sput-object v0, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    #@20
    .line 7043
    new-instance v0, Landroid/text/BoringLayout$Metrics;

    #@22
    invoke-direct {v0}, Landroid/text/BoringLayout$Metrics;-><init>()V

    #@25
    sput-object v0, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@27
    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 696
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 695
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 700
    const v0, 0x1010084

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 699
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 704
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 703
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 75
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 710
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 334
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    #@6
    move-result-object v72

    #@7
    move-object/from16 v0, v72

    #@9
    move-object/from16 v1, p0

    #@b
    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    #@d
    .line 335
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    #@10
    move-result-object v72

    #@11
    move-object/from16 v0, v72

    #@13
    move-object/from16 v1, p0

    #@15
    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    #@17
    .line 541
    const/16 v72, 0x3

    #@19
    move/from16 v0, v72

    #@1b
    move-object/from16 v1, p0

    #@1d
    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@1f
    .line 543
    const/16 v72, -0x1

    #@21
    move/from16 v0, v72

    #@23
    move-object/from16 v1, p0

    #@25
    iput v0, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    #@27
    .line 550
    const/16 v72, 0x0

    #@29
    move/from16 v0, v72

    #@2b
    move-object/from16 v1, p0

    #@2d
    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@2f
    .line 561
    sget-object v72, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    #@31
    move-object/from16 v0, v72

    #@33
    move-object/from16 v1, p0

    #@35
    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@37
    .line 578
    const/16 v72, 0x0

    #@39
    move/from16 v0, v72

    #@3b
    move-object/from16 v1, p0

    #@3d
    iput-boolean v0, v1, Landroid/widget/TextView;->mLocalesChanged:Z

    #@3f
    .line 581
    const v72, 0x800033

    #@42
    move/from16 v0, v72

    #@44
    move-object/from16 v1, p0

    #@46
    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    #@48
    .line 585
    const/16 v72, 0x1

    #@4a
    move/from16 v0, v72

    #@4c
    move-object/from16 v1, p0

    #@4e
    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    #@50
    .line 587
    const/high16 v72, 0x3f800000    # 1.0f

    #@52
    move/from16 v0, v72

    #@54
    move-object/from16 v1, p0

    #@56
    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    #@58
    .line 588
    const/16 v72, 0x0

    #@5a
    move/from16 v0, v72

    #@5c
    move-object/from16 v1, p0

    #@5e
    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    #@60
    .line 593
    const v72, 0x7fffffff

    #@63
    move/from16 v0, v72

    #@65
    move-object/from16 v1, p0

    #@67
    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    #@69
    .line 594
    const/16 v72, 0x1

    #@6b
    move/from16 v0, v72

    #@6d
    move-object/from16 v1, p0

    #@6f
    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    #@71
    .line 595
    const/16 v72, 0x0

    #@73
    move/from16 v0, v72

    #@75
    move-object/from16 v1, p0

    #@77
    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    #@79
    .line 596
    const/16 v72, 0x1

    #@7b
    move/from16 v0, v72

    #@7d
    move-object/from16 v1, p0

    #@7f
    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    #@81
    .line 598
    move-object/from16 v0, p0

    #@83
    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    #@85
    move/from16 v72, v0

    #@87
    move/from16 v0, v72

    #@89
    move-object/from16 v1, p0

    #@8b
    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    #@8d
    .line 599
    move-object/from16 v0, p0

    #@8f
    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    #@91
    move/from16 v72, v0

    #@93
    move/from16 v0, v72

    #@95
    move-object/from16 v1, p0

    #@97
    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    #@99
    .line 601
    const v72, 0x7fffffff

    #@9c
    move/from16 v0, v72

    #@9e
    move-object/from16 v1, p0

    #@a0
    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    #@a2
    .line 602
    const/16 v72, 0x2

    #@a4
    move/from16 v0, v72

    #@a6
    move-object/from16 v1, p0

    #@a8
    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    #@aa
    .line 603
    const/16 v72, 0x0

    #@ac
    move/from16 v0, v72

    #@ae
    move-object/from16 v1, p0

    #@b0
    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    #@b2
    .line 604
    const/16 v72, 0x2

    #@b4
    move/from16 v0, v72

    #@b6
    move-object/from16 v1, p0

    #@b8
    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    #@ba
    .line 607
    const/16 v72, -0x1

    #@bc
    move/from16 v0, v72

    #@be
    move-object/from16 v1, p0

    #@c0
    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@c2
    .line 608
    const/16 v72, 0x1

    #@c4
    move/from16 v0, v72

    #@c6
    move-object/from16 v1, p0

    #@c8
    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    #@ca
    .line 609
    const/16 v72, -0x1

    #@cc
    move/from16 v0, v72

    #@ce
    move-object/from16 v1, p0

    #@d0
    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    #@d2
    .line 621
    sget-object v72, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    #@d4
    move-object/from16 v0, v72

    #@d6
    move-object/from16 v1, p0

    #@d8
    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@da
    .line 627
    const v72, 0x6633b5e5

    #@dd
    move/from16 v0, v72

    #@df
    move-object/from16 v1, p0

    #@e1
    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    #@e3
    .line 630
    const/16 v72, 0x1

    #@e5
    move/from16 v0, v72

    #@e7
    move-object/from16 v1, p0

    #@e9
    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@eb
    .line 661
    const/16 v72, 0x0

    #@ed
    move/from16 v0, v72

    #@ef
    move-object/from16 v1, p0

    #@f1
    iput v0, v1, Landroid/widget/TextView;->mDeviceProvisionedState:I

    #@f3
    .line 712
    const-string/jumbo v72, ""

    #@f6
    move-object/from16 v0, v72

    #@f8
    move-object/from16 v1, p0

    #@fa
    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@fc
    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@ff
    move-result-object v57

    #@100
    .line 715
    .local v57, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v57 .. v57}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@103
    move-result-object v17

    #@104
    .line 717
    .local v17, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v72, Landroid/text/TextPaint;

    #@106
    const/16 v73, 0x1

    #@108
    invoke-direct/range {v72 .. v73}, Landroid/text/TextPaint;-><init>(I)V

    #@10b
    move-object/from16 v0, v72

    #@10d
    move-object/from16 v1, p0

    #@10f
    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@111
    .line 718
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@115
    move-object/from16 v72, v0

    #@117
    invoke-virtual/range {v57 .. v57}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@11a
    move-result-object v73

    #@11b
    move-object/from16 v0, v73

    #@11d
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@11f
    move/from16 v73, v0

    #@121
    move/from16 v0, v73

    #@123
    move-object/from16 v1, v72

    #@125
    iput v0, v1, Landroid/text/TextPaint;->density:F

    #@127
    .line 719
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@12b
    move-object/from16 v72, v0

    #@12d
    move-object/from16 v0, v17

    #@12f
    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@131
    move/from16 v73, v0

    #@133
    invoke-virtual/range {v72 .. v73}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    #@136
    .line 721
    new-instance v72, Landroid/graphics/Paint;

    #@138
    const/16 v73, 0x1

    #@13a
    invoke-direct/range {v72 .. v73}, Landroid/graphics/Paint;-><init>(I)V

    #@13d
    move-object/from16 v0, v72

    #@13f
    move-object/from16 v1, p0

    #@141
    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@143
    .line 722
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@147
    move-object/from16 v72, v0

    #@149
    move-object/from16 v0, v17

    #@14b
    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@14d
    move/from16 v73, v0

    #@14f
    invoke-virtual/range {v72 .. v73}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    #@152
    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    #@155
    move-result-object v72

    #@156
    move-object/from16 v0, v72

    #@158
    move-object/from16 v1, p0

    #@15a
    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@15c
    .line 726
    const/16 v72, 0x0

    #@15e
    move-object/from16 v0, v72

    #@160
    move-object/from16 v1, p0

    #@162
    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@164
    .line 728
    const/16 v64, 0x0

    #@166
    .line 729
    .local v64, "textColorHighlight":I
    const/16 v63, 0x0

    #@168
    .line 730
    .local v63, "textColor":Landroid/content/res/ColorStateList;
    const/16 v65, 0x0

    #@16a
    .line 731
    .local v65, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v66, 0x0

    #@16c
    .line 732
    .local v66, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v67, 0xf

    #@16e
    .line 733
    .local v67, "textSize":I
    const/16 v40, 0x0

    #@170
    .line 734
    .local v40, "fontFamily":Ljava/lang/String;
    const/16 v41, 0x0

    #@172
    .line 735
    .local v41, "fontFamilyExplicit":Z
    const/16 v69, -0x1

    #@174
    .line 736
    .local v69, "typefaceIndex":I
    const/16 v61, -0x1

    #@176
    .line 737
    .local v61, "styleIndex":I
    const/4 v6, 0x0

    #@177
    .line 738
    .local v6, "allCaps":Z
    const/16 v59, 0x0

    #@179
    .line 739
    .local v59, "shadowcolor":I
    const/16 v28, 0x0

    #@17b
    .local v28, "dx":F
    const/16 v29, 0x0

    #@17d
    .local v29, "dy":F
    const/16 v56, 0x0

    #@17f
    .line 740
    .local v56, "r":F
    const/16 v34, 0x0

    #@181
    .line 741
    .local v34, "elegant":Z
    const/16 v47, 0x0

    #@183
    .line 742
    .local v47, "letterSpacing":F
    const/16 v42, 0x0

    #@185
    .line 743
    .local v42, "fontFeatureSettings":Ljava/lang/String;
    const/16 v72, 0x0

    #@187
    move/from16 v0, v72

    #@189
    move-object/from16 v1, p0

    #@18b
    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    #@18d
    .line 744
    const/16 v72, 0x0

    #@18f
    move/from16 v0, v72

    #@191
    move-object/from16 v1, p0

    #@193
    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@195
    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@198
    move-result-object v68

    #@199
    .line 755
    .local v68, "theme":Landroid/content/res/Resources$Theme;
    sget-object v72, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    #@19b
    .line 754
    move-object/from16 v0, v68

    #@19d
    move-object/from16 v1, p2

    #@19f
    move-object/from16 v2, v72

    #@1a1
    move/from16 v3, p3

    #@1a3
    move/from16 v4, p4

    #@1a5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1a8
    move-result-object v5

    #@1a9
    .line 756
    .local v5, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    #@1aa
    .line 758
    .local v8, "appearance":Landroid/content/res/TypedArray;
    const/16 v72, 0x0

    #@1ac
    const/16 v73, -0x1

    #@1ae
    .line 757
    move/from16 v0, v72

    #@1b0
    move/from16 v1, v73

    #@1b2
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1b5
    move-result v7

    #@1b6
    .line 759
    .local v7, "ap":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@1b9
    .line 760
    const/16 v72, -0x1

    #@1bb
    move/from16 v0, v72

    #@1bd
    if-eq v7, v0, :cond_0

    #@1bf
    .line 762
    sget-object v72, Lcom/android/internal/R$styleable;->TextAppearance:[I

    #@1c1
    .line 761
    move-object/from16 v0, v68

    #@1c3
    move-object/from16 v1, v72

    #@1c5
    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@1c8
    move-result-object v8

    #@1c9
    .line 764
    .end local v8    # "appearance":Landroid/content/res/TypedArray;
    :cond_0
    if-eqz v8, :cond_2

    #@1cb
    .line 765
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@1ce
    move-result v50

    #@1cf
    .line 766
    .local v50, "n":I
    const/16 v44, 0x0

    #@1d1
    .end local v6    # "allCaps":Z
    .end local v34    # "elegant":Z
    .end local v40    # "fontFamily":Ljava/lang/String;
    .end local v42    # "fontFeatureSettings":Ljava/lang/String;
    .end local v63    # "textColor":Landroid/content/res/ColorStateList;
    .end local v65    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v66    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v44, "i":I
    :goto_0
    move/from16 v0, v44

    #@1d3
    move/from16 v1, v50

    #@1d5
    if-ge v0, v1, :cond_1

    #@1d7
    .line 767
    move/from16 v0, v44

    #@1d9
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1dc
    move-result v9

    #@1dd
    .line 769
    .local v9, "attr":I
    packed-switch v9, :pswitch_data_0

    #@1e0
    .line 766
    :goto_1
    add-int/lit8 v44, v44, 0x1

    #@1e2
    goto :goto_0

    #@1e3
    .line 771
    :pswitch_0
    move/from16 v0, v64

    #@1e5
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@1e8
    move-result v64

    #@1e9
    goto :goto_1

    #@1ea
    .line 775
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1ed
    move-result-object v63

    #@1ee
    .local v63, "textColor":Landroid/content/res/ColorStateList;
    goto :goto_1

    #@1ef
    .line 779
    .end local v63    # "textColor":Landroid/content/res/ColorStateList;
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1f2
    move-result-object v65

    #@1f3
    .local v65, "textColorHint":Landroid/content/res/ColorStateList;
    goto :goto_1

    #@1f4
    .line 783
    .end local v65    # "textColorHint":Landroid/content/res/ColorStateList;
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1f7
    move-result-object v66

    #@1f8
    .local v66, "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_1

    #@1f9
    .line 787
    .end local v66    # "textColorLink":Landroid/content/res/ColorStateList;
    :pswitch_4
    move/from16 v0, v67

    #@1fb
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1fe
    move-result v67

    #@1ff
    goto :goto_1

    #@200
    .line 791
    :pswitch_5
    const/16 v72, -0x1

    #@202
    move/from16 v0, v72

    #@204
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@207
    move-result v69

    #@208
    goto :goto_1

    #@209
    .line 795
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@20c
    move-result-object v40

    #@20d
    .local v40, "fontFamily":Ljava/lang/String;
    goto :goto_1

    #@20e
    .line 799
    .end local v40    # "fontFamily":Ljava/lang/String;
    :pswitch_7
    const/16 v72, -0x1

    #@210
    move/from16 v0, v72

    #@212
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@215
    move-result v61

    #@216
    goto :goto_1

    #@217
    .line 803
    :pswitch_8
    const/16 v72, 0x0

    #@219
    move/from16 v0, v72

    #@21b
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@21e
    move-result v6

    #@21f
    .local v6, "allCaps":Z
    goto :goto_1

    #@220
    .line 807
    .end local v6    # "allCaps":Z
    :pswitch_9
    const/16 v72, 0x0

    #@222
    move/from16 v0, v72

    #@224
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@227
    move-result v59

    #@228
    goto :goto_1

    #@229
    .line 811
    :pswitch_a
    const/16 v72, 0x0

    #@22b
    move/from16 v0, v72

    #@22d
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@230
    move-result v28

    #@231
    goto :goto_1

    #@232
    .line 815
    :pswitch_b
    const/16 v72, 0x0

    #@234
    move/from16 v0, v72

    #@236
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@239
    move-result v29

    #@23a
    goto :goto_1

    #@23b
    .line 819
    :pswitch_c
    const/16 v72, 0x0

    #@23d
    move/from16 v0, v72

    #@23f
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@242
    move-result v56

    #@243
    goto :goto_1

    #@244
    .line 823
    :pswitch_d
    const/16 v72, 0x0

    #@246
    move/from16 v0, v72

    #@248
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@24b
    move-result v34

    #@24c
    .local v34, "elegant":Z
    goto :goto_1

    #@24d
    .line 827
    .end local v34    # "elegant":Z
    :pswitch_e
    const/16 v72, 0x0

    #@24f
    move/from16 v0, v72

    #@251
    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@254
    move-result v47

    #@255
    goto :goto_1

    #@256
    .line 831
    :pswitch_f
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@259
    move-result-object v42

    #@25a
    .local v42, "fontFeatureSettings":Ljava/lang/String;
    goto :goto_1

    #@25b
    .line 836
    .end local v9    # "attr":I
    .end local v42    # "fontFeatureSettings":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@25e
    .line 839
    .end local v44    # "i":I
    .end local v50    # "n":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    #@261
    move-result v33

    #@262
    .line 840
    .local v33, "editable":Z
    const/16 v45, 0x0

    #@264
    .line 841
    .local v45, "inputMethod":Ljava/lang/CharSequence;
    const/16 v52, 0x0

    #@266
    .line 842
    .local v52, "numeric":I
    const/16 v18, 0x0

    #@268
    .line 843
    .local v18, "digits":Ljava/lang/CharSequence;
    const/16 v55, 0x0

    #@26a
    .line 844
    .local v55, "phone":Z
    const/4 v11, 0x0

    #@26b
    .line 845
    .local v11, "autotext":Z
    const/4 v10, -0x1

    #@26c
    .line 846
    .local v10, "autocap":I
    const/4 v13, 0x0

    #@26d
    .line 847
    .local v13, "buffertype":I
    const/16 v58, 0x0

    #@26f
    .line 848
    .local v58, "selectallonfocus":Z
    const/16 v21, 0x0

    #@271
    .local v21, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    #@273
    .local v27, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    #@275
    .line 849
    .local v23, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    #@277
    .local v19, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    #@279
    .local v24, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    #@27b
    .line 850
    .local v20, "drawableEnd":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    #@27d
    .line 851
    .local v25, "drawableTint":Landroid/content/res/ColorStateList;
    const/16 v26, 0x0

    #@27f
    .line 852
    .local v26, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    const/16 v22, 0x0

    #@281
    .line 853
    .local v22, "drawablePadding":I
    const/16 v35, -0x1

    #@283
    .line 854
    .local v35, "ellipsize":I
    const/16 v60, 0x0

    #@285
    .line 855
    .local v60, "singleLine":Z
    const/16 v49, -0x1

    #@287
    .line 856
    .local v49, "maxlength":I
    const-string/jumbo v62, ""

    #@28a
    .line 857
    .local v62, "text":Ljava/lang/CharSequence;
    const/16 v43, 0x0

    #@28c
    .line 858
    .local v43, "hint":Ljava/lang/CharSequence;
    const/16 v53, 0x0

    #@28e
    .line 859
    .local v53, "password":Z
    const/16 v46, 0x0

    #@290
    .line 862
    .local v46, "inputType":I
    sget-object v72, Lcom/android/internal/R$styleable;->TextView:[I

    #@292
    .line 861
    move-object/from16 v0, v68

    #@294
    move-object/from16 v1, p2

    #@296
    move-object/from16 v2, v72

    #@298
    move/from16 v3, p3

    #@29a
    move/from16 v4, p4

    #@29c
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@29f
    move-result-object v5

    #@2a0
    .line 864
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@2a3
    move-result v50

    #@2a4
    .line 865
    .restart local v50    # "n":I
    const/16 v44, 0x0

    #@2a6
    .end local v11    # "autotext":Z
    .end local v18    # "digits":Ljava/lang/CharSequence;
    .end local v19    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .end local v20    # "drawableEnd":Landroid/graphics/drawable/Drawable;
    .end local v21    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v23    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .end local v24    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .end local v25    # "drawableTint":Landroid/content/res/ColorStateList;
    .end local v26    # "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    .end local v27    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .end local v43    # "hint":Ljava/lang/CharSequence;
    .end local v45    # "inputMethod":Ljava/lang/CharSequence;
    .end local v53    # "password":Z
    .end local v55    # "phone":Z
    .end local v58    # "selectallonfocus":Z
    .end local v60    # "singleLine":Z
    .restart local v44    # "i":I
    :goto_2
    move/from16 v0, v44

    #@2a8
    move/from16 v1, v50

    #@2aa
    if-ge v0, v1, :cond_4

    #@2ac
    .line 866
    move/from16 v0, v44

    #@2ae
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@2b1
    move-result v9

    #@2b2
    .line 868
    .restart local v9    # "attr":I
    packed-switch v9, :pswitch_data_1

    #@2b5
    .line 865
    :cond_3
    :goto_3
    :pswitch_10
    add-int/lit8 v44, v44, 0x1

    #@2b7
    goto :goto_2

    #@2b8
    .line 870
    :pswitch_11
    move/from16 v0, v33

    #@2ba
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2bd
    move-result v33

    #@2be
    goto :goto_3

    #@2bf
    .line 874
    :pswitch_12
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@2c2
    move-result-object v45

    #@2c3
    .local v45, "inputMethod":Ljava/lang/CharSequence;
    goto :goto_3

    #@2c4
    .line 878
    .end local v45    # "inputMethod":Ljava/lang/CharSequence;
    :pswitch_13
    move/from16 v0, v52

    #@2c6
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2c9
    move-result v52

    #@2ca
    goto :goto_3

    #@2cb
    .line 882
    :pswitch_14
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@2ce
    move-result-object v18

    #@2cf
    .local v18, "digits":Ljava/lang/CharSequence;
    goto :goto_3

    #@2d0
    .line 886
    .end local v18    # "digits":Ljava/lang/CharSequence;
    :pswitch_15
    move/from16 v0, v55

    #@2d2
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2d5
    move-result v55

    #@2d6
    .local v55, "phone":Z
    goto :goto_3

    #@2d7
    .line 890
    .end local v55    # "phone":Z
    :pswitch_16
    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2da
    move-result v11

    #@2db
    .local v11, "autotext":Z
    goto :goto_3

    #@2dc
    .line 894
    .end local v11    # "autotext":Z
    :pswitch_17
    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2df
    move-result v10

    #@2e0
    goto :goto_3

    #@2e1
    .line 898
    :pswitch_18
    invoke-virtual {v5, v9, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2e4
    move-result v13

    #@2e5
    goto :goto_3

    #@2e6
    .line 902
    :pswitch_19
    move/from16 v0, v58

    #@2e8
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2eb
    move-result v58

    #@2ec
    .local v58, "selectallonfocus":Z
    goto :goto_3

    #@2ed
    .line 906
    .end local v58    # "selectallonfocus":Z
    :pswitch_1a
    const/16 v72, 0x0

    #@2ef
    move/from16 v0, v72

    #@2f1
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2f4
    move-result v72

    #@2f5
    move/from16 v0, v72

    #@2f7
    move-object/from16 v1, p0

    #@2f9
    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    #@2fb
    goto :goto_3

    #@2fc
    .line 910
    :pswitch_1b
    const/16 v72, 0x1

    #@2fe
    move/from16 v0, v72

    #@300
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@303
    move-result v72

    #@304
    move/from16 v0, v72

    #@306
    move-object/from16 v1, p0

    #@308
    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    #@30a
    goto :goto_3

    #@30b
    .line 914
    :pswitch_1c
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@30e
    move-result-object v21

    #@30f
    .local v21, "drawableLeft":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@310
    .line 918
    .end local v21    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :pswitch_1d
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@313
    move-result-object v27

    #@314
    .local v27, "drawableTop":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@315
    .line 922
    .end local v27    # "drawableTop":Landroid/graphics/drawable/Drawable;
    :pswitch_1e
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@318
    move-result-object v23

    #@319
    .local v23, "drawableRight":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@31a
    .line 926
    .end local v23    # "drawableRight":Landroid/graphics/drawable/Drawable;
    :pswitch_1f
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@31d
    move-result-object v19

    #@31e
    .local v19, "drawableBottom":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@31f
    .line 930
    .end local v19    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    :pswitch_20
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@322
    move-result-object v24

    #@323
    .local v24, "drawableStart":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@324
    .line 934
    .end local v24    # "drawableStart":Landroid/graphics/drawable/Drawable;
    :pswitch_21
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@327
    move-result-object v20

    #@328
    .local v20, "drawableEnd":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@329
    .line 938
    .end local v20    # "drawableEnd":Landroid/graphics/drawable/Drawable;
    :pswitch_22
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@32c
    move-result-object v25

    #@32d
    .local v25, "drawableTint":Landroid/content/res/ColorStateList;
    goto :goto_3

    #@32e
    .line 942
    .end local v25    # "drawableTint":Landroid/content/res/ColorStateList;
    :pswitch_23
    const/16 v72, -0x1

    #@330
    move/from16 v0, v72

    #@332
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@335
    move-result v72

    #@336
    move/from16 v0, v72

    #@338
    move-object/from16 v1, v26

    #@33a
    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@33d
    move-result-object v26

    #@33e
    .local v26, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    goto/16 :goto_3

    #@340
    .line 946
    .end local v26    # "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_24
    move/from16 v0, v22

    #@342
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@345
    move-result v22

    #@346
    goto/16 :goto_3

    #@348
    .line 950
    :pswitch_25
    const/16 v72, -0x1

    #@34a
    move/from16 v0, v72

    #@34c
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@34f
    move-result v72

    #@350
    move-object/from16 v0, p0

    #@352
    move/from16 v1, v72

    #@354
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    #@357
    goto/16 :goto_3

    #@359
    .line 954
    :pswitch_26
    const/16 v72, -0x1

    #@35b
    move/from16 v0, v72

    #@35d
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@360
    move-result v72

    #@361
    move-object/from16 v0, p0

    #@363
    move/from16 v1, v72

    #@365
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    #@368
    goto/16 :goto_3

    #@36a
    .line 958
    :pswitch_27
    const/16 v72, -0x1

    #@36c
    move/from16 v0, v72

    #@36e
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@371
    move-result v72

    #@372
    move-object/from16 v0, p0

    #@374
    move/from16 v1, v72

    #@376
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    #@379
    goto/16 :goto_3

    #@37b
    .line 962
    :pswitch_28
    const/16 v72, -0x1

    #@37d
    move/from16 v0, v72

    #@37f
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@382
    move-result v72

    #@383
    move-object/from16 v0, p0

    #@385
    move/from16 v1, v72

    #@387
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    #@38a
    goto/16 :goto_3

    #@38c
    .line 966
    :pswitch_29
    const/16 v72, -0x1

    #@38e
    move/from16 v0, v72

    #@390
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@393
    move-result v72

    #@394
    move-object/from16 v0, p0

    #@396
    move/from16 v1, v72

    #@398
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    #@39b
    goto/16 :goto_3

    #@39d
    .line 970
    :pswitch_2a
    const/16 v72, -0x1

    #@39f
    move/from16 v0, v72

    #@3a1
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3a4
    move-result v72

    #@3a5
    move-object/from16 v0, p0

    #@3a7
    move/from16 v1, v72

    #@3a9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    #@3ac
    goto/16 :goto_3

    #@3ae
    .line 974
    :pswitch_2b
    const/16 v72, -0x1

    #@3b0
    move/from16 v0, v72

    #@3b2
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3b5
    move-result v72

    #@3b6
    move-object/from16 v0, p0

    #@3b8
    move/from16 v1, v72

    #@3ba
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    #@3bd
    goto/16 :goto_3

    #@3bf
    .line 978
    :pswitch_2c
    const/16 v72, -0x1

    #@3c1
    move/from16 v0, v72

    #@3c3
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3c6
    move-result v72

    #@3c7
    move-object/from16 v0, p0

    #@3c9
    move/from16 v1, v72

    #@3cb
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    #@3ce
    goto/16 :goto_3

    #@3d0
    .line 982
    :pswitch_2d
    const/16 v72, -0x1

    #@3d2
    move/from16 v0, v72

    #@3d4
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3d7
    move-result v72

    #@3d8
    move-object/from16 v0, p0

    #@3da
    move/from16 v1, v72

    #@3dc
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    #@3df
    goto/16 :goto_3

    #@3e1
    .line 986
    :pswitch_2e
    const/16 v72, -0x1

    #@3e3
    move/from16 v0, v72

    #@3e5
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3e8
    move-result v72

    #@3e9
    move-object/from16 v0, p0

    #@3eb
    move/from16 v1, v72

    #@3ed
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    #@3f0
    goto/16 :goto_3

    #@3f2
    .line 990
    :pswitch_2f
    const/16 v72, -0x1

    #@3f4
    move/from16 v0, v72

    #@3f6
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3f9
    move-result v72

    #@3fa
    move-object/from16 v0, p0

    #@3fc
    move/from16 v1, v72

    #@3fe
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    #@401
    goto/16 :goto_3

    #@403
    .line 994
    :pswitch_30
    const/16 v72, -0x1

    #@405
    move/from16 v0, v72

    #@407
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@40a
    move-result v72

    #@40b
    move-object/from16 v0, p0

    #@40d
    move/from16 v1, v72

    #@40f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    #@412
    goto/16 :goto_3

    #@414
    .line 998
    :pswitch_31
    const/16 v72, -0x1

    #@416
    move/from16 v0, v72

    #@418
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@41b
    move-result v72

    #@41c
    move-object/from16 v0, p0

    #@41e
    move/from16 v1, v72

    #@420
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    #@423
    goto/16 :goto_3

    #@425
    .line 1002
    :pswitch_32
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@428
    move-result-object v43

    #@429
    .local v43, "hint":Ljava/lang/CharSequence;
    goto/16 :goto_3

    #@42b
    .line 1006
    .end local v43    # "hint":Ljava/lang/CharSequence;
    :pswitch_33
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@42e
    move-result-object v62

    #@42f
    goto/16 :goto_3

    #@431
    .line 1010
    :pswitch_34
    const/16 v72, 0x0

    #@433
    move/from16 v0, v72

    #@435
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@438
    move-result v72

    #@439
    if-eqz v72, :cond_3

    #@43b
    .line 1011
    const/16 v72, 0x1

    #@43d
    move-object/from16 v0, p0

    #@43f
    move/from16 v1, v72

    #@441
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    #@444
    goto/16 :goto_3

    #@446
    .line 1016
    :pswitch_35
    move/from16 v0, v60

    #@448
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@44b
    move-result v60

    #@44c
    .local v60, "singleLine":Z
    goto/16 :goto_3

    #@44e
    .line 1020
    .end local v60    # "singleLine":Z
    :pswitch_36
    move/from16 v0, v35

    #@450
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@453
    move-result v35

    #@454
    goto/16 :goto_3

    #@456
    .line 1024
    :pswitch_37
    move-object/from16 v0, p0

    #@458
    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@45a
    move/from16 v72, v0

    #@45c
    move/from16 v0, v72

    #@45e
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@461
    move-result v72

    #@462
    move-object/from16 v0, p0

    #@464
    move/from16 v1, v72

    #@466
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    #@469
    goto/16 :goto_3

    #@46b
    .line 1028
    :pswitch_38
    const/16 v72, 0x1

    #@46d
    move/from16 v0, v72

    #@46f
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@472
    move-result v72

    #@473
    if-nez v72, :cond_3

    #@475
    .line 1029
    const/16 v72, 0x0

    #@477
    move-object/from16 v0, p0

    #@479
    move/from16 v1, v72

    #@47b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    #@47e
    goto/16 :goto_3

    #@480
    .line 1034
    :pswitch_39
    const/16 v72, 0x1

    #@482
    move/from16 v0, v72

    #@484
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@487
    move-result v72

    #@488
    if-nez v72, :cond_3

    #@48a
    .line 1035
    const/16 v72, 0x0

    #@48c
    move-object/from16 v0, p0

    #@48e
    move/from16 v1, v72

    #@490
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    #@493
    goto/16 :goto_3

    #@495
    .line 1040
    :pswitch_3a
    const/16 v72, -0x1

    #@497
    move/from16 v0, v72

    #@499
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@49c
    move-result v49

    #@49d
    goto/16 :goto_3

    #@49f
    .line 1044
    :pswitch_3b
    const/high16 v72, 0x3f800000    # 1.0f

    #@4a1
    move/from16 v0, v72

    #@4a3
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4a6
    move-result v72

    #@4a7
    move-object/from16 v0, p0

    #@4a9
    move/from16 v1, v72

    #@4ab
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    #@4ae
    goto/16 :goto_3

    #@4b0
    .line 1048
    :pswitch_3c
    const/16 v72, 0x0

    #@4b2
    move/from16 v0, v72

    #@4b4
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4b7
    move-result v72

    #@4b8
    move/from16 v0, v72

    #@4ba
    move-object/from16 v1, p0

    #@4bc
    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    #@4be
    goto/16 :goto_3

    #@4c0
    .line 1052
    :pswitch_3d
    const/16 v72, 0x0

    #@4c2
    move/from16 v0, v72

    #@4c4
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4c7
    move-result v59

    #@4c8
    goto/16 :goto_3

    #@4ca
    .line 1056
    :pswitch_3e
    const/16 v72, 0x0

    #@4cc
    move/from16 v0, v72

    #@4ce
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4d1
    move-result v28

    #@4d2
    goto/16 :goto_3

    #@4d4
    .line 1060
    :pswitch_3f
    const/16 v72, 0x0

    #@4d6
    move/from16 v0, v72

    #@4d8
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4db
    move-result v29

    #@4dc
    goto/16 :goto_3

    #@4de
    .line 1064
    :pswitch_40
    const/16 v72, 0x0

    #@4e0
    move/from16 v0, v72

    #@4e2
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4e5
    move-result v56

    #@4e6
    goto/16 :goto_3

    #@4e8
    .line 1068
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    #@4eb
    move-result v72

    #@4ec
    move/from16 v0, v72

    #@4ee
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4f1
    move-result v72

    #@4f2
    move-object/from16 v0, p0

    #@4f4
    move/from16 v1, v72

    #@4f6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@4f9
    goto/16 :goto_3

    #@4fb
    .line 1072
    :pswitch_42
    move/from16 v0, v64

    #@4fd
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@500
    move-result v64

    #@501
    goto/16 :goto_3

    #@503
    .line 1076
    :pswitch_43
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@506
    move-result-object v63

    #@507
    .restart local v63    # "textColor":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    #@509
    .line 1080
    .end local v63    # "textColor":Landroid/content/res/ColorStateList;
    :pswitch_44
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@50c
    move-result-object v65

    #@50d
    .restart local v65    # "textColorHint":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    #@50f
    .line 1084
    .end local v65    # "textColorHint":Landroid/content/res/ColorStateList;
    :pswitch_45
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@512
    move-result-object v66

    #@513
    .restart local v66    # "textColorLink":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    #@515
    .line 1088
    .end local v66    # "textColorLink":Landroid/content/res/ColorStateList;
    :pswitch_46
    move/from16 v0, v67

    #@517
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@51a
    move-result v67

    #@51b
    goto/16 :goto_3

    #@51d
    .line 1092
    :pswitch_47
    move/from16 v0, v69

    #@51f
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@522
    move-result v69

    #@523
    goto/16 :goto_3

    #@525
    .line 1096
    :pswitch_48
    move/from16 v0, v61

    #@527
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@52a
    move-result v61

    #@52b
    goto/16 :goto_3

    #@52d
    .line 1100
    :pswitch_49
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@530
    move-result-object v40

    #@531
    .line 1101
    .restart local v40    # "fontFamily":Ljava/lang/String;
    const/16 v41, 0x1

    #@533
    .line 1102
    goto/16 :goto_3

    #@535
    .line 1105
    .end local v40    # "fontFamily":Ljava/lang/String;
    :pswitch_4a
    move/from16 v0, v53

    #@537
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@53a
    move-result v53

    #@53b
    .local v53, "password":Z
    goto/16 :goto_3

    #@53d
    .line 1109
    .end local v53    # "password":Z
    :pswitch_4b
    move-object/from16 v0, p0

    #@53f
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@541
    move/from16 v72, v0

    #@543
    move/from16 v0, v72

    #@545
    float-to-int v0, v0

    #@546
    move/from16 v72, v0

    #@548
    move/from16 v0, v72

    #@54a
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@54d
    move-result v72

    #@54e
    move/from16 v0, v72

    #@550
    int-to-float v0, v0

    #@551
    move/from16 v72, v0

    #@553
    move/from16 v0, v72

    #@555
    move-object/from16 v1, p0

    #@557
    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    #@559
    goto/16 :goto_3

    #@55b
    .line 1113
    :pswitch_4c
    move-object/from16 v0, p0

    #@55d
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@55f
    move/from16 v72, v0

    #@561
    move/from16 v0, v72

    #@563
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@566
    move-result v72

    #@567
    move/from16 v0, v72

    #@569
    move-object/from16 v1, p0

    #@56b
    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    #@56d
    goto/16 :goto_3

    #@56f
    .line 1117
    :pswitch_4d
    const/16 v72, 0x0

    #@571
    move/from16 v0, v72

    #@573
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@576
    move-result v46

    #@577
    goto/16 :goto_3

    #@579
    .line 1121
    :pswitch_4e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@57c
    .line 1122
    move-object/from16 v0, p0

    #@57e
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@580
    move-object/from16 v72, v0

    #@582
    const/16 v73, 0x1

    #@584
    move/from16 v0, v73

    #@586
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@589
    move-result v73

    #@58a
    move/from16 v0, v73

    #@58c
    move-object/from16 v1, v72

    #@58e
    iput-boolean v0, v1, Landroid/widget/Editor;->mAllowUndo:Z

    #@590
    goto/16 :goto_3

    #@592
    .line 1126
    :pswitch_4f
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@595
    .line 1127
    move-object/from16 v0, p0

    #@597
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@599
    move-object/from16 v72, v0

    #@59b
    invoke-virtual/range {v72 .. v72}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@59e
    .line 1128
    move-object/from16 v0, p0

    #@5a0
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5a2
    move-object/from16 v72, v0

    #@5a4
    move-object/from16 v0, v72

    #@5a6
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@5a8
    move-object/from16 v72, v0

    #@5aa
    .line 1129
    move-object/from16 v0, p0

    #@5ac
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5ae
    move-object/from16 v73, v0

    #@5b0
    move-object/from16 v0, v73

    #@5b2
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@5b4
    move-object/from16 v73, v0

    #@5b6
    move-object/from16 v0, v73

    #@5b8
    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@5ba
    move/from16 v73, v0

    #@5bc
    .line 1128
    move/from16 v0, v73

    #@5be
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5c1
    move-result v73

    #@5c2
    move/from16 v0, v73

    #@5c4
    move-object/from16 v1, v72

    #@5c6
    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@5c8
    goto/16 :goto_3

    #@5ca
    .line 1133
    :pswitch_50
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@5cd
    .line 1134
    move-object/from16 v0, p0

    #@5cf
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5d1
    move-object/from16 v72, v0

    #@5d3
    invoke-virtual/range {v72 .. v72}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@5d6
    .line 1135
    move-object/from16 v0, p0

    #@5d8
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5da
    move-object/from16 v72, v0

    #@5dc
    move-object/from16 v0, v72

    #@5de
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@5e0
    move-object/from16 v72, v0

    #@5e2
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@5e5
    move-result-object v73

    #@5e6
    move-object/from16 v0, v73

    #@5e8
    move-object/from16 v1, v72

    #@5ea
    iput-object v0, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    #@5ec
    goto/16 :goto_3

    #@5ee
    .line 1139
    :pswitch_51
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@5f1
    .line 1140
    move-object/from16 v0, p0

    #@5f3
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5f5
    move-object/from16 v72, v0

    #@5f7
    invoke-virtual/range {v72 .. v72}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@5fa
    .line 1141
    move-object/from16 v0, p0

    #@5fc
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5fe
    move-object/from16 v72, v0

    #@600
    move-object/from16 v0, v72

    #@602
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@604
    move-object/from16 v72, v0

    #@606
    .line 1142
    move-object/from16 v0, p0

    #@608
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@60a
    move-object/from16 v73, v0

    #@60c
    move-object/from16 v0, v73

    #@60e
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@610
    move-object/from16 v73, v0

    #@612
    move-object/from16 v0, v73

    #@614
    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@616
    move/from16 v73, v0

    #@618
    .line 1141
    move/from16 v0, v73

    #@61a
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@61d
    move-result v73

    #@61e
    move/from16 v0, v73

    #@620
    move-object/from16 v1, v72

    #@622
    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@624
    goto/16 :goto_3

    #@626
    .line 1146
    :pswitch_52
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@629
    move-result-object v72

    #@62a
    move-object/from16 v0, p0

    #@62c
    move-object/from16 v1, v72

    #@62e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    #@631
    goto/16 :goto_3

    #@633
    .line 1151
    :pswitch_53
    const/16 v72, 0x0

    #@635
    :try_start_0
    move/from16 v0, v72

    #@637
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@63a
    move-result v72

    #@63b
    move-object/from16 v0, p0

    #@63d
    move/from16 v1, v72

    #@63f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@642
    goto/16 :goto_3

    #@644
    .line 1152
    :catch_0
    move-exception v32

    #@645
    .line 1153
    .local v32, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v72, "TextView"

    #@648
    const-string/jumbo v73, "Failure reading input extras"

    #@64b
    move-object/from16 v0, v72

    #@64d
    move-object/from16 v1, v73

    #@64f
    move-object/from16 v2, v32

    #@651
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@654
    goto/16 :goto_3

    #@656
    .line 1154
    .end local v32    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v30

    #@657
    .line 1155
    .local v30, "e":Ljava/io/IOException;
    const-string/jumbo v72, "TextView"

    #@65a
    const-string/jumbo v73, "Failure reading input extras"

    #@65d
    move-object/from16 v0, v72

    #@65f
    move-object/from16 v1, v73

    #@661
    move-object/from16 v2, v30

    #@663
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@666
    goto/16 :goto_3

    #@668
    .line 1160
    .end local v30    # "e":Ljava/io/IOException;
    :pswitch_54
    const/16 v72, 0x0

    #@66a
    move/from16 v0, v72

    #@66c
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@66f
    move-result v72

    #@670
    move/from16 v0, v72

    #@672
    move-object/from16 v1, p0

    #@674
    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    #@676
    goto/16 :goto_3

    #@678
    .line 1164
    :pswitch_55
    const/16 v72, 0x0

    #@67a
    move/from16 v0, v72

    #@67c
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@67f
    move-result v72

    #@680
    move/from16 v0, v72

    #@682
    move-object/from16 v1, p0

    #@684
    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    #@686
    goto/16 :goto_3

    #@688
    .line 1168
    :pswitch_56
    const/16 v72, 0x0

    #@68a
    move/from16 v0, v72

    #@68c
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@68f
    move-result v72

    #@690
    move/from16 v0, v72

    #@692
    move-object/from16 v1, p0

    #@694
    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    #@696
    goto/16 :goto_3

    #@698
    .line 1172
    :pswitch_57
    const/16 v72, 0x0

    #@69a
    move/from16 v0, v72

    #@69c
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@69f
    move-result v72

    #@6a0
    move/from16 v0, v72

    #@6a2
    move-object/from16 v1, p0

    #@6a4
    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    #@6a6
    goto/16 :goto_3

    #@6a8
    .line 1176
    :pswitch_58
    const/16 v72, 0x0

    #@6aa
    move/from16 v0, v72

    #@6ac
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@6af
    move-result v72

    #@6b0
    move/from16 v0, v72

    #@6b2
    move-object/from16 v1, p0

    #@6b4
    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    #@6b6
    goto/16 :goto_3

    #@6b8
    .line 1180
    :pswitch_59
    const/16 v72, 0x0

    #@6ba
    move/from16 v0, v72

    #@6bc
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@6bf
    move-result v72

    #@6c0
    move/from16 v0, v72

    #@6c2
    move-object/from16 v1, p0

    #@6c4
    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionContainerLayout:I

    #@6c6
    goto/16 :goto_3

    #@6c8
    .line 1184
    :pswitch_5a
    const/16 v72, 0x0

    #@6ca
    move/from16 v0, v72

    #@6cc
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@6cf
    move-result v72

    #@6d0
    move/from16 v0, v72

    #@6d2
    move-object/from16 v1, p0

    #@6d4
    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionHighlightStyle:I

    #@6d6
    goto/16 :goto_3

    #@6d8
    .line 1188
    :pswitch_5b
    const/16 v72, 0x0

    #@6da
    move/from16 v0, v72

    #@6dc
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6df
    move-result v72

    #@6e0
    move-object/from16 v0, p0

    #@6e2
    move/from16 v1, v72

    #@6e4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    #@6e7
    goto/16 :goto_3

    #@6e9
    .line 1192
    :pswitch_5c
    const/16 v72, 0x0

    #@6eb
    move/from16 v0, v72

    #@6ed
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6f0
    move-result v6

    #@6f1
    .restart local v6    # "allCaps":Z
    goto/16 :goto_3

    #@6f3
    .line 1196
    .end local v6    # "allCaps":Z
    :pswitch_5d
    const/16 v72, 0x0

    #@6f5
    move/from16 v0, v72

    #@6f7
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6fa
    move-result v34

    #@6fb
    .restart local v34    # "elegant":Z
    goto/16 :goto_3

    #@6fd
    .line 1200
    .end local v34    # "elegant":Z
    :pswitch_5e
    const/16 v72, 0x0

    #@6ff
    move/from16 v0, v72

    #@701
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@704
    move-result v47

    #@705
    goto/16 :goto_3

    #@707
    .line 1204
    :pswitch_5f
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@70a
    move-result-object v42

    #@70b
    .restart local v42    # "fontFeatureSettings":Ljava/lang/String;
    goto/16 :goto_3

    #@70d
    .line 1208
    .end local v42    # "fontFeatureSettings":Ljava/lang/String;
    :pswitch_60
    const/16 v72, 0x0

    #@70f
    move/from16 v0, v72

    #@711
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@714
    move-result v72

    #@715
    move/from16 v0, v72

    #@717
    move-object/from16 v1, p0

    #@719
    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    #@71b
    goto/16 :goto_3

    #@71d
    .line 1212
    :pswitch_61
    const/16 v72, 0x0

    #@71f
    move/from16 v0, v72

    #@721
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@724
    move-result v72

    #@725
    move/from16 v0, v72

    #@727
    move-object/from16 v1, p0

    #@729
    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@72b
    goto/16 :goto_3

    #@72d
    .line 1216
    .end local v9    # "attr":I
    :cond_4
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@730
    .line 1218
    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@732
    .line 1221
    .local v12, "bufferType":Landroid/widget/TextView$BufferType;
    move/from16 v0, v46

    #@734
    and-int/lit16 v0, v0, 0xfff

    #@736
    move/from16 v70, v0

    #@738
    .line 1223
    .local v70, "variation":I
    const/16 v72, 0x81

    #@73a
    .line 1222
    move/from16 v0, v70

    #@73c
    move/from16 v1, v72

    #@73e
    if-ne v0, v1, :cond_14

    #@740
    const/16 v54, 0x1

    #@742
    .line 1225
    .local v54, "passwordInputType":Z
    :goto_4
    const/16 v72, 0xe1

    #@744
    .line 1224
    move/from16 v0, v70

    #@746
    move/from16 v1, v72

    #@748
    if-ne v0, v1, :cond_15

    #@74a
    const/16 v71, 0x1

    #@74c
    .line 1227
    .local v71, "webPasswordInputType":Z
    :goto_5
    const/16 v72, 0x12

    #@74e
    .line 1226
    move/from16 v0, v70

    #@750
    move/from16 v1, v72

    #@752
    if-ne v0, v1, :cond_16

    #@754
    const/16 v51, 0x1

    #@756
    .line 1229
    .local v51, "numberPasswordInputType":Z
    :goto_6
    if-eqz v45, :cond_18

    #@758
    .line 1233
    :try_start_1
    invoke-interface/range {v45 .. v45}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@75b
    move-result-object v72

    #@75c
    invoke-static/range {v72 .. v72}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    #@75f
    move-result-object v14

    #@760
    .line 1239
    .local v14, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@763
    .line 1240
    move-object/from16 v0, p0

    #@765
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@767
    move-object/from16 v73, v0

    #@769
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@76c
    move-result-object v72

    #@76d
    check-cast v72, Landroid/text/method/KeyListener;

    #@76f
    move-object/from16 v0, v72

    #@771
    move-object/from16 v1, v73

    #@773
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    #@775
    .line 1247
    :try_start_3
    move-object/from16 v0, p0

    #@777
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@779
    move-object/from16 v73, v0

    #@77b
    if-eqz v46, :cond_17

    #@77d
    move/from16 v72, v46

    #@77f
    :goto_7
    move/from16 v0, v72

    #@781
    move-object/from16 v1, v73

    #@783
    iput v0, v1, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    #@785
    .line 1339
    .end local v14    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    move-object/from16 v0, p0

    #@787
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@789
    move-object/from16 v72, v0

    #@78b
    if-eqz v72, :cond_5

    #@78d
    move-object/from16 v0, p0

    #@78f
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@791
    move-object/from16 v72, v0

    #@793
    move-object/from16 v0, v72

    #@795
    move/from16 v1, v53

    #@797
    move/from16 v2, v54

    #@799
    move/from16 v3, v71

    #@79b
    move/from16 v4, v51

    #@79d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    #@7a0
    .line 1342
    :cond_5
    if-eqz v58, :cond_6

    #@7a2
    .line 1343
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@7a5
    .line 1344
    move-object/from16 v0, p0

    #@7a7
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7a9
    move-object/from16 v72, v0

    #@7ab
    const/16 v73, 0x1

    #@7ad
    move/from16 v0, v73

    #@7af
    move-object/from16 v1, v72

    #@7b1
    iput-boolean v0, v1, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    #@7b3
    .line 1346
    sget-object v72, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    #@7b5
    move-object/from16 v0, v72

    #@7b7
    if-ne v12, v0, :cond_6

    #@7b9
    .line 1347
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@7bb
    .line 1352
    :cond_6
    if-nez v25, :cond_7

    #@7bd
    if-eqz v26, :cond_a

    #@7bf
    .line 1353
    :cond_7
    move-object/from16 v0, p0

    #@7c1
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7c3
    move-object/from16 v72, v0

    #@7c5
    if-nez v72, :cond_8

    #@7c7
    .line 1354
    new-instance v72, Landroid/widget/TextView$Drawables;

    #@7c9
    move-object/from16 v0, v72

    #@7cb
    move-object/from16 v1, p1

    #@7cd
    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@7d0
    move-object/from16 v0, v72

    #@7d2
    move-object/from16 v1, p0

    #@7d4
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7d6
    .line 1356
    :cond_8
    if-eqz v25, :cond_9

    #@7d8
    .line 1357
    move-object/from16 v0, p0

    #@7da
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7dc
    move-object/from16 v72, v0

    #@7de
    move-object/from16 v0, v25

    #@7e0
    move-object/from16 v1, v72

    #@7e2
    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    #@7e4
    .line 1358
    move-object/from16 v0, p0

    #@7e6
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7e8
    move-object/from16 v72, v0

    #@7ea
    const/16 v73, 0x1

    #@7ec
    move/from16 v0, v73

    #@7ee
    move-object/from16 v1, v72

    #@7f0
    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTint:Z

    #@7f2
    .line 1360
    :cond_9
    if-eqz v26, :cond_a

    #@7f4
    .line 1361
    move-object/from16 v0, p0

    #@7f6
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7f8
    move-object/from16 v72, v0

    #@7fa
    move-object/from16 v0, v26

    #@7fc
    move-object/from16 v1, v72

    #@7fe
    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@800
    .line 1362
    move-object/from16 v0, p0

    #@802
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@804
    move-object/from16 v72, v0

    #@806
    const/16 v73, 0x1

    #@808
    move/from16 v0, v73

    #@80a
    move-object/from16 v1, v72

    #@80c
    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    #@80e
    .line 1367
    :cond_a
    move-object/from16 v0, p0

    #@810
    move-object/from16 v1, v21

    #@812
    move-object/from16 v2, v27

    #@814
    move-object/from16 v3, v23

    #@816
    move-object/from16 v4, v19

    #@818
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@81b
    .line 1369
    move-object/from16 v0, p0

    #@81d
    move-object/from16 v1, v24

    #@81f
    move-object/from16 v2, v20

    #@821
    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@824
    .line 1370
    move-object/from16 v0, p0

    #@826
    move/from16 v1, v22

    #@828
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    #@82b
    .line 1374
    move-object/from16 v0, p0

    #@82d
    move/from16 v1, v60

    #@82f
    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    #@832
    .line 1375
    move-object/from16 v0, p0

    #@834
    move/from16 v1, v60

    #@836
    move/from16 v2, v60

    #@838
    move/from16 v3, v60

    #@83a
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    #@83d
    .line 1377
    if-eqz v60, :cond_b

    #@83f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@842
    move-result-object v72

    #@843
    if-nez v72, :cond_b

    #@845
    if-gez v35, :cond_b

    #@847
    .line 1378
    const/16 v35, 0x3

    #@849
    .line 1381
    :cond_b
    packed-switch v35, :pswitch_data_2

    #@84c
    .line 1403
    :goto_9
    if-eqz v63, :cond_2a

    #@84e
    :goto_a
    move-object/from16 v0, p0

    #@850
    move-object/from16 v1, v63

    #@852
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@855
    .line 1404
    move-object/from16 v0, p0

    #@857
    move-object/from16 v1, v65

    #@859
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    #@85c
    .line 1405
    move-object/from16 v0, p0

    #@85e
    move-object/from16 v1, v66

    #@860
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    #@863
    .line 1406
    if-eqz v64, :cond_c

    #@865
    .line 1407
    move-object/from16 v0, p0

    #@867
    move/from16 v1, v64

    #@869
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    #@86c
    .line 1409
    :cond_c
    move/from16 v0, v67

    #@86e
    int-to-float v0, v0

    #@86f
    move/from16 v72, v0

    #@871
    move-object/from16 v0, p0

    #@873
    move/from16 v1, v72

    #@875
    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    #@878
    .line 1410
    move-object/from16 v0, p0

    #@87a
    move/from16 v1, v34

    #@87c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    #@87f
    .line 1411
    move-object/from16 v0, p0

    #@881
    move/from16 v1, v47

    #@883
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    #@886
    .line 1412
    move-object/from16 v0, p0

    #@888
    move-object/from16 v1, v42

    #@88a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    #@88d
    .line 1414
    if-eqz v6, :cond_d

    #@88f
    .line 1415
    new-instance v72, Landroid/text/method/AllCapsTransformationMethod;

    #@891
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@894
    move-result-object v73

    #@895
    invoke-direct/range {v72 .. v73}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    #@898
    move-object/from16 v0, p0

    #@89a
    move-object/from16 v1, v72

    #@89c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@89f
    .line 1418
    :cond_d
    if-nez v53, :cond_e

    #@8a1
    if-nez v54, :cond_e

    #@8a3
    if-nez v71, :cond_e

    #@8a5
    if-eqz v51, :cond_2b

    #@8a7
    .line 1419
    :cond_e
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@8aa
    move-result-object v72

    #@8ab
    move-object/from16 v0, p0

    #@8ad
    move-object/from16 v1, v72

    #@8af
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@8b2
    .line 1420
    const/16 v69, 0x3

    #@8b4
    .line 1427
    :cond_f
    :goto_b
    const/16 v72, -0x1

    #@8b6
    move/from16 v0, v69

    #@8b8
    move/from16 v1, v72

    #@8ba
    if-eq v0, v1, :cond_10

    #@8bc
    if-eqz v41, :cond_2c

    #@8be
    .line 1430
    :cond_10
    :goto_c
    move-object/from16 v0, p0

    #@8c0
    move-object/from16 v1, v40

    #@8c2
    move/from16 v2, v69

    #@8c4
    move/from16 v3, v61

    #@8c6
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@8c9
    .line 1432
    if-eqz v59, :cond_11

    #@8cb
    .line 1433
    move-object/from16 v0, p0

    #@8cd
    move/from16 v1, v56

    #@8cf
    move/from16 v2, v28

    #@8d1
    move/from16 v3, v29

    #@8d3
    move/from16 v4, v59

    #@8d5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@8d8
    .line 1436
    :cond_11
    if-ltz v49, :cond_2d

    #@8da
    .line 1437
    const/16 v72, 0x1

    #@8dc
    move/from16 v0, v72

    #@8de
    new-array v0, v0, [Landroid/text/InputFilter;

    #@8e0
    move-object/from16 v72, v0

    #@8e2
    new-instance v73, Landroid/text/InputFilter$LengthFilter;

    #@8e4
    move-object/from16 v0, v73

    #@8e6
    move/from16 v1, v49

    #@8e8
    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    #@8eb
    const/16 v74, 0x0

    #@8ed
    aput-object v73, v72, v74

    #@8ef
    move-object/from16 v0, p0

    #@8f1
    move-object/from16 v1, v72

    #@8f3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    #@8f6
    .line 1442
    :goto_d
    move-object/from16 v0, p0

    #@8f8
    move-object/from16 v1, v62

    #@8fa
    invoke-virtual {v0, v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@8fd
    .line 1443
    if-eqz v43, :cond_12

    #@8ff
    move-object/from16 v0, p0

    #@901
    move-object/from16 v1, v43

    #@903
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    #@906
    .line 1451
    :cond_12
    sget-object v72, Lcom/android/internal/R$styleable;->View:[I

    #@908
    .line 1450
    move-object/from16 v0, p1

    #@90a
    move-object/from16 v1, p2

    #@90c
    move-object/from16 v2, v72

    #@90e
    move/from16 v3, p3

    #@910
    move/from16 v4, p4

    #@912
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@915
    move-result-object v5

    #@916
    .line 1453
    move-object/from16 v0, p0

    #@918
    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@91a
    move-object/from16 v72, v0

    #@91c
    if-nez v72, :cond_13

    #@91e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@921
    move-result-object v72

    #@922
    if-eqz v72, :cond_2e

    #@924
    :cond_13
    const/16 v39, 0x1

    #@926
    .line 1454
    .local v39, "focusable":Z
    :goto_e
    if-nez v39, :cond_2f

    #@928
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    #@92b
    move-result v16

    #@92c
    .line 1455
    :goto_f
    if-nez v39, :cond_30

    #@92e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    #@931
    move-result v48

    #@932
    .line 1457
    :goto_10
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@935
    move-result v50

    #@936
    .line 1458
    const/16 v44, 0x0

    #@938
    :goto_11
    move/from16 v0, v44

    #@93a
    move/from16 v1, v50

    #@93c
    if-ge v0, v1, :cond_31

    #@93e
    .line 1459
    move/from16 v0, v44

    #@940
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@943
    move-result v9

    #@944
    .line 1461
    .restart local v9    # "attr":I
    sparse-switch v9, :sswitch_data_0

    #@947
    .line 1458
    :goto_12
    add-int/lit8 v44, v44, 0x1

    #@949
    goto :goto_11

    #@94a
    .line 1222
    .end local v9    # "attr":I
    .end local v39    # "focusable":Z
    .end local v51    # "numberPasswordInputType":Z
    .end local v54    # "passwordInputType":Z
    .end local v71    # "webPasswordInputType":Z
    :cond_14
    const/16 v54, 0x0

    #@94c
    .restart local v54    # "passwordInputType":Z
    goto/16 :goto_4

    #@94e
    .line 1224
    :cond_15
    const/16 v71, 0x0

    #@950
    .restart local v71    # "webPasswordInputType":Z
    goto/16 :goto_5

    #@952
    .line 1226
    :cond_16
    const/16 v51, 0x0

    #@954
    .restart local v51    # "numberPasswordInputType":Z
    goto/16 :goto_6

    #@956
    .line 1234
    :catch_2
    move-exception v36

    #@957
    .line 1235
    .local v36, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v72, Ljava/lang/RuntimeException;

    #@959
    move-object/from16 v0, v72

    #@95b
    move-object/from16 v1, v36

    #@95d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@960
    throw v72

    #@961
    .line 1243
    .end local v36    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v14    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v37

    #@962
    .line 1244
    .local v37, "ex":Ljava/lang/IllegalAccessException;
    new-instance v72, Ljava/lang/RuntimeException;

    #@964
    move-object/from16 v0, v72

    #@966
    move-object/from16 v1, v37

    #@968
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@96b
    throw v72

    #@96c
    .line 1241
    .end local v37    # "ex":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v38

    #@96d
    .line 1242
    .local v38, "ex":Ljava/lang/InstantiationException;
    new-instance v72, Ljava/lang/RuntimeException;

    #@96f
    move-object/from16 v0, v72

    #@971
    move-object/from16 v1, v38

    #@973
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@976
    throw v72

    #@977
    .line 1249
    .end local v38    # "ex":Ljava/lang/InstantiationException;
    :cond_17
    :try_start_4
    move-object/from16 v0, p0

    #@979
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@97b
    move-object/from16 v72, v0

    #@97d
    move-object/from16 v0, v72

    #@97f
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@981
    move-object/from16 v72, v0

    #@983
    invoke-interface/range {v72 .. v72}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    #@986
    move-result v72

    #@987
    goto/16 :goto_7

    #@989
    .line 1250
    :catch_5
    move-exception v31

    #@98a
    .line 1251
    .local v31, "e":Ljava/lang/IncompatibleClassChangeError;
    move-object/from16 v0, p0

    #@98c
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@98e
    move-object/from16 v72, v0

    #@990
    const/16 v73, 0x1

    #@992
    move/from16 v0, v73

    #@994
    move-object/from16 v1, v72

    #@996
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@998
    goto/16 :goto_8

    #@99a
    .line 1253
    .end local v14    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_18
    if-eqz v18, :cond_1a

    #@99c
    .line 1254
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@99f
    .line 1255
    move-object/from16 v0, p0

    #@9a1
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9a3
    move-object/from16 v72, v0

    #@9a5
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@9a8
    move-result-object v73

    #@9a9
    invoke-static/range {v73 .. v73}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    #@9ac
    move-result-object v73

    #@9ad
    move-object/from16 v0, v73

    #@9af
    move-object/from16 v1, v72

    #@9b1
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@9b3
    .line 1259
    move-object/from16 v0, p0

    #@9b5
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9b7
    move-object/from16 v73, v0

    #@9b9
    if-eqz v46, :cond_19

    #@9bb
    move/from16 v72, v46

    #@9bd
    :goto_13
    move/from16 v0, v72

    #@9bf
    move-object/from16 v1, v73

    #@9c1
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@9c3
    goto/16 :goto_8

    #@9c5
    .line 1260
    :cond_19
    const/16 v72, 0x1

    #@9c7
    goto :goto_13

    #@9c8
    .line 1261
    :cond_1a
    if-eqz v46, :cond_1c

    #@9ca
    .line 1262
    const/16 v72, 0x1

    #@9cc
    move-object/from16 v0, p0

    #@9ce
    move/from16 v1, v46

    #@9d0
    move/from16 v2, v72

    #@9d2
    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    #@9d5
    .line 1264
    invoke-static/range {v46 .. v46}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    #@9d8
    move-result v72

    #@9d9
    if-eqz v72, :cond_1b

    #@9db
    const/16 v60, 0x0

    #@9dd
    .local v60, "singleLine":Z
    goto/16 :goto_8

    #@9df
    .end local v60    # "singleLine":Z
    :cond_1b
    const/16 v60, 0x1

    #@9e1
    .restart local v60    # "singleLine":Z
    goto/16 :goto_8

    #@9e3
    .line 1265
    .end local v60    # "singleLine":Z
    :cond_1c
    if-eqz v55, :cond_1d

    #@9e5
    .line 1266
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@9e8
    .line 1267
    move-object/from16 v0, p0

    #@9ea
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9ec
    move-object/from16 v72, v0

    #@9ee
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    #@9f1
    move-result-object v73

    #@9f2
    move-object/from16 v0, v73

    #@9f4
    move-object/from16 v1, v72

    #@9f6
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@9f8
    .line 1268
    move-object/from16 v0, p0

    #@9fa
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9fc
    move-object/from16 v72, v0

    #@9fe
    const/16 v46, 0x3

    #@a00
    const/16 v73, 0x3

    #@a02
    move/from16 v0, v73

    #@a04
    move-object/from16 v1, v72

    #@a06
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@a08
    goto/16 :goto_8

    #@a0a
    .line 1269
    :cond_1d
    if-eqz v52, :cond_22

    #@a0c
    .line 1270
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a0f
    .line 1271
    move-object/from16 v0, p0

    #@a11
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a13
    move-object/from16 v74, v0

    #@a15
    and-int/lit8 v72, v52, 0x2

    #@a17
    if-eqz v72, :cond_20

    #@a19
    const/16 v72, 0x1

    #@a1b
    move/from16 v73, v72

    #@a1d
    .line 1272
    :goto_14
    and-int/lit8 v72, v52, 0x4

    #@a1f
    if-eqz v72, :cond_21

    #@a21
    const/16 v72, 0x1

    #@a23
    .line 1271
    :goto_15
    move/from16 v0, v73

    #@a25
    move/from16 v1, v72

    #@a27
    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    #@a2a
    move-result-object v72

    #@a2b
    move-object/from16 v0, v72

    #@a2d
    move-object/from16 v1, v74

    #@a2f
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@a31
    .line 1273
    const/16 v46, 0x2

    #@a33
    .line 1274
    and-int/lit8 v72, v52, 0x2

    #@a35
    if-eqz v72, :cond_1e

    #@a37
    .line 1275
    const/16 v46, 0x1002

    #@a39
    .line 1277
    :cond_1e
    and-int/lit8 v72, v52, 0x4

    #@a3b
    if-eqz v72, :cond_1f

    #@a3d
    .line 1278
    move/from16 v0, v46

    #@a3f
    or-int/lit16 v0, v0, 0x2000

    #@a41
    move/from16 v46, v0

    #@a43
    .line 1280
    :cond_1f
    move-object/from16 v0, p0

    #@a45
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a47
    move-object/from16 v72, v0

    #@a49
    move/from16 v0, v46

    #@a4b
    move-object/from16 v1, v72

    #@a4d
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@a4f
    goto/16 :goto_8

    #@a51
    .line 1271
    :cond_20
    const/16 v72, 0x0

    #@a53
    move/from16 v73, v72

    #@a55
    goto :goto_14

    #@a56
    .line 1272
    :cond_21
    const/16 v72, 0x0

    #@a58
    goto :goto_15

    #@a59
    .line 1281
    :cond_22
    if-nez v11, :cond_23

    #@a5b
    const/16 v72, -0x1

    #@a5d
    move/from16 v0, v72

    #@a5f
    if-eq v10, v0, :cond_24

    #@a61
    .line 1284
    :cond_23
    const/16 v46, 0x1

    #@a63
    .line 1286
    packed-switch v10, :pswitch_data_3

    #@a66
    .line 1303
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@a68
    .line 1307
    .local v15, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a6b
    .line 1308
    move-object/from16 v0, p0

    #@a6d
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a6f
    move-object/from16 v72, v0

    #@a71
    invoke-static {v11, v15}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    #@a74
    move-result-object v73

    #@a75
    move-object/from16 v0, v73

    #@a77
    move-object/from16 v1, v72

    #@a79
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@a7b
    .line 1309
    move-object/from16 v0, p0

    #@a7d
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a7f
    move-object/from16 v72, v0

    #@a81
    move/from16 v0, v46

    #@a83
    move-object/from16 v1, v72

    #@a85
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@a87
    goto/16 :goto_8

    #@a89
    .line 1288
    .end local v15    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_62
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    #@a8b
    .line 1289
    .restart local v15    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v46, 0x4001

    #@a8d
    .line 1290
    goto :goto_16

    #@a8e
    .line 1293
    .end local v15    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_63
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@a90
    .line 1294
    .restart local v15    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v46, 0x2001

    #@a92
    .line 1295
    goto :goto_16

    #@a93
    .line 1298
    .end local v15    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_64
    sget-object v15, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@a95
    .line 1299
    .restart local v15    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v46, 0x1001

    #@a97
    .line 1300
    goto :goto_16

    #@a98
    .line 1310
    .end local v15    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@a9b
    move-result v72

    #@a9c
    if-eqz v72, :cond_26

    #@a9e
    .line 1312
    move-object/from16 v0, p0

    #@aa0
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@aa2
    move-object/from16 v72, v0

    #@aa4
    if-eqz v72, :cond_25

    #@aa6
    .line 1313
    move-object/from16 v0, p0

    #@aa8
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@aaa
    move-object/from16 v72, v0

    #@aac
    const/16 v73, 0x0

    #@aae
    move-object/from16 v0, v73

    #@ab0
    move-object/from16 v1, v72

    #@ab2
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@ab4
    .line 1314
    move-object/from16 v0, p0

    #@ab6
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@ab8
    move-object/from16 v72, v0

    #@aba
    const/16 v73, 0x0

    #@abc
    move/from16 v0, v73

    #@abe
    move-object/from16 v1, v72

    #@ac0
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@ac2
    .line 1316
    :cond_25
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@ac4
    .line 1318
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@ac7
    move-result-object v72

    #@ac8
    move-object/from16 v0, p0

    #@aca
    move-object/from16 v1, v72

    #@acc
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@acf
    goto/16 :goto_8

    #@ad1
    .line 1319
    :cond_26
    if-eqz v33, :cond_27

    #@ad3
    .line 1320
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@ad6
    .line 1321
    move-object/from16 v0, p0

    #@ad8
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@ada
    move-object/from16 v72, v0

    #@adc
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    #@adf
    move-result-object v73

    #@ae0
    move-object/from16 v0, v73

    #@ae2
    move-object/from16 v1, v72

    #@ae4
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@ae6
    .line 1322
    move-object/from16 v0, p0

    #@ae8
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@aea
    move-object/from16 v72, v0

    #@aec
    const/16 v73, 0x1

    #@aee
    move/from16 v0, v73

    #@af0
    move-object/from16 v1, v72

    #@af2
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@af4
    goto/16 :goto_8

    #@af6
    .line 1324
    :cond_27
    move-object/from16 v0, p0

    #@af8
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@afa
    move-object/from16 v72, v0

    #@afc
    if-eqz v72, :cond_28

    #@afe
    move-object/from16 v0, p0

    #@b00
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b02
    move-object/from16 v72, v0

    #@b04
    const/16 v73, 0x0

    #@b06
    move-object/from16 v0, v73

    #@b08
    move-object/from16 v1, v72

    #@b0a
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@b0c
    .line 1326
    :cond_28
    packed-switch v13, :pswitch_data_4

    #@b0f
    goto/16 :goto_8

    #@b11
    .line 1328
    :pswitch_65
    sget-object v12, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    #@b13
    goto/16 :goto_8

    #@b15
    .line 1331
    :pswitch_66
    sget-object v12, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@b17
    goto/16 :goto_8

    #@b19
    .line 1334
    :pswitch_67
    sget-object v12, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@b1b
    goto/16 :goto_8

    #@b1d
    .line 1383
    :pswitch_68
    sget-object v72, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@b1f
    move-object/from16 v0, p0

    #@b21
    move-object/from16 v1, v72

    #@b23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@b26
    goto/16 :goto_9

    #@b28
    .line 1386
    :pswitch_69
    sget-object v72, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    #@b2a
    move-object/from16 v0, p0

    #@b2c
    move-object/from16 v1, v72

    #@b2e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@b31
    goto/16 :goto_9

    #@b33
    .line 1389
    :pswitch_6a
    sget-object v72, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@b35
    move-object/from16 v0, p0

    #@b37
    move-object/from16 v1, v72

    #@b39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@b3c
    goto/16 :goto_9

    #@b3e
    .line 1392
    :pswitch_6b
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@b41
    move-result-object v72

    #@b42
    invoke-virtual/range {v72 .. v72}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    #@b45
    move-result v72

    #@b46
    if-eqz v72, :cond_29

    #@b48
    .line 1393
    const/16 v72, 0x1

    #@b4a
    move-object/from16 v0, p0

    #@b4c
    move/from16 v1, v72

    #@b4e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@b51
    .line 1394
    const/16 v72, 0x0

    #@b53
    move/from16 v0, v72

    #@b55
    move-object/from16 v1, p0

    #@b57
    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@b59
    .line 1399
    :goto_17
    sget-object v72, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@b5b
    move-object/from16 v0, p0

    #@b5d
    move-object/from16 v1, v72

    #@b5f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@b62
    goto/16 :goto_9

    #@b64
    .line 1396
    :cond_29
    const/16 v72, 0x0

    #@b66
    move-object/from16 v0, p0

    #@b68
    move/from16 v1, v72

    #@b6a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@b6d
    .line 1397
    const/16 v72, 0x1

    #@b6f
    move/from16 v0, v72

    #@b71
    move-object/from16 v1, p0

    #@b73
    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@b75
    goto :goto_17

    #@b76
    .line 1403
    :cond_2a
    const/high16 v72, -0x1000000

    #@b78
    invoke-static/range {v72 .. v72}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@b7b
    move-result-object v63

    #@b7c
    goto/16 :goto_a

    #@b7e
    .line 1421
    :cond_2b
    move-object/from16 v0, p0

    #@b80
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b82
    move-object/from16 v72, v0

    #@b84
    if-eqz v72, :cond_f

    #@b86
    .line 1422
    move-object/from16 v0, p0

    #@b88
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b8a
    move-object/from16 v72, v0

    #@b8c
    move-object/from16 v0, v72

    #@b8e
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    #@b90
    move/from16 v72, v0

    #@b92
    move/from16 v0, v72

    #@b94
    and-int/lit16 v0, v0, 0xfff

    #@b96
    move/from16 v72, v0

    #@b98
    .line 1423
    const/16 v73, 0x81

    #@b9a
    .line 1422
    move/from16 v0, v72

    #@b9c
    move/from16 v1, v73

    #@b9e
    if-ne v0, v1, :cond_f

    #@ba0
    .line 1424
    const/16 v69, 0x3

    #@ba2
    goto/16 :goto_b

    #@ba4
    .line 1428
    :cond_2c
    const/16 v40, 0x0

    #@ba6
    .local v40, "fontFamily":Ljava/lang/String;
    goto/16 :goto_c

    #@ba8
    .line 1439
    .end local v40    # "fontFamily":Ljava/lang/String;
    :cond_2d
    sget-object v72, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    #@baa
    move-object/from16 v0, p0

    #@bac
    move-object/from16 v1, v72

    #@bae
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    #@bb1
    goto/16 :goto_d

    #@bb3
    .line 1453
    :cond_2e
    const/16 v39, 0x0

    #@bb5
    goto/16 :goto_e

    #@bb7
    .line 1454
    .restart local v39    # "focusable":Z
    :cond_2f
    const/16 v16, 0x1

    #@bb9
    .local v16, "clickable":Z
    goto/16 :goto_f

    #@bbb
    .line 1455
    .end local v16    # "clickable":Z
    :cond_30
    const/16 v48, 0x1

    #@bbd
    .local v48, "longClickable":Z
    goto/16 :goto_10

    #@bbf
    .line 1463
    .end local v48    # "longClickable":Z
    .restart local v9    # "attr":I
    :sswitch_0
    move/from16 v0, v39

    #@bc1
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bc4
    move-result v39

    #@bc5
    goto/16 :goto_12

    #@bc7
    .line 1467
    :sswitch_1
    move/from16 v0, v16

    #@bc9
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bcc
    move-result v16

    #@bcd
    .local v16, "clickable":Z
    goto/16 :goto_12

    #@bcf
    .line 1471
    .end local v16    # "clickable":Z
    :sswitch_2
    move/from16 v0, v48

    #@bd1
    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bd4
    move-result v48

    #@bd5
    .local v48, "longClickable":Z
    goto/16 :goto_12

    #@bd7
    .line 1475
    .end local v9    # "attr":I
    .end local v48    # "longClickable":Z
    :cond_31
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@bda
    .line 1477
    move-object/from16 v0, p0

    #@bdc
    move/from16 v1, v39

    #@bde
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    #@be1
    .line 1478
    move-object/from16 v0, p0

    #@be3
    move/from16 v1, v16

    #@be5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    #@be8
    .line 1479
    move-object/from16 v0, p0

    #@bea
    move/from16 v1, v48

    #@bec
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    #@bef
    .line 1481
    move-object/from16 v0, p0

    #@bf1
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@bf3
    move-object/from16 v72, v0

    #@bf5
    if-eqz v72, :cond_32

    #@bf7
    move-object/from16 v0, p0

    #@bf9
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@bfb
    move-object/from16 v72, v0

    #@bfd
    invoke-virtual/range {v72 .. v72}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@c00
    .line 1484
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    #@c03
    move-result v72

    #@c04
    if-nez v72, :cond_33

    #@c06
    .line 1485
    const/16 v72, 0x1

    #@c08
    move-object/from16 v0, p0

    #@c0a
    move/from16 v1, v72

    #@c0c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    #@c0f
    .line 709
    :cond_33
    return-void

    #@c10
    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    #@c34
    .line 868
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_41
        :pswitch_10
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_43
        :pswitch_42
        :pswitch_44
        :pswitch_45
        :pswitch_36
        :pswitch_31
        :pswitch_1a
        :pswitch_1b
        :pswitch_2c
        :pswitch_26
        :pswitch_30
        :pswitch_2a
        :pswitch_18
        :pswitch_33
        :pswitch_32
        :pswitch_3b
        :pswitch_39
        :pswitch_25
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_34
        :pswitch_4a
        :pswitch_35
        :pswitch_19
        :pswitch_38
        :pswitch_3a
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_3c
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1e
        :pswitch_24
        :pswitch_4b
        :pswitch_4c
        :pswitch_37
        :pswitch_4d
        :pswitch_52
        :pswitch_53
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_10
        :pswitch_10
        :pswitch_5b
        :pswitch_10
        :pswitch_10
        :pswitch_54
        :pswitch_58
        :pswitch_5c
        :pswitch_20
        :pswitch_21
        :pswitch_49
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_22
        :pswitch_23
        :pswitch_60
        :pswitch_61
        :pswitch_4e
        :pswitch_59
        :pswitch_5a
    .end packed-switch

    #@ce4
    .line 1381
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
    .end packed-switch

    #@cf0
    .line 1461
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    #@cfe
    .line 1286
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_62
        :pswitch_63
        :pswitch_64
    .end packed-switch

    #@d08
    .line 1326
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_65
        :pswitch_66
        :pswitch_67
    .end packed-switch
.end method

.method private applyCompoundDrawableTint()V
    .locals 10

    #@0
    .prologue
    .line 2697
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 2698
    return-void

    #@5
    .line 2701
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7
    iget-boolean v6, v6, Landroid/widget/TextView$Drawables;->mHasTint:Z

    #@9
    if-nez v6, :cond_1

    #@b
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@d
    iget-boolean v6, v6, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    #@f
    if-eqz v6, :cond_6

    #@11
    .line 2702
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@13
    iget-object v4, v6, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    #@15
    .line 2703
    .local v4, "tintList":Landroid/content/res/ColorStateList;
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@17
    iget-object v5, v6, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@19
    .line 2704
    .local v5, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@1b
    iget-boolean v1, v6, Landroid/widget/TextView$Drawables;->mHasTint:Z

    #@1d
    .line 2705
    .local v1, "hasTint":Z
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@1f
    iget-boolean v2, v6, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    #@21
    .line 2706
    .local v2, "hasTintMode":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@24
    move-result-object v3

    #@25
    .line 2708
    .local v3, "state":[I
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@27
    iget-object v7, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@29
    const/4 v6, 0x0

    #@2a
    array-length v8, v7

    #@2b
    :goto_0
    if-ge v6, v8, :cond_6

    #@2d
    aget-object v0, v7, v6

    #@2f
    .line 2709
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    #@31
    .line 2708
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@33
    goto :goto_0

    #@34
    .line 2713
    :cond_3
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@36
    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@38
    if-eq v0, v9, :cond_2

    #@3a
    .line 2720
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@3d
    .line 2722
    if-eqz v1, :cond_4

    #@3f
    .line 2723
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@42
    .line 2726
    :cond_4
    if-eqz v2, :cond_5

    #@44
    .line 2727
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@47
    .line 2732
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@4a
    move-result v9

    #@4b
    if-eqz v9, :cond_2

    #@4d
    .line 2733
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@50
    goto :goto_1

    #@51
    .line 2696
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    .end local v2    # "hasTintMode":Z
    .end local v3    # "state":[I
    .end local v4    # "tintList":Landroid/content/res/ColorStateList;
    .end local v5    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_6
    return-void
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .param p1, "singleLine"    # Z
    .param p2, "applyTransformation"    # Z
    .param p3, "changeMaxLines"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 7879
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@3
    .line 7880
    if-eqz p1, :cond_1

    #@5
    .line 7881
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    #@8
    .line 7882
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    #@b
    .line 7883
    if-eqz p2, :cond_0

    #@d
    .line 7884
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@14
    .line 7878
    :cond_0
    :goto_0
    return-void

    #@15
    .line 7887
    :cond_1
    if-eqz p3, :cond_2

    #@17
    .line 7888
    const v0, 0x7fffffff

    #@1a
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    #@1d
    .line 7890
    :cond_2
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    #@21
    .line 7891
    if-eqz p2, :cond_0

    #@23
    .line 7892
    const/4 v0, 0x0

    #@24
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@27
    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    #@0
    .prologue
    .line 6692
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    #@2
    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    #@4
    sub-int/2addr v0, v3

    #@5
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@8
    move-result v3

    #@9
    sub-int/2addr v0, v3

    #@a
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@d
    move-result v3

    #@e
    sub-int v1, v0, v3

    #@10
    .line 6694
    .local v1, "width":I
    const/4 v0, 0x1

    #@11
    if-ge v1, v0, :cond_0

    #@13
    .line 6695
    const/4 v1, 0x0

    #@14
    .line 6698
    :cond_0
    move v2, v1

    #@15
    .line 6700
    .local v2, "physicalWidth":I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 6701
    const/high16 v1, 0x100000

    #@1b
    .line 6704
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@1d
    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@1f
    .line 6705
    const/4 v6, 0x0

    #@20
    move-object v0, p0

    #@21
    move v5, v2

    #@22
    .line 6704
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@25
    .line 6691
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 14

    #@0
    .prologue
    .line 7391
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    #@3
    move-result v11

    #@4
    if-eqz v11, :cond_3

    #@6
    iget-object v4, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@8
    .line 7392
    .local v4, "layout":Landroid/text/Layout;
    :goto_0
    const/4 v6, 0x0

    #@9
    .line 7393
    .local v6, "line":I
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    #@b
    and-int/lit8 v11, v11, 0x70

    #@d
    const/16 v12, 0x50

    #@f
    if-ne v11, v12, :cond_0

    #@11
    .line 7394
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    #@14
    move-result v11

    #@15
    add-int/lit8 v6, v11, -0x1

    #@17
    .line 7397
    :cond_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    #@1a
    move-result-object v0

    #@1b
    .line 7398
    .local v0, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1e
    move-result v1

    #@1f
    .line 7399
    .local v1, "dir":I
    iget v11, p0, Landroid/widget/TextView;->mRight:I

    #@21
    iget v12, p0, Landroid/widget/TextView;->mLeft:I

    #@23
    sub-int/2addr v11, v12

    #@24
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@27
    move-result v12

    #@28
    sub-int/2addr v11, v12

    #@29
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@2c
    move-result v12

    #@2d
    sub-int v2, v11, v12

    #@2f
    .line 7400
    .local v2, "hspace":I
    iget v11, p0, Landroid/widget/TextView;->mBottom:I

    #@31
    iget v12, p0, Landroid/widget/TextView;->mTop:I

    #@33
    sub-int/2addr v11, v12

    #@34
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@37
    move-result v12

    #@38
    sub-int/2addr v11, v12

    #@39
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@3c
    move-result v12

    #@3d
    sub-int v10, v11, v12

    #@3f
    .line 7401
    .local v10, "vspace":I
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    #@42
    move-result v3

    #@43
    .line 7406
    .local v3, "ht":I
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@45
    if-ne v0, v11, :cond_5

    #@47
    .line 7407
    const/4 v11, 0x1

    #@48
    if-ne v1, v11, :cond_4

    #@4a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@4c
    .line 7414
    :cond_1
    :goto_1
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@4e
    if-ne v0, v11, :cond_9

    #@50
    .line 7420
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    #@53
    move-result v11

    #@54
    float-to-double v12, v11

    #@55
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    #@58
    move-result-wide v12

    #@59
    double-to-int v5, v12

    #@5a
    .line 7421
    .local v5, "left":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    #@5d
    move-result v11

    #@5e
    float-to-double v12, v11

    #@5f
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    #@62
    move-result-wide v12

    #@63
    double-to-int v7, v12

    #@64
    .line 7423
    .local v7, "right":I
    sub-int v11, v7, v5

    #@66
    if-ge v11, v2, :cond_7

    #@68
    .line 7424
    add-int v11, v7, v5

    #@6a
    div-int/lit8 v11, v11, 0x2

    #@6c
    div-int/lit8 v12, v2, 0x2

    #@6e
    sub-int v8, v11, v12

    #@70
    .line 7439
    .end local v5    # "left":I
    .end local v7    # "right":I
    .local v8, "scrollx":I
    :goto_2
    if-ge v3, v10, :cond_b

    #@72
    .line 7440
    const/4 v9, 0x0

    #@73
    .line 7449
    .local v9, "scrolly":I
    :goto_3
    iget v11, p0, Landroid/widget/TextView;->mScrollX:I

    #@75
    if-ne v8, v11, :cond_2

    #@77
    iget v11, p0, Landroid/widget/TextView;->mScrollY:I

    #@79
    if-eq v9, v11, :cond_d

    #@7b
    .line 7450
    :cond_2
    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->scrollTo(II)V

    #@7e
    .line 7451
    const/4 v11, 0x1

    #@7f
    return v11

    #@80
    .line 7391
    .end local v0    # "a":Landroid/text/Layout$Alignment;
    .end local v1    # "dir":I
    .end local v2    # "hspace":I
    .end local v3    # "ht":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v8    # "scrollx":I
    .end local v9    # "scrolly":I
    .end local v10    # "vspace":I
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@82
    .restart local v4    # "layout":Landroid/text/Layout;
    goto :goto_0

    #@83
    .line 7408
    .restart local v0    # "a":Landroid/text/Layout$Alignment;
    .restart local v1    # "dir":I
    .restart local v2    # "hspace":I
    .restart local v3    # "ht":I
    .restart local v6    # "line":I
    .restart local v10    # "vspace":I
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@85
    goto :goto_1

    #@86
    .line 7409
    :cond_5
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@88
    if-ne v0, v11, :cond_1

    #@8a
    .line 7410
    const/4 v11, 0x1

    #@8b
    if-ne v1, v11, :cond_6

    #@8d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@8f
    goto :goto_1

    #@90
    .line 7411
    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@92
    goto :goto_1

    #@93
    .line 7426
    .restart local v5    # "left":I
    .restart local v7    # "right":I
    :cond_7
    if-gez v1, :cond_8

    #@95
    .line 7427
    sub-int v8, v7, v2

    #@97
    .restart local v8    # "scrollx":I
    goto :goto_2

    #@98
    .line 7429
    .end local v8    # "scrollx":I
    :cond_8
    move v8, v5

    #@99
    .restart local v8    # "scrollx":I
    goto :goto_2

    #@9a
    .line 7432
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_9
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@9c
    if-ne v0, v11, :cond_a

    #@9e
    .line 7433
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    #@a1
    move-result v11

    #@a2
    float-to-double v12, v11

    #@a3
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    #@a6
    move-result-wide v12

    #@a7
    double-to-int v7, v12

    #@a8
    .line 7434
    .restart local v7    # "right":I
    sub-int v8, v7, v2

    #@aa
    .restart local v8    # "scrollx":I
    goto :goto_2

    #@ab
    .line 7436
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_a
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    #@ae
    move-result v11

    #@af
    float-to-double v12, v11

    #@b0
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    #@b3
    move-result-wide v12

    #@b4
    double-to-int v8, v12

    #@b5
    .restart local v8    # "scrollx":I
    goto :goto_2

    #@b6
    .line 7442
    :cond_b
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    #@b8
    and-int/lit8 v11, v11, 0x70

    #@ba
    const/16 v12, 0x50

    #@bc
    if-ne v11, v12, :cond_c

    #@be
    .line 7443
    sub-int v9, v3, v10

    #@c0
    .restart local v9    # "scrolly":I
    goto :goto_3

    #@c1
    .line 7445
    .end local v9    # "scrolly":I
    :cond_c
    const/4 v9, 0x0

    #@c2
    .restart local v9    # "scrolly":I
    goto :goto_3

    #@c3
    .line 7453
    :cond_d
    const/4 v11, 0x0

    #@c4
    return v11
.end method

.method private canMarquee()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 8012
    iget v3, p0, Landroid/widget/TextView;->mRight:I

    #@4
    iget v4, p0, Landroid/widget/TextView;->mLeft:I

    #@6
    sub-int/2addr v3, v4

    #@7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@a
    move-result v4

    #@b
    sub-int/2addr v3, v4

    #@c
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@f
    move-result v4

    #@10
    sub-int v0, v3, v4

    #@12
    .line 8013
    .local v0, "width":I
    if-lez v0, :cond_3

    #@14
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@16
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    #@19
    move-result v3

    #@1a
    int-to-float v4, v0

    #@1b
    cmpl-float v3, v3, v4

    #@1d
    if-gtz v3, :cond_0

    #@1f
    .line 8014
    iget v3, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@21
    if-eqz v3, :cond_2

    #@23
    iget-object v3, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 8015
    iget-object v3, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@29
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    #@2c
    move-result v3

    #@2d
    int-to-float v4, v0

    #@2e
    cmpl-float v3, v3, v4

    #@30
    if-lez v3, :cond_1

    #@32
    .line 8013
    :cond_0
    :goto_0
    return v1

    #@33
    :cond_1
    move v1, v2

    #@34
    .line 8015
    goto :goto_0

    #@35
    :cond_2
    move v1, v2

    #@36
    .line 8014
    goto :goto_0

    #@37
    :cond_3
    move v1, v2

    #@38
    .line 8013
    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v8, -0x2

    #@2
    .line 7324
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@6
    if-ne v0, v8, :cond_0

    #@8
    .line 7325
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@a
    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@c
    if-ne v0, v3, :cond_6

    #@e
    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@10
    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    #@12
    if-ne v0, v3, :cond_6

    #@14
    .line 7326
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@16
    if-eqz v0, :cond_1

    #@18
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@1a
    if-eqz v0, :cond_6

    #@1c
    .line 7327
    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    #@1e
    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    #@20
    sub-int/2addr v0, v3

    #@21
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@24
    move-result v3

    #@25
    sub-int/2addr v0, v3

    #@26
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@29
    move-result v3

    #@2a
    sub-int/2addr v0, v3

    #@2b
    if-lez v0, :cond_6

    #@2d
    .line 7330
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2f
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@32
    move-result v7

    #@33
    .line 7331
    .local v7, "oldht":I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@35
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    #@38
    move-result v1

    #@39
    .line 7332
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@3b
    if-nez v0, :cond_2

    #@3d
    const/4 v2, 0x0

    #@3e
    .line 7339
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@40
    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@42
    .line 7340
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    #@44
    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    #@46
    sub-int/2addr v0, v5

    #@47
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@4a
    move-result v5

    #@4b
    sub-int/2addr v0, v5

    #@4c
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@4f
    move-result v5

    #@50
    sub-int v5, v0, v5

    #@52
    move-object v0, p0

    #@53
    .line 7339
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@56
    .line 7343
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@58
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@5a
    if-eq v0, v3, :cond_5

    #@5c
    .line 7345
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@5e
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@60
    if-eq v0, v8, :cond_3

    #@62
    .line 7346
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@64
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@66
    const/4 v3, -0x1

    #@67
    if-eq v0, v3, :cond_3

    #@69
    .line 7347
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@6c
    .line 7348
    return-void

    #@6d
    .line 7332
    .end local v2    # "hintWant":I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@6f
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    #@72
    move-result v2

    #@73
    .restart local v2    # "hintWant":I
    goto :goto_0

    #@74
    .line 7353
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@76
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@79
    move-result v0

    #@7a
    if-ne v0, v7, :cond_5

    #@7c
    .line 7354
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@7e
    if-eqz v0, :cond_4

    #@80
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@82
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@85
    move-result v0

    #@86
    if-ne v0, v7, :cond_5

    #@88
    .line 7355
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@8b
    .line 7356
    return-void

    #@8c
    .line 7362
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8f
    .line 7363
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@92
    .line 7320
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :goto_1
    return-void

    #@93
    .line 7367
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@96
    .line 7368
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@99
    .line 7369
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@9c
    goto :goto_1
.end method

.method private checkForResize()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 7283
    const/4 v1, 0x0

    #@2
    .line 7285
    .local v1, "sizeChanged":Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 7287
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@8
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@a
    if-ne v2, v3, :cond_0

    #@c
    .line 7288
    const/4 v1, 0x1

    #@d
    .line 7289
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@10
    .line 7293
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@12
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@14
    if-ne v2, v3, :cond_3

    #@16
    .line 7294
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    #@19
    move-result v0

    #@1a
    .line 7296
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    #@1d
    move-result v2

    #@1e
    if-eq v0, v2, :cond_1

    #@20
    .line 7297
    const/4 v1, 0x1

    #@21
    .line 7310
    .end local v0    # "desiredHeight":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    #@23
    .line 7311
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@26
    .line 7282
    :cond_2
    return-void

    #@27
    .line 7299
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@29
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2b
    const/4 v3, -0x1

    #@2c
    if-ne v2, v3, :cond_1

    #@2e
    .line 7300
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@30
    if-ltz v2, :cond_1

    #@32
    .line 7301
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    #@35
    move-result v0

    #@36
    .line 7303
    .restart local v0    # "desiredHeight":I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@38
    if-eq v0, v2, :cond_1

    #@3a
    .line 7304
    const/4 v1, 0x1

    #@3b
    goto :goto_0
.end method

.method private compressText(F)Z
    .locals 7
    .param p1, "width"    # F

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    const/high16 v3, 0x3f800000    # 1.0f

    #@5
    .line 6969
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    return v4

    #@c
    .line 6972
    :cond_0
    cmpl-float v2, p1, v5

    #@e
    if-lez v2, :cond_1

    #@10
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@12
    if-eqz v2, :cond_1

    #@14
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    #@17
    move-result v2

    #@18
    if-ne v2, v6, :cond_1

    #@1a
    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 6987
    :cond_1
    return v4

    #@1f
    .line 6973
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@21
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    #@24
    move-result v2

    #@25
    cmpl-float v2, v2, v3

    #@27
    if-nez v2, :cond_1

    #@29
    .line 6974
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2b
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    #@2e
    move-result v1

    #@2f
    .line 6975
    .local v1, "textWidth":F
    add-float v2, v1, v3

    #@31
    sub-float/2addr v2, p1

    #@32
    div-float v0, v2, p1

    #@34
    .line 6976
    .local v0, "overflow":F
    cmpl-float v2, v0, v5

    #@36
    if-lez v2, :cond_1

    #@38
    const v2, 0x3d8f5c29    # 0.07f

    #@3b
    cmpg-float v2, v0, v2

    #@3d
    if-gtz v2, :cond_1

    #@3f
    .line 6977
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@41
    sub-float/2addr v3, v0

    #@42
    const v4, 0x3ba3d70a    # 0.005f

    #@45
    sub-float/2addr v3, v4

    #@46
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    #@49
    .line 6978
    new-instance v2, Landroid/widget/TextView$2;

    #@4b
    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    #@4e
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    #@51
    .line 6983
    return v6
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 7734
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@3
    move-result v0

    #@4
    .line 7735
    .local v0, "horizontalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@6
    add-int/2addr v2, v0

    #@7
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@9
    .line 7736
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@b
    add-int/2addr v2, v0

    #@c
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@e
    .line 7738
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@11
    move-result v1

    #@12
    .line 7739
    .local v1, "verticalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@14
    add-int/2addr v2, v1

    #@15
    iput v2, p1, Landroid/graphics/Rect;->top:I

    #@17
    .line 7740
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@19
    add-int/2addr v2, v1

    #@1a
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@1c
    .line 7733
    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 9924
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 9925
    new-instance v0, Landroid/widget/Editor;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    #@9
    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b
    .line 9923
    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .param p0, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 6991
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    #@3
    move-result v2

    #@4
    .line 6992
    .local v2, "n":I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    #@7
    move-result-object v3

    #@8
    .line 6993
    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    #@9
    .line 6998
    .local v1, "max":F
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    #@c
    if-ge v0, v4, :cond_1

    #@e
    .line 6999
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    #@11
    move-result v4

    #@12
    add-int/lit8 v4, v4, -0x1

    #@14
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@17
    move-result v4

    #@18
    const/16 v5, 0xa

    #@1a
    if-eq v4, v5, :cond_0

    #@1c
    .line 7000
    const/4 v4, -0x1

    #@1d
    return v4

    #@1e
    .line 6998
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 7003
    :cond_1
    const/4 v0, 0x0

    #@22
    :goto_1
    if-ge v0, v2, :cond_2

    #@24
    .line 7004
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    #@27
    move-result v4

    #@28
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    #@2b
    move-result v1

    #@2c
    .line 7003
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 7007
    :cond_2
    float-to-double v4, v1

    #@30
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    #@33
    move-result-wide v4

    #@34
    double-to-int v4, v4

    #@35
    return v4
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "otherEvent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 6169
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 6170
    return v5

    #@a
    .line 6178
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_1

    #@10
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_3

    #@16
    .line 6182
    :cond_1
    :goto_0
    sparse-switch p1, :sswitch_data_0

    #@19
    .line 6263
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1b
    if-eqz v3, :cond_a

    #@1d
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1f
    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@21
    if-eqz v3, :cond_a

    #@23
    .line 6264
    const/4 v0, 0x1

    #@24
    .line 6265
    .local v0, "doDown":Z
    if-eqz p3, :cond_9

    #@26
    .line 6267
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    #@29
    .line 6268
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2b
    iget-object v6, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@2d
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2f
    check-cast v3, Landroid/text/Editable;

    #@31
    invoke-interface {v6, p0, v3, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    #@34
    move-result v2

    #@35
    .line 6270
    .local v2, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 6271
    const/4 v0, 0x0

    #@39
    .line 6272
    if-eqz v2, :cond_8

    #@3b
    .line 6279
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@3e
    .line 6273
    return v4

    #@3f
    .line 6179
    .end local v0    # "doDown":Z
    .end local v2    # "handled":Z
    :cond_3
    iput-boolean v5, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    #@41
    goto :goto_0

    #@42
    .line 6184
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 6189
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4a
    if-eqz v3, :cond_4

    #@4c
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4e
    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@50
    if-eqz v3, :cond_4

    #@52
    .line 6192
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@54
    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@56
    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@58
    if-eqz v3, :cond_4

    #@5a
    .line 6193
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5c
    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@5e
    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@60
    invoke-interface {v3, p0, v5, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    #@63
    move-result v3

    #@64
    .line 6192
    if-eqz v3, :cond_4

    #@66
    .line 6195
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@68
    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@6a
    iput-boolean v7, v3, Landroid/widget/Editor$InputContentType;->enterDown:Z

    #@6c
    .line 6197
    return v4

    #@6d
    .line 6204
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    #@70
    move-result v3

    #@71
    and-int/lit8 v3, v3, 0x10

    #@73
    if-nez v3, :cond_5

    #@75
    .line 6205
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    #@78
    move-result v3

    #@79
    .line 6204
    if-eqz v3, :cond_2

    #@7b
    .line 6206
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    #@7e
    move-result v3

    #@7f
    if-eqz v3, :cond_6

    #@81
    .line 6207
    return v5

    #@82
    .line 6209
    :cond_6
    return v4

    #@83
    .line 6215
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_2

    #@89
    .line 6216
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_2

    #@8f
    .line 6217
    return v5

    #@90
    .line 6223
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@93
    move-result v3

    #@94
    if-nez v3, :cond_7

    #@96
    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_2

    #@9c
    .line 6224
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    #@9f
    move-result v3

    #@a0
    if-eqz v3, :cond_2

    #@a2
    .line 6225
    return v5

    #@a3
    .line 6232
    :sswitch_3
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a5
    if-eqz v3, :cond_2

    #@a7
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a9
    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@ab
    if-eqz v3, :cond_2

    #@ad
    .line 6233
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@b0
    .line 6234
    return v4

    #@b1
    .line 6239
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@b4
    move-result v3

    #@b5
    if-eqz v3, :cond_2

    #@b7
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    #@ba
    move-result v3

    #@bb
    if-eqz v3, :cond_2

    #@bd
    .line 6240
    const v3, 0x1020020

    #@c0
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@c3
    move-result v3

    #@c4
    if-eqz v3, :cond_2

    #@c6
    .line 6241
    return v4

    #@c7
    .line 6247
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@ca
    move-result v3

    #@cb
    if-eqz v3, :cond_2

    #@cd
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    #@d0
    move-result v3

    #@d1
    if-eqz v3, :cond_2

    #@d3
    .line 6248
    const v3, 0x1020021

    #@d6
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@d9
    move-result v3

    #@da
    if-eqz v3, :cond_2

    #@dc
    .line 6249
    return v4

    #@dd
    .line 6255
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@e0
    move-result v3

    #@e1
    if-eqz v3, :cond_2

    #@e3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    #@e6
    move-result v3

    #@e7
    if-eqz v3, :cond_2

    #@e9
    .line 6256
    const v3, 0x1020022

    #@ec
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@ef
    move-result v3

    #@f0
    if-eqz v3, :cond_2

    #@f2
    .line 6257
    return v4

    #@f3
    .line 6279
    .restart local v0    # "doDown":Z
    .restart local v2    # "handled":Z
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@f6
    .line 6283
    .end local v2    # "handled":Z
    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    #@f8
    .line 6284
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    #@fb
    .line 6285
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@fd
    iget-object v6, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@ff
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@101
    check-cast v3, Landroid/text/Editable;

    #@103
    invoke-interface {v6, p0, v3, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@106
    move-result v2

    #@107
    .line 6287
    .restart local v2    # "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@10a
    .line 6288
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    #@10d
    .line 6289
    if-eqz v2, :cond_a

    #@10f
    return v7

    #@110
    .line 6275
    .end local v2    # "handled":Z
    :catch_0
    move-exception v1

    #@111
    .line 6279
    .local v1, "e":Ljava/lang/AbstractMethodError;
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@114
    goto :goto_1

    #@115
    .line 6278
    .end local v1    # "e":Ljava/lang/AbstractMethodError;
    :catchall_0
    move-exception v3

    #@116
    .line 6279
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@119
    .line 6278
    throw v3

    #@11a
    .line 6296
    .end local v0    # "doDown":Z
    :cond_a
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@11c
    if-eqz v3, :cond_e

    #@11e
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@120
    if-eqz v3, :cond_e

    #@122
    .line 6297
    const/4 v0, 0x1

    #@123
    .line 6298
    .restart local v0    # "doDown":Z
    if-eqz p3, :cond_b

    #@125
    .line 6300
    :try_start_1
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@127
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@129
    check-cast v3, Landroid/text/Spannable;

    #@12b
    invoke-interface {v6, p0, v3, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    #@12e
    move-result v2

    #@12f
    .line 6302
    .restart local v2    # "handled":Z
    const/4 v0, 0x0

    #@130
    .line 6303
    if-eqz v2, :cond_b

    #@132
    .line 6304
    return v4

    #@133
    .line 6306
    .end local v2    # "handled":Z
    :catch_1
    move-exception v1

    #@134
    .line 6311
    :cond_b
    if-eqz v0, :cond_e

    #@136
    .line 6312
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@138
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@13a
    check-cast v3, Landroid/text/Spannable;

    #@13c
    invoke-interface {v6, p0, v3, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@13f
    move-result v3

    #@140
    if-eqz v3, :cond_e

    #@142
    .line 6313
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@145
    move-result v3

    #@146
    if-nez v3, :cond_c

    #@148
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@14b
    move-result v3

    #@14c
    if-eqz v3, :cond_d

    #@14e
    .line 6316
    :cond_c
    :goto_2
    const/4 v3, 0x2

    #@14f
    return v3

    #@150
    .line 6314
    :cond_d
    iput-boolean v7, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    #@152
    goto :goto_2

    #@153
    .line 6321
    .end local v0    # "doDown":Z
    :cond_e
    iget-boolean v3, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    #@155
    if-eqz v3, :cond_f

    #@157
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@15a
    move-result v3

    #@15b
    if-eqz v3, :cond_10

    #@15d
    :cond_f
    move v3, v5

    #@15e
    :goto_3
    return v3

    #@15f
    :cond_10
    move v3, v4

    #@160
    .line 6322
    goto :goto_3

    #@161
    .line 6182
    nop

    #@162
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
        0x115 -> :sswitch_4
        0x116 -> :sswitch_5
        0x117 -> :sswitch_6
    .end sparse-switch
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .locals 2

    #@0
    .prologue
    .line 9938
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v0, v0, Landroid/text/Spannable;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 9939
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@d
    .line 9937
    :cond_0
    return-void
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1884
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    if-eqz v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1885
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    #@13
    .line 1886
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    #@16
    .line 1887
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    #@19
    .line 1883
    :goto_0
    return-void

    #@1a
    .line 1889
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    #@1d
    .line 1890
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    #@20
    .line 1891
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    #@23
    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    #@0
    .prologue
    .line 5215
    const/4 v4, 0x0

    #@1
    .line 5216
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    #@3
    and-int/lit8 v1, v5, 0x70

    #@5
    .line 5218
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@7
    .line 5219
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    #@9
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@b
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_0

    #@11
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@13
    if-eqz v5, :cond_0

    #@15
    .line 5220
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@17
    .line 5223
    :cond_0
    const/16 v5, 0x50

    #@19
    if-eq v1, v5, :cond_1

    #@1b
    .line 5224
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    #@1e
    move-result v0

    #@1f
    .line 5225
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    #@22
    move-result v3

    #@23
    .line 5227
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    #@25
    .line 5228
    const/16 v5, 0x30

    #@27
    if-ne v1, v5, :cond_2

    #@29
    .line 5229
    sub-int v4, v0, v3

    #@2b
    .line 5234
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    #@2c
    .line 5231
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    #@2e
    shr-int/lit8 v4, v5, 0x1

    #@30
    goto :goto_0
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "l"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 5184
    iget-object v2, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    #@2
    invoke-static {v2}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    #@b
    move-result-object v0

    #@c
    .line 5185
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@e
    if-ne p1, v2, :cond_1

    #@10
    .line 5186
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@13
    move-result v2

    #@14
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@17
    move-result v3

    #@18
    add-int v1, v2, v3

    #@1a
    .line 5188
    .local v1, "padding":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@1d
    move-result v2

    #@1e
    sub-int/2addr v2, v1

    #@1f
    iget v3, v0, Landroid/graphics/Insets;->top:I

    #@21
    add-int/2addr v2, v3

    #@22
    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    #@24
    add-int/2addr v2, v3

    #@25
    return v2

    #@26
    .line 5184
    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@28
    .restart local v0    # "opticalInsets":Landroid/graphics/Insets;
    goto :goto_0

    #@29
    .line 5187
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@2c
    move-result v2

    #@2d
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@30
    move-result v3

    #@31
    add-int v1, v2, v3

    #@33
    .restart local v1    # "padding":I
    goto :goto_1
.end method

.method private getDesiredHeight()I
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 7221
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    #@6
    move-result v1

    #@7
    .line 7222
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@9
    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@b
    if-eqz v3, :cond_0

    #@d
    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    #@10
    move-result v0

    #@11
    .line 7220
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 7222
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "cap"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 7226
    if-nez p1, :cond_0

    #@3
    .line 7227
    const/4 v4, 0x0

    #@4
    return v4

    #@5
    .line 7230
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@8
    move-result v2

    #@9
    .line 7231
    .local v2, "linecount":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@c
    move-result v4

    #@d
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@10
    move-result v5

    #@11
    add-int v3, v4, v5

    #@13
    .line 7232
    .local v3, "pad":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    #@16
    move-result v0

    #@17
    .line 7234
    .local v0, "desired":I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@19
    .line 7235
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    #@1b
    .line 7236
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@1d
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@20
    move-result v0

    #@21
    .line 7237
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@23
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v0

    #@27
    .line 7240
    :cond_1
    add-int/2addr v0, v3

    #@28
    .line 7242
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    #@2a
    if-ne v4, v6, :cond_5

    #@2c
    .line 7247
    if-eqz p2, :cond_3

    #@2e
    .line 7248
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    #@30
    if-le v2, v4, :cond_3

    #@32
    .line 7249
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    #@34
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    #@37
    move-result v0

    #@38
    .line 7251
    if-eqz v1, :cond_2

    #@3a
    .line 7252
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@3c
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v0

    #@40
    .line 7253
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@42
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@45
    move-result v0

    #@46
    .line 7256
    :cond_2
    add-int/2addr v0, v3

    #@47
    .line 7257
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    #@49
    .line 7264
    :cond_3
    :goto_0
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    #@4b
    if-ne v4, v6, :cond_6

    #@4d
    .line 7265
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    #@4f
    if-ge v2, v4, :cond_4

    #@51
    .line 7266
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    #@54
    move-result v4

    #@55
    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    #@57
    sub-int/2addr v5, v2

    #@58
    mul-int/2addr v4, v5

    #@59
    add-int/2addr v0, v4

    #@5a
    .line 7273
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    #@5d
    move-result v4

    #@5e
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@61
    move-result v0

    #@62
    .line 7275
    return v0

    #@63
    .line 7261
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    #@65
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@68
    move-result v0

    #@69
    goto :goto_0

    #@6a
    .line 7269
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    #@6c
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@6f
    move-result v0

    #@70
    goto :goto_1
.end method

.method private final getHorizontalFadingEdgeStrength(FF)F
    .locals 3
    .param p1, "position1"    # F
    .param p2, "position2"    # F

    #@0
    .prologue
    .line 8645
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    #@3
    move-result v1

    #@4
    .line 8646
    .local v1, "horizontalFadingEdgeLength":I
    if-nez v1, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 8647
    :cond_0
    sub-float v2, p1, p2

    #@a
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@d
    move-result v0

    #@e
    .line 8648
    .local v0, "diff":F
    int-to-float v2, v1

    #@f
    cmpl-float v2, v0, v2

    #@11
    if-lez v2, :cond_1

    #@13
    const/high16 v2, 0x3f800000    # 1.0f

    #@15
    return v2

    #@16
    .line 8649
    :cond_1
    int-to-float v2, v1

    #@17
    div-float v2, v0, v2

    #@19
    return v2
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "line"    # I

    #@0
    .prologue
    .line 7724
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    #@3
    .line 7729
    if-nez p2, :cond_0

    #@5
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@7
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@a
    move-result v1

    #@b
    sub-int/2addr v0, v1

    #@c
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@e
    .line 7730
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@10
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    #@13
    move-result v0

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    if-ne p2, v0, :cond_1

    #@18
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@1a
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@1d
    move-result v1

    #@1e
    add-int/2addr v0, v1

    #@1f
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@21
    .line 7723
    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 6710
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    #@4
    move-result v1

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 6754
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@a
    .line 6757
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v0

    #@b
    .line 6712
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    #@d
    const v2, 0x800007

    #@10
    and-int/2addr v1, v2

    #@11
    sparse-switch v1, :sswitch_data_0

    #@14
    .line 6729
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@16
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@17
    .line 6714
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@19
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@1a
    .line 6717
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@1c
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@1d
    .line 6720
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@1f
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@20
    .line 6723
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@22
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@23
    .line 6726
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@25
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@26
    .line 6734
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@28
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@29
    .line 6737
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@2b
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@2c
    .line 6740
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@2e
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@2f
    .line 6743
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@32
    move-result v1

    #@33
    if-ne v1, v2, :cond_0

    #@35
    .line 6744
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@37
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@38
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@3a
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@3b
    .line 6747
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@3e
    move-result v1

    #@3f
    if-ne v1, v2, :cond_1

    #@41
    .line 6748
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@43
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@44
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@46
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@47
    .line 6710
    nop

    #@48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@58
    .line 6712
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "def"    # I

    #@0
    .prologue
    .line 8739
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    .line 8740
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    #@6
    .line 8741
    return p2

    #@7
    .line 8743
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@a
    move-result v1

    #@b
    return v1
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 8705
    if-nez p1, :cond_0

    #@3
    .line 8707
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 8714
    :cond_0
    sget-object v4, Landroid/R$styleable;->TextView:[I

    #@b
    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@e
    move-result-object v0

    #@f
    .line 8715
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    #@10
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@13
    move-result-object v3

    #@14
    .line 8716
    .local v3, "colors":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_1

    #@16
    .line 8717
    const/4 v4, 0x1

    #@17
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1a
    move-result v1

    #@1b
    .line 8718
    .local v1, "ap":I
    if-eqz v1, :cond_1

    #@1d
    .line 8720
    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    #@1f
    .line 8719
    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@22
    move-result-object v2

    #@23
    .line 8721
    .local v2, "appearance":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    #@24
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@27
    move-result-object v3

    #@28
    .line 8722
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@2b
    .line 8725
    .end local v1    # "ap":I
    .end local v2    # "appearance":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2e
    .line 8727
    return-object v3
.end method

.method private getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 9292
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 9293
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@a
    return-object v0

    #@b
    .line 9298
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 9299
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@19
    return-object v0

    #@1a
    .line 9303
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@1c
    return-object v0
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1
    .param p1, "allowNullLocale"    # Z

    #@0
    .prologue
    .line 8822
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    #@3
    .line 8825
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    #@5
    if-nez v0, :cond_0

    #@7
    if-eqz p1, :cond_1

    #@9
    .line 8826
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    #@b
    .line 8825
    :goto_0
    return-object v0

    #@c
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 5659
    const/4 v0, 0x0

    #@2
    .line 5660
    .local v0, "highlight":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@4
    .line 5662
    .local v1, "highlightPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@7
    move-result v3

    #@8
    .line 5663
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@b
    move-result v2

    #@c
    .line 5664
    .local v2, "selEnd":I
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@e
    if-eqz v4, :cond_3

    #@10
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_0

    #@16
    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_3

    #@1c
    :cond_0
    if-ltz v3, :cond_3

    #@1e
    .line 5665
    if-ne v3, v2, :cond_4

    #@20
    .line 5666
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@22
    if-eqz v4, :cond_3

    #@24
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@26
    invoke-virtual {v4}, Landroid/widget/Editor;->isCursorVisible()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_3

    #@2c
    .line 5667
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2f
    move-result-wide v4

    #@30
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@32
    iget-wide v6, v6, Landroid/widget/Editor;->mShowCursor:J

    #@34
    sub-long/2addr v4, v6

    #@35
    .line 5668
    const-wide/16 v6, 0x3e8

    #@37
    .line 5667
    rem-long/2addr v4, v6

    #@38
    .line 5668
    const-wide/16 v6, 0x1f4

    #@3a
    .line 5667
    cmp-long v4, v4, v6

    #@3c
    if-gez v4, :cond_3

    #@3e
    .line 5669
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 5670
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@44
    if-nez v4, :cond_1

    #@46
    new-instance v4, Landroid/graphics/Path;

    #@48
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    #@4b
    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@4d
    .line 5671
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@4f
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    #@52
    .line 5672
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@54
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@56
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@58
    invoke-virtual {v4, v3, v5, v6}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    #@5b
    .line 5673
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5d
    invoke-virtual {v4}, Landroid/widget/Editor;->updateCursorsPositions()V

    #@60
    .line 5674
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@62
    .line 5678
    :cond_2
    iget v4, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@64
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@67
    .line 5679
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@69
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@6c
    .line 5680
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@6e
    .line 5697
    .end local v0    # "highlight":Landroid/graphics/Path;
    :cond_3
    :goto_0
    return-object v0

    #@6f
    .line 5683
    .restart local v0    # "highlight":Landroid/graphics/Path;
    :cond_4
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@71
    if-eqz v4, :cond_6

    #@73
    .line 5684
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@75
    if-nez v4, :cond_5

    #@77
    new-instance v4, Landroid/graphics/Path;

    #@79
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    #@7c
    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@7e
    .line 5685
    :cond_5
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@80
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    #@83
    .line 5686
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@85
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@87
    invoke-virtual {v4, v3, v2, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    #@8a
    .line 5687
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@8c
    .line 5691
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mHighlightColor:I

    #@8e
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@91
    .line 5692
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@93
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@96
    .line 5694
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@98
    .local v0, "highlight":Landroid/graphics/Path;
    goto :goto_0
.end method

.method private hasSpannableText()Z
    .locals 1

    #@0
    .prologue
    .line 9260
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@6
    instance-of v0, v0, Landroid/text/Spannable;

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method private invalidateCursor(III)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    #@0
    .prologue
    .line 5287
    if-gez p1, :cond_0

    #@2
    if-ltz p2, :cond_2

    #@4
    .line 5288
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v2

    #@8
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v1

    #@c
    .line 5289
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v2

    #@10
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v0

    #@14
    .line 5290
    .local v0, "end":I
    const/4 v2, 0x1

    #@15
    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    #@18
    .line 5286
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    return-void

    #@19
    .line 5287
    :cond_2
    if-ltz p3, :cond_1

    #@1b
    goto :goto_0
.end method

.method private final isMarqueeFadeEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 8653
    iget-object v2, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@4
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@6
    if-ne v2, v3, :cond_1

    #@8
    .line 8654
    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@a
    if-eq v2, v0, :cond_0

    #@c
    .line 8653
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    .line 8654
    goto :goto_0

    #@f
    :cond_1
    move v0, v1

    #@10
    .line 8653
    goto :goto_0
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .param p0, "type"    # I

    #@0
    .prologue
    .line 4614
    const v0, 0x2000f

    #@3
    and-int/2addr v0, p0

    #@4
    .line 4615
    const v1, 0x20001

    #@7
    .line 4614
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static isPasswordInputType(I)Z
    .locals 3
    .param p0, "inputType"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 4716
    and-int/lit16 v0, p0, 0xfff

    #@3
    .line 4718
    .local v0, "variation":I
    const/16 v2, 0x81

    #@5
    .line 4717
    if-eq v0, v2, :cond_0

    #@7
    .line 4720
    const/16 v2, 0xe1

    #@9
    .line 4719
    if-ne v0, v2, :cond_1

    #@b
    .line 4717
    :cond_0
    :goto_0
    return v1

    #@c
    .line 4722
    :cond_1
    const/16 v2, 0x12

    #@e
    .line 4721
    if-eq v0, v2, :cond_0

    #@10
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method private isShowingHint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 7384
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    #@0
    .prologue
    .line 4727
    and-int/lit16 v0, p0, 0xfff

    #@2
    .line 4729
    .local v0, "variation":I
    const/16 v1, 0x91

    #@4
    .line 4728
    if-ne v0, v1, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    return v1

    #@8
    :cond_0
    const/4 v1, 0x0

    #@9
    goto :goto_0
.end method

.method private nullLayouts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6672
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3
    instance-of v0, v0, Landroid/text/BoringLayout;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 6673
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@d
    check-cast v0, Landroid/text/BoringLayout;

    #@f
    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@11
    .line 6675
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@13
    instance-of v0, v0, Landroid/text/BoringLayout;

    #@15
    if-eqz v0, :cond_1

    #@17
    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 6676
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@1d
    check-cast v0, Landroid/text/BoringLayout;

    #@1f
    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@21
    .line 6679
    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@23
    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@25
    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@27
    .line 6681
    iput-object v1, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    #@29
    iput-object v1, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    #@2b
    .line 6684
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2d
    if-eqz v0, :cond_2

    #@2f
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@31
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@34
    .line 6671
    :cond_2
    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .locals 3
    .param p1, "dimens"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1490
    if-nez p1, :cond_0

    #@3
    .line 1491
    return-object v2

    #@4
    .line 1493
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    #@7
    move-result v2

    #@8
    new-array v1, v2, [I

    #@a
    .line 1494
    .local v1, "result":[I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@c
    if-ge v0, v2, :cond_1

    #@e
    .line 1495
    const/4 v2, 0x0

    #@f
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@12
    move-result v2

    #@13
    aput v2, v1, v0

    #@15
    .line 1494
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1497
    :cond_1
    return-object v1
.end method

.method private paste(IIZ)V
    .locals 9
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "withFormatting"    # Z

    #@0
    .prologue
    .line 9649
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v6

    #@4
    const-string/jumbo v7, "clipboard"

    #@7
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/content/ClipboardManager;

    #@d
    .line 9650
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    #@10
    move-result-object v0

    #@11
    .line 9651
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_5

    #@13
    .line 9652
    const/4 v2, 0x0

    #@14
    .line 9653
    .local v2, "didFirst":Z
    const/4 v3, 0x0

    #@15
    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    #@18
    move-result v6

    #@19
    if-ge v3, v6, :cond_4

    #@1b
    .line 9655
    if-eqz p3, :cond_1

    #@1d
    .line 9656
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    #@28
    move-result-object v4

    #@29
    .line 9662
    .local v4, "paste":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v4, :cond_0

    #@2b
    .line 9663
    if-nez v2, :cond_3

    #@2d
    .line 9664
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2f
    check-cast v6, Landroid/text/Spannable;

    #@31
    invoke-static {v6, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@34
    .line 9665
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@36
    check-cast v6, Landroid/text/Editable;

    #@38
    invoke-interface {v6, p1, p2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@3b
    .line 9666
    const/4 v2, 0x1

    #@3c
    .line 9653
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 9659
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    #@4a
    move-result-object v5

    #@4b
    .line 9660
    .local v5, "text":Ljava/lang/CharSequence;
    instance-of v6, v5, Landroid/text/Spanned;

    #@4d
    if-eqz v6, :cond_2

    #@4f
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    .restart local v4    # "paste":Ljava/lang/CharSequence;
    goto :goto_1

    #@54
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_2
    move-object v4, v5

    #@55
    .restart local v4    # "paste":Ljava/lang/CharSequence;
    goto :goto_1

    #@56
    .line 9668
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@58
    check-cast v6, Landroid/text/Editable;

    #@5a
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@5d
    move-result v7

    #@5e
    const-string/jumbo v8, "\n"

    #@61
    invoke-interface {v6, v7, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    #@64
    .line 9669
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@66
    check-cast v6, Landroid/text/Editable;

    #@68
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@6b
    move-result v7

    #@6c
    invoke-interface {v6, v7, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    #@6f
    goto :goto_2

    #@70
    .line 9673
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_4
    const-wide/16 v6, 0x0

    #@72
    sput-wide v6, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    #@74
    .line 9647
    .end local v2    # "didFirst":Z
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private performAccessibilityActionClick(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 9230
    const/4 v0, 0x0

    #@2
    .line 9232
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 9233
    return v3

    #@9
    .line 9236
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_3

    #@15
    .line 9238
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_7

    #@21
    .line 9242
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    #@24
    .line 9243
    const/4 v0, 0x1

    #@25
    .line 9247
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@27
    if-nez v2, :cond_4

    #@29
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_6

    #@2f
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->hasSpannableText()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_6

    #@35
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@37
    if-eqz v2, :cond_6

    #@39
    .line 9248
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    #@3c
    move-result v2

    #@3d
    if-nez v2, :cond_5

    #@3f
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@42
    move-result v2

    #@43
    .line 9247
    if-eqz v2, :cond_6

    #@45
    .line 9248
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@48
    move-result v2

    #@49
    .line 9247
    if-eqz v2, :cond_6

    #@4b
    .line 9249
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@4e
    move-result-object v1

    #@4f
    .line 9250
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    #@52
    .line 9251
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@55
    move-result v2

    #@56
    if-nez v2, :cond_6

    #@58
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5a
    iget-boolean v2, v2, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@5c
    if-eqz v2, :cond_6

    #@5e
    if-eqz v1, :cond_6

    #@60
    .line 9252
    invoke-virtual {v1, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@63
    move-result v2

    #@64
    or-int/2addr v0, v2

    #@65
    .line 9256
    .end local v0    # "handled":Z
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    return v0

    #@66
    .line 9239
    .restart local v0    # "handled":Z
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    #@69
    goto :goto_0
.end method

.method public static preloadFontCache()V
    .locals 2

    #@0
    .prologue
    .line 669
    new-instance v0, Landroid/graphics/Paint;

    #@2
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@5
    .line 670
    .local v0, "p":Landroid/graphics/Paint;
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@9
    .line 672
    const-string/jumbo v1, "H"

    #@c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    #@f
    .line 668
    return-void
.end method

.method private prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 9850
    if-nez p1, :cond_0

    #@2
    .line 9851
    return-void

    #@3
    .line 9854
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@a
    .line 9856
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 9857
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@17
    .line 9858
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@1a
    .line 9849
    :cond_1
    return-void
.end method

.method private registerForPreDraw()V
    .locals 1

    #@0
    .prologue
    .line 5353
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5354
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@b
    .line 5355
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    #@e
    .line 5352
    :cond_0
    return-void
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 8148
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v6, v6, Landroid/text/Editable;

    #@4
    if-nez v6, :cond_0

    #@6
    return-void

    #@7
    .line 8149
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@9
    check-cast v5, Landroid/text/Editable;

    #@b
    .line 8151
    .local v5, "text":Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    .line 8152
    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    #@10
    .line 8153
    .local v1, "length":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@13
    .line 8154
    aget-object v6, v4, v0

    #@15
    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@18
    move-result v3

    #@19
    .line 8155
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    #@1b
    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@1e
    move-result v2

    #@1f
    .line 8156
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_1

    #@21
    if-ne v3, p2, :cond_2

    #@23
    .line 8147
    .end local v2    # "spanEnd":I
    .end local v3    # "spanStart":I
    :cond_1
    return-void

    #@24
    .line 8157
    .restart local v2    # "spanEnd":I
    .restart local v3    # "spanStart":I
    :cond_2
    aget-object v6, v4, v0

    #@26
    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@29
    .line 8153
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 6526
    const-class v2, Landroid/text/ParcelableSpan;

    #@2
    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 6527
    .local v1, "spans":[Ljava/lang/Object;
    array-length v0, v1

    #@7
    .line 6528
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@9
    .line 6529
    add-int/lit8 v0, v0, -0x1

    #@b
    .line 6530
    aget-object v2, v1, v0

    #@d
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@10
    goto :goto_0

    #@11
    .line 6525
    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 5117
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@6
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 5118
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    #@d
    .line 5119
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    #@10
    .line 5116
    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 8133
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 8134
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@6
    .line 8135
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 8136
    .local v0, "count":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@d
    .line 8137
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/text/TextWatcher;

    #@13
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    #@16
    .line 8136
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 8142
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    add-int v3, p2, p3

    #@1b
    const-class v4, Landroid/text/style/SpellCheckSpan;

    #@1d
    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    #@20
    .line 8143
    add-int v3, p2, p3

    #@22
    const-class v4, Landroid/text/style/SuggestionSpan;

    #@24
    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    #@27
    .line 8132
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6
    .param p1, "e"    # Landroid/text/Editable;
    .param p2, "filters"    # [Landroid/text/InputFilter;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5146
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-eqz v4, :cond_5

    #@5
    .line 5147
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    iget-object v4, v4, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@9
    if-eqz v4, :cond_4

    #@b
    const/4 v3, 0x1

    #@c
    .line 5148
    .local v3, "undoFilter":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@e
    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@10
    instance-of v0, v4, Landroid/text/InputFilter;

    #@12
    .line 5149
    .local v0, "keyFilter":Z
    const/4 v2, 0x0

    #@13
    .line 5150
    .local v2, "num":I
    if-eqz v3, :cond_0

    #@15
    const/4 v2, 0x1

    #@16
    .line 5151
    :cond_0
    if-eqz v0, :cond_1

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    .line 5152
    :cond_1
    if-lez v2, :cond_5

    #@1c
    .line 5153
    array-length v4, p2

    #@1d
    add-int/2addr v4, v2

    #@1e
    new-array v1, v4, [Landroid/text/InputFilter;

    #@20
    .line 5155
    .local v1, "nf":[Landroid/text/InputFilter;
    array-length v4, p2

    #@21
    invoke-static {p2, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 5156
    const/4 v2, 0x0

    #@25
    .line 5157
    if-eqz v3, :cond_2

    #@27
    .line 5158
    array-length v4, p2

    #@28
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2a
    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@2c
    aput-object v5, v1, v4

    #@2e
    .line 5159
    const/4 v2, 0x1

    #@2f
    .line 5161
    :cond_2
    if-eqz v0, :cond_3

    #@31
    .line 5162
    array-length v4, p2

    #@32
    add-int v5, v4, v2

    #@34
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@36
    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@38
    check-cast v4, Landroid/text/InputFilter;

    #@3a
    aput-object v4, v1, v5

    #@3c
    .line 5165
    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    #@3f
    .line 5166
    return-void

    #@40
    .line 5147
    .end local v0    # "keyFilter":Z
    .end local v1    # "nf":[Landroid/text/InputFilter;
    .end local v2    # "num":I
    .end local v3    # "undoFilter":Z
    :cond_4
    const/4 v3, 0x0

    #@41
    .restart local v3    # "undoFilter":Z
    goto :goto_0

    #@42
    .line 5169
    .end local v3    # "undoFilter":Z
    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    #@45
    .line 5145
    return-void
.end method

.method private setInputType(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 4746
    and-int/lit8 v2, p1, 0xf

    #@4
    .line 4748
    .local v2, "cls":I
    if-ne v2, v4, :cond_4

    #@6
    .line 4749
    const v4, 0x8000

    #@9
    and-int/2addr v4, p1

    #@a
    if-eqz v4, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 4751
    .local v0, "autotext":Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 4752
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@13
    .line 4760
    .local v1, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    #@16
    move-result-object v3

    #@17
    .line 4782
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, "input":Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    #@1a
    .line 4783
    if-eqz p2, :cond_a

    #@1c
    .line 4784
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@1f
    .line 4785
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@21
    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@23
    .line 4745
    :goto_3
    return-void

    #@24
    .line 4749
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_0
    const/4 v0, 0x0

    #@25
    .restart local v0    # "autotext":Z
    goto :goto_0

    #@26
    .line 4753
    :cond_1
    and-int/lit16 v4, p1, 0x2000

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 4754
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@2c
    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    #@2d
    .line 4755
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2
    and-int/lit16 v4, p1, 0x4000

    #@2f
    if-eqz v4, :cond_3

    #@31
    .line 4756
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    #@33
    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    #@34
    .line 4758
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@36
    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    #@37
    .line 4761
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    const/4 v6, 0x2

    #@38
    if-ne v2, v6, :cond_7

    #@3a
    .line 4763
    and-int/lit16 v6, p1, 0x1000

    #@3c
    if-eqz v6, :cond_5

    #@3e
    move v6, v4

    #@3f
    .line 4764
    :goto_4
    and-int/lit16 v7, p1, 0x2000

    #@41
    if-eqz v7, :cond_6

    #@43
    .line 4762
    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    #@46
    move-result-object v3

    #@47
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@48
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_5
    move v6, v5

    #@49
    .line 4763
    goto :goto_4

    #@4a
    :cond_6
    move v4, v5

    #@4b
    .line 4764
    goto :goto_5

    #@4c
    .line 4765
    :cond_7
    const/4 v4, 0x4

    #@4d
    if-ne v2, v4, :cond_8

    #@4f
    .line 4766
    and-int/lit16 v4, p1, 0xff0

    #@51
    sparse-switch v4, :sswitch_data_0

    #@54
    .line 4774
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    #@57
    move-result-object v3

    #@58
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@59
    .line 4768
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    #@5c
    move-result-object v3

    #@5d
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@5e
    .line 4771
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    #@61
    move-result-object v3

    #@62
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@63
    .line 4777
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_8
    const/4 v4, 0x3

    #@64
    if-ne v2, v4, :cond_9

    #@66
    .line 4778
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    #@69
    move-result-object v3

    #@6a
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@6b
    .line 4780
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    #@6e
    move-result-object v3

    #@6f
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@70
    .line 4787
    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    #@73
    goto :goto_3

    #@74
    .line 4766
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    #@0
    .prologue
    .line 7867
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 7868
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    #@8
    and-int/lit8 v0, v0, 0xf

    #@a
    const/4 v1, 0x1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 7869
    if-eqz p1, :cond_1

    #@f
    .line 7870
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@11
    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    #@13
    const v2, -0x20001

    #@16
    and-int/2addr v1, v2

    #@17
    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    #@19
    .line 7866
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 7872
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1c
    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    #@1e
    const/high16 v2, 0x20000

    #@20
    or-int/2addr v1, v2

    #@21
    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    #@23
    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .param p1, "input"    # Landroid/text/method/KeyListener;

    #@0
    .prologue
    .line 1835
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-nez v0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    return-void

    #@7
    .line 1837
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a
    .line 1838
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@e
    if-eq v0, p1, :cond_2

    #@10
    .line 1839
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@12
    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@14
    .line 1840
    if-eqz p1, :cond_1

    #@16
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@18
    instance-of v0, v0, Landroid/text/Editable;

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 1844
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1e
    check-cast v0, Landroid/text/Editable;

    #@20
    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@22
    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    #@25
    .line 1834
    :cond_2
    return-void

    #@26
    .line 1841
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@28
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2b
    goto :goto_0
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 9690
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    .line 9691
    const-string/jumbo v2, "clipboard"

    #@7
    .line 9690
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/content/ClipboardManager;

    #@d
    .line 9692
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    #@10
    .line 9693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13
    move-result-wide v2

    #@14
    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    #@16
    .line 9689
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    #@0
    .prologue
    .line 3004
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    #@5
    move-result v0

    #@6
    cmpl-float v0, p1, v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3005
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@c
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    #@f
    .line 3007
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 3008
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@16
    .line 3009
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@19
    .line 3010
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1c
    .line 3003
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "end"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1555
    if-nez p1, :cond_0

    #@4
    if-eqz p2, :cond_3

    #@6
    :cond_0
    move v2, v4

    #@7
    .line 1556
    .local v2, "hasRelativeDrawables":Z
    :goto_0
    if-eqz v2, :cond_2

    #@9
    .line 1557
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@b
    .line 1558
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    #@d
    .line 1559
    new-instance v1, Landroid/widget/TextView$Drawables;

    #@f
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@12
    move-result-object v6

    #@13
    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@16
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@18
    .line 1561
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@1a
    iput-boolean v4, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@1c
    .line 1562
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@1e
    .line 1563
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@21
    move-result-object v3

    #@22
    .line 1564
    .local v3, "state":[I
    if-eqz p1, :cond_4

    #@24
    .line 1565
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@27
    move-result v4

    #@28
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2b
    move-result v6

    #@2c
    invoke-virtual {p1, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2f
    .line 1566
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@32
    .line 1567
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@35
    .line 1568
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@38
    .line 1570
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@3a
    .line 1571
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@3d
    move-result v4

    #@3e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@40
    .line 1572
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@43
    move-result v4

    #@44
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@46
    .line 1576
    :goto_1
    if-eqz p2, :cond_5

    #@48
    .line 1577
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@4b
    move-result v4

    #@4c
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@4f
    move-result v6

    #@50
    invoke-virtual {p2, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@53
    .line 1578
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@56
    .line 1579
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@59
    .line 1580
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@5c
    .line 1582
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@5e
    .line 1583
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@61
    move-result v4

    #@62
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@64
    .line 1584
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@67
    move-result v4

    #@68
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@6a
    .line 1588
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@6d
    .line 1589
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@70
    .line 1590
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    #@73
    .line 1554
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v3    # "state":[I
    :cond_2
    return-void

    #@74
    .end local v2    # "hasRelativeDrawables":Z
    :cond_3
    move v2, v5

    #@75
    .line 1555
    goto :goto_0

    #@76
    .line 1574
    .restart local v0    # "compoundRect":Landroid/graphics/Rect;
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v2    # "hasRelativeDrawables":Z
    .restart local v3    # "state":[I
    :cond_4
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@78
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@7a
    goto :goto_1

    #@7b
    .line 1586
    :cond_5
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@7d
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@7f
    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .param p3, "notifyBefore"    # Z
    .param p4, "oldlen"    # I

    #@0
    .prologue
    .line 4346
    if-nez p1, :cond_0

    #@2
    .line 4347
    const-string/jumbo p1, ""

    #@5
    .line 4351
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_1

    #@b
    .line 4352
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@e
    move-result-object p1

    #@f
    .line 4355
    :cond_1
    move-object/from16 v0, p0

    #@11
    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    #@13
    if-nez v4, :cond_2

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@19
    const/high16 v5, 0x3f800000    # 1.0f

    #@1b
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    #@1e
    .line 4357
    :cond_2
    move-object/from16 v0, p1

    #@20
    instance-of v4, v0, Landroid/text/Spanned;

    #@22
    if-eqz v4, :cond_3

    #@24
    move-object/from16 v4, p1

    #@26
    .line 4358
    check-cast v4, Landroid/text/Spanned;

    #@28
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@2a
    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@2d
    move-result v4

    #@2e
    if-ltz v4, :cond_3

    #@30
    .line 4359
    move-object/from16 v0, p0

    #@32
    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@34
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_5

    #@3e
    .line 4360
    const/4 v4, 0x1

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@44
    .line 4361
    const/4 v4, 0x0

    #@45
    move-object/from16 v0, p0

    #@47
    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@49
    .line 4366
    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@50
    .line 4369
    :cond_3
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@54
    array-length v14, v4

    #@55
    .line 4370
    .local v14, "n":I
    const/4 v12, 0x0

    #@56
    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_6

    #@58
    .line 4371
    move-object/from16 v0, p0

    #@5a
    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@5c
    aget-object v4, v4, v12

    #@5e
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@61
    move-result v7

    #@62
    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    #@64
    const/4 v6, 0x0

    #@65
    const/4 v9, 0x0

    #@66
    const/4 v10, 0x0

    #@67
    move-object/from16 v5, p1

    #@69
    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    #@6c
    move-result-object v16

    #@6d
    .line 4372
    .local v16, "out":Ljava/lang/CharSequence;
    if-eqz v16, :cond_4

    #@6f
    .line 4373
    move-object/from16 p1, v16

    #@71
    .line 4370
    :cond_4
    add-int/lit8 v12, v12, 0x1

    #@73
    goto :goto_1

    #@74
    .line 4363
    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v16    # "out":Ljava/lang/CharSequence;
    :cond_5
    const/4 v4, 0x0

    #@75
    move-object/from16 v0, p0

    #@77
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@7a
    .line 4364
    const/4 v4, 0x1

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@7f
    goto :goto_0

    #@80
    .line 4377
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    :cond_6
    if-eqz p3, :cond_7

    #@82
    .line 4378
    move-object/from16 v0, p0

    #@84
    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@86
    if-eqz v4, :cond_11

    #@88
    .line 4379
    move-object/from16 v0, p0

    #@8a
    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8c
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@8f
    move-result p4

    #@90
    .line 4380
    move-object/from16 v0, p0

    #@92
    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@94
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@97
    move-result v5

    #@98
    const/4 v6, 0x0

    #@99
    move-object/from16 v0, p0

    #@9b
    move/from16 v1, p4

    #@9d
    invoke-direct {v0, v4, v6, v1, v5}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    #@a0
    .line 4386
    :cond_7
    :goto_2
    const/4 v15, 0x0

    #@a1
    .line 4388
    .local v15, "needEditableForNotification":Z
    move-object/from16 v0, p0

    #@a3
    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@a5
    if-eqz v4, :cond_8

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@ab
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@ae
    move-result v4

    #@af
    if-eqz v4, :cond_8

    #@b1
    .line 4389
    const/4 v15, 0x1

    #@b2
    .line 4392
    :cond_8
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@b4
    move-object/from16 v0, p2

    #@b6
    if-eq v0, v4, :cond_9

    #@b8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@bb
    move-result-object v4

    #@bc
    if-eqz v4, :cond_12

    #@be
    .line 4394
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@c1
    .line 4395
    move-object/from16 v0, p0

    #@c3
    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c5
    invoke-virtual {v4}, Landroid/widget/Editor;->forgetUndoRedo()V

    #@c8
    .line 4396
    move-object/from16 v0, p0

    #@ca
    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    #@cc
    move-object/from16 v0, p1

    #@ce
    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    #@d1
    move-result-object v19

    #@d2
    .line 4397
    .local v19, "t":Landroid/text/Editable;
    move-object/from16 p1, v19

    #@d4
    .line 4398
    move-object/from16 v0, p0

    #@d6
    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@d8
    move-object/from16 v0, p0

    #@da
    move-object/from16 v1, v19

    #@dc
    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    #@df
    .line 4399
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@e2
    move-result-object v13

    #@e3
    .line 4400
    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_a

    #@e5
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    #@ea
    .line 4407
    .end local v13    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "t":Landroid/text/Editable;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    #@ec
    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@ee
    if-eqz v4, :cond_c

    #@f0
    .line 4410
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@f2
    move-object/from16 v0, p2

    #@f4
    if-eq v0, v4, :cond_b

    #@f6
    move-object/from16 v0, p1

    #@f8
    instance-of v4, v0, Landroid/text/Spannable;

    #@fa
    if-eqz v4, :cond_15

    #@fc
    :cond_b
    move-object/from16 v17, p1

    #@fe
    .line 4411
    check-cast v17, Landroid/text/Spannable;

    #@100
    .line 4416
    .local v17, "s2":Landroid/text/Spannable;
    :goto_4
    move-object/from16 v0, p0

    #@102
    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@104
    move-object/from16 v0, v17

    #@106
    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    #@109
    move-result v4

    #@10a
    if-eqz v4, :cond_c

    #@10c
    .line 4417
    move-object/from16 p1, v17

    #@10e
    .line 4418
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@110
    move-object/from16 v0, p2

    #@112
    if-ne v0, v4, :cond_16

    #@114
    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@116
    .line 4425
    :goto_5
    move-object/from16 v0, p1

    #@118
    move-object/from16 v1, p0

    #@11a
    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@11c
    .line 4429
    move-object/from16 v0, p0

    #@11e
    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    #@120
    if-eqz v4, :cond_c

    #@122
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    #@125
    move-result v4

    #@126
    if-eqz v4, :cond_17

    #@128
    .line 4435
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_c
    :goto_6
    move-object/from16 v0, p2

    #@12a
    move-object/from16 v1, p0

    #@12c
    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@12e
    .line 4436
    move-object/from16 v0, p1

    #@130
    move-object/from16 v1, p0

    #@132
    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@134
    .line 4438
    move-object/from16 v0, p0

    #@136
    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@138
    if-nez v4, :cond_18

    #@13a
    .line 4439
    move-object/from16 v0, p1

    #@13c
    move-object/from16 v1, p0

    #@13e
    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@140
    .line 4444
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@143
    move-result v20

    #@144
    .line 4446
    .local v20, "textLength":I
    move-object/from16 v0, p1

    #@146
    instance-of v4, v0, Landroid/text/Spannable;

    #@148
    if-eqz v4, :cond_d

    #@14a
    move-object/from16 v0, p0

    #@14c
    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    #@14e
    if-eqz v4, :cond_19

    #@150
    .line 4479
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    #@152
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@154
    if-eqz v4, :cond_e

    #@156
    .line 4480
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    #@159
    .line 4483
    :cond_e
    const/4 v4, 0x0

    #@15a
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, p1

    #@15e
    move/from16 v2, p4

    #@160
    move/from16 v3, v20

    #@162
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    #@165
    .line 4484
    const/4 v4, 0x0

    #@166
    move-object/from16 v0, p0

    #@168
    move-object/from16 v1, p1

    #@16a
    move/from16 v2, p4

    #@16c
    move/from16 v3, v20

    #@16e
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@171
    .line 4486
    const/4 v4, 0x2

    #@172
    move-object/from16 v0, p0

    #@174
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@177
    .line 4488
    if-eqz v15, :cond_f

    #@179
    .line 4489
    check-cast p1, Landroid/text/Editable;

    #@17b
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    #@17e
    .line 4493
    :cond_f
    move-object/from16 v0, p0

    #@180
    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@182
    if-eqz v4, :cond_10

    #@184
    move-object/from16 v0, p0

    #@186
    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@188
    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@18b
    .line 4345
    :cond_10
    return-void

    #@18c
    .line 4382
    .end local v15    # "needEditableForNotification":Z
    .end local v20    # "textLength":I
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_11
    const-string/jumbo v4, ""

    #@18f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@192
    move-result v5

    #@193
    const/4 v6, 0x0

    #@194
    const/4 v7, 0x0

    #@195
    move-object/from16 v0, p0

    #@197
    invoke-direct {v0, v4, v6, v7, v5}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    #@19a
    goto/16 :goto_2

    #@19c
    .line 4392
    .restart local v15    # "needEditableForNotification":Z
    :cond_12
    if-nez v15, :cond_9

    #@19e
    .line 4401
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@1a0
    move-object/from16 v0, p2

    #@1a2
    if-eq v0, v4, :cond_13

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@1a8
    if-eqz v4, :cond_14

    #@1aa
    .line 4402
    :cond_13
    move-object/from16 v0, p0

    #@1ac
    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    #@1ae
    move-object/from16 v0, p1

    #@1b0
    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    #@1b3
    move-result-object p1

    #@1b4
    goto/16 :goto_3

    #@1b6
    .line 4403
    :cond_14
    move-object/from16 v0, p1

    #@1b8
    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    #@1ba
    if-nez v4, :cond_a

    #@1bc
    .line 4404
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1bf
    move-result-object p1

    #@1c0
    goto/16 :goto_3

    #@1c2
    .line 4413
    :cond_15
    move-object/from16 v0, p0

    #@1c4
    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    #@1c6
    move-object/from16 v0, p1

    #@1c8
    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    #@1cb
    move-result-object v17

    #@1cc
    .restart local v17    # "s2":Landroid/text/Spannable;
    goto/16 :goto_4

    #@1ce
    .line 4418
    :cond_16
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@1d0
    goto/16 :goto_5

    #@1d2
    .line 4430
    :cond_17
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@1d5
    move-result-object v4

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@1db
    goto/16 :goto_6

    #@1dd
    .line 4441
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_18
    move-object/from16 v0, p0

    #@1df
    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@1e1
    move-object/from16 v0, p1

    #@1e3
    move-object/from16 v1, p0

    #@1e5
    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    #@1e8
    move-result-object v4

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@1ed
    goto/16 :goto_7

    #@1ef
    .restart local v20    # "textLength":I
    :cond_19
    move-object/from16 v18, p1

    #@1f1
    .line 4447
    check-cast v18, Landroid/text/Spannable;

    #@1f3
    .line 4450
    .local v18, "sp":Landroid/text/Spannable;
    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    #@1f6
    move-result v4

    #@1f7
    const-class v5, Landroid/widget/TextView$ChangeWatcher;

    #@1f9
    const/4 v6, 0x0

    #@1fa
    move-object/from16 v0, v18

    #@1fc
    invoke-interface {v0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1ff
    move-result-object v21

    #@200
    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    #@202
    .line 4451
    .local v21, "watchers":[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    #@204
    array-length v11, v0

    #@205
    .line 4452
    .local v11, "count":I
    const/4 v12, 0x0

    #@206
    :goto_9
    if-ge v12, v11, :cond_1a

    #@208
    .line 4453
    aget-object v4, v21, v12

    #@20a
    move-object/from16 v0, v18

    #@20c
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@20f
    .line 4452
    add-int/lit8 v12, v12, 0x1

    #@211
    goto :goto_9

    #@212
    .line 4456
    :cond_1a
    move-object/from16 v0, p0

    #@214
    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    #@216
    if-nez v4, :cond_1b

    #@218
    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    #@21a
    const/4 v5, 0x0

    #@21b
    move-object/from16 v0, p0

    #@21d
    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$ChangeWatcher;)V

    #@220
    move-object/from16 v0, p0

    #@222
    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    #@224
    .line 4458
    :cond_1b
    move-object/from16 v0, p0

    #@226
    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    #@228
    const/4 v5, 0x0

    #@229
    const v6, 0x640012

    #@22c
    move-object/from16 v0, v18

    #@22e
    move/from16 v1, v20

    #@230
    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@233
    .line 4461
    move-object/from16 v0, p0

    #@235
    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@237
    if-eqz v4, :cond_1c

    #@239
    move-object/from16 v0, p0

    #@23b
    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@23d
    move-object/from16 v0, v18

    #@23f
    invoke-virtual {v4, v0}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    #@242
    .line 4463
    :cond_1c
    move-object/from16 v0, p0

    #@244
    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@246
    if-eqz v4, :cond_1d

    #@248
    .line 4464
    move-object/from16 v0, p0

    #@24a
    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@24c
    const/4 v5, 0x0

    #@24d
    const/16 v6, 0x12

    #@24f
    move-object/from16 v0, v18

    #@251
    move/from16 v1, v20

    #@253
    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@256
    .line 4467
    :cond_1d
    move-object/from16 v0, p0

    #@258
    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@25a
    if-eqz v4, :cond_d

    #@25c
    .line 4468
    move-object/from16 v0, p0

    #@25e
    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@260
    move-object/from16 v4, p1

    #@262
    check-cast v4, Landroid/text/Spannable;

    #@264
    move-object/from16 v0, p0

    #@266
    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    #@269
    .line 4475
    move-object/from16 v0, p0

    #@26b
    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@26d
    if-eqz v4, :cond_d

    #@26f
    move-object/from16 v0, p0

    #@271
    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@273
    const/4 v5, 0x0

    #@274
    iput-boolean v5, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    #@276
    goto/16 :goto_8
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "typefaceIndex"    # I
    .param p3, "styleIndex"    # I

    #@0
    .prologue
    .line 1529
    const/4 v0, 0x0

    #@1
    .line 1530
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    #@3
    .line 1531
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@6
    move-result-object v0

    #@7
    .line 1532
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    #@9
    .line 1533
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@c
    .line 1534
    return-void

    #@d
    .line 1537
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_0
    packed-switch p2, :pswitch_data_0

    #@10
    .line 1551
    :goto_0
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    #@13
    .line 1528
    return-void

    #@14
    .line 1539
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@16
    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    #@17
    .line 1543
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@19
    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    #@1a
    .line 1547
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@1c
    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    #@1d
    .line 1537
    nop

    #@1e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shareSelectedText()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 9678
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 9679
    .local v0, "selectedText":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 9677
    :cond_0
    :goto_0
    return-void

    #@e
    .line 9680
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@10
    const-string/jumbo v2, "android.intent.action.SEND"

    #@13
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 9681
    .local v1, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    #@19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 9682
    const-string/jumbo v2, "android.intent.extra.TEXT"

    #@1f
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@22
    .line 9683
    const-string/jumbo v2, "android.intent.extra.TEXT"

    #@25
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@28
    .line 9684
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@33
    .line 9685
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@35
    check-cast v2, Landroid/text/Spannable;

    #@37
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3a
    move-result v3

    #@3b
    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@3e
    goto :goto_0
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 6132
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 6133
    return v3

    #@9
    .line 6136
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 6137
    return v2

    #@e
    .line 6140
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@10
    if-eqz v1, :cond_3

    #@12
    .line 6141
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@14
    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    #@16
    and-int/lit8 v1, v1, 0xf

    #@18
    if-ne v1, v2, :cond_3

    #@1a
    .line 6142
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1c
    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    #@1e
    and-int/lit16 v0, v1, 0xff0

    #@20
    .line 6143
    .local v0, "variation":I
    const/16 v1, 0x20

    #@22
    if-eq v0, v1, :cond_2

    #@24
    .line 6144
    const/16 v1, 0x30

    #@26
    if-ne v0, v1, :cond_3

    #@28
    .line 6145
    :cond_2
    return v2

    #@29
    .line 6149
    .end local v0    # "variation":I
    :cond_3
    return v3
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 6157
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 6165
    :cond_0
    return v2

    #@c
    .line 6157
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 6158
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@12
    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    #@14
    and-int/lit8 v1, v1, 0xf

    #@16
    if-ne v1, v2, :cond_0

    #@18
    .line 6159
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1a
    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    #@1c
    and-int/lit16 v0, v1, 0xff0

    #@1e
    .line 6160
    .local v0, "variation":I
    const/high16 v1, 0x40000

    #@20
    if-eq v0, v1, :cond_2

    #@22
    .line 6161
    const/high16 v1, 0x20000

    #@24
    if-ne v0, v1, :cond_0

    #@26
    .line 6162
    :cond_2
    const/4 v1, 0x0

    #@27
    return v1
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 8929
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 8930
    const-string/jumbo v3, "speak_password"

    #@b
    .line 8931
    const/4 v4, -0x3

    #@c
    .line 8929
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@f
    move-result v2

    #@10
    if-ne v2, v0, :cond_0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    move v0, v1

    #@14
    goto :goto_0
.end method

.method private startMarquee()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 8020
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    return-void

    #@8
    .line 8022
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@f
    move-result v2

    #@10
    sub-int/2addr v1, v2

    #@11
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@14
    move-result v2

    #@15
    sub-int/2addr v1, v2

    #@16
    int-to-float v1, v1

    #@17
    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 8023
    return-void

    #@1e
    .line 8026
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@20
    if-eqz v1, :cond_2

    #@22
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@24
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_6

    #@2a
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_3

    #@30
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_6

    #@36
    .line 8027
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    #@39
    move-result v1

    #@3a
    if-ne v1, v3, :cond_6

    #@3c
    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    #@3f
    move-result v1

    #@40
    .line 8026
    if-eqz v1, :cond_6

    #@42
    .line 8029
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@44
    if-ne v1, v3, :cond_4

    #@46
    .line 8030
    const/4 v1, 0x2

    #@47
    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@49
    .line 8031
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4b
    .line 8032
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@4d
    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4f
    .line 8033
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@51
    .line 8034
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@54
    .line 8035
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@57
    .line 8036
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@5a
    .line 8039
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@5c
    if-nez v1, :cond_5

    #@5e
    new-instance v1, Landroid/widget/TextView$Marquee;

    #@60
    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    #@63
    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@65
    .line 8040
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@67
    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@69
    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    #@6c
    .line 8018
    :cond_6
    return-void
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .param p1, "start"    # Z

    #@0
    .prologue
    .line 8061
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 8062
    if-eqz p1, :cond_1

    #@8
    .line 8063
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    #@b
    .line 8060
    :cond_0
    :goto_0
    return-void

    #@c
    .line 8065
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    #@f
    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    #@0
    .prologue
    .line 8045
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@6
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 8049
    :cond_0
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@e
    const/4 v2, 0x2

    #@f
    if-ne v1, v2, :cond_1

    #@11
    .line 8050
    const/4 v1, 0x1

    #@12
    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@14
    .line 8051
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@16
    .line 8052
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@18
    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@1a
    .line 8053
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@1c
    .line 8054
    const/4 v1, 0x0

    #@1d
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@20
    .line 8055
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@23
    .line 8056
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@26
    .line 8044
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_1
    return-void

    #@27
    .line 8046
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@29
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    #@2c
    goto :goto_0
.end method

.method private unregisterForPreDraw()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5360
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@8
    .line 5361
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    #@a
    .line 5362
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    #@c
    .line 5359
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4059
    const/4 v1, 0x0

    #@2
    .line 4060
    .local v1, "inval":Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    #@4
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@b
    move-result v0

    #@c
    .line 4061
    .local v0, "color":I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@e
    if-eq v0, v2, :cond_0

    #@10
    .line 4062
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@12
    .line 4063
    const/4 v1, 0x1

    #@13
    .line 4065
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 4066
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@19
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@20
    move-result v0

    #@21
    .line 4067
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@23
    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    #@25
    if-eq v0, v2, :cond_1

    #@27
    .line 4068
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@29
    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    #@2b
    .line 4069
    const/4 v1, 0x1

    #@2c
    .line 4072
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 4073
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@32
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@39
    move-result v0

    #@3a
    .line 4074
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    #@3c
    if-eq v0, v2, :cond_2

    #@3e
    .line 4075
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    #@40
    .line 4076
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@42
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@45
    move-result v2

    #@46
    if-nez v2, :cond_2

    #@48
    .line 4077
    const/4 v1, 0x1

    #@49
    .line 4081
    :cond_2
    if-eqz v1, :cond_4

    #@4b
    .line 4083
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4d
    if-eqz v2, :cond_3

    #@4f
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@51
    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    #@54
    .line 4084
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@57
    .line 4058
    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    #@0
    .prologue
    .line 8875
    new-instance v0, Landroid/widget/TextView$3;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    #@5
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #@8
    .line 8871
    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 5

    #@0
    .prologue
    .line 8885
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "textservices"

    #@5
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 8884
    check-cast v2, Landroid/view/textservice/TextServicesManager;

    #@b
    .line 8886
    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    #@c
    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    #@f
    move-result-object v1

    #@10
    .line 8888
    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    #@12
    .line 8889
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    #@15
    move-result-object v0

    #@16
    .line 8893
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    #@18
    .line 8883
    return-void

    #@19
    .line 8891
    :cond_0
    const/4 v0, 0x0

    #@1a
    .local v0, "locale":Ljava/util/Locale;
    goto :goto_0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    #@0
    .prologue
    .line 8110
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 8111
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@b
    .line 8114
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 8109
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4033
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    #@8
    .line 4032
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 4042
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v1, v1, Landroid/text/Editable;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 4043
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8
    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@a
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@d
    .line 4046
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@f
    check-cast v1, Landroid/text/Editable;

    #@11
    invoke-interface {v1, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    #@14
    .line 4048
    iget v1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 4049
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1a
    check-cast v1, Landroid/text/Spannable;

    #@1c
    iget v2, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@1e
    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    #@21
    move-result v0

    #@22
    .line 4052
    .local v0, "linksWereAdded":Z
    if-eqz v0, :cond_1

    #@24
    iget-boolean v1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    #@26
    if-eqz v1, :cond_1

    #@28
    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 4041
    .end local v0    # "linksWereAdded":Z
    :cond_1
    :goto_0
    return-void

    #@2f
    .line 4053
    .restart local v0    # "linksWereAdded":Z
    :cond_2
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@36
    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 6634
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    #@9
    .line 6633
    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 30
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 7462
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    #@3
    move-result v25

    #@4
    if-eqz v25, :cond_0

    #@6
    .line 7463
    move/from16 v0, p1

    #@8
    move-object/from16 v1, p0

    #@a
    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    #@c
    .line 7464
    const/16 v25, 0x0

    #@e
    return v25

    #@f
    .line 7466
    :cond_0
    const/4 v5, 0x0

    #@10
    .line 7468
    .local v5, "changed":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    #@13
    move-result v25

    #@14
    if-eqz v25, :cond_1

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@1a
    move-object/from16 v16, v0

    #@1c
    .line 7470
    .local v16, "layout":Landroid/text/Layout;
    :goto_0
    if-nez v16, :cond_2

    #@1e
    return v5

    #@1f
    .line 7468
    .end local v16    # "layout":Landroid/text/Layout;
    :cond_1
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@23
    move-object/from16 v16, v0

    #@25
    goto :goto_0

    #@26
    .line 7472
    .restart local v16    # "layout":Landroid/text/Layout;
    :cond_2
    move-object/from16 v0, v16

    #@28
    move/from16 v1, p1

    #@2a
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@2d
    move-result v18

    #@2e
    .line 7476
    .local v18, "line":I
    invoke-static {}, Landroid/widget/TextView;->-getandroid-text-Layout$AlignmentSwitchesValues()[I

    #@31
    move-result-object v25

    #@32
    move-object/from16 v0, v16

    #@34
    move/from16 v1, v18

    #@36
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    #@39
    move-result-object v26

    #@3a
    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    #@3d
    move-result v26

    #@3e
    aget v25, v25, v26

    #@40
    packed-switch v25, :pswitch_data_0

    #@43
    .line 7491
    const/4 v11, 0x0

    #@44
    .line 7505
    .local v11, "grav":I
    :goto_1
    if-lez v11, :cond_12

    #@46
    const/4 v6, 0x1

    #@47
    .line 7507
    .local v6, "clamped":Z
    :goto_2
    move-object/from16 v0, v16

    #@49
    move/from16 v1, p1

    #@4b
    invoke-virtual {v0, v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    #@4e
    move-result v25

    #@4f
    move/from16 v0, v25

    #@51
    float-to-int v0, v0

    #@52
    move/from16 v24, v0

    #@54
    .line 7508
    .local v24, "x":I
    move-object/from16 v0, v16

    #@56
    move/from16 v1, v18

    #@58
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@5b
    move-result v20

    #@5c
    .line 7509
    .local v20, "top":I
    add-int/lit8 v25, v18, 0x1

    #@5e
    move-object/from16 v0, v16

    #@60
    move/from16 v1, v25

    #@62
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@65
    move-result v4

    #@66
    .line 7511
    .local v4, "bottom":I
    move-object/from16 v0, v16

    #@68
    move/from16 v1, v18

    #@6a
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    #@6d
    move-result v25

    #@6e
    move/from16 v0, v25

    #@70
    float-to-double v0, v0

    #@71
    move-wide/from16 v26, v0

    #@73
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    #@76
    move-result-wide v26

    #@77
    move-wide/from16 v0, v26

    #@79
    double-to-int v0, v0

    #@7a
    move/from16 v17, v0

    #@7c
    .line 7512
    .local v17, "left":I
    move-object/from16 v0, v16

    #@7e
    move/from16 v1, v18

    #@80
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    #@83
    move-result v25

    #@84
    move/from16 v0, v25

    #@86
    float-to-double v0, v0

    #@87
    move-wide/from16 v26, v0

    #@89
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    #@8c
    move-result-wide v26

    #@8d
    move-wide/from16 v0, v26

    #@8f
    double-to-int v0, v0

    #@90
    move/from16 v19, v0

    #@92
    .line 7513
    .local v19, "right":I
    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    #@95
    move-result v15

    #@96
    .line 7515
    .local v15, "ht":I
    move-object/from16 v0, p0

    #@98
    iget v0, v0, Landroid/widget/TextView;->mRight:I

    #@9a
    move/from16 v25, v0

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    #@a0
    move/from16 v26, v0

    #@a2
    sub-int v25, v25, v26

    #@a4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@a7
    move-result v26

    #@a8
    sub-int v25, v25, v26

    #@aa
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@ad
    move-result v26

    #@ae
    sub-int v14, v25, v26

    #@b0
    .line 7516
    .local v14, "hspace":I
    move-object/from16 v0, p0

    #@b2
    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    #@b4
    move/from16 v25, v0

    #@b6
    move-object/from16 v0, p0

    #@b8
    iget v0, v0, Landroid/widget/TextView;->mTop:I

    #@ba
    move/from16 v26, v0

    #@bc
    sub-int v25, v25, v26

    #@be
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@c1
    move-result v26

    #@c2
    sub-int v25, v25, v26

    #@c4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@c7
    move-result v26

    #@c8
    sub-int v23, v25, v26

    #@ca
    .line 7517
    .local v23, "vspace":I
    move-object/from16 v0, p0

    #@cc
    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@ce
    move/from16 v25, v0

    #@d0
    if-nez v25, :cond_3

    #@d2
    sub-int v25, v19, v17

    #@d4
    move/from16 v0, v25

    #@d6
    if-le v0, v14, :cond_3

    #@d8
    move/from16 v0, v19

    #@da
    move/from16 v1, v24

    #@dc
    if-le v0, v1, :cond_3

    #@de
    .line 7519
    add-int v25, v17, v14

    #@e0
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    #@e3
    move-result v19

    #@e4
    .line 7522
    :cond_3
    sub-int v25, v4, v20

    #@e6
    div-int/lit8 v13, v25, 0x2

    #@e8
    .line 7523
    .local v13, "hslack":I
    move/from16 v22, v13

    #@ea
    .line 7525
    .local v22, "vslack":I
    div-int/lit8 v25, v23, 0x4

    #@ec
    move/from16 v0, v25

    #@ee
    if-le v13, v0, :cond_4

    #@f0
    .line 7526
    div-int/lit8 v22, v23, 0x4

    #@f2
    .line 7527
    :cond_4
    div-int/lit8 v25, v14, 0x4

    #@f4
    move/from16 v0, v25

    #@f6
    if-le v13, v0, :cond_5

    #@f8
    .line 7528
    div-int/lit8 v13, v14, 0x4

    #@fa
    .line 7530
    :cond_5
    move-object/from16 v0, p0

    #@fc
    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    #@fe
    .line 7531
    .local v12, "hs":I
    move-object/from16 v0, p0

    #@100
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@102
    move/from16 v21, v0

    #@104
    .line 7533
    .local v21, "vs":I
    sub-int v25, v20, v21

    #@106
    move/from16 v0, v25

    #@108
    move/from16 v1, v22

    #@10a
    if-ge v0, v1, :cond_6

    #@10c
    .line 7534
    sub-int v21, v20, v22

    #@10e
    .line 7535
    :cond_6
    sub-int v25, v4, v21

    #@110
    sub-int v26, v23, v22

    #@112
    move/from16 v0, v25

    #@114
    move/from16 v1, v26

    #@116
    if-le v0, v1, :cond_7

    #@118
    .line 7536
    sub-int v25, v23, v22

    #@11a
    sub-int v21, v4, v25

    #@11c
    .line 7537
    :cond_7
    sub-int v25, v15, v21

    #@11e
    move/from16 v0, v25

    #@120
    move/from16 v1, v23

    #@122
    if-ge v0, v1, :cond_8

    #@124
    .line 7538
    sub-int v21, v15, v23

    #@126
    .line 7539
    :cond_8
    rsub-int/lit8 v25, v21, 0x0

    #@128
    if-lez v25, :cond_9

    #@12a
    .line 7540
    const/16 v21, 0x0

    #@12c
    .line 7542
    :cond_9
    if-eqz v11, :cond_b

    #@12e
    .line 7543
    sub-int v25, v24, v12

    #@130
    move/from16 v0, v25

    #@132
    if-ge v0, v13, :cond_a

    #@134
    .line 7544
    sub-int v12, v24, v13

    #@136
    .line 7546
    :cond_a
    sub-int v25, v24, v12

    #@138
    sub-int v26, v14, v13

    #@13a
    move/from16 v0, v25

    #@13c
    move/from16 v1, v26

    #@13e
    if-le v0, v1, :cond_b

    #@140
    .line 7547
    sub-int v25, v14, v13

    #@142
    sub-int v12, v24, v25

    #@144
    .line 7551
    :cond_b
    if-gez v11, :cond_13

    #@146
    .line 7552
    sub-int v25, v17, v12

    #@148
    if-lez v25, :cond_c

    #@14a
    .line 7553
    move/from16 v12, v17

    #@14c
    .line 7554
    :cond_c
    sub-int v25, v19, v12

    #@14e
    move/from16 v0, v25

    #@150
    if-ge v0, v14, :cond_d

    #@152
    .line 7555
    sub-int v12, v19, v14

    #@154
    .line 7602
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    #@156
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@158
    move/from16 v25, v0

    #@15a
    move/from16 v0, v25

    #@15c
    if-ne v12, v0, :cond_e

    #@15e
    move-object/from16 v0, p0

    #@160
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@162
    move/from16 v25, v0

    #@164
    move/from16 v0, v21

    #@166
    move/from16 v1, v25

    #@168
    if-eq v0, v1, :cond_f

    #@16a
    .line 7603
    :cond_e
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@16e
    move-object/from16 v25, v0

    #@170
    if-nez v25, :cond_1c

    #@172
    .line 7604
    move-object/from16 v0, p0

    #@174
    move/from16 v1, v21

    #@176
    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->scrollTo(II)V

    #@179
    .line 7625
    :goto_4
    const/4 v5, 0x1

    #@17a
    .line 7628
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    #@17d
    move-result v25

    #@17e
    if-eqz v25, :cond_11

    #@180
    .line 7636
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@184
    move-object/from16 v25, v0

    #@186
    if-nez v25, :cond_10

    #@188
    new-instance v25, Landroid/graphics/Rect;

    #@18a
    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    #@18d
    move-object/from16 v0, v25

    #@18f
    move-object/from16 v1, p0

    #@191
    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@193
    .line 7637
    :cond_10
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@197
    move-object/from16 v25, v0

    #@199
    add-int/lit8 v26, v24, -0x2

    #@19b
    add-int/lit8 v27, v24, 0x2

    #@19d
    move-object/from16 v0, v25

    #@19f
    move/from16 v1, v26

    #@1a1
    move/from16 v2, v20

    #@1a3
    move/from16 v3, v27

    #@1a5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@1a8
    .line 7638
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@1ac
    move-object/from16 v25, v0

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    move-object/from16 v1, v25

    #@1b2
    move/from16 v2, v18

    #@1b4
    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    #@1b7
    .line 7639
    move-object/from16 v0, p0

    #@1b9
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@1bb
    move-object/from16 v25, v0

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@1c1
    move/from16 v26, v0

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@1c7
    move/from16 v27, v0

    #@1c9
    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Rect;->offset(II)V

    #@1cc
    .line 7641
    move-object/from16 v0, p0

    #@1ce
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@1d0
    move-object/from16 v25, v0

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    move-object/from16 v1, v25

    #@1d6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    #@1d9
    move-result v25

    #@1da
    if-eqz v25, :cond_11

    #@1dc
    .line 7642
    const/4 v5, 0x1

    #@1dd
    .line 7646
    :cond_11
    return v5

    #@1de
    .line 7478
    .end local v4    # "bottom":I
    .end local v6    # "clamped":Z
    .end local v11    # "grav":I
    .end local v12    # "hs":I
    .end local v13    # "hslack":I
    .end local v14    # "hspace":I
    .end local v15    # "ht":I
    .end local v17    # "left":I
    .end local v19    # "right":I
    .end local v20    # "top":I
    .end local v21    # "vs":I
    .end local v22    # "vslack":I
    .end local v23    # "vspace":I
    .end local v24    # "x":I
    :pswitch_0
    const/4 v11, 0x1

    #@1df
    .line 7479
    .restart local v11    # "grav":I
    goto/16 :goto_1

    #@1e1
    .line 7481
    .end local v11    # "grav":I
    :pswitch_1
    const/4 v11, -0x1

    #@1e2
    .line 7482
    .restart local v11    # "grav":I
    goto/16 :goto_1

    #@1e4
    .line 7484
    .end local v11    # "grav":I
    :pswitch_2
    move-object/from16 v0, v16

    #@1e6
    move/from16 v1, v18

    #@1e8
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1eb
    move-result v11

    #@1ec
    .restart local v11    # "grav":I
    goto/16 :goto_1

    #@1ee
    .line 7487
    .end local v11    # "grav":I
    :pswitch_3
    move-object/from16 v0, v16

    #@1f0
    move/from16 v1, v18

    #@1f2
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1f5
    move-result v25

    #@1f6
    move/from16 v0, v25

    #@1f8
    neg-int v11, v0

    #@1f9
    .line 7488
    .restart local v11    # "grav":I
    goto/16 :goto_1

    #@1fb
    .line 7505
    :cond_12
    const/4 v6, 0x0

    #@1fc
    goto/16 :goto_2

    #@1fe
    .line 7556
    .restart local v4    # "bottom":I
    .restart local v6    # "clamped":Z
    .restart local v12    # "hs":I
    .restart local v13    # "hslack":I
    .restart local v14    # "hspace":I
    .restart local v15    # "ht":I
    .restart local v17    # "left":I
    .restart local v19    # "right":I
    .restart local v20    # "top":I
    .restart local v21    # "vs":I
    .restart local v22    # "vslack":I
    .restart local v23    # "vspace":I
    .restart local v24    # "x":I
    :cond_13
    if-lez v11, :cond_15

    #@200
    .line 7557
    sub-int v25, v19, v12

    #@202
    move/from16 v0, v25

    #@204
    if-ge v0, v14, :cond_14

    #@206
    .line 7558
    sub-int v12, v19, v14

    #@208
    .line 7559
    :cond_14
    sub-int v25, v17, v12

    #@20a
    if-lez v25, :cond_d

    #@20c
    .line 7560
    move/from16 v12, v17

    #@20e
    goto/16 :goto_3

    #@210
    .line 7562
    :cond_15
    sub-int v25, v19, v17

    #@212
    move/from16 v0, v25

    #@214
    if-gt v0, v14, :cond_16

    #@216
    .line 7566
    sub-int v25, v19, v17

    #@218
    sub-int v25, v14, v25

    #@21a
    div-int/lit8 v25, v25, 0x2

    #@21c
    sub-int v12, v17, v25

    #@21e
    goto/16 :goto_3

    #@220
    .line 7567
    :cond_16
    sub-int v25, v19, v13

    #@222
    move/from16 v0, v24

    #@224
    move/from16 v1, v25

    #@226
    if-le v0, v1, :cond_17

    #@228
    .line 7572
    sub-int v12, v19, v14

    #@22a
    goto/16 :goto_3

    #@22c
    .line 7573
    :cond_17
    add-int v25, v17, v13

    #@22e
    move/from16 v0, v24

    #@230
    move/from16 v1, v25

    #@232
    if-ge v0, v1, :cond_18

    #@234
    .line 7578
    move/from16 v12, v17

    #@236
    goto/16 :goto_3

    #@238
    .line 7579
    :cond_18
    move/from16 v0, v17

    #@23a
    if-le v0, v12, :cond_19

    #@23c
    .line 7583
    move/from16 v12, v17

    #@23e
    goto/16 :goto_3

    #@240
    .line 7584
    :cond_19
    add-int v25, v12, v14

    #@242
    move/from16 v0, v19

    #@244
    move/from16 v1, v25

    #@246
    if-ge v0, v1, :cond_1a

    #@248
    .line 7588
    sub-int v12, v19, v14

    #@24a
    goto/16 :goto_3

    #@24c
    .line 7593
    :cond_1a
    sub-int v25, v24, v12

    #@24e
    move/from16 v0, v25

    #@250
    if-ge v0, v13, :cond_1b

    #@252
    .line 7594
    sub-int v12, v24, v13

    #@254
    .line 7596
    :cond_1b
    sub-int v25, v24, v12

    #@256
    sub-int v26, v14, v13

    #@258
    move/from16 v0, v25

    #@25a
    move/from16 v1, v26

    #@25c
    if-le v0, v1, :cond_d

    #@25e
    .line 7597
    sub-int v25, v14, v13

    #@260
    sub-int v12, v24, v25

    #@262
    goto/16 :goto_3

    #@264
    .line 7606
    :cond_1c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@267
    move-result-wide v26

    #@268
    move-object/from16 v0, p0

    #@26a
    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    #@26c
    move-wide/from16 v28, v0

    #@26e
    sub-long v8, v26, v28

    #@270
    .line 7607
    .local v8, "duration":J
    move-object/from16 v0, p0

    #@272
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@274
    move/from16 v25, v0

    #@276
    sub-int v7, v12, v25

    #@278
    .line 7608
    .local v7, "dx":I
    move-object/from16 v0, p0

    #@27a
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@27c
    move/from16 v25, v0

    #@27e
    sub-int v10, v21, v25

    #@280
    .line 7610
    .local v10, "dy":I
    const-wide/16 v26, 0xfa

    #@282
    cmp-long v25, v8, v26

    #@284
    if-lez v25, :cond_1d

    #@286
    .line 7611
    move-object/from16 v0, p0

    #@288
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@28a
    move-object/from16 v25, v0

    #@28c
    move-object/from16 v0, p0

    #@28e
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@290
    move/from16 v26, v0

    #@292
    move-object/from16 v0, p0

    #@294
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@296
    move/from16 v27, v0

    #@298
    move-object/from16 v0, v25

    #@29a
    move/from16 v1, v26

    #@29c
    move/from16 v2, v27

    #@29e
    invoke-virtual {v0, v1, v2, v7, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    #@2a1
    .line 7612
    move-object/from16 v0, p0

    #@2a3
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2a5
    move-object/from16 v25, v0

    #@2a7
    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    #@2aa
    move-result v25

    #@2ab
    move-object/from16 v0, p0

    #@2ad
    move/from16 v1, v25

    #@2af
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    #@2b2
    .line 7613
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    #@2b5
    .line 7622
    :goto_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@2b8
    move-result-wide v26

    #@2b9
    move-wide/from16 v0, v26

    #@2bb
    move-object/from16 v2, p0

    #@2bd
    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    #@2bf
    goto/16 :goto_4

    #@2c1
    .line 7615
    :cond_1d
    move-object/from16 v0, p0

    #@2c3
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2c5
    move-object/from16 v25, v0

    #@2c7
    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    #@2ca
    move-result v25

    #@2cb
    if-nez v25, :cond_1e

    #@2cd
    .line 7616
    move-object/from16 v0, p0

    #@2cf
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2d1
    move-object/from16 v25, v0

    #@2d3
    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    #@2d6
    .line 7619
    :cond_1e
    move-object/from16 v0, p0

    #@2d8
    invoke-virtual {v0, v7, v10}, Landroid/widget/TextView;->scrollBy(II)V

    #@2db
    goto :goto_5

    #@2dc
    .line 7476
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method canCopy()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 9585
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 9586
    return v1

    #@8
    .line 9589
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@a
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_1

    #@10
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 9590
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 9593
    :cond_1
    return v1
.end method

.method canCut()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 9572
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 9573
    return v1

    #@8
    .line 9576
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@a
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_1

    #@10
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@18
    instance-of v0, v0, Landroid/text/Editable;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 9577
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@22
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 9578
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    .line 9581
    :cond_1
    return v1
.end method

.method canPaste()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 9614
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@3
    instance-of v1, v1, Landroid/text/Editable;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 9615
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 9616
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@14
    move-result v1

    #@15
    if-ltz v1, :cond_0

    #@17
    .line 9617
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1a
    move-result v1

    #@1b
    if-ltz v1, :cond_0

    #@1d
    .line 9618
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, "clipboard"

    #@24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/content/ClipboardManager;

    #@2a
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    #@2d
    move-result v0

    #@2e
    .line 9614
    :cond_0
    return v0
.end method

.method canProcessText()Z
    .locals 2

    #@0
    .prologue
    .line 9623
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 9624
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 9626
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method canRedo()Z
    .locals 1

    #@0
    .prologue
    .line 9568
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

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

.method canSelectAllText()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 9630
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2

    #@e
    :cond_0
    move v0, v1

    #@f
    :cond_1
    :goto_0
    return v0

    #@10
    .line 9631
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@19
    move-result v2

    #@1a
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1c
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@1f
    move-result v3

    #@20
    if-ne v2, v3, :cond_1

    #@22
    move v0, v1

    #@23
    goto :goto_0
.end method

.method canSelectText()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 8802
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@f
    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    #@12
    move-result v0

    #@13
    :cond_0
    return v0
.end method

.method canShare()Z
    .locals 1

    #@0
    .prologue
    .line 9597
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Landroid/widget/TextView;->isDeviceProvisioned()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 9600
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 9598
    :cond_0
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method canUndo()Z
    .locals 1

    #@0
    .prologue
    .line 9564
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

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

.method public cancelLongPress()V
    .locals 2

    #@0
    .prologue
    .line 8583
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    #@3
    .line 8584
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    const/4 v1, 0x1

    #@a
    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    #@c
    .line 8582
    :cond_0
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    #@0
    .prologue
    .line 8428
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v0, v0, Landroid/text/Spannable;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 8429
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8
    check-cast v0, Landroid/text/Spannable;

    #@a
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    #@d
    .line 8427
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    #@0
    .prologue
    .line 8659
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 8660
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    #@a
    and-int/lit8 v0, v0, 0x7

    #@c
    const/4 v1, 0x3

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 8661
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    #@15
    move-result v0

    #@16
    float-to-int v0, v0

    #@17
    .line 8660
    :goto_0
    return v0

    #@18
    .line 8661
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@1a
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    #@1d
    move-result v0

    #@1e
    goto :goto_0

    #@1f
    .line 8664
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public computeScroll()V
    .locals 1

    #@0
    .prologue
    .line 7713
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 7714
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@6
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 7715
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@e
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    #@14
    .line 7716
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@16
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    #@1c
    .line 7717
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    #@1f
    .line 7718
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    #@22
    .line 7712
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    #@0
    .prologue
    .line 8677
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v0, v1

    #@e
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    #@0
    .prologue
    .line 8669
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 8670
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@6
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 8672
    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    #@0
    .prologue
    .line 9713
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    sub-float/2addr p1, v0

    #@6
    .line 9715
    const/4 v0, 0x0

    #@7
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@a
    move-result p1

    #@b
    .line 9716
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    #@12
    move-result v1

    #@13
    sub-int/2addr v0, v1

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    int-to-float v0, v0

    #@17
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    #@1a
    move-result p1

    #@1b
    .line 9717
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    #@1e
    move-result v0

    #@1f
    int-to-float v0, v0

    #@20
    add-float/2addr p1, v0

    #@21
    .line 9718
    return p1
.end method

.method public debug(I)V
    .locals 3
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 7757
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    #@3
    .line 7759
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 7760
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "frame={"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, ", "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget v2, p0, Landroid/widget/TextView;->mTop:I

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, ", "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    iget v2, p0, Landroid/widget/TextView;->mRight:I

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 7761
    const-string/jumbo v2, ", "

    #@3a
    .line 7760
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 7761
    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    #@40
    .line 7760
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 7761
    const-string/jumbo v2, "} scroll={"

    #@47
    .line 7760
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 7761
    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    #@4d
    .line 7760
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 7761
    const-string/jumbo v2, ", "

    #@54
    .line 7760
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    .line 7761
    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    #@5a
    .line 7760
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 7762
    const-string/jumbo v2, "} "

    #@61
    .line 7760
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 7764
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@6b
    if-eqz v1, :cond_1

    #@6d
    .line 7766
    new-instance v1, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    const-string/jumbo v2, "mText=\""

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    const-string/jumbo v2, "\" "

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    .line 7767
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@90
    if-eqz v1, :cond_0

    #@92
    .line 7768
    new-instance v1, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    const-string/jumbo v2, "mLayout width="

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@a4
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    #@a7
    move-result v2

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    .line 7769
    const-string/jumbo v2, " height="

    #@af
    .line 7768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v1

    #@b3
    .line 7769
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@b5
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    #@b8
    move-result v2

    #@b9
    .line 7768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v0

    #@c1
    .line 7774
    :cond_0
    :goto_0
    const-string/jumbo v1, "View"

    #@c4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 7756
    return-void

    #@c8
    .line 7772
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    const-string/jumbo v2, "mText=NULL"

    #@d4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v0

    #@dc
    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 9884
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    check-cast v0, Landroid/text/Editable;

    #@4
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@7
    .line 9883
    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    #@0
    .prologue
    .line 8578
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 4110
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@3
    .line 4112
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 4113
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@9
    iget-object v2, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@b
    const/4 v1, 0x0

    #@c
    array-length v3, v2

    #@d
    :goto_0
    if-ge v1, v3, :cond_1

    #@f
    aget-object v0, v2, v1

    #@11
    .line 4114
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@13
    .line 4115
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@16
    .line 4113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 4109
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    #@0
    .prologue
    .line 4090
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 4092
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    #@5
    if-eqz v2, :cond_0

    #@7
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    #@9
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_2

    #@f
    .line 4093
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@11
    if-eqz v2, :cond_1

    #@13
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@15
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@18
    move-result v2

    #@19
    .line 4092
    if-nez v2, :cond_2

    #@1b
    .line 4094
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@1d
    if-eqz v2, :cond_3

    #@1f
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@21
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@24
    move-result v2

    #@25
    .line 4092
    if-eqz v2, :cond_3

    #@27
    .line 4095
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@2a
    .line 4098
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2c
    if-eqz v2, :cond_5

    #@2e
    .line 4099
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@31
    move-result-object v1

    #@32
    .line 4100
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@34
    iget-object v3, v2, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@36
    const/4 v2, 0x0

    #@37
    array-length v4, v3

    #@38
    :goto_0
    if-ge v2, v4, :cond_5

    #@3a
    aget-object v0, v3, v2

    #@3c
    .line 4101
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    #@3e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_4

    #@44
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_4

    #@4a
    .line 4102
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@4d
    .line 4100
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 4089
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "state":[I
    :cond_5
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 10021
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@4
    .line 10023
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    #@7
    move-result-object v0

    #@8
    .line 10024
    .local v0, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    const-string/jumbo v3, "text:ellipsize"

    #@b
    if-nez v0, :cond_0

    #@d
    move-object v1, v2

    #@e
    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 10025
    const-string/jumbo v1, "text:textSize"

    #@14
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    #@17
    move-result v3

    #@18
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    #@1b
    .line 10026
    const-string/jumbo v1, "text:scaledTextSize"

    #@1e
    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    #@21
    move-result v3

    #@22
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    #@25
    .line 10027
    const-string/jumbo v1, "text:typefaceStyle"

    #@28
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@2f
    .line 10028
    const-string/jumbo v1, "text:selectionStart"

    #@32
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@35
    move-result v3

    #@36
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@39
    .line 10029
    const-string/jumbo v1, "text:selectionEnd"

    #@3c
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3f
    move-result v3

    #@40
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@43
    .line 10030
    const-string/jumbo v1, "text:curTextColor"

    #@46
    iget v3, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@48
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@4b
    .line 10031
    const-string/jumbo v1, "text:text"

    #@4e
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@50
    if-nez v3, :cond_1

    #@52
    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 10032
    const-string/jumbo v1, "text:gravity"

    #@58
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    #@5a
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@5d
    .line 10020
    return-void

    #@5e
    .line 10024
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    goto :goto_0

    #@63
    .line 10031
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@65
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    goto :goto_1
.end method

.method public endBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 6638
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    #@9
    .line 6637
    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 6516
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 6517
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 8682
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    #@3
    .line 8683
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    and-int/lit8 v2, p3, 0x1

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 8684
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 8681
    :cond_0
    :goto_0
    return-void

    #@14
    .line 8684
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 8685
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 8686
    .local v0, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@26
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 8687
    .local v1, "textLowerCase":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_0

    #@34
    .line 8688
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 8936
    const-class v0, Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    #@0
    .prologue
    .line 9991
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    #@0
    .prologue
    .line 9976
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    #@0
    .prologue
    .line 2775
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@2
    return v0
.end method

.method public getBaseline()I
    .locals 3

    #@0
    .prologue
    .line 5971
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5972
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 5975
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    #@13
    move-result v1

    #@14
    add-int/2addr v0, v1

    #@15
    return v0
.end method

.method getBaselineOffset()I
    .locals 3

    #@0
    .prologue
    .line 5979
    const/4 v0, 0x0

    #@1
    .line 5980
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    #@3
    and-int/lit8 v1, v1, 0x70

    #@5
    const/16 v2, 0x30

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 5981
    const/4 v1, 0x1

    #@a
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@d
    move-result v0

    #@e
    .line 5984
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    #@10
    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 5985
    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    #@19
    move-result-object v1

    #@1a
    iget v1, v1, Landroid/graphics/Insets;->top:I

    #@1c
    sub-int/2addr v0, v1

    #@1d
    .line 5988
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@20
    move-result v1

    #@21
    add-int/2addr v1, v0

    #@22
    return v1
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    #@0
    .prologue
    .line 5465
    const/4 v0, 0x0

    #@1
    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    #@3
    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    #@5
    add-float/2addr v1, v2

    #@6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@9
    move-result v0

    #@a
    float-to-int v0, v0

    #@b
    return v0
.end method

.method public getBreakStrategy()I
    .locals 1

    #@0
    .prologue
    .line 3176
    iget v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    #@2
    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    #@0
    .prologue
    .line 2623
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 2624
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    #@4
    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@6
    :goto_0
    return v1

    #@7
    :cond_0
    const/4 v1, 0x0

    #@8
    goto :goto_0
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2659
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    #@9
    :cond_0
    return-object v0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2693
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@9
    :cond_0
    return-object v0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2564
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@3
    .line 2565
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    #@5
    .line 2566
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, [Landroid/graphics/drawable/Drawable;

    #@d
    return-object v1

    #@e
    .line 2568
    :cond_0
    const/4 v1, 0x4

    #@f
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v3, v1, v2

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v3, v1, v2

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v3, v1, v2

    #@1a
    const/4 v2, 0x3

    #@1b
    aput-object v3, v1, v2

    #@1d
    return-object v1
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x3

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 2582
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7
    .line 2583
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    #@9
    .line 2584
    const/4 v1, 0x4

    #@a
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    #@c
    .line 2585
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@e
    aput-object v2, v1, v5

    #@10
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@12
    aget-object v2, v2, v3

    #@14
    aput-object v2, v1, v3

    #@16
    .line 2586
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@18
    aput-object v2, v1, v6

    #@1a
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@1c
    aget-object v2, v2, v4

    #@1e
    aput-object v2, v1, v4

    #@20
    .line 2584
    return-object v1

    #@21
    .line 2589
    :cond_0
    const/4 v1, 0x4

    #@22
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    #@24
    aput-object v2, v1, v5

    #@26
    aput-object v2, v1, v3

    #@28
    aput-object v2, v1, v6

    #@2a
    aput-object v2, v1, v4

    #@2c
    return-object v1
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    #@0
    .prologue
    .line 1966
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 1967
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    #@4
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@6
    const/4 v2, 0x3

    #@7
    aget-object v1, v1, v2

    #@9
    if-nez v1, :cond_1

    #@b
    .line 1968
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    #@d
    return v1

    #@e
    .line 1970
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    #@10
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@12
    add-int/2addr v1, v2

    #@13
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@15
    add-int/2addr v1, v2

    #@16
    return v1
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    #@0
    .prologue
    .line 2020
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@3
    .line 2021
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@6
    move-result v0

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 2024
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 2026
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 2021
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    #@0
    .prologue
    .line 1979
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 1980
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    #@4
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@6
    const/4 v2, 0x0

    #@7
    aget-object v1, v1, v2

    #@9
    if-nez v1, :cond_1

    #@b
    .line 1981
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    #@d
    return v1

    #@e
    .line 1983
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    #@10
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@12
    add-int/2addr v1, v2

    #@13
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@15
    add-int/2addr v1, v2

    #@16
    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    #@0
    .prologue
    .line 1992
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 1993
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    #@4
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@6
    const/4 v2, 0x2

    #@7
    aget-object v1, v1, v2

    #@9
    if-nez v1, :cond_1

    #@b
    .line 1994
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    #@d
    return v1

    #@e
    .line 1996
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    #@10
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@12
    add-int/2addr v1, v2

    #@13
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@15
    add-int/2addr v1, v2

    #@16
    return v1
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    #@0
    .prologue
    .line 2005
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@3
    .line 2006
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@6
    move-result v0

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 2009
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 2011
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 2006
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    #@0
    .prologue
    .line 1953
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 1954
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    #@4
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@6
    const/4 v2, 0x1

    #@7
    aget-object v1, v1, v2

    #@9
    if-nez v1, :cond_1

    #@b
    .line 1955
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    #@d
    return v1

    #@e
    .line 1957
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    #@10
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@12
    add-int/2addr v1, v2

    #@13
    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@15
    add-int/2addr v1, v2

    #@16
    return v1
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    #@0
    .prologue
    .line 3529
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@9
    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    #@0
    .prologue
    .line 3291
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@2
    return v0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 9551
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    #@a
    goto :goto_0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 9514
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    #@a
    goto :goto_0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    #@0
    .prologue
    .line 1662
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    #@0
    .prologue
    .line 1669
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    #@0
    .prologue
    .line 1701
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v0, v0, Landroid/text/Editable;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8
    check-cast v0, Landroid/text/Editable;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final getEditorForTesting()Landroid/widget/Editor;
    .locals 1

    #@0
    .prologue
    .line 1749
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 7957
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5065
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@a
    goto :goto_0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    #@0
    .prologue
    .line 2073
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    #@2
    const/4 v6, 0x1

    #@3
    if-eq v5, v6, :cond_0

    #@5
    .line 2074
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 2077
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@c
    if-nez v5, :cond_1

    #@e
    .line 2078
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    #@11
    .line 2081
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@13
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    #@16
    move-result v5

    #@17
    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    #@19
    if-gt v5, v6, :cond_2

    #@1b
    .line 2082
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@1e
    move-result v5

    #@1f
    return v5

    #@20
    .line 2085
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@23
    move-result v3

    #@24
    .line 2086
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@27
    move-result v0

    #@28
    .line 2087
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    #@2b
    move-result v5

    #@2c
    sub-int/2addr v5, v3

    #@2d
    sub-int v4, v5, v0

    #@2f
    .line 2088
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@31
    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    #@33
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    #@36
    move-result v2

    #@37
    .line 2090
    .local v2, "layoutht":I
    if-lt v2, v4, :cond_3

    #@39
    .line 2091
    return v0

    #@3a
    .line 2094
    :cond_3
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    #@3c
    and-int/lit8 v1, v5, 0x70

    #@3e
    .line 2095
    .local v1, "gravity":I
    const/16 v5, 0x30

    #@40
    if-ne v1, v5, :cond_4

    #@42
    .line 2096
    add-int v5, v0, v4

    #@44
    sub-int/2addr v5, v2

    #@45
    return v5

    #@46
    .line 2097
    :cond_4
    const/16 v5, 0x50

    #@48
    if-ne v1, v5, :cond_5

    #@4a
    .line 2098
    return v0

    #@4b
    .line 2100
    :cond_5
    sub-int v5, v4, v2

    #@4d
    div-int/lit8 v5, v5, 0x2

    #@4f
    add-int/2addr v5, v0

    #@50
    return v5
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    #@0
    .prologue
    .line 2036
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    #@2
    const/4 v6, 0x1

    #@3
    if-eq v5, v6, :cond_0

    #@5
    .line 2037
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 2040
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@c
    if-nez v5, :cond_1

    #@e
    .line 2041
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    #@11
    .line 2044
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@13
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    #@16
    move-result v5

    #@17
    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    #@19
    if-gt v5, v6, :cond_2

    #@1b
    .line 2045
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@1e
    move-result v5

    #@1f
    return v5

    #@20
    .line 2048
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@23
    move-result v3

    #@24
    .line 2049
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@27
    move-result v0

    #@28
    .line 2050
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    #@2b
    move-result v5

    #@2c
    sub-int/2addr v5, v3

    #@2d
    sub-int v4, v5, v0

    #@2f
    .line 2051
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@31
    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    #@33
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    #@36
    move-result v2

    #@37
    .line 2053
    .local v2, "layoutht":I
    if-lt v2, v4, :cond_3

    #@39
    .line 2054
    return v3

    #@3a
    .line 2057
    :cond_3
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    #@3c
    and-int/lit8 v1, v5, 0x70

    #@3e
    .line 2058
    .local v1, "gravity":I
    const/16 v5, 0x30

    #@40
    if-ne v1, v5, :cond_4

    #@42
    .line 2059
    return v3

    #@43
    .line 2060
    :cond_4
    const/16 v5, 0x50

    #@45
    if-ne v1, v5, :cond_5

    #@47
    .line 2061
    add-int v5, v3, v4

    #@49
    sub-int/2addr v5, v2

    #@4a
    return v5

    #@4b
    .line 2063
    :cond_5
    sub-int v5, v4, v2

    #@4d
    div-int/lit8 v5, v5, 0x2

    #@4f
    add-int/2addr v5, v3

    #@50
    return v5
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .param p1, "offsetRequired"    # Z

    #@0
    .prologue
    .line 6013
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@6
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

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

.method protected getFadeTop(Z)I
    .locals 3
    .param p1, "offsetRequired"    # Z

    #@0
    .prologue
    .line 5996
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 5998
    :cond_0
    const/4 v0, 0x0

    #@7
    .line 5999
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    #@9
    and-int/lit8 v1, v1, 0x70

    #@b
    const/16 v2, 0x30

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 6000
    const/4 v1, 0x1

    #@10
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@13
    move-result v0

    #@14
    .line 6003
    :cond_1
    if-eqz p1, :cond_2

    #@16
    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    #@19
    move-result v1

    #@1a
    add-int/2addr v0, v1

    #@1b
    .line 6005
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v1, v0

    #@20
    return v1
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    #@0
    .prologue
    .line 5178
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@2
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 5877
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3
    if-nez v8, :cond_0

    #@5
    .line 5878
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@8
    .line 5879
    return-void

    #@9
    .line 5882
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@c
    move-result v6

    #@d
    .line 5883
    .local v6, "selEnd":I
    if-gez v6, :cond_1

    #@f
    .line 5884
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@12
    .line 5885
    return-void

    #@13
    .line 5888
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@16
    move-result v7

    #@17
    .line 5889
    .local v7, "selStart":I
    if-ltz v7, :cond_2

    #@19
    if-lt v7, v6, :cond_4

    #@1b
    .line 5890
    :cond_2
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@1d
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    #@20
    move-result v0

    #@21
    .line 5891
    .local v0, "line":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@23
    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@26
    move-result v8

    #@27
    iput v8, p1, Landroid/graphics/Rect;->top:I

    #@29
    .line 5892
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2b
    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    #@2e
    move-result v8

    #@2f
    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    #@31
    .line 5893
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@33
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@36
    move-result v8

    #@37
    float-to-int v8, v8

    #@38
    add-int/lit8 v8, v8, -0x2

    #@3a
    iput v8, p1, Landroid/graphics/Rect;->left:I

    #@3c
    .line 5894
    iget v8, p1, Landroid/graphics/Rect;->left:I

    #@3e
    add-int/lit8 v8, v8, 0x4

    #@40
    iput v8, p1, Landroid/graphics/Rect;->right:I

    #@42
    .line 5921
    .end local v0    # "line":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@45
    move-result v4

    #@46
    .line 5922
    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@49
    move-result v5

    #@4a
    .line 5923
    .local v5, "paddingTop":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    #@4c
    and-int/lit8 v8, v8, 0x70

    #@4e
    const/16 v9, 0x30

    #@50
    if-eq v8, v9, :cond_3

    #@52
    .line 5924
    invoke-virtual {p0, v12}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@55
    move-result v8

    #@56
    add-int/2addr v5, v8

    #@57
    .line 5926
    :cond_3
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    #@5a
    .line 5927
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@5d
    move-result v3

    #@5e
    .line 5928
    .local v3, "paddingBottom":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    #@60
    add-int/2addr v8, v3

    #@61
    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    #@63
    .line 5876
    return-void

    #@64
    .line 5896
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingTop":I
    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@66
    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    #@69
    move-result v2

    #@6a
    .line 5897
    .local v2, "lineStart":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@6c
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    #@6f
    move-result v1

    #@70
    .line 5898
    .local v1, "lineEnd":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@72
    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineTop(I)I

    #@75
    move-result v8

    #@76
    iput v8, p1, Landroid/graphics/Rect;->top:I

    #@78
    .line 5899
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@7a
    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@7d
    move-result v8

    #@7e
    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    #@80
    .line 5900
    if-ne v2, v1, :cond_5

    #@82
    .line 5901
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@84
    invoke-virtual {v8, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@87
    move-result v8

    #@88
    float-to-int v8, v8

    #@89
    iput v8, p1, Landroid/graphics/Rect;->left:I

    #@8b
    .line 5902
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8d
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@90
    move-result v8

    #@91
    float-to-int v8, v8

    #@92
    iput v8, p1, Landroid/graphics/Rect;->right:I

    #@94
    goto :goto_0

    #@95
    .line 5906
    :cond_5
    iget-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@97
    if-eqz v8, :cond_7

    #@99
    .line 5907
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@9b
    if-nez v8, :cond_6

    #@9d
    new-instance v8, Landroid/graphics/Path;

    #@9f
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    #@a2
    iput-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@a4
    .line 5908
    :cond_6
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@a6
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    #@a9
    .line 5909
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@ab
    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@ad
    invoke-virtual {v8, v7, v6, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    #@b0
    .line 5910
    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@b2
    .line 5912
    :cond_7
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@b4
    monitor-enter v9

    #@b5
    .line 5913
    :try_start_0
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@b7
    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@b9
    const/4 v11, 0x1

    #@ba
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@bd
    .line 5914
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@bf
    iget v8, v8, Landroid/graphics/RectF;->left:F

    #@c1
    float-to-int v8, v8

    #@c2
    add-int/lit8 v8, v8, -0x1

    #@c4
    iput v8, p1, Landroid/graphics/Rect;->left:I

    #@c6
    .line 5915
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@c8
    iget v8, v8, Landroid/graphics/RectF;->right:F

    #@ca
    float-to-int v8, v8

    #@cb
    add-int/lit8 v8, v8, 0x1

    #@cd
    iput v8, p1, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@cf
    monitor-exit v9

    #@d0
    goto/16 :goto_0

    #@d2
    .line 5912
    :catchall_0
    move-exception v8

    #@d3
    monitor-exit v9

    #@d4
    throw v8
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3147
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    #@0
    .prologue
    .line 4278
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    #@2
    return v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 3621
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    #@2
    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    #@0
    .prologue
    .line 3316
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    #@2
    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    #@0
    .prologue
    .line 4606
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    #@0
    .prologue
    .line 1727
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@2
    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 3519
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    #@0
    .prologue
    .line 5704
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    #@0
    .prologue
    .line 3676
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@2
    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    #@0
    .prologue
    .line 3203
    iget v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@2
    return v0
.end method

.method public getImeActionId()I
    .locals 1

    #@0
    .prologue
    .line 4861
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4862
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@e
    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@10
    .line 4861
    :goto_0
    return v0

    #@11
    .line 4862
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4850
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4851
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@f
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    #@11
    .line 4850
    :cond_0
    return-object v0
.end method

.method public getImeHintLocales()Landroid/os/LocaleList;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5054
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 5055
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@a
    if-nez v0, :cond_1

    #@c
    return-object v1

    #@d
    .line 5056
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@f
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@11
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    #@13
    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    #@0
    .prologue
    .line 4822
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4823
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@e
    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@10
    .line 4822
    :goto_0
    return v0

    #@11
    .line 4823
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    #@0
    .prologue
    .line 7040
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    #@2
    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "create"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5017
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-nez v0, :cond_0

    #@5
    if-eqz p1, :cond_1

    #@7
    .line 5018
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a
    .line 5019
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@e
    if-nez v0, :cond_3

    #@10
    .line 5020
    if-nez p1, :cond_2

    #@12
    return-object v1

    #@13
    .line 5017
    :cond_1
    return-object v1

    #@14
    .line 5021
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@16
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@19
    .line 5023
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1b
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@1d
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    #@1f
    if-nez v0, :cond_5

    #@21
    .line 5024
    if-nez p1, :cond_4

    #@23
    return-object v1

    #@24
    .line 5025
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@26
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@28
    new-instance v1, Landroid/os/Bundle;

    #@2a
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@2d
    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    #@2f
    .line 5027
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@31
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@33
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    #@35
    return-object v0
.end method

.method public getInputType()I
    .locals 1

    #@0
    .prologue
    .line 4798
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    #@a
    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 9934
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 4
    .param p1, "granularity"    # I

    #@0
    .prologue
    .line 9948
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 9968
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    #@6
    move-result-object v3

    #@7
    return-object v3

    #@8
    .line 9950
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/text/Spannable;

    #@e
    .line 9951
    .local v2, "text":Landroid/text/Spannable;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_0

    #@14
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@17
    move-result-object v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 9953
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    #@1d
    move-result-object v0

    #@1e
    .line 9954
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v0, v2, v3}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    #@25
    .line 9955
    return-object v0

    #@26
    .line 9959
    .end local v0    # "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .end local v2    # "text":Landroid/text/Spannable;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/text/Spannable;

    #@2c
    .line 9960
    .restart local v2    # "text":Landroid/text/Spannable;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_0

    #@32
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@35
    move-result-object v3

    #@36
    if-eqz v3, :cond_0

    #@38
    .line 9962
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    #@3b
    move-result-object v1

    #@3c
    .line 9963
    .local v1, "iterator":Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    invoke-virtual {v1, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    #@3f
    .line 9964
    return-object v1

    #@40
    .line 9948
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1787
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@a
    goto :goto_0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    #@0
    .prologue
    .line 1719
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 8604
    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@d
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isStopped()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 8611
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    #@16
    move-result v2

    #@17
    const/4 v3, 0x1

    #@18
    if-ne v2, v3, :cond_4

    #@1a
    .line 8612
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineLeft(I)F

    #@22
    move-result v0

    #@23
    .line 8613
    .local v0, "lineLeft":F
    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    #@25
    int-to-float v2, v2

    #@26
    cmpl-float v2, v0, v2

    #@28
    if-lez v2, :cond_3

    #@2a
    return v4

    #@2b
    .line 8605
    .end local v0    # "lineLeft":F
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@2d
    .line 8606
    .local v1, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_2

    #@33
    .line 8607
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getScroll()F

    #@36
    move-result v2

    #@37
    invoke-direct {p0, v2, v4}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    #@3a
    move-result v2

    #@3b
    return v2

    #@3c
    .line 8609
    :cond_2
    return v4

    #@3d
    .line 8614
    .end local v1    # "marquee":Landroid/widget/TextView$Marquee;
    .restart local v0    # "lineLeft":F
    :cond_3
    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    #@3f
    int-to-float v2, v2

    #@40
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    #@43
    move-result v2

    #@44
    return v2

    #@45
    .line 8616
    .end local v0    # "lineLeft":F
    :cond_4
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    #@48
    move-result v2

    #@49
    return v2
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    #@0
    .prologue
    .line 5454
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    #@6
    sub-int/2addr v0, v1

    #@7
    .line 5455
    const/4 v1, 0x0

    #@8
    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    #@a
    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    #@c
    sub-float/2addr v2, v3

    #@d
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    #@10
    move-result v1

    #@11
    float-to-int v1, v1

    #@12
    .line 5454
    add-int/2addr v0, v1

    #@13
    return v0
.end method

.method public getLetterSpacing()F
    .locals 1

    #@0
    .prologue
    .line 3109
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    #@0
    .prologue
    .line 9722
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    sub-float/2addr p1, v0

    #@6
    .line 9724
    const/4 v0, 0x0

    #@7
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@a
    move-result p1

    #@b
    .line 9725
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    #@12
    move-result v1

    #@13
    sub-int/2addr v0, v1

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    int-to-float v0, v0

    #@17
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    #@1a
    move-result p1

    #@1b
    .line 9726
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    #@1e
    move-result v0

    #@1f
    int-to-float v0, v0

    #@20
    add-float/2addr p1, v0

    #@21
    .line 9727
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@24
    move-result-object v0

    #@25
    float-to-int v1, p1

    #@26
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    #@29
    move-result v0

    #@2a
    return v0
.end method

.method getLineAtCoordinateUnclamped(F)I
    .locals 2
    .param p1, "y"    # F

    #@0
    .prologue
    .line 9731
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    sub-float/2addr p1, v0

    #@6
    .line 9732
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    #@9
    move-result v0

    #@a
    int-to-float v0, v0

    #@b
    add-float/2addr p1, v0

    #@c
    .line 9733
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@f
    move-result-object v0

    #@10
    float-to-int v1, p1

    #@11
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5949
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 5950
    if-eqz p2, :cond_0

    #@7
    .line 5951
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@a
    .line 5953
    :cond_0
    return v3

    #@b
    .line 5956
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@d
    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    #@10
    move-result v0

    #@11
    .line 5958
    .local v0, "baseline":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@14
    move-result v1

    #@15
    .line 5959
    .local v1, "voffset":I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    #@17
    and-int/lit8 v2, v2, 0x70

    #@19
    const/16 v3, 0x30

    #@1b
    if-eq v2, v3, :cond_2

    #@1d
    .line 5960
    const/4 v2, 0x1

    #@1e
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@21
    move-result v2

    #@22
    add-int/2addr v1, v2

    #@23
    .line 5962
    :cond_2
    if-eqz p2, :cond_3

    #@25
    .line 5963
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@28
    move-result v2

    #@29
    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    #@2c
    .line 5965
    :cond_3
    add-int v2, v0, v1

    #@2e
    return v2
.end method

.method public getLineCount()I
    .locals 1

    #@0
    .prologue
    .line 5936
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@6
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

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

.method public getLineHeight()I
    .locals 2

    #@0
    .prologue
    .line 1711
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@6
    move-result v0

    #@7
    int-to-float v0, v0

    #@8
    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    #@a
    mul-float/2addr v0, v1

    #@b
    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    #@d
    add-float/2addr v0, v1

    #@e
    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    #@0
    .prologue
    .line 4024
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    #@2
    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    #@0
    .prologue
    .line 4010
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    #@2
    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 3571
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    #@0
    .prologue
    .line 3459
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    #@2
    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    #@0
    .prologue
    .line 7948
    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@2
    return v0
.end method

.method public getMaxEms()I
    .locals 2

    #@0
    .prologue
    .line 3909
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    #@0
    .prologue
    .line 3792
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 2

    #@0
    .prologue
    .line 3763
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    #@0
    .prologue
    .line 3936
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public getMinEms()I
    .locals 2

    #@0
    .prologue
    .line 3855
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public getMinHeight()I
    .locals 2

    #@0
    .prologue
    .line 3735
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public getMinLines()I
    .locals 2

    #@0
    .prologue
    .line 3707
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 2

    #@0
    .prologue
    .line 3882
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    #@0
    .prologue
    .line 1853
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@2
    return-object v0
.end method

.method getOffsetAtCoordinate(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "x"    # F

    #@0
    .prologue
    .line 9737
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@3
    move-result p2

    #@4
    .line 9738
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 9706
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@3
    move-result-object v2

    #@4
    if-nez v2, :cond_0

    #@6
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 9707
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@b
    move-result v0

    #@c
    .line 9708
    .local v0, "line":I
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@f
    move-result v1

    #@10
    .line 9709
    .local v1, "offset":I
    return v1
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    #@0
    .prologue
    .line 3422
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    #@0
    .prologue
    .line 3629
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4983
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 4984
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@f
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    #@11
    .line 4983
    :cond_0
    return-object v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    #@0
    .prologue
    .line 8621
    invoke-direct {p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@8
    if-eqz v3, :cond_0

    #@a
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@c
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->isStopped()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 8624
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    #@15
    move-result v3

    #@16
    const/4 v4, 0x1

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 8625
    iget v3, p0, Landroid/widget/TextView;->mScrollX:I

    #@1b
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@22
    move-result v5

    #@23
    sub-int/2addr v4, v5

    #@24
    .line 8626
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@27
    move-result v5

    #@28
    .line 8625
    sub-int/2addr v4, v5

    #@29
    add-int/2addr v3, v4

    #@2a
    int-to-float v2, v3

    #@2b
    .line 8627
    .local v2, "rightEdge":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@2e
    move-result-object v3

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    #@33
    move-result v0

    #@34
    .line 8628
    .local v0, "lineRight":F
    cmpg-float v3, v0, v2

    #@36
    if-gez v3, :cond_2

    #@38
    const/4 v3, 0x0

    #@39
    return v3

    #@3a
    .line 8622
    .end local v0    # "lineRight":F
    .end local v2    # "rightEdge":F
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@3c
    .line 8623
    .local v1, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    #@3f
    move-result v3

    #@40
    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->getScroll()F

    #@43
    move-result v4

    #@44
    invoke-direct {p0, v3, v4}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    #@47
    move-result v3

    #@48
    return v3

    #@49
    .line 8629
    .end local v1    # "marquee":Landroid/widget/TextView$Marquee;
    .restart local v0    # "lineRight":F
    .restart local v2    # "rightEdge":F
    :cond_2
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getHorizontalFadingEdgeStrength(FF)F

    #@4c
    move-result v3

    #@4d
    return v3

    #@4e
    .line 8631
    .end local v0    # "lineRight":F
    .end local v2    # "rightEdge":F
    :cond_3
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    #@51
    move-result v3

    #@52
    return v3
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    #@0
    .prologue
    .line 5470
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    #@6
    sub-int/2addr v0, v1

    #@7
    neg-int v0, v0

    #@8
    .line 5471
    const/4 v1, 0x0

    #@9
    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    #@b
    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    #@d
    add-float/2addr v2, v3

    #@e
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    #@11
    move-result v1

    #@12
    float-to-int v1, v1

    #@13
    .line 5470
    add-int/2addr v0, v1

    #@14
    return v0
.end method

.method public getScaledTextSize()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    #@0
    .prologue
    .line 2952
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@8
    iget v1, v1, Landroid/text/TextPaint;->density:F

    #@a
    div-float/2addr v0, v1

    #@b
    return v0
.end method

.method getSelectedText()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 7804
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 7805
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 7808
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@b
    move-result v1

    #@c
    .line 7809
    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@f
    move-result v0

    #@10
    .line 7811
    .local v0, "end":I
    if-le v1, v0, :cond_1

    #@12
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@14
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@17
    move-result-object v2

    #@18
    .line 7810
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    return-object v2

    #@1d
    .line 7811
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1f
    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    #@0
    .prologue
    .line 7790
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    #@0
    .prologue
    .line 7782
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getShadowColor()I
    .locals 1

    #@0
    .prologue
    .line 3414
    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    #@2
    return v0
.end method

.method public getShadowDx()F
    .locals 1

    #@0
    .prologue
    .line 3391
    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    #@2
    return v0
.end method

.method public getShadowDy()F
    .locals 1

    #@0
    .prologue
    .line 3402
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    #@2
    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    #@0
    .prologue
    .line 3380
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    #@2
    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    #@0
    .prologue
    .line 3335
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 8868
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    #@0
    .prologue
    .line 1684
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 3281
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method protected getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 3

    #@0
    .prologue
    .line 9793
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 9795
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@8
    return-object v1

    #@9
    .line 9799
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x1

    #@e
    if-ne v1, v2, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    .line 9802
    .local v0, "defaultIsRtl":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    #@14
    move-result v1

    #@15
    packed-switch v1, :pswitch_data_0

    #@18
    .line 9805
    :pswitch_0
    if-eqz v0, :cond_2

    #@1a
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@1c
    :goto_1
    return-object v1

    #@1d
    .line 9799
    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    #@1e
    .restart local v0    # "defaultIsRtl":Z
    goto :goto_0

    #@1f
    .line 9806
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@21
    goto :goto_1

    #@22
    .line 9808
    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    #@24
    return-object v1

    #@25
    .line 9810
    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@27
    return-object v1

    #@28
    .line 9812
    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@2a
    return-object v1

    #@2b
    .line 9814
    :pswitch_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    #@2d
    return-object v1

    #@2e
    .line 9816
    :pswitch_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@30
    return-object v1

    #@31
    .line 9818
    :pswitch_6
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@33
    return-object v1

    #@34
    .line 9802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 2874
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 1

    #@0
    .prologue
    .line 2883
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    #@0
    .prologue
    .line 3020
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 8845
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    #@0
    .prologue
    .line 2943
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    #@0
    .prologue
    .line 5460
    const/4 v0, 0x0

    #@1
    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    #@3
    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    #@5
    sub-float/2addr v1, v2

    #@6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@9
    move-result v0

    #@a
    float-to-int v0, v0

    #@b
    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    #@0
    .prologue
    .line 2151
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    #@8
    move-result v1

    #@9
    add-int/2addr v0, v1

    #@a
    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    #@0
    .prologue
    .line 2133
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    #@0
    .prologue
    .line 2109
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    #@0
    .prologue
    .line 2117
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    #@0
    .prologue
    .line 2125
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    #@0
    .prologue
    .line 2142
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@8
    move-result v1

    #@9
    add-int/2addr v0, v1

    #@a
    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    #@0
    .prologue
    .line 1904
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@2
    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 9404
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    #@0
    .prologue
    .line 3078
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    #@0
    .prologue
    .line 2963
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    .line 2964
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    #@b
    move-result v1

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 2

    #@0
    .prologue
    .line 1740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3470
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@3
    instance-of v0, v0, Landroid/text/Spanned;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3471
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@9
    check-cast v0, Landroid/text/Spanned;

    #@b
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@d
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v1

    #@11
    const-class v2, Landroid/text/style/URLSpan;

    #@13
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Landroid/text/style/URLSpan;

    #@19
    return-object v0

    #@1a
    .line 3473
    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    #@1c
    return-object v0
.end method

.method getVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    #@0
    .prologue
    .line 5192
    const/4 v4, 0x0

    #@1
    .line 5193
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    #@3
    and-int/lit8 v1, v5, 0x70

    #@5
    .line 5195
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@7
    .line 5196
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    #@9
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@b
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_0

    #@11
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@13
    if-eqz v5, :cond_0

    #@15
    .line 5197
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@17
    .line 5200
    :cond_0
    const/16 v5, 0x30

    #@19
    if-eq v1, v5, :cond_1

    #@1b
    .line 5201
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    #@1e
    move-result v0

    #@1f
    .line 5202
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    #@22
    move-result v3

    #@23
    .line 5204
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    #@25
    .line 5205
    const/16 v5, 0x50

    #@27
    if-ne v1, v5, :cond_2

    #@29
    .line 5206
    sub-int v4, v0, v3

    #@2b
    .line 5211
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    #@2c
    .line 5208
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    #@2e
    shr-int/lit8 v4, v5, 0x1

    #@30
    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 8906
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 8907
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 8909
    :cond_0
    return-object v1
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 6050
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v1, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 6051
    :cond_0
    return v2

    #@d
    .line 6054
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_3

    #@13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_3

    #@19
    .line 6055
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@1c
    move-result-object v0

    #@1d
    .line 6056
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    #@1f
    .line 6057
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@22
    .line 6059
    :cond_2
    return v3

    #@23
    .line 6060
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@26
    move-result v1

    #@27
    if-ne v1, v3, :cond_5

    #@29
    .line 6061
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@2c
    move-result-object v0

    #@2d
    .line 6062
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    #@2f
    .line 6063
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@32
    .line 6065
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_5

    #@38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_6

    #@3e
    .line 6070
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    return v2

    #@3f
    .line 6066
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@42
    .line 6067
    return v3
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 8231
    const-wide/16 v2, 0x0

    #@3
    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    #@5
    .line 8233
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    if-nez v1, :cond_3

    #@9
    .line 8234
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_0
    if-eqz v0, :cond_0

    #@b
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@d
    if-nez v1, :cond_1

    #@f
    .line 8235
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    #@12
    .line 8237
    :cond_1
    if-eqz v0, :cond_2

    #@14
    .line 8238
    const/4 v1, 0x1

    #@15
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@17
    .line 8239
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@19
    if-gez v1, :cond_4

    #@1b
    .line 8240
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@1d
    .line 8241
    add-int v1, p2, p3

    #@1f
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@21
    .line 8246
    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@23
    sub-int v2, p4, p3

    #@25
    add-int/2addr v1, v2

    #@26
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@28
    .line 8248
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    #@2b
    .line 8249
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    #@2e
    .line 8250
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@31
    .line 8230
    return-void

    #@32
    .line 8233
    .end local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@34
    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@36
    goto :goto_0

    #@37
    .line 8243
    .restart local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_4
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@39
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v1

    #@3d
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@3f
    .line 8244
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@41
    add-int v2, p2, p3

    #@43
    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@45
    sub-int/2addr v2, v3

    #@46
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@49
    move-result v1

    #@4a
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@4c
    goto :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    #@0
    .prologue
    .line 5562
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_1

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    .line 5563
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@14
    instance-of v0, v0, Landroid/text/Spannable;

    #@16
    .line 5562
    if-nez v0, :cond_0

    #@18
    .line 5563
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    #@1b
    move-result v0

    #@1c
    .line 5562
    if-nez v0, :cond_0

    #@1e
    .line 5564
    invoke-virtual {p0}, Landroid/widget/TextView;->isHorizontalFadingEdgeEnabled()Z

    #@21
    move-result v0

    #@22
    goto :goto_0
.end method

.method hasPasswordTransformationMethod()Z
    .locals 1

    #@0
    .prologue
    .line 4711
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@2
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    #@4
    return v0
.end method

.method public hasSelection()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 7797
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@4
    move-result v1

    #@5
    .line 7798
    .local v1, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@8
    move-result v0

    #@9
    .line 7800
    .local v0, "selectionEnd":I
    if-ltz v1, :cond_0

    #@b
    if-eq v1, v0, :cond_0

    #@d
    const/4 v2, 0x1

    #@e
    :cond_0
    return v2
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6344
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 6343
    :cond_0
    :goto_0
    return-void

    #@12
    .line 6345
    :cond_1
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@15
    goto :goto_0
.end method

.method invalidateCursor()V
    .locals 1

    #@0
    .prologue
    .line 5281
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3
    move-result v0

    #@4
    .line 5283
    .local v0, "where":I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    #@7
    .line 5280
    return-void
.end method

.method invalidateCursorPath()V
    .locals 12

    #@0
    .prologue
    .line 5238
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@2
    if-eqz v5, :cond_1

    #@4
    .line 5239
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    #@7
    .line 5237
    :cond_0
    :goto_0
    return-void

    #@8
    .line 5241
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@b
    move-result v1

    #@c
    .line 5242
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@f
    move-result v5

    #@10
    const/4 v6, 0x1

    #@11
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@14
    move-result v6

    #@15
    add-int v4, v5, v6

    #@17
    .line 5244
    .local v4, "verticalPadding":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@19
    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    #@1b
    if-nez v5, :cond_3

    #@1d
    .line 5245
    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@1f
    monitor-enter v6

    #@20
    .line 5255
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@22
    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    #@25
    move-result v5

    #@26
    float-to-double v8, v5

    #@27
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@2a
    move-result-wide v8

    #@2b
    double-to-float v3, v8

    #@2c
    .line 5256
    .local v3, "thick":F
    const/high16 v5, 0x3f800000    # 1.0f

    #@2e
    cmpg-float v5, v3, v5

    #@30
    if-gez v5, :cond_2

    #@32
    .line 5257
    const/high16 v3, 0x3f800000    # 1.0f

    #@34
    .line 5260
    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    #@36
    div-float/2addr v3, v5

    #@37
    .line 5263
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@39
    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@3b
    const/4 v8, 0x0

    #@3c
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@3f
    .line 5265
    int-to-float v5, v1

    #@40
    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@42
    iget v7, v7, Landroid/graphics/RectF;->left:F

    #@44
    add-float/2addr v5, v7

    #@45
    sub-float/2addr v5, v3

    #@46
    float-to-double v8, v5

    #@47
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    #@4a
    move-result-wide v8

    #@4b
    double-to-int v5, v8

    #@4c
    .line 5266
    int-to-float v7, v4

    #@4d
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@4f
    iget v8, v8, Landroid/graphics/RectF;->top:F

    #@51
    add-float/2addr v7, v8

    #@52
    sub-float/2addr v7, v3

    #@53
    float-to-double v8, v7

    #@54
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    #@57
    move-result-wide v8

    #@58
    double-to-int v7, v8

    #@59
    .line 5267
    int-to-float v8, v1

    #@5a
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@5c
    iget v9, v9, Landroid/graphics/RectF;->right:F

    #@5e
    add-float/2addr v8, v9

    #@5f
    add-float/2addr v8, v3

    #@60
    float-to-double v8, v8

    #@61
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@64
    move-result-wide v8

    #@65
    double-to-int v8, v8

    #@66
    .line 5268
    int-to-float v9, v4

    #@67
    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@69
    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    #@6b
    add-float/2addr v9, v10

    #@6c
    add-float/2addr v9, v3

    #@6d
    float-to-double v10, v9

    #@6e
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    #@71
    move-result-wide v10

    #@72
    double-to-int v9, v10

    #@73
    .line 5265
    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@76
    monitor-exit v6

    #@77
    goto :goto_0

    #@78
    .line 5245
    .end local v3    # "thick":F
    :catchall_0
    move-exception v5

    #@79
    monitor-exit v6

    #@7a
    throw v5

    #@7b
    .line 5271
    :cond_3
    const/4 v2, 0x0

    #@7c
    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7e
    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    #@80
    if-ge v2, v5, :cond_0

    #@82
    .line 5272
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@84
    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@86
    aget-object v5, v5, v2

    #@88
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@8b
    move-result-object v0

    #@8c
    .line 5273
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@8e
    add-int/2addr v5, v1

    #@8f
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@91
    add-int/2addr v6, v4

    #@92
    .line 5274
    iget v7, v0, Landroid/graphics/Rect;->right:I

    #@94
    add-int/2addr v7, v1

    #@95
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@97
    add-int/2addr v8, v4

    #@98
    .line 5273
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    #@9b
    .line 5271
    add-int/lit8 v2, v2, 0x1

    #@9d
    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 16
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 5501
    const/4 v7, 0x0

    #@1
    .line 5503
    .local v7, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v12

    #@5
    if-eqz v12, :cond_1

    #@7
    .line 5504
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@a
    move-result-object v5

    #@b
    .line 5505
    .local v5, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@d
    iget v9, v0, Landroid/widget/TextView;->mScrollX:I

    #@f
    .line 5506
    .local v9, "scrollX":I
    move-object/from16 v0, p0

    #@11
    iget v10, v0, Landroid/widget/TextView;->mScrollY:I

    #@13
    .line 5511
    .local v10, "scrollY":I
    move-object/from16 v0, p0

    #@15
    iget-object v6, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@17
    .line 5512
    .local v6, "drawables":Landroid/widget/TextView$Drawables;
    if-eqz v6, :cond_0

    #@19
    .line 5513
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@1b
    const/4 v13, 0x0

    #@1c
    aget-object v12, v12, v13

    #@1e
    move-object/from16 v0, p1

    #@20
    if-ne v0, v12, :cond_3

    #@22
    .line 5514
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@25
    move-result v4

    #@26
    .line 5515
    .local v4, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@29
    move-result v1

    #@2a
    .line 5516
    .local v1, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    #@2c
    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    #@2e
    move-object/from16 v0, p0

    #@30
    iget v13, v0, Landroid/widget/TextView;->mTop:I

    #@32
    sub-int/2addr v12, v13

    #@33
    sub-int/2addr v12, v1

    #@34
    sub-int v11, v12, v4

    #@36
    .line 5518
    .local v11, "vspace":I
    move-object/from16 v0, p0

    #@38
    iget v12, v0, Landroid/widget/TextView;->mPaddingLeft:I

    #@3a
    add-int/2addr v9, v12

    #@3b
    .line 5519
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@3d
    sub-int v12, v11, v12

    #@3f
    div-int/lit8 v12, v12, 0x2

    #@41
    add-int/2addr v12, v4

    #@42
    add-int/2addr v10, v12

    #@43
    .line 5520
    const/4 v7, 0x1

    #@44
    .line 5548
    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    #@46
    .line 5549
    iget v12, v5, Landroid/graphics/Rect;->left:I

    #@48
    add-int/2addr v12, v9

    #@49
    iget v13, v5, Landroid/graphics/Rect;->top:I

    #@4b
    add-int/2addr v13, v10

    #@4c
    .line 5550
    iget v14, v5, Landroid/graphics/Rect;->right:I

    #@4e
    add-int/2addr v14, v9

    #@4f
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    #@51
    add-int/2addr v15, v10

    #@52
    .line 5549
    move-object/from16 v0, p0

    #@54
    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    #@57
    .line 5554
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-nez v7, :cond_2

    #@59
    .line 5555
    invoke-super/range {p0 .. p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5c
    .line 5500
    :cond_2
    return-void

    #@5d
    .line 5521
    .restart local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_3
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@5f
    const/4 v13, 0x2

    #@60
    aget-object v12, v12, v13

    #@62
    move-object/from16 v0, p1

    #@64
    if-ne v0, v12, :cond_4

    #@66
    .line 5522
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@69
    move-result v4

    #@6a
    .line 5523
    .restart local v4    # "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@6d
    move-result v1

    #@6e
    .line 5524
    .restart local v1    # "compoundPaddingBottom":I
    move-object/from16 v0, p0

    #@70
    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    #@72
    move-object/from16 v0, p0

    #@74
    iget v13, v0, Landroid/widget/TextView;->mTop:I

    #@76
    sub-int/2addr v12, v13

    #@77
    sub-int/2addr v12, v1

    #@78
    sub-int v11, v12, v4

    #@7a
    .line 5526
    .restart local v11    # "vspace":I
    move-object/from16 v0, p0

    #@7c
    iget v12, v0, Landroid/widget/TextView;->mRight:I

    #@7e
    move-object/from16 v0, p0

    #@80
    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    #@82
    sub-int/2addr v12, v13

    #@83
    move-object/from16 v0, p0

    #@85
    iget v13, v0, Landroid/widget/TextView;->mPaddingRight:I

    #@87
    sub-int/2addr v12, v13

    #@88
    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@8a
    sub-int/2addr v12, v13

    #@8b
    add-int/2addr v9, v12

    #@8c
    .line 5527
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@8e
    sub-int v12, v11, v12

    #@90
    div-int/lit8 v12, v12, 0x2

    #@92
    add-int/2addr v12, v4

    #@93
    add-int/2addr v10, v12

    #@94
    .line 5528
    const/4 v7, 0x1

    #@95
    goto :goto_0

    #@96
    .line 5529
    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_4
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@98
    const/4 v13, 0x1

    #@99
    aget-object v12, v12, v13

    #@9b
    move-object/from16 v0, p1

    #@9d
    if-ne v0, v12, :cond_5

    #@9f
    .line 5530
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@a2
    move-result v2

    #@a3
    .line 5531
    .local v2, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@a6
    move-result v3

    #@a7
    .line 5532
    .local v3, "compoundPaddingRight":I
    move-object/from16 v0, p0

    #@a9
    iget v12, v0, Landroid/widget/TextView;->mRight:I

    #@ab
    move-object/from16 v0, p0

    #@ad
    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    #@af
    sub-int/2addr v12, v13

    #@b0
    sub-int/2addr v12, v3

    #@b1
    sub-int v8, v12, v2

    #@b3
    .line 5534
    .local v8, "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@b5
    sub-int v12, v8, v12

    #@b7
    div-int/lit8 v12, v12, 0x2

    #@b9
    add-int/2addr v12, v2

    #@ba
    add-int/2addr v9, v12

    #@bb
    .line 5535
    move-object/from16 v0, p0

    #@bd
    iget v12, v0, Landroid/widget/TextView;->mPaddingTop:I

    #@bf
    add-int/2addr v10, v12

    #@c0
    .line 5536
    const/4 v7, 0x1

    #@c1
    goto :goto_0

    #@c2
    .line 5537
    .end local v2    # "compoundPaddingLeft":I
    .end local v3    # "compoundPaddingRight":I
    .end local v8    # "hspace":I
    :cond_5
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@c4
    const/4 v13, 0x3

    #@c5
    aget-object v12, v12, v13

    #@c7
    move-object/from16 v0, p1

    #@c9
    if-ne v0, v12, :cond_0

    #@cb
    .line 5538
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@ce
    move-result v2

    #@cf
    .line 5539
    .restart local v2    # "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@d2
    move-result v3

    #@d3
    .line 5540
    .restart local v3    # "compoundPaddingRight":I
    move-object/from16 v0, p0

    #@d5
    iget v12, v0, Landroid/widget/TextView;->mRight:I

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    #@db
    sub-int/2addr v12, v13

    #@dc
    sub-int/2addr v12, v3

    #@dd
    sub-int v8, v12, v2

    #@df
    .line 5542
    .restart local v8    # "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@e1
    sub-int v12, v8, v12

    #@e3
    div-int/lit8 v12, v12, 0x2

    #@e5
    add-int/2addr v12, v2

    #@e6
    add-int/2addr v9, v12

    #@e7
    .line 5543
    move-object/from16 v0, p0

    #@e9
    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget v13, v0, Landroid/widget/TextView;->mTop:I

    #@ef
    sub-int/2addr v12, v13

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget v13, v0, Landroid/widget/TextView;->mPaddingBottom:I

    #@f4
    sub-int/2addr v12, v13

    #@f5
    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@f7
    sub-int/2addr v12, v13

    #@f8
    add-int/2addr v10, v12

    #@f9
    .line 5544
    const/4 v7, 0x1

    #@fa
    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "invalidateCursor"    # Z

    #@0
    .prologue
    .line 5298
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4
    if-nez v12, :cond_0

    #@6
    .line 5299
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    #@9
    .line 5297
    :goto_0
    return-void

    #@a
    .line 5301
    :cond_0
    move-object/from16 v0, p0

    #@c
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@e
    move/from16 v0, p1

    #@10
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@13
    move-result v8

    #@14
    .line 5302
    .local v8, "lineStart":I
    move-object/from16 v0, p0

    #@16
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@18
    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    #@1b
    move-result v10

    #@1c
    .line 5310
    .local v10, "top":I
    if-lez v8, :cond_1

    #@1e
    .line 5311
    move-object/from16 v0, p0

    #@20
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@22
    add-int/lit8 v13, v8, -0x1

    #@24
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    #@27
    move-result v12

    #@28
    sub-int/2addr v10, v12

    #@29
    .line 5316
    :cond_1
    move/from16 v0, p1

    #@2b
    move/from16 v1, p2

    #@2d
    if-ne v0, v1, :cond_2

    #@2f
    .line 5317
    move v7, v8

    #@30
    .line 5321
    .local v7, "lineEnd":I
    :goto_1
    move-object/from16 v0, p0

    #@32
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@34
    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    #@37
    move-result v2

    #@38
    .line 5324
    .local v2, "bottom":I
    if-eqz p3, :cond_3

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3e
    if-eqz v12, :cond_3

    #@40
    .line 5325
    const/4 v5, 0x0

    #@41
    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    #@43
    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@45
    iget v12, v12, Landroid/widget/Editor;->mCursorCount:I

    #@47
    if-ge v5, v12, :cond_3

    #@49
    .line 5326
    move-object/from16 v0, p0

    #@4b
    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4d
    iget-object v12, v12, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    #@4f
    aget-object v12, v12, v5

    #@51
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@54
    move-result-object v3

    #@55
    .line 5327
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    #@57
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    #@5a
    move-result v10

    #@5b
    .line 5328
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    #@5d
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    #@60
    move-result v2

    #@61
    .line 5325
    add-int/lit8 v5, v5, 0x1

    #@63
    goto :goto_2

    #@64
    .line 5319
    .end local v2    # "bottom":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "lineEnd":I
    :cond_2
    move-object/from16 v0, p0

    #@66
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@68
    move/from16 v0, p2

    #@6a
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    #@6d
    move-result v7

    #@6e
    .restart local v7    # "lineEnd":I
    goto :goto_1

    #@6f
    .line 5332
    .restart local v2    # "bottom":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@72
    move-result v4

    #@73
    .line 5333
    .local v4, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@76
    move-result v12

    #@77
    const/4 v13, 0x1

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@7d
    move-result v13

    #@7e
    add-int v11, v12, v13

    #@80
    .line 5336
    .local v11, "verticalPadding":I
    if-ne v8, v7, :cond_4

    #@82
    if-eqz p3, :cond_5

    #@84
    .line 5343
    :cond_4
    move v6, v4

    #@85
    .line 5344
    .local v6, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    #@88
    move-result v12

    #@89
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@8c
    move-result v13

    #@8d
    sub-int v9, v12, v13

    #@8f
    .line 5347
    .local v9, "right":I
    :goto_3
    move-object/from16 v0, p0

    #@91
    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    #@93
    add-int/2addr v12, v6

    #@94
    add-int v13, v11, v10

    #@96
    .line 5348
    move-object/from16 v0, p0

    #@98
    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    #@9a
    add-int/2addr v14, v9

    #@9b
    add-int v15, v11, v2

    #@9d
    .line 5347
    move-object/from16 v0, p0

    #@9f
    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    #@a2
    goto/16 :goto_0

    #@a4
    .line 5337
    .end local v6    # "left":I
    .end local v9    # "right":I
    :cond_5
    move-object/from16 v0, p0

    #@a6
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@a8
    move/from16 v0, p1

    #@aa
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@ad
    move-result v12

    #@ae
    float-to-int v6, v12

    #@af
    .line 5338
    .restart local v6    # "left":I
    move-object/from16 v0, p0

    #@b1
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@b3
    move/from16 v0, p2

    #@b5
    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@b8
    move-result v12

    #@b9
    float-to-double v12, v12

    #@ba
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    #@bc
    add-double/2addr v12, v14

    #@bd
    double-to-int v9, v12

    #@be
    .line 5339
    .restart local v9    # "right":I
    add-int/2addr v6, v4

    #@bf
    .line 5340
    add-int/2addr v9, v4

    #@c0
    .line 5336
    goto :goto_3
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    #@0
    .prologue
    .line 9983
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    #@0
    .prologue
    .line 8008
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    #@a
    goto :goto_0
.end method

.method isDeviceProvisioned()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 9604
    iget v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 9606
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v4, "device_provisioned"

    #@10
    .line 9605
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    move v0, v1

    #@17
    :goto_0
    iput v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    #@19
    .line 9610
    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mDeviceProvisionedState:I

    #@1b
    if-ne v0, v1, :cond_2

    #@1d
    :goto_1
    return v2

    #@1e
    :cond_1
    move v0, v2

    #@1f
    .line 9608
    goto :goto_0

    #@20
    :cond_2
    move v2, v3

    #@21
    .line 9610
    goto :goto_1
.end method

.method isInBatchEditMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 9768
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 9769
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@a
    .line 9770
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_2

    #@c
    .line 9771
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@e
    if-lez v2, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    :cond_1
    return v1

    #@12
    .line 9773
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@14
    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    #@16
    return v1
.end method

.method public isInExtractedMode()Z
    .locals 1

    #@0
    .prologue
    .line 8854
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    #@0
    .prologue
    .line 9322
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@3
    move-result-object v0

    #@4
    .line 9323
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 5449
    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    #@3
    const/4 v2, 0x0

    #@4
    cmpl-float v1, v1, v2

    #@6
    if-nez v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@a
    if-eqz v1, :cond_1

    #@c
    :cond_0
    :goto_0
    return v0

    #@d
    :cond_1
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method isSingleLine()Z
    .locals 1

    #@0
    .prologue
    .line 4610
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@2
    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 9463
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-nez v3, :cond_0

    #@6
    return v2

    #@7
    .line 9464
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    #@b
    and-int/lit8 v3, v3, 0xf

    #@d
    if-eq v3, v1, :cond_1

    #@f
    .line 9465
    return v2

    #@10
    .line 9467
    :cond_1
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@12
    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    #@14
    const/high16 v4, 0x80000

    #@16
    and-int/2addr v3, v4

    #@17
    if-lez v3, :cond_2

    #@19
    return v2

    #@1a
    .line 9469
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1c
    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    #@1e
    and-int/lit16 v0, v3, 0xff0

    #@20
    .line 9470
    .local v0, "variation":I
    if-eqz v0, :cond_3

    #@22
    .line 9471
    const/16 v3, 0x30

    #@24
    if-ne v0, v3, :cond_4

    #@26
    .line 9470
    :cond_3
    :goto_0
    return v1

    #@27
    .line 9472
    :cond_4
    const/16 v3, 0x50

    #@29
    if-eq v0, v3, :cond_3

    #@2b
    .line 9473
    const/16 v3, 0x40

    #@2d
    if-eq v0, v3, :cond_3

    #@2f
    .line 9474
    const/16 v3, 0xa0

    #@31
    if-eq v0, v3, :cond_3

    #@33
    move v1, v2

    #@34
    goto :goto_0
.end method

.method isTextEditable()Z
    .locals 1

    #@0
    .prologue
    .line 8568
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v0, v0, Landroid/text/Editable;

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public isTextSelectable()Z
    .locals 1

    #@0
    .prologue
    .line 5580
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    #@a
    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 4

    #@0
    .prologue
    .line 5489
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    .line 5490
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 5491
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@9
    iget-object v2, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@b
    const/4 v1, 0x0

    #@c
    array-length v3, v2

    #@d
    :goto_0
    if-ge v1, v3, :cond_1

    #@f
    aget-object v0, v2, v1

    #@11
    .line 5492
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@13
    .line 5493
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@16
    .line 5491
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 5488
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 1691
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 32
    .param p1, "wantWidth"    # I
    .param p2, "hintWidth"    # I
    .param p3, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p4, "hintBoring"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "ellipsisWidth"    # I
    .param p6, "bringIntoView"    # Z

    #@0
    .prologue
    .line 6769
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    #@3
    .line 6772
    move-object/from16 v0, p0

    #@5
    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    #@7
    move-object/from16 v0, p0

    #@9
    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    #@b
    .line 6773
    move-object/from16 v0, p0

    #@d
    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    #@f
    move-object/from16 v0, p0

    #@11
    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    #@13
    .line 6775
    const/4 v2, 0x1

    #@14
    move-object/from16 v0, p0

    #@16
    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@18
    .line 6777
    if-gez p1, :cond_0

    #@1a
    .line 6778
    const/16 p1, 0x0

    #@1c
    .line 6780
    :cond_0
    if-gez p2, :cond_1

    #@1e
    .line 6781
    const/16 p2, 0x0

    #@20
    .line 6784
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    #@23
    move-result-object v6

    #@24
    .line 6785
    .local v6, "alignment":Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    #@26
    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    #@28
    if-eqz v2, :cond_12

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2e
    if-eqz v2, :cond_12

    #@30
    .line 6786
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@32
    if-eq v6, v2, :cond_10

    #@34
    .line 6787
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@36
    if-ne v6, v2, :cond_11

    #@38
    const/4 v2, 0x1

    #@39
    :goto_0
    move/from16 v31, v2

    #@3b
    .line 6788
    .local v31, "testDirChange":Z
    :goto_1
    const/16 v29, 0x0

    #@3d
    .line 6789
    .local v29, "oldDir":I
    if-eqz v31, :cond_2

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@43
    const/4 v3, 0x0

    #@44
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@47
    move-result v29

    #@48
    .line 6790
    :cond_2
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@4c
    if-eqz v2, :cond_13

    #@4e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@51
    move-result-object v2

    #@52
    if-nez v2, :cond_13

    #@54
    const/4 v7, 0x1

    #@55
    .line 6791
    .local v7, "shouldEllipsize":Z
    :goto_2
    move-object/from16 v0, p0

    #@57
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@59
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@5b
    if-ne v2, v3, :cond_15

    #@5d
    .line 6792
    move-object/from16 v0, p0

    #@5f
    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@61
    if-eqz v2, :cond_14

    #@63
    const/16 v30, 0x1

    #@65
    .line 6793
    .local v30, "switchEllipsize":Z
    :goto_3
    move-object/from16 v0, p0

    #@67
    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@69
    .line 6794
    .local v8, "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@6d
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@6f
    if-ne v2, v3, :cond_3

    #@71
    .line 6795
    move-object/from16 v0, p0

    #@73
    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@75
    const/4 v3, 0x1

    #@76
    if-ne v2, v3, :cond_3

    #@78
    .line 6796
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@7a
    .line 6799
    :cond_3
    move-object/from16 v0, p0

    #@7c
    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@7e
    if-nez v2, :cond_4

    #@80
    .line 6800
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    #@83
    move-result-object v2

    #@84
    move-object/from16 v0, p0

    #@86
    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@88
    .line 6804
    :cond_4
    move-object/from16 v0, p0

    #@8a
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@8c
    if-ne v8, v2, :cond_16

    #@8e
    const/4 v9, 0x1

    #@8f
    :goto_4
    move-object/from16 v2, p0

    #@91
    move/from16 v3, p1

    #@93
    move-object/from16 v4, p3

    #@95
    move/from16 v5, p5

    #@97
    .line 6803
    invoke-virtual/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    #@9a
    move-result-object v2

    #@9b
    move-object/from16 v0, p0

    #@9d
    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@9f
    .line 6805
    if-eqz v30, :cond_5

    #@a1
    .line 6806
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@a3
    if-ne v8, v2, :cond_17

    #@a5
    .line 6807
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@a7
    .line 6809
    .local v15, "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_5
    move-object/from16 v0, p0

    #@a9
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@ab
    if-eq v8, v2, :cond_18

    #@ad
    const/16 v16, 0x1

    #@af
    :goto_6
    move-object/from16 v9, p0

    #@b1
    move/from16 v10, p1

    #@b3
    move-object/from16 v11, p3

    #@b5
    move/from16 v12, p5

    #@b7
    move-object v13, v6

    #@b8
    move v14, v7

    #@b9
    .line 6808
    invoke-virtual/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    #@bc
    move-result-object v2

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@c1
    .line 6812
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_5
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@c5
    if-eqz v2, :cond_19

    #@c7
    const/4 v7, 0x1

    #@c8
    .line 6813
    :goto_7
    const/4 v2, 0x0

    #@c9
    move-object/from16 v0, p0

    #@cb
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@cd
    .line 6815
    move-object/from16 v0, p0

    #@cf
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@d1
    if-eqz v2, :cond_b

    #@d3
    .line 6816
    if-eqz v7, :cond_6

    #@d5
    move/from16 p2, p1

    #@d7
    .line 6818
    :cond_6
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@d9
    move-object/from16 v0, p4

    #@db
    if-ne v0, v2, :cond_7

    #@dd
    .line 6819
    move-object/from16 v0, p0

    #@df
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@e1
    move-object/from16 v0, p0

    #@e3
    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@e9
    .line 6820
    move-object/from16 v0, p0

    #@eb
    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    #@ed
    .line 6819
    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    #@f0
    move-result-object p4

    #@f1
    .line 6821
    if-eqz p4, :cond_7

    #@f3
    .line 6822
    move-object/from16 v0, p4

    #@f5
    move-object/from16 v1, p0

    #@f7
    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    #@f9
    .line 6826
    :cond_7
    if-eqz p4, :cond_9

    #@fb
    .line 6827
    move-object/from16 v0, p4

    #@fd
    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@ff
    move/from16 v0, p2

    #@101
    if-gt v2, v0, :cond_1b

    #@103
    .line 6828
    if-eqz v7, :cond_8

    #@105
    move-object/from16 v0, p4

    #@107
    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@109
    move/from16 v0, p5

    #@10b
    if-gt v2, v0, :cond_1b

    #@10d
    .line 6829
    :cond_8
    move-object/from16 v0, p0

    #@10f
    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@111
    if-eqz v2, :cond_1a

    #@113
    .line 6830
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@117
    move-object/from16 v16, v0

    #@119
    .line 6831
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@11d
    move-object/from16 v17, v0

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@123
    move-object/from16 v18, v0

    #@125
    .line 6832
    move-object/from16 v0, p0

    #@127
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@129
    move/from16 v21, v0

    #@12b
    move-object/from16 v0, p0

    #@12d
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@12f
    move/from16 v22, v0

    #@131
    .line 6833
    move-object/from16 v0, p0

    #@133
    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@135
    move/from16 v24, v0

    #@137
    move/from16 v19, p2

    #@139
    move-object/from16 v20, v6

    #@13b
    move-object/from16 v23, p4

    #@13d
    .line 6830
    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    #@140
    move-result-object v2

    #@141
    move-object/from16 v0, p0

    #@143
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@145
    .line 6840
    :goto_8
    move-object/from16 v0, p0

    #@147
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@149
    check-cast v2, Landroid/text/BoringLayout;

    #@14b
    move-object/from16 v0, p0

    #@14d
    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@14f
    .line 6857
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    #@151
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@153
    if-nez v2, :cond_b

    #@155
    .line 6858
    move-object/from16 v0, p0

    #@157
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@159
    .line 6859
    move-object/from16 v0, p0

    #@15b
    iget-object v3, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@15d
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@160
    move-result v3

    #@161
    move-object/from16 v0, p0

    #@163
    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@165
    .line 6858
    const/4 v5, 0x0

    #@166
    move/from16 v0, p2

    #@168
    invoke-static {v2, v5, v3, v4, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    #@16b
    move-result-object v2

    #@16c
    invoke-virtual {v2, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    #@16f
    move-result-object v2

    #@170
    .line 6861
    move-object/from16 v0, p0

    #@172
    iget-object v3, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@174
    .line 6858
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    #@177
    move-result-object v2

    #@178
    .line 6862
    move-object/from16 v0, p0

    #@17a
    iget v3, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@17c
    move-object/from16 v0, p0

    #@17e
    iget v4, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@180
    .line 6858
    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    #@183
    move-result-object v2

    #@184
    .line 6863
    move-object/from16 v0, p0

    #@186
    iget-boolean v3, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@188
    .line 6858
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    #@18b
    move-result-object v2

    #@18c
    .line 6864
    move-object/from16 v0, p0

    #@18e
    iget v3, v0, Landroid/widget/TextView;->mBreakStrategy:I

    #@190
    .line 6858
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    #@193
    move-result-object v2

    #@194
    .line 6865
    move-object/from16 v0, p0

    #@196
    iget v3, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@198
    .line 6858
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    #@19b
    move-result-object v27

    #@19c
    .line 6866
    .local v27, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz v7, :cond_a

    #@19e
    .line 6867
    move-object/from16 v0, p0

    #@1a0
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@1a2
    move-object/from16 v0, v27

    #@1a4
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    #@1a7
    move-result-object v2

    #@1a8
    move/from16 v0, p5

    #@1aa
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    #@1ad
    move-result-object v3

    #@1ae
    .line 6869
    move-object/from16 v0, p0

    #@1b0
    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    #@1b2
    const/4 v4, 0x1

    #@1b3
    if-ne v2, v4, :cond_1d

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    #@1b9
    .line 6867
    :goto_a
    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    #@1bc
    .line 6871
    :cond_a
    invoke-virtual/range {v27 .. v27}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    #@1bf
    move-result-object v2

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@1c4
    .line 6875
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_b
    if-nez p6, :cond_c

    #@1c6
    if-eqz v31, :cond_d

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@1cc
    const/4 v3, 0x0

    #@1cd
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1d0
    move-result v2

    #@1d1
    move/from16 v0, v29

    #@1d3
    if-eq v0, v2, :cond_d

    #@1d5
    .line 6876
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    #@1d8
    .line 6879
    :cond_d
    move-object/from16 v0, p0

    #@1da
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@1dc
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@1de
    if-ne v2, v3, :cond_e

    #@1e0
    .line 6880
    move/from16 v0, p5

    #@1e2
    int-to-float v2, v0

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    #@1e8
    move-result v2

    #@1e9
    if-nez v2, :cond_e

    #@1eb
    .line 6881
    move-object/from16 v0, p0

    #@1ed
    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@1ef
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@1f1
    move/from16 v28, v0

    #@1f3
    .line 6884
    .local v28, "height":I
    const/4 v2, -0x2

    #@1f4
    move/from16 v0, v28

    #@1f6
    if-eq v0, v2, :cond_1e

    #@1f8
    const/4 v2, -0x1

    #@1f9
    move/from16 v0, v28

    #@1fb
    if-eq v0, v2, :cond_1e

    #@1fd
    .line 6885
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    #@200
    .line 6894
    .end local v28    # "height":I
    :cond_e
    :goto_b
    move-object/from16 v0, p0

    #@202
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@204
    if-eqz v2, :cond_f

    #@206
    move-object/from16 v0, p0

    #@208
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@20a
    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@20d
    .line 6768
    :cond_f
    return-void

    #@20e
    .line 6786
    .end local v7    # "shouldEllipsize":Z
    .end local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v29    # "oldDir":I
    .end local v30    # "switchEllipsize":Z
    .end local v31    # "testDirChange":Z
    :cond_10
    const/4 v2, 0x1

    #@20f
    goto/16 :goto_0

    #@211
    .line 6787
    :cond_11
    const/4 v2, 0x0

    #@212
    goto/16 :goto_0

    #@214
    .line 6785
    :cond_12
    const/16 v31, 0x0

    #@216
    goto/16 :goto_1

    #@218
    .line 6790
    .restart local v29    # "oldDir":I
    .restart local v31    # "testDirChange":Z
    :cond_13
    const/4 v7, 0x0

    #@219
    .restart local v7    # "shouldEllipsize":Z
    goto/16 :goto_2

    #@21b
    .line 6792
    :cond_14
    const/16 v30, 0x0

    #@21d
    .restart local v30    # "switchEllipsize":Z
    goto/16 :goto_3

    #@21f
    .line 6791
    .end local v30    # "switchEllipsize":Z
    :cond_15
    const/16 v30, 0x0

    #@221
    .restart local v30    # "switchEllipsize":Z
    goto/16 :goto_3

    #@223
    .line 6804
    .restart local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_16
    const/4 v9, 0x0

    #@224
    goto/16 :goto_4

    #@226
    .line 6807
    :cond_17
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@228
    .restart local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    goto/16 :goto_5

    #@22a
    .line 6809
    :cond_18
    const/16 v16, 0x0

    #@22c
    goto/16 :goto_6

    #@22e
    .line 6812
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_19
    const/4 v7, 0x0

    #@22f
    goto/16 :goto_7

    #@231
    .line 6835
    :cond_1a
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@235
    move-object/from16 v16, v0

    #@237
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@23b
    move-object/from16 v17, v0

    #@23d
    .line 6836
    move-object/from16 v0, p0

    #@23f
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@241
    move/from16 v20, v0

    #@243
    move-object/from16 v0, p0

    #@245
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@247
    move/from16 v21, v0

    #@249
    .line 6837
    move-object/from16 v0, p0

    #@24b
    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@24d
    move/from16 v23, v0

    #@24f
    move/from16 v18, p2

    #@251
    move-object/from16 v19, v6

    #@253
    move-object/from16 v22, p4

    #@255
    .line 6835
    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    #@258
    move-result-object v2

    #@259
    move-object/from16 v0, p0

    #@25b
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@25d
    goto/16 :goto_8

    #@25f
    .line 6841
    :cond_1b
    if-eqz v7, :cond_9

    #@261
    move-object/from16 v0, p4

    #@263
    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@265
    move/from16 v0, p2

    #@267
    if-gt v2, v0, :cond_9

    #@269
    .line 6842
    move-object/from16 v0, p0

    #@26b
    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@26d
    if-eqz v2, :cond_1c

    #@26f
    .line 6843
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@273
    move-object/from16 v16, v0

    #@275
    .line 6844
    move-object/from16 v0, p0

    #@277
    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@279
    move-object/from16 v17, v0

    #@27b
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@27f
    move-object/from16 v18, v0

    #@281
    .line 6845
    move-object/from16 v0, p0

    #@283
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@285
    move/from16 v21, v0

    #@287
    move-object/from16 v0, p0

    #@289
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@28b
    move/from16 v22, v0

    #@28d
    .line 6846
    move-object/from16 v0, p0

    #@28f
    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@291
    move/from16 v24, v0

    #@293
    move-object/from16 v0, p0

    #@295
    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@297
    move-object/from16 v25, v0

    #@299
    move/from16 v19, p2

    #@29b
    move-object/from16 v20, v6

    #@29d
    move-object/from16 v23, p4

    #@29f
    move/from16 v26, p5

    #@2a1
    .line 6843
    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    #@2a4
    move-result-object v2

    #@2a5
    move-object/from16 v0, p0

    #@2a7
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@2a9
    goto/16 :goto_9

    #@2ab
    .line 6849
    :cond_1c
    move-object/from16 v0, p0

    #@2ad
    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@2af
    move-object/from16 v16, v0

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2b5
    move-object/from16 v17, v0

    #@2b7
    .line 6850
    move-object/from16 v0, p0

    #@2b9
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@2bb
    move/from16 v20, v0

    #@2bd
    move-object/from16 v0, p0

    #@2bf
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@2c1
    move/from16 v21, v0

    #@2c3
    .line 6851
    move-object/from16 v0, p0

    #@2c5
    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@2c7
    move/from16 v23, v0

    #@2c9
    move-object/from16 v0, p0

    #@2cb
    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2cd
    move-object/from16 v24, v0

    #@2cf
    move/from16 v18, p2

    #@2d1
    move-object/from16 v19, v6

    #@2d3
    move-object/from16 v22, p4

    #@2d5
    move/from16 v25, p5

    #@2d7
    .line 6849
    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    #@2da
    move-result-object v2

    #@2db
    move-object/from16 v0, p0

    #@2dd
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@2df
    goto/16 :goto_9

    #@2e1
    .line 6869
    .restart local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_1d
    const v2, 0x7fffffff

    #@2e4
    goto/16 :goto_a

    #@2e6
    .line 6888
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v28    # "height":I
    :cond_1e
    const/4 v2, 0x1

    #@2e7
    move-object/from16 v0, p0

    #@2e9
    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    #@2eb
    goto/16 :goto_b
.end method

.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 17
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    #@0
    .prologue
    .line 6903
    const/4 v2, 0x0

    #@1
    .line 6904
    .local v2, "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@5
    instance-of v3, v3, Landroid/text/Spannable;

    #@7
    if-eqz v3, :cond_4

    #@9
    .line 6905
    new-instance v2, Landroid/text/DynamicLayout;

    #@b
    .end local v2    # "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    #@d
    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@13
    move-object/from16 v0, p0

    #@15
    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@17
    .line 6906
    move-object/from16 v0, p0

    #@19
    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@1b
    move-object/from16 v0, p0

    #@1d
    iget v9, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@1f
    move-object/from16 v0, p0

    #@21
    iget v10, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@23
    move-object/from16 v0, p0

    #@25
    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@27
    .line 6907
    move-object/from16 v0, p0

    #@29
    iget v12, v0, Landroid/widget/TextView;->mBreakStrategy:I

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget v13, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@2f
    .line 6908
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@32
    move-result-object v6

    #@33
    if-nez v6, :cond_3

    #@35
    move-object/from16 v14, p6

    #@37
    :goto_0
    move/from16 v6, p1

    #@39
    move-object/from16 v7, p4

    #@3b
    move/from16 v15, p3

    #@3d
    .line 6905
    invoke-direct/range {v2 .. v15}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V

    #@40
    .line 6948
    :cond_0
    :goto_1
    if-nez v2, :cond_2

    #@42
    .line 6949
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@46
    .line 6950
    move-object/from16 v0, p0

    #@48
    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@4a
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@4d
    move-result v4

    #@4e
    move-object/from16 v0, p0

    #@50
    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@52
    const/4 v6, 0x0

    #@53
    .line 6949
    move/from16 v0, p1

    #@55
    invoke-static {v3, v6, v4, v5, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    #@58
    move-result-object v3

    #@59
    move-object/from16 v0, p4

    #@5b
    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    #@5e
    move-result-object v3

    #@5f
    .line 6952
    move-object/from16 v0, p0

    #@61
    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@63
    .line 6949
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    #@66
    move-result-object v3

    #@67
    .line 6953
    move-object/from16 v0, p0

    #@69
    iget v4, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@6f
    .line 6949
    invoke-virtual {v3, v4, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    #@72
    move-result-object v3

    #@73
    .line 6954
    move-object/from16 v0, p0

    #@75
    iget-boolean v4, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@77
    .line 6949
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    #@7a
    move-result-object v3

    #@7b
    .line 6955
    move-object/from16 v0, p0

    #@7d
    iget v4, v0, Landroid/widget/TextView;->mBreakStrategy:I

    #@7f
    .line 6949
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    #@82
    move-result-object v3

    #@83
    .line 6956
    move-object/from16 v0, p0

    #@85
    iget v4, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@87
    .line 6949
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    #@8a
    move-result-object v16

    #@8b
    .line 6957
    .local v16, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz p5, :cond_1

    #@8d
    .line 6958
    move-object/from16 v0, v16

    #@8f
    move-object/from16 v1, p6

    #@91
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    #@94
    move-result-object v3

    #@95
    move/from16 v0, p3

    #@97
    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    #@9a
    move-result-object v4

    #@9b
    .line 6960
    move-object/from16 v0, p0

    #@9d
    iget v3, v0, Landroid/widget/TextView;->mMaxMode:I

    #@9f
    const/4 v5, 0x1

    #@a0
    if-ne v3, v5, :cond_a

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget v3, v0, Landroid/widget/TextView;->mMaximum:I

    #@a6
    .line 6958
    :goto_2
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    #@a9
    .line 6963
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    #@ac
    move-result-object v2

    #@ad
    .line 6965
    .end local v16    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_2
    return-object v2

    #@ae
    .line 6908
    :cond_3
    const/4 v14, 0x0

    #@af
    goto :goto_0

    #@b0
    .line 6910
    .restart local v2    # "result":Landroid/text/Layout;
    :cond_4
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@b2
    move-object/from16 v0, p2

    #@b4
    if-ne v0, v3, :cond_5

    #@b6
    .line 6911
    move-object/from16 v0, p0

    #@b8
    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@be
    move-object/from16 v0, p0

    #@c0
    iget-object v5, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget-object v6, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    #@c6
    invoke-static {v3, v4, v5, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    #@c9
    move-result-object p2

    #@ca
    .line 6912
    if-eqz p2, :cond_5

    #@cc
    .line 6913
    move-object/from16 v0, p2

    #@ce
    move-object/from16 v1, p0

    #@d0
    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    #@d2
    .line 6917
    :cond_5
    if-eqz p2, :cond_0

    #@d4
    .line 6918
    move-object/from16 v0, p2

    #@d6
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@d8
    move/from16 v0, p1

    #@da
    if-gt v3, v0, :cond_8

    #@dc
    .line 6919
    if-eqz p6, :cond_6

    #@de
    move-object/from16 v0, p2

    #@e0
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@e2
    move/from16 v0, p3

    #@e4
    if-gt v3, v0, :cond_8

    #@e6
    .line 6920
    :cond_6
    if-eqz p7, :cond_7

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@ec
    if-eqz v3, :cond_7

    #@ee
    .line 6921
    move-object/from16 v0, p0

    #@f0
    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@f2
    move-object/from16 v0, p0

    #@f4
    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@fa
    .line 6922
    move-object/from16 v0, p0

    #@fc
    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@fe
    move-object/from16 v0, p0

    #@100
    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@102
    .line 6923
    move-object/from16 v0, p0

    #@104
    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@106
    move/from16 v6, p1

    #@108
    move-object/from16 v7, p4

    #@10a
    move-object/from16 v10, p2

    #@10c
    .line 6921
    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    #@10f
    move-result-object v2

    #@110
    .line 6930
    .local v2, "result":Landroid/text/Layout;
    :goto_3
    if-eqz p7, :cond_0

    #@112
    move-object v3, v2

    #@113
    .line 6931
    check-cast v3, Landroid/text/BoringLayout;

    #@115
    move-object/from16 v0, p0

    #@117
    iput-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@119
    goto/16 :goto_1

    #@11b
    .line 6925
    .local v2, "result":Landroid/text/Layout;
    :cond_7
    move-object/from16 v0, p0

    #@11d
    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@123
    .line 6926
    move-object/from16 v0, p0

    #@125
    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@127
    move-object/from16 v0, p0

    #@129
    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@12b
    .line 6927
    move-object/from16 v0, p0

    #@12d
    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@12f
    move/from16 v5, p1

    #@131
    move-object/from16 v6, p4

    #@133
    move-object/from16 v9, p2

    #@135
    .line 6925
    invoke-static/range {v3 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    #@138
    move-result-object v2

    #@139
    .local v2, "result":Landroid/text/Layout;
    goto :goto_3

    #@13a
    .line 6933
    .local v2, "result":Landroid/text/Layout;
    :cond_8
    if-eqz p5, :cond_0

    #@13c
    move-object/from16 v0, p2

    #@13e
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@140
    move/from16 v0, p1

    #@142
    if-gt v3, v0, :cond_0

    #@144
    .line 6934
    if-eqz p7, :cond_9

    #@146
    move-object/from16 v0, p0

    #@148
    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@14a
    if-eqz v3, :cond_9

    #@14c
    .line 6935
    move-object/from16 v0, p0

    #@14e
    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@150
    move-object/from16 v0, p0

    #@152
    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@154
    move-object/from16 v0, p0

    #@156
    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@158
    .line 6936
    move-object/from16 v0, p0

    #@15a
    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@160
    .line 6937
    move-object/from16 v0, p0

    #@162
    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@164
    move/from16 v6, p1

    #@166
    move-object/from16 v7, p4

    #@168
    move-object/from16 v10, p2

    #@16a
    move-object/from16 v12, p6

    #@16c
    move/from16 v13, p3

    #@16e
    .line 6935
    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    #@171
    move-result-object v2

    #@172
    .local v2, "result":Landroid/text/Layout;
    goto/16 :goto_1

    #@174
    .line 6940
    .local v2, "result":Landroid/text/Layout;
    :cond_9
    move-object/from16 v0, p0

    #@176
    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@178
    move-object/from16 v0, p0

    #@17a
    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@17c
    .line 6941
    move-object/from16 v0, p0

    #@17e
    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@180
    move-object/from16 v0, p0

    #@182
    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@184
    .line 6942
    move-object/from16 v0, p0

    #@186
    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@188
    move/from16 v5, p1

    #@18a
    move-object/from16 v6, p4

    #@18c
    move-object/from16 v9, p2

    #@18e
    move-object/from16 v11, p6

    #@190
    move/from16 v12, p3

    #@192
    .line 6940
    invoke-static/range {v3 .. v12}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    #@195
    move-result-object v2

    #@196
    .local v2, "result":Landroid/text/Layout;
    goto/16 :goto_1

    #@198
    .line 6960
    .end local v2    # "result":Landroid/text/Layout;
    .restart local v16    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_a
    const v3, 0x7fffffff

    #@19b
    goto/16 :goto_2
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    #@0
    .prologue
    .line 7658
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@4
    move-object/from16 v17, v0

    #@6
    move-object/from16 v0, v17

    #@8
    instance-of v0, v0, Landroid/text/Spannable;

    #@a
    move/from16 v17, v0

    #@c
    if-nez v17, :cond_0

    #@e
    .line 7659
    const/16 v17, 0x0

    #@10
    return v17

    #@11
    .line 7661
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@14
    move-result v12

    #@15
    .line 7662
    .local v12, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@18
    move-result v3

    #@19
    .line 7663
    .local v3, "end":I
    if-eq v12, v3, :cond_1

    #@1b
    .line 7664
    const/16 v17, 0x0

    #@1d
    return v17

    #@1e
    .line 7669
    :cond_1
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@22
    move-object/from16 v17, v0

    #@24
    move-object/from16 v0, v17

    #@26
    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    #@29
    move-result v8

    #@2a
    .line 7671
    .local v8, "line":I
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2e
    move-object/from16 v17, v0

    #@30
    move-object/from16 v0, v17

    #@32
    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    #@35
    move-result v13

    #@36
    .line 7672
    .local v13, "top":I
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3a
    move-object/from16 v17, v0

    #@3c
    add-int/lit8 v18, v8, 0x1

    #@3e
    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    #@41
    move-result v2

    #@42
    .line 7673
    .local v2, "bottom":I
    move-object/from16 v0, p0

    #@44
    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    #@46
    move/from16 v17, v0

    #@48
    move-object/from16 v0, p0

    #@4a
    iget v0, v0, Landroid/widget/TextView;->mTop:I

    #@4c
    move/from16 v18, v0

    #@4e
    sub-int v17, v17, v18

    #@50
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@53
    move-result v18

    #@54
    sub-int v17, v17, v18

    #@56
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@59
    move-result v18

    #@5a
    sub-int v16, v17, v18

    #@5c
    .line 7674
    .local v16, "vspace":I
    sub-int v17, v2, v13

    #@5e
    div-int/lit8 v15, v17, 0x2

    #@60
    .line 7675
    .local v15, "vslack":I
    div-int/lit8 v17, v16, 0x4

    #@62
    move/from16 v0, v17

    #@64
    if-le v15, v0, :cond_2

    #@66
    .line 7676
    div-int/lit8 v15, v16, 0x4

    #@68
    .line 7677
    :cond_2
    move-object/from16 v0, p0

    #@6a
    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    #@6c
    .line 7679
    .local v14, "vs":I
    add-int v17, v14, v15

    #@6e
    move/from16 v0, v17

    #@70
    if-ge v13, v0, :cond_5

    #@72
    .line 7680
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@76
    move-object/from16 v17, v0

    #@78
    add-int v18, v14, v15

    #@7a
    sub-int v19, v2, v13

    #@7c
    add-int v18, v18, v19

    #@7e
    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    #@81
    move-result v8

    #@82
    .line 7687
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    #@84
    iget v0, v0, Landroid/widget/TextView;->mRight:I

    #@86
    move/from16 v17, v0

    #@88
    move-object/from16 v0, p0

    #@8a
    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    #@8c
    move/from16 v18, v0

    #@8e
    sub-int v17, v17, v18

    #@90
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@93
    move-result v18

    #@94
    sub-int v17, v17, v18

    #@96
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@99
    move-result v18

    #@9a
    sub-int v6, v17, v18

    #@9c
    .line 7688
    .local v6, "hspace":I
    move-object/from16 v0, p0

    #@9e
    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    #@a0
    .line 7689
    .local v5, "hs":I
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@a4
    move-object/from16 v17, v0

    #@a6
    int-to-float v0, v5

    #@a7
    move/from16 v18, v0

    #@a9
    move-object/from16 v0, v17

    #@ab
    move/from16 v1, v18

    #@ad
    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    #@b0
    move-result v7

    #@b1
    .line 7690
    .local v7, "leftChar":I
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@b5
    move-object/from16 v17, v0

    #@b7
    add-int v18, v6, v5

    #@b9
    move/from16 v0, v18

    #@bb
    int-to-float v0, v0

    #@bc
    move/from16 v18, v0

    #@be
    move-object/from16 v0, v17

    #@c0
    move/from16 v1, v18

    #@c2
    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    #@c5
    move-result v11

    #@c6
    .line 7693
    .local v11, "rightChar":I
    if-ge v7, v11, :cond_6

    #@c8
    move v9, v7

    #@c9
    .line 7694
    .local v9, "lowChar":I
    :goto_1
    if-le v7, v11, :cond_7

    #@cb
    move v4, v7

    #@cc
    .line 7696
    .local v4, "highChar":I
    :goto_2
    move v10, v12

    #@cd
    .line 7697
    .local v10, "newStart":I
    if-ge v12, v9, :cond_8

    #@cf
    .line 7698
    move v10, v9

    #@d0
    .line 7703
    :cond_4
    :goto_3
    if-eq v10, v12, :cond_9

    #@d2
    .line 7704
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@d6
    move-object/from16 v17, v0

    #@d8
    check-cast v17, Landroid/text/Spannable;

    #@da
    move-object/from16 v0, v17

    #@dc
    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@df
    .line 7705
    const/16 v17, 0x1

    #@e1
    return v17

    #@e2
    .line 7681
    .end local v4    # "highChar":I
    .end local v5    # "hs":I
    .end local v6    # "hspace":I
    .end local v7    # "leftChar":I
    .end local v9    # "lowChar":I
    .end local v10    # "newStart":I
    .end local v11    # "rightChar":I
    :cond_5
    add-int v17, v16, v14

    #@e4
    sub-int v17, v17, v15

    #@e6
    move/from16 v0, v17

    #@e8
    if-le v2, v0, :cond_3

    #@ea
    .line 7682
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@ee
    move-object/from16 v17, v0

    #@f0
    add-int v18, v16, v14

    #@f2
    sub-int v18, v18, v15

    #@f4
    sub-int v19, v2, v13

    #@f6
    sub-int v18, v18, v19

    #@f8
    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    #@fb
    move-result v8

    #@fc
    goto :goto_0

    #@fd
    .line 7693
    .restart local v5    # "hs":I
    .restart local v6    # "hspace":I
    .restart local v7    # "leftChar":I
    .restart local v11    # "rightChar":I
    :cond_6
    move v9, v11

    #@fe
    .restart local v9    # "lowChar":I
    goto :goto_1

    #@ff
    .line 7694
    :cond_7
    move v4, v11

    #@100
    .restart local v4    # "highChar":I
    goto :goto_2

    #@101
    .line 7699
    .restart local v10    # "newStart":I
    :cond_8
    if-le v12, v4, :cond_4

    #@103
    .line 7700
    move v10, v4

    #@104
    goto :goto_3

    #@105
    .line 7708
    :cond_9
    const/16 v17, 0x0

    #@107
    return v17
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1505
    const/16 v1, 0x64

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 1506
    const/4 v1, -0x1

    #@5
    if-ne p2, v1, :cond_2

    #@7
    if-eqz p3, :cond_2

    #@9
    .line 1507
    const-string/jumbo v1, "android.intent.extra.PROCESS_TEXT"

    #@c
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    .line 1508
    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@12
    .line 1509
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1510
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->replaceSelectionWithText(Ljava/lang/CharSequence;)V

    #@1b
    .line 1511
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 1512
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@21
    invoke-virtual {v1}, Landroid/widget/Editor;->refreshTextActionMode()V

    #@24
    .line 1504
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    #@25
    .line 1515
    .restart local v0    # "result":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@28
    move-result v1

    #@29
    if-lez v1, :cond_0

    #@2b
    .line 1516
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    const/4 v3, 0x1

    #@34
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    #@3b
    goto :goto_0

    #@3c
    .line 1521
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@3e
    instance-of v1, v1, Landroid/text/Spannable;

    #@40
    if-eqz v1, :cond_0

    #@42
    .line 1523
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@44
    check-cast v1, Landroid/text/Spannable;

    #@46
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@49
    move-result v2

    #@4a
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@4d
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 5416
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@3
    .line 5418
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    #@c
    .line 5420
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 5421
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@17
    .line 5422
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    #@1a
    .line 5415
    :cond_1
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    #@0
    .prologue
    .line 6645
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6454
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    #@0
    .prologue
    .line 6617
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 6630
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    #@9
    .line 6629
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2927
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 2928
    iget-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2929
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@9
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    #@10
    .line 2930
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 2931
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@17
    .line 2932
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@1a
    .line 2933
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1d
    .line 2926
    :cond_0
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;

    #@0
    .prologue
    .line 8542
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 8543
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    #@9
    .line 8541
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 5632
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 5633
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@8
    move-result-object v0

    #@9
    .line 5639
    .local v0, "drawableState":[I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_2

    #@f
    .line 5644
    array-length v2, v0

    #@10
    .line 5645
    .local v2, "length":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@13
    .line 5646
    aget v4, v0, v1

    #@15
    const v5, 0x10100a7

    #@18
    if-ne v4, v5, :cond_1

    #@1a
    .line 5647
    add-int/lit8 v4, v2, -0x1

    #@1c
    new-array v3, v4, [I

    #@1e
    .line 5648
    .local v3, "nonPressedState":[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    .line 5649
    add-int/lit8 v4, v1, 0x1

    #@23
    sub-int v5, v2, v1

    #@25
    add-int/lit8 v5, v5, -0x1

    #@27
    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@2a
    .line 5650
    return-object v3

    #@2b
    .line 5635
    .end local v0    # "drawableState":[I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "nonPressedState":[I
    :cond_0
    add-int/lit8 v4, p1, 0x1

    #@2d
    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@30
    move-result-object v0

    #@31
    .line 5636
    .restart local v0    # "drawableState":[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    #@33
    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    #@36
    goto :goto_0

    #@37
    .line 5645
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 5655
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 6
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    #@2
    const/high16 v4, 0x8000000

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    .line 6459
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_6

    #@c
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_6

    #@12
    .line 6460
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@14
    invoke-virtual {v1}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    #@17
    .line 6461
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    #@1a
    move-result v1

    #@1b
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@1d
    .line 6462
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1f
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@21
    if-eqz v1, :cond_4

    #@23
    .line 6463
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@25
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@27
    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@29
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@2b
    .line 6464
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2d
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@2f
    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    #@31
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    #@33
    .line 6465
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@35
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@37
    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    #@39
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@3b
    .line 6466
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3d
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@3f
    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@41
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    #@43
    .line 6467
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@45
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@47
    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    #@49
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@4b
    .line 6468
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4d
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@4f
    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    #@51
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    #@53
    .line 6473
    :goto_0
    const/16 v1, 0x82

    #@55
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@58
    move-result-object v1

    #@59
    if-eqz v1, :cond_0

    #@5b
    .line 6474
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@5d
    or-int/2addr v1, v4

    #@5e
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@60
    .line 6476
    :cond_0
    const/16 v1, 0x21

    #@62
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@65
    move-result-object v1

    #@66
    if-eqz v1, :cond_1

    #@68
    .line 6477
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@6a
    const/high16 v2, 0x4000000

    #@6c
    or-int/2addr v1, v2

    #@6d
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@6f
    .line 6479
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@71
    and-int/lit16 v1, v1, 0xff

    #@73
    if-nez v1, :cond_2

    #@75
    .line 6481
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@77
    and-int/2addr v1, v4

    #@78
    if-eqz v1, :cond_5

    #@7a
    .line 6484
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@7c
    or-int/lit8 v1, v1, 0x5

    #@7e
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@80
    .line 6490
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    #@83
    move-result v1

    #@84
    if-nez v1, :cond_2

    #@86
    .line 6491
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@88
    or-int/2addr v1, v5

    #@89
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@8b
    .line 6494
    :cond_2
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@8d
    invoke-static {v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    #@90
    move-result v1

    #@91
    if-eqz v1, :cond_3

    #@93
    .line 6496
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@95
    or-int/2addr v1, v5

    #@96
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@98
    .line 6498
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@9a
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@9c
    .line 6499
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@9e
    instance-of v1, v1, Landroid/text/Editable;

    #@a0
    if-eqz v1, :cond_6

    #@a2
    .line 6500
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    #@a4
    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    #@a7
    .line 6501
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@aa
    move-result v1

    #@ab
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@ad
    .line 6502
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@b0
    move-result v1

    #@b1
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@b3
    .line 6503
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    #@b6
    move-result v1

    #@b7
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    #@ba
    move-result v1

    #@bb
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    #@bd
    .line 6504
    return-object v0

    #@be
    .line 6470
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@c0
    .line 6471
    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    #@c2
    goto :goto_0

    #@c3
    .line 6488
    :cond_5
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@c5
    or-int/lit8 v1, v1, 0x6

    #@c7
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@c9
    goto :goto_1

    #@ca
    .line 6507
    :cond_6
    return-object v3
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    #@0
    .prologue
    .line 5429
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5430
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@b
    .line 5431
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    #@e
    .line 5434
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@11
    .line 5436
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@13
    if-eqz v0, :cond_1

    #@15
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@17
    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    #@1a
    .line 5438
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    #@1d
    .line 5428
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 9743
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    #@4
    move-result v1

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 9763
    :pswitch_0
    return v3

    #@9
    .line 9745
    :pswitch_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@f
    invoke-virtual {v1}, Landroid/widget/Editor;->hasInsertionController()Z

    #@12
    move-result v1

    #@13
    :goto_0
    return v1

    #@14
    :cond_0
    const/4 v1, 0x0

    #@15
    goto :goto_0

    #@16
    .line 9748
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    #@19
    .line 9749
    return v3

    #@1a
    .line 9752
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    #@1d
    move-result v1

    #@1e
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    #@21
    move-result v2

    #@22
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@25
    move-result v0

    #@26
    .line 9753
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@28
    check-cast v1, Landroid/text/Spannable;

    #@2a
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@2d
    .line 9754
    return v3

    #@2e
    .line 9757
    .end local v0    # "offset":I
    :pswitch_4
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@30
    if-eqz v1, :cond_1

    #@32
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@34
    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    #@37
    .line 9758
    :cond_1
    return v3

    #@38
    .line 9743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 5709
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    #@3
    .line 5712
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@6
    .line 5714
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@9
    move-result v16

    #@a
    .line 5715
    .local v16, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@d
    move-result v18

    #@e
    .line 5716
    .local v18, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@11
    move-result v17

    #@12
    .line 5717
    .local v17, "compoundPaddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@15
    move-result v15

    #@16
    .line 5718
    .local v15, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@1a
    move/from16 v33, v0

    #@1c
    .line 5719
    .local v33, "scrollX":I
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@20
    move/from16 v34, v0

    #@22
    .line 5720
    .local v34, "scrollY":I
    move-object/from16 v0, p0

    #@24
    iget v0, v0, Landroid/widget/TextView;->mRight:I

    #@26
    move/from16 v31, v0

    #@28
    .line 5721
    .local v31, "right":I
    move-object/from16 v0, p0

    #@2a
    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    #@2c
    move/from16 v26, v0

    #@2e
    .line 5722
    .local v26, "left":I
    move-object/from16 v0, p0

    #@30
    iget v9, v0, Landroid/widget/TextView;->mBottom:I

    #@32
    .line 5723
    .local v9, "bottom":I
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Landroid/widget/TextView;->mTop:I

    #@36
    move/from16 v35, v0

    #@38
    .line 5724
    .local v35, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    #@3b
    move-result v24

    #@3c
    .line 5725
    .local v24, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    #@3f
    move-result v29

    #@40
    .line 5726
    .local v29, "offset":I
    if-eqz v24, :cond_d

    #@42
    const/16 v27, 0x0

    #@44
    .line 5727
    .local v27, "leftOffset":I
    :goto_0
    if-eqz v24, :cond_e

    #@46
    move/from16 v32, v29

    #@48
    .line 5729
    .local v32, "rightOffset":I
    :goto_1
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@4c
    move-object/from16 v19, v0

    #@4e
    .line 5730
    .local v19, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v19, :cond_3

    #@50
    .line 5736
    sub-int v2, v9, v35

    #@52
    sub-int/2addr v2, v15

    #@53
    sub-int v38, v2, v18

    #@55
    .line 5737
    .local v38, "vspace":I
    sub-int v2, v31, v26

    #@57
    sub-int v2, v2, v17

    #@59
    sub-int v23, v2, v16

    #@5b
    .line 5741
    .local v23, "hspace":I
    move-object/from16 v0, v19

    #@5d
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@5f
    const/4 v3, 0x0

    #@60
    aget-object v2, v2, v3

    #@62
    if-eqz v2, :cond_0

    #@64
    .line 5742
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@67
    .line 5743
    move-object/from16 v0, p0

    #@69
    iget v2, v0, Landroid/widget/TextView;->mPaddingLeft:I

    #@6b
    add-int v2, v2, v33

    #@6d
    add-int v2, v2, v27

    #@6f
    int-to-float v2, v2

    #@70
    .line 5744
    add-int v3, v34, v18

    #@72
    .line 5745
    move-object/from16 v0, v19

    #@74
    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@76
    sub-int v6, v38, v6

    #@78
    div-int/lit8 v6, v6, 0x2

    #@7a
    .line 5744
    add-int/2addr v3, v6

    #@7b
    int-to-float v3, v3

    #@7c
    .line 5743
    move-object/from16 v0, p1

    #@7e
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@81
    .line 5746
    move-object/from16 v0, v19

    #@83
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@85
    const/4 v3, 0x0

    #@86
    aget-object v2, v2, v3

    #@88
    move-object/from16 v0, p1

    #@8a
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@8d
    .line 5747
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@90
    .line 5752
    :cond_0
    move-object/from16 v0, v19

    #@92
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@94
    const/4 v3, 0x2

    #@95
    aget-object v2, v2, v3

    #@97
    if-eqz v2, :cond_1

    #@99
    .line 5753
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@9c
    .line 5754
    add-int v2, v33, v31

    #@9e
    sub-int v2, v2, v26

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget v3, v0, Landroid/widget/TextView;->mPaddingRight:I

    #@a4
    sub-int/2addr v2, v3

    #@a5
    .line 5755
    move-object/from16 v0, v19

    #@a7
    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@a9
    .line 5754
    sub-int/2addr v2, v3

    #@aa
    sub-int v2, v2, v32

    #@ac
    int-to-float v2, v2

    #@ad
    .line 5756
    add-int v3, v34, v18

    #@af
    move-object/from16 v0, v19

    #@b1
    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@b3
    sub-int v6, v38, v6

    #@b5
    div-int/lit8 v6, v6, 0x2

    #@b7
    add-int/2addr v3, v6

    #@b8
    int-to-float v3, v3

    #@b9
    .line 5754
    move-object/from16 v0, p1

    #@bb
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@be
    .line 5757
    move-object/from16 v0, v19

    #@c0
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@c2
    const/4 v3, 0x2

    #@c3
    aget-object v2, v2, v3

    #@c5
    move-object/from16 v0, p1

    #@c7
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@ca
    .line 5758
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@cd
    .line 5763
    :cond_1
    move-object/from16 v0, v19

    #@cf
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@d1
    const/4 v3, 0x1

    #@d2
    aget-object v2, v2, v3

    #@d4
    if-eqz v2, :cond_2

    #@d6
    .line 5764
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@d9
    .line 5765
    add-int v2, v33, v16

    #@db
    .line 5766
    move-object/from16 v0, v19

    #@dd
    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@df
    sub-int v3, v23, v3

    #@e1
    div-int/lit8 v3, v3, 0x2

    #@e3
    .line 5765
    add-int/2addr v2, v3

    #@e4
    int-to-float v2, v2

    #@e5
    .line 5766
    move-object/from16 v0, p0

    #@e7
    iget v3, v0, Landroid/widget/TextView;->mPaddingTop:I

    #@e9
    add-int v3, v3, v34

    #@eb
    int-to-float v3, v3

    #@ec
    .line 5765
    move-object/from16 v0, p1

    #@ee
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@f1
    .line 5767
    move-object/from16 v0, v19

    #@f3
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@f5
    const/4 v3, 0x1

    #@f6
    aget-object v2, v2, v3

    #@f8
    move-object/from16 v0, p1

    #@fa
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@fd
    .line 5768
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@100
    .line 5773
    :cond_2
    move-object/from16 v0, v19

    #@102
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@104
    const/4 v3, 0x3

    #@105
    aget-object v2, v2, v3

    #@107
    if-eqz v2, :cond_3

    #@109
    .line 5774
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@10c
    .line 5775
    add-int v2, v33, v16

    #@10e
    .line 5776
    move-object/from16 v0, v19

    #@110
    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@112
    sub-int v3, v23, v3

    #@114
    div-int/lit8 v3, v3, 0x2

    #@116
    .line 5775
    add-int/2addr v2, v3

    #@117
    int-to-float v2, v2

    #@118
    .line 5777
    add-int v3, v34, v9

    #@11a
    sub-int v3, v3, v35

    #@11c
    move-object/from16 v0, p0

    #@11e
    iget v6, v0, Landroid/widget/TextView;->mPaddingBottom:I

    #@120
    sub-int/2addr v3, v6

    #@121
    move-object/from16 v0, v19

    #@123
    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@125
    sub-int/2addr v3, v6

    #@126
    int-to-float v3, v3

    #@127
    .line 5775
    move-object/from16 v0, p1

    #@129
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@12c
    .line 5778
    move-object/from16 v0, v19

    #@12e
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@130
    const/4 v3, 0x3

    #@131
    aget-object v2, v2, v3

    #@133
    move-object/from16 v0, p1

    #@135
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@138
    .line 5779
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@13b
    .line 5783
    .end local v23    # "hspace":I
    .end local v38    # "vspace":I
    :cond_3
    move-object/from16 v0, p0

    #@13d
    iget v14, v0, Landroid/widget/TextView;->mCurTextColor:I

    #@13f
    .line 5785
    .local v14, "color":I
    move-object/from16 v0, p0

    #@141
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@143
    if-nez v2, :cond_4

    #@145
    .line 5786
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    #@148
    .line 5789
    :cond_4
    move-object/from16 v0, p0

    #@14a
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@14c
    .line 5791
    .local v4, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    #@14e
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@150
    if-eqz v2, :cond_6

    #@152
    move-object/from16 v0, p0

    #@154
    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@156
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@159
    move-result v2

    #@15a
    if-nez v2, :cond_6

    #@15c
    .line 5792
    move-object/from16 v0, p0

    #@15e
    iget-object v2, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@160
    if-eqz v2, :cond_5

    #@162
    .line 5793
    move-object/from16 v0, p0

    #@164
    iget v14, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    #@166
    .line 5796
    :cond_5
    move-object/from16 v0, p0

    #@168
    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@16a
    .line 5799
    :cond_6
    move-object/from16 v0, p0

    #@16c
    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@16e
    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setColor(I)V

    #@171
    .line 5800
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@175
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@178
    move-result-object v3

    #@179
    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    #@17b
    .line 5802
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@17e
    .line 5807
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@181
    move-result v22

    #@182
    .line 5808
    .local v22, "extendedPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@185
    move-result v21

    #@186
    .line 5810
    .local v21, "extendedPaddingBottom":I
    move-object/from16 v0, p0

    #@188
    iget v2, v0, Landroid/widget/TextView;->mBottom:I

    #@18a
    move-object/from16 v0, p0

    #@18c
    iget v3, v0, Landroid/widget/TextView;->mTop:I

    #@18e
    sub-int/2addr v2, v3

    #@18f
    sub-int/2addr v2, v15

    #@190
    sub-int v38, v2, v18

    #@192
    .line 5811
    .restart local v38    # "vspace":I
    move-object/from16 v0, p0

    #@194
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@196
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    #@199
    move-result v2

    #@19a
    sub-int v28, v2, v38

    #@19c
    .line 5813
    .local v28, "maxScrollY":I
    add-int v2, v16, v33

    #@19e
    int-to-float v11, v2

    #@19f
    .line 5814
    .local v11, "clipLeft":F
    if-nez v34, :cond_f

    #@1a1
    const/4 v2, 0x0

    #@1a2
    :goto_2
    int-to-float v13, v2

    #@1a3
    .line 5815
    .local v13, "clipTop":F
    sub-int v2, v31, v26

    #@1a5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@1a8
    move-result v3

    #@1a9
    sub-int/2addr v2, v3

    #@1aa
    add-int v2, v2, v33

    #@1ac
    int-to-float v12, v2

    #@1ad
    .line 5816
    .local v12, "clipRight":F
    sub-int v2, v9, v35

    #@1af
    add-int v2, v2, v34

    #@1b1
    .line 5817
    move/from16 v0, v34

    #@1b3
    move/from16 v1, v28

    #@1b5
    if-ne v0, v1, :cond_7

    #@1b7
    const/16 v21, 0x0

    #@1b9
    .line 5816
    .end local v21    # "extendedPaddingBottom":I
    :cond_7
    sub-int v2, v2, v21

    #@1bb
    int-to-float v10, v2

    #@1bc
    .line 5819
    .local v10, "clipBottom":F
    move-object/from16 v0, p0

    #@1be
    iget v2, v0, Landroid/widget/TextView;->mShadowRadius:F

    #@1c0
    const/4 v3, 0x0

    #@1c1
    cmpl-float v2, v2, v3

    #@1c3
    if-eqz v2, :cond_8

    #@1c5
    .line 5820
    const/4 v2, 0x0

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    #@1ce
    sub-float/2addr v3, v6

    #@1cf
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@1d2
    move-result v2

    #@1d3
    add-float/2addr v11, v2

    #@1d4
    .line 5821
    const/4 v2, 0x0

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    #@1d9
    move-object/from16 v0, p0

    #@1db
    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    #@1dd
    add-float/2addr v3, v6

    #@1de
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    #@1e1
    move-result v2

    #@1e2
    add-float/2addr v12, v2

    #@1e3
    .line 5823
    const/4 v2, 0x0

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    #@1ec
    sub-float/2addr v3, v6

    #@1ed
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@1f0
    move-result v2

    #@1f1
    add-float/2addr v13, v2

    #@1f2
    .line 5824
    const/4 v2, 0x0

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    #@1fb
    add-float/2addr v3, v6

    #@1fc
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    #@1ff
    move-result v2

    #@200
    add-float/2addr v10, v2

    #@201
    .line 5827
    :cond_8
    move-object/from16 v0, p1

    #@203
    invoke-virtual {v0, v11, v13, v12, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    #@206
    .line 5829
    const/16 v37, 0x0

    #@208
    .line 5830
    .local v37, "voffsetText":I
    const/16 v36, 0x0

    #@20a
    .line 5834
    .local v36, "voffsetCursor":I
    move-object/from16 v0, p0

    #@20c
    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    #@20e
    and-int/lit8 v2, v2, 0x70

    #@210
    const/16 v3, 0x30

    #@212
    if-eq v2, v3, :cond_9

    #@214
    .line 5835
    const/4 v2, 0x0

    #@215
    move-object/from16 v0, p0

    #@217
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@21a
    move-result v37

    #@21b
    .line 5836
    const/4 v2, 0x1

    #@21c
    move-object/from16 v0, p0

    #@21e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@221
    move-result v36

    #@222
    .line 5838
    :cond_9
    move/from16 v0, v16

    #@224
    int-to-float v2, v0

    #@225
    add-int v3, v22, v37

    #@227
    int-to-float v3, v3

    #@228
    move-object/from16 v0, p1

    #@22a
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@22d
    .line 5840
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@230
    move-result v25

    #@231
    .line 5841
    .local v25, "layoutDirection":I
    move-object/from16 v0, p0

    #@233
    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    #@235
    move/from16 v0, v25

    #@237
    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@23a
    move-result v8

    #@23b
    .line 5842
    .local v8, "absoluteGravity":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isMarqueeFadeEnabled()Z

    #@23e
    move-result v2

    #@23f
    if-eqz v2, :cond_b

    #@241
    .line 5843
    move-object/from16 v0, p0

    #@243
    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    #@245
    if-nez v2, :cond_a

    #@247
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    #@24a
    move-result v2

    #@24b
    const/4 v3, 0x1

    #@24c
    if-ne v2, v3, :cond_a

    #@24e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    #@251
    move-result v2

    #@252
    if-eqz v2, :cond_a

    #@254
    .line 5844
    and-int/lit8 v2, v8, 0x7

    #@256
    const/4 v3, 0x3

    #@257
    if-eq v2, v3, :cond_a

    #@259
    .line 5845
    move-object/from16 v0, p0

    #@25b
    iget v2, v0, Landroid/widget/TextView;->mRight:I

    #@25d
    move-object/from16 v0, p0

    #@25f
    iget v3, v0, Landroid/widget/TextView;->mLeft:I

    #@261
    sub-int v39, v2, v3

    #@263
    .line 5846
    .local v39, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@266
    move-result v2

    #@267
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@26a
    move-result v3

    #@26b
    add-int v30, v2, v3

    #@26d
    .line 5847
    .local v30, "padding":I
    move-object/from16 v0, p0

    #@26f
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@271
    const/4 v3, 0x0

    #@272
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    #@275
    move-result v2

    #@276
    sub-int v3, v39, v30

    #@278
    int-to-float v3, v3

    #@279
    sub-float v20, v2, v3

    #@27b
    .line 5848
    .local v20, "dx":F
    const/4 v2, 0x0

    #@27c
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@27f
    move-result v2

    #@280
    int-to-float v2, v2

    #@281
    mul-float v2, v2, v20

    #@283
    const/4 v3, 0x0

    #@284
    move-object/from16 v0, p1

    #@286
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@289
    .line 5851
    .end local v20    # "dx":F
    .end local v30    # "padding":I
    .end local v39    # "width":I
    :cond_a
    move-object/from16 v0, p0

    #@28b
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@28d
    if-eqz v2, :cond_b

    #@28f
    move-object/from16 v0, p0

    #@291
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@293
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    #@296
    move-result v2

    #@297
    if-eqz v2, :cond_b

    #@299
    .line 5852
    move-object/from16 v0, p0

    #@29b
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@29d
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    #@2a0
    move-result v2

    #@2a1
    neg-float v0, v2

    #@2a2
    move/from16 v20, v0

    #@2a4
    .line 5853
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    #@2a5
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@2a8
    move-result v2

    #@2a9
    int-to-float v2, v2

    #@2aa
    mul-float v2, v2, v20

    #@2ac
    const/4 v3, 0x0

    #@2ad
    move-object/from16 v0, p1

    #@2af
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@2b2
    .line 5857
    .end local v20    # "dx":F
    :cond_b
    sub-int v7, v36, v37

    #@2b4
    .line 5859
    .local v7, "cursorOffsetVertical":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    #@2b7
    move-result-object v5

    #@2b8
    .line 5860
    .local v5, "highlight":Landroid/graphics/Path;
    move-object/from16 v0, p0

    #@2ba
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2bc
    if-eqz v2, :cond_10

    #@2be
    .line 5861
    move-object/from16 v0, p0

    #@2c0
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2c2
    move-object/from16 v0, p0

    #@2c4
    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@2c6
    move-object/from16 v3, p1

    #@2c8
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@2cb
    .line 5866
    :goto_3
    move-object/from16 v0, p0

    #@2cd
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@2cf
    if-eqz v2, :cond_c

    #@2d1
    move-object/from16 v0, p0

    #@2d3
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@2d5
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    #@2d8
    move-result v2

    #@2d9
    if-eqz v2, :cond_c

    #@2db
    .line 5867
    move-object/from16 v0, p0

    #@2dd
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@2df
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    #@2e2
    move-result v20

    #@2e3
    .line 5868
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    #@2e4
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@2e7
    move-result v2

    #@2e8
    int-to-float v2, v2

    #@2e9
    mul-float v2, v2, v20

    #@2eb
    const/4 v3, 0x0

    #@2ec
    move-object/from16 v0, p1

    #@2ee
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@2f1
    .line 5869
    move-object/from16 v0, p0

    #@2f3
    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@2f5
    move-object/from16 v0, p1

    #@2f7
    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@2fa
    .line 5872
    .end local v20    # "dx":F
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@2fd
    .line 5708
    return-void

    #@2fe
    .line 5726
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "highlight":Landroid/graphics/Path;
    .end local v7    # "cursorOffsetVertical":I
    .end local v8    # "absoluteGravity":I
    .end local v10    # "clipBottom":F
    .end local v11    # "clipLeft":F
    .end local v12    # "clipRight":F
    .end local v13    # "clipTop":F
    .end local v14    # "color":I
    .end local v19    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "extendedPaddingTop":I
    .end local v25    # "layoutDirection":I
    .end local v27    # "leftOffset":I
    .end local v28    # "maxScrollY":I
    .end local v32    # "rightOffset":I
    .end local v36    # "voffsetCursor":I
    .end local v37    # "voffsetText":I
    .end local v38    # "vspace":I
    :cond_d
    move/from16 v27, v29

    #@300
    .restart local v27    # "leftOffset":I
    goto/16 :goto_0

    #@302
    .line 5727
    :cond_e
    const/16 v32, 0x0

    #@304
    .restart local v32    # "rightOffset":I
    goto/16 :goto_1

    #@306
    .line 5814
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v11    # "clipLeft":F
    .restart local v14    # "color":I
    .restart local v19    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v21    # "extendedPaddingBottom":I
    .restart local v22    # "extendedPaddingTop":I
    .restart local v28    # "maxScrollY":I
    .restart local v38    # "vspace":I
    :cond_f
    add-int v2, v22, v34

    #@308
    goto/16 :goto_2

    #@30a
    .line 5863
    .end local v21    # "extendedPaddingBottom":I
    .restart local v5    # "highlight":Landroid/graphics/Path;
    .restart local v7    # "cursorOffsetVertical":I
    .restart local v8    # "absoluteGravity":I
    .restart local v10    # "clipBottom":F
    .restart local v12    # "clipRight":F
    .restart local v13    # "clipTop":F
    .restart local v25    # "layoutDirection":I
    .restart local v36    # "voffsetCursor":I
    .restart local v37    # "voffsetText":I
    :cond_10
    move-object/from16 v0, p0

    #@30c
    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@30e
    move-object/from16 v0, p1

    #@310
    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@313
    goto :goto_3
.end method

.method public onEditorAction(I)V
    .locals 22
    .param p1, "actionCode"    # I

    #@0
    .prologue
    .line 4900
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-nez v3, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    .line 4901
    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    :goto_0
    if-eqz v2, :cond_7

    #@9
    .line 4902
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 4903
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@f
    .line 4904
    const/4 v6, 0x0

    #@10
    .line 4903
    move-object/from16 v0, p0

    #@12
    move/from16 v1, p1

    #@14
    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 4905
    return-void

    #@1b
    .line 4900
    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_0
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1f
    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@21
    goto :goto_0

    #@22
    .line 4914
    .restart local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_1
    const/4 v3, 0x5

    #@23
    move/from16 v0, p1

    #@25
    if-ne v0, v3, :cond_3

    #@27
    .line 4915
    const/4 v3, 0x2

    #@28
    move-object/from16 v0, p0

    #@2a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@2d
    move-result-object v20

    #@2e
    .line 4916
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_2

    #@30
    .line 4917
    const/4 v3, 0x2

    #@31
    move-object/from16 v0, v20

    #@33
    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_2

    #@39
    .line 4918
    new-instance v3, Ljava/lang/IllegalStateException;

    #@3b
    const-string/jumbo v6, "focus search returned a view that wasn\'t able to take focus!"

    #@3e
    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 4922
    :cond_2
    return-void

    #@43
    .line 4924
    .end local v20    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, 0x7

    #@44
    move/from16 v0, p1

    #@46
    if-ne v0, v3, :cond_5

    #@48
    .line 4925
    const/4 v3, 0x1

    #@49
    move-object/from16 v0, p0

    #@4b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@4e
    move-result-object v20

    #@4f
    .line 4926
    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_4

    #@51
    .line 4927
    const/4 v3, 0x1

    #@52
    move-object/from16 v0, v20

    #@54
    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    #@57
    move-result v3

    #@58
    if-nez v3, :cond_4

    #@5a
    .line 4928
    new-instance v3, Ljava/lang/IllegalStateException;

    #@5c
    const-string/jumbo v6, "focus search returned a view that wasn\'t able to take focus!"

    #@5f
    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v3

    #@63
    .line 4932
    :cond_4
    return-void

    #@64
    .line 4934
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/4 v3, 0x6

    #@65
    move/from16 v0, p1

    #@67
    if-ne v0, v3, :cond_7

    #@69
    .line 4935
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@6c
    move-result-object v19

    #@6d
    .line 4936
    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_6

    #@6f
    move-object/from16 v0, v19

    #@71
    move-object/from16 v1, p0

    #@73
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_6

    #@79
    .line 4937
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    #@7c
    move-result-object v3

    #@7d
    const/4 v6, 0x0

    #@7e
    move-object/from16 v0, v19

    #@80
    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@83
    .line 4939
    :cond_6
    return-void

    #@84
    .line 4943
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@87
    move-result-object v21

    #@88
    .line 4944
    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_8

    #@8a
    .line 4945
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8d
    move-result-wide v4

    #@8e
    .line 4947
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    #@90
    .line 4948
    const/4 v8, 0x0

    #@91
    const/16 v9, 0x42

    #@93
    const/4 v10, 0x0

    #@94
    const/4 v11, 0x0

    #@95
    .line 4949
    const/4 v12, -0x1

    #@96
    const/4 v13, 0x0

    #@97
    .line 4950
    const/16 v14, 0x16

    #@99
    move-wide v6, v4

    #@9a
    .line 4947
    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@9d
    .line 4946
    move-object/from16 v0, v21

    #@9f
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    #@a2
    .line 4953
    new-instance v7, Landroid/view/KeyEvent;

    #@a4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a7
    move-result-wide v8

    #@a8
    .line 4954
    const/4 v12, 0x1

    #@a9
    const/16 v13, 0x42

    #@ab
    const/4 v14, 0x0

    #@ac
    const/4 v15, 0x0

    #@ad
    .line 4955
    const/16 v16, -0x1

    #@af
    const/16 v17, 0x0

    #@b1
    .line 4956
    const/16 v18, 0x16

    #@b3
    move-wide v10, v4

    #@b4
    .line 4953
    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@b7
    .line 4952
    move-object/from16 v0, v21

    #@b9
    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    #@bc
    .line 4899
    .end local v4    # "eventTime":J
    :cond_8
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 0

    #@0
    .prologue
    .line 6653
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 8380
    invoke-virtual {p0}, Landroid/widget/TextView;->isTemporarilyDetached()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 8382
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@9
    .line 8383
    return-void

    #@a
    .line 8386
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    if-eqz v0, :cond_1

    #@e
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@10
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    #@13
    .line 8388
    :cond_1
    if-eqz p1, :cond_2

    #@15
    .line 8389
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@17
    instance-of v0, v0, Landroid/text/Spannable;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 8390
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1d
    check-cast v6, Landroid/text/Spannable;

    #@1f
    .line 8391
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    #@22
    .line 8395
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    #@25
    .line 8397
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 8398
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@2b
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2d
    move-object v1, p0

    #@2e
    move v3, p1

    #@2f
    move v4, p2

    #@30
    move-object v5, p3

    #@31
    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    #@34
    .line 8401
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@37
    .line 8379
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 8526
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@6
    instance-of v1, v1, Landroid/text/Spannable;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 8528
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@10
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@12
    check-cast v1, Landroid/text/Spannable;

    #@14
    invoke-interface {v2, p0, v1, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 8529
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 8531
    :catch_0
    move-exception v0

    #@1d
    .line 8537
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@20
    move-result v1

    #@21
    return v1
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 9052
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 9054
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@6
    move-result v0

    #@7
    .line 9055
    .local v0, "isPassword":Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    #@a
    .line 9057
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@d
    move-result v1

    #@e
    const/16 v2, 0x2000

    #@10
    if-ne v1, v2, :cond_0

    #@12
    .line 9058
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@14
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@17
    move-result v1

    #@18
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    #@1b
    .line 9059
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1d
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@20
    move-result v1

    #@21
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    #@24
    .line 9060
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@26
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@29
    move-result v1

    #@2a
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    #@2d
    .line 9051
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 9067
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@4
    .line 9069
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@7
    move-result v2

    #@8
    .line 9070
    .local v2, "isPassword":Z
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    #@b
    .line 9071
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@12
    .line 9073
    iget-object v4, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@14
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@16
    if-ne v4, v5, :cond_0

    #@18
    .line 9074
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    #@1b
    .line 9075
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 9076
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@23
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@26
    .line 9080
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 9081
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2c
    iget v4, v4, Landroid/widget/Editor;->mInputType:I

    #@2e
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    #@31
    .line 9083
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@33
    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@35
    if-eqz v4, :cond_1

    #@37
    .line 9084
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    #@3a
    .line 9085
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3c
    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@3e
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    #@41
    .line 9089
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@46
    move-result v4

    #@47
    if-nez v4, :cond_2

    #@49
    .line 9090
    const/16 v4, 0x100

    #@4b
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@4e
    .line 9091
    const/16 v4, 0x200

    #@50
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@53
    .line 9092
    const/16 v4, 0x1f

    #@55
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    #@58
    .line 9097
    const/high16 v4, 0x20000

    #@5a
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@5d
    .line 9100
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_7

    #@63
    .line 9101
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    #@66
    move-result v4

    #@67
    if-eqz v4, :cond_3

    #@69
    .line 9102
    const/16 v4, 0x4000

    #@6b
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@6e
    .line 9104
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    #@71
    move-result v4

    #@72
    if-eqz v4, :cond_4

    #@74
    .line 9105
    const v4, 0x8000

    #@77
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@7a
    .line 9107
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    #@7d
    move-result v4

    #@7e
    if-eqz v4, :cond_5

    #@80
    .line 9108
    const/high16 v4, 0x10000

    #@82
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@85
    .line 9110
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    #@88
    move-result v4

    #@89
    if-eqz v4, :cond_6

    #@8b
    .line 9111
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@8d
    .line 9113
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@90
    move-result-object v5

    #@91
    const v6, 0x1040491

    #@94
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    .line 9112
    const/high16 v6, 0x10000000

    #@9a
    .line 9111
    invoke-direct {v4, v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    #@9d
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@a0
    .line 9115
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    #@a3
    move-result v4

    #@a4
    if-eqz v4, :cond_7

    #@a6
    .line 9116
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a8
    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@aa
    invoke-virtual {v4, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@ad
    .line 9121
    :cond_7
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@af
    array-length v3, v4

    #@b0
    .line 9122
    .local v3, "numFilters":I
    const/4 v1, 0x0

    #@b1
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_9

    #@b3
    .line 9123
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@b5
    aget-object v0, v4, v1

    #@b7
    .line 9124
    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v4, v0, Landroid/text/InputFilter$LengthFilter;

    #@b9
    if-eqz v4, :cond_8

    #@bb
    .line 9125
    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    #@bd
    .end local v0    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    #@c0
    move-result v4

    #@c1
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    #@c4
    .line 9122
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@c6
    goto :goto_0

    #@c7
    .line 9129
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    #@ca
    move-result v4

    #@cb
    if-nez v4, :cond_a

    #@cd
    .line 9130
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    #@d0
    .line 9066
    :cond_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 6075
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    #@4
    move-result v0

    #@5
    .line 6076
    .local v0, "which":I
    if-nez v0, :cond_0

    #@7
    .line 6077
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 6080
    :cond_0
    const/4 v1, 0x1

    #@d
    return v1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 6085
    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@5
    move-result-object v0

    #@6
    .line 6086
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    #@9
    move-result v2

    #@a
    .line 6087
    .local v2, "which":I
    if-nez v2, :cond_0

    #@c
    .line 6089
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 6091
    :cond_0
    const/4 v3, -0x1

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 6093
    return v5

    #@15
    .line 6096
    :cond_1
    add-int/lit8 p2, p2, -0x1

    #@17
    .line 6103
    invoke-static {p3, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@1a
    move-result-object v1

    #@1b
    .line 6104
    .local v1, "up":Landroid/view/KeyEvent;
    if-ne v2, v5, :cond_4

    #@1d
    .line 6106
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1f
    iget-object v4, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@21
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@23
    check-cast v3, Landroid/text/Editable;

    #@25
    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@28
    .line 6107
    :goto_0
    add-int/lit8 p2, p2, -0x1

    #@2a
    if-lez p2, :cond_2

    #@2c
    .line 6108
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2e
    iget-object v4, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@30
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@32
    check-cast v3, Landroid/text/Editable;

    #@34
    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@37
    .line 6109
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@39
    iget-object v4, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@3b
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@3d
    check-cast v3, Landroid/text/Editable;

    #@3f
    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@42
    goto :goto_0

    #@43
    .line 6111
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    #@46
    .line 6122
    :cond_3
    return v5

    #@47
    .line 6113
    :cond_4
    const/4 v3, 0x2

    #@48
    if-ne v2, v3, :cond_3

    #@4a
    .line 6115
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@4c
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@4e
    check-cast v3, Landroid/text/Spannable;

    #@50
    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@53
    .line 6116
    :goto_1
    add-int/lit8 p2, p2, -0x1

    #@55
    if-lez p2, :cond_3

    #@57
    .line 6117
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@59
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@5b
    check-cast v3, Landroid/text/Spannable;

    #@5d
    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@60
    .line 6118
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@62
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@64
    check-cast v3, Landroid/text/Spannable;

    #@66
    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@69
    goto :goto_1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 6039
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_0

    #@3
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 6040
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 6042
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 8749
    const/16 v0, 0x1000

    #@2
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 8751
    sparse-switch p1, :sswitch_data_0

    #@b
    .line 8792
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 8753
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 8754
    const v0, 0x102001f

    #@19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 8758
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 8759
    const v0, 0x1020032

    #@27
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@2a
    move-result v0

    #@2b
    return v0

    #@2c
    .line 8763
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_0

    #@32
    .line 8764
    const v0, 0x1020020

    #@35
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@38
    move-result v0

    #@39
    return v0

    #@3a
    .line 8768
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_0

    #@40
    .line 8769
    const v0, 0x1020021

    #@43
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@46
    move-result v0

    #@47
    return v0

    #@48
    .line 8773
    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_0

    #@4e
    .line 8774
    const v0, 0x1020022

    #@51
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@54
    move-result v0

    #@55
    return v0

    #@56
    .line 8778
    :cond_1
    const/16 v0, 0x1001

    #@58
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 8780
    sparse-switch p1, :sswitch_data_1

    #@61
    goto :goto_0

    #@62
    .line 8787
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_0

    #@68
    .line 8788
    const v0, 0x1020031

    #@6b
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@6e
    move-result v0

    #@6f
    return v0

    #@70
    .line 8782
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_0

    #@76
    .line 8783
    const v0, 0x1020033

    #@79
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@7c
    move-result v0

    #@7d
    return v0

    #@7e
    .line 8751
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_3
        0x32 -> :sswitch_4
        0x34 -> :sswitch_2
        0x36 -> :sswitch_1
    .end sparse-switch

    #@94
    .line 8780
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_5
        0x36 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v5, 0x82

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 6351
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 6352
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 6355
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 6356
    iput-boolean v3, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    #@17
    .line 6359
    :cond_1
    sparse-switch p1, :sswitch_data_0

    #@1a
    .line 6441
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1c
    if-eqz v2, :cond_9

    #@1e
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@20
    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@22
    if-eqz v2, :cond_9

    #@24
    .line 6442
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@26
    iget-object v3, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@28
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2a
    check-cast v2, Landroid/text/Editable;

    #@2c
    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_9

    #@32
    .line 6443
    return v4

    #@33
    .line 6361
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 6371
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    #@3c
    move-result v2

    #@3d
    if-nez v2, :cond_3

    #@3f
    .line 6372
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@41
    if-eqz v2, :cond_3

    #@43
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@45
    instance-of v2, v2, Landroid/text/Editable;

    #@47
    if-eqz v2, :cond_3

    #@49
    .line 6373
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4b
    if-eqz v2, :cond_3

    #@4d
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    #@50
    move-result v2

    #@51
    .line 6372
    if-eqz v2, :cond_3

    #@53
    .line 6374
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@56
    move-result-object v0

    #@57
    .line 6375
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    #@5a
    .line 6376
    if-eqz v0, :cond_3

    #@5c
    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_3

    #@62
    .line 6377
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@65
    .line 6382
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@68
    move-result v2

    #@69
    return v2

    #@6a
    .line 6385
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_2

    #@70
    .line 6386
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@72
    if-eqz v2, :cond_4

    #@74
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@76
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@78
    if-eqz v2, :cond_4

    #@7a
    .line 6387
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7c
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@7e
    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@80
    if-eqz v2, :cond_4

    #@82
    .line 6388
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@84
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@86
    iget-boolean v2, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    #@88
    .line 6386
    if-eqz v2, :cond_4

    #@8a
    .line 6389
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8c
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@8e
    iput-boolean v3, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    #@90
    .line 6390
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@92
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@94
    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@96
    invoke-interface {v2, p0, v3, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    #@99
    move-result v2

    #@9a
    if-eqz v2, :cond_4

    #@9c
    .line 6392
    return v4

    #@9d
    .line 6396
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    #@a0
    move-result v2

    #@a1
    and-int/lit8 v2, v2, 0x10

    #@a3
    if-nez v2, :cond_5

    #@a5
    .line 6397
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    #@a8
    move-result v2

    #@a9
    .line 6396
    if-eqz v2, :cond_8

    #@ab
    .line 6408
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    #@ae
    move-result v2

    #@af
    if-nez v2, :cond_8

    #@b1
    .line 6409
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@b4
    move-result-object v1

    #@b5
    .line 6411
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_7

    #@b7
    .line 6412
    invoke-virtual {v1, v5}, Landroid/view/View;->requestFocus(I)Z

    #@ba
    move-result v2

    #@bb
    if-nez v2, :cond_6

    #@bd
    .line 6413
    new-instance v2, Ljava/lang/IllegalStateException;

    #@bf
    .line 6414
    const-string/jumbo v3, "focus search returned a view that wasn\'t able to take focus!"

    #@c2
    .line 6413
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v2

    #@c6
    .line 6423
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@c9
    .line 6424
    return v4

    #@ca
    .line 6425
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    #@cd
    move-result v2

    #@ce
    and-int/lit8 v2, v2, 0x10

    #@d0
    if-eqz v2, :cond_8

    #@d2
    .line 6429
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@d5
    move-result-object v0

    #@d6
    .line 6430
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_8

    #@d8
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@db
    move-result v2

    #@dc
    if-eqz v2, :cond_8

    #@de
    .line 6431
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    #@e1
    move-result-object v2

    #@e2
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@e5
    .line 6436
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "v":Landroid/view/View;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@e8
    move-result v2

    #@e9
    return v2

    #@ea
    .line 6445
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@ec
    if-eqz v2, :cond_a

    #@ee
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f0
    if-eqz v2, :cond_a

    #@f2
    .line 6446
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@f4
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@f6
    check-cast v2, Landroid/text/Spannable;

    #@f8
    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@fb
    move-result v2

    #@fc
    if-eqz v2, :cond_a

    #@fe
    .line 6447
    return v4

    #@ff
    .line 6449
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@102
    move-result v2

    #@103
    return v2

    #@104
    .line 6359
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 7375
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    #@3
    .line 7376
    iget v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    #@5
    if-ltz v1, :cond_0

    #@7
    .line 7377
    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    #@9
    .line 7378
    .local v0, "curs":I
    const/4 v1, -0x1

    #@a
    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    #@c
    .line 7379
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@e
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@11
    move-result v1

    #@12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    #@19
    .line 7374
    .end local v0    # "curs":I
    :cond_0
    return-void
.end method

.method onLocaleChanged()V
    .locals 1

    #@0
    .prologue
    .line 8897
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    invoke-virtual {v0}, Landroid/widget/Editor;->onLocaleChanged()V

    #@5
    .line 8896
    return-void
.end method

.method protected onMeasure(II)V
    .locals 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 7047
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v24

    #@4
    .line 7048
    .local v24, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v14

    #@8
    .line 7049
    .local v14, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@b
    move-result v25

    #@c
    .line 7050
    .local v25, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result v15

    #@10
    .line 7055
    .local v15, "heightSize":I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@12
    .line 7056
    .local v5, "boring":Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@14
    .line 7058
    .local v6, "hintBoring":Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 7059
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    #@1d
    move-result-object v2

    #@1e
    move-object/from16 v0, p0

    #@20
    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@22
    .line 7062
    :cond_0
    const/4 v9, -0x1

    #@23
    .line 7063
    .local v9, "des":I
    const/4 v12, 0x0

    #@24
    .line 7065
    .local v12, "fromexisting":Z
    const/high16 v2, 0x40000000    # 2.0f

    #@26
    move/from16 v0, v24

    #@28
    if-ne v0, v2, :cond_7

    #@2a
    .line 7067
    move/from16 v22, v25

    #@2c
    .line 7148
    .local v22, "width":I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@2f
    move-result v2

    #@30
    sub-int v2, v22, v2

    #@32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@35
    move-result v7

    #@36
    sub-int v3, v2, v7

    #@38
    .line 7149
    .local v3, "want":I
    move/from16 v21, v3

    #@3a
    .line 7151
    .local v21, "unpaddedWidth":I
    move-object/from16 v0, p0

    #@3c
    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@3e
    if-eqz v2, :cond_2

    #@40
    const/high16 v3, 0x100000

    #@42
    .line 7153
    :cond_2
    move v4, v3

    #@43
    .line 7154
    .local v4, "hintWant":I
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@47
    if-nez v2, :cond_17

    #@49
    move/from16 v17, v4

    #@4b
    .line 7156
    .local v17, "hintWidth":I
    :goto_1
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4f
    if-nez v2, :cond_18

    #@51
    .line 7158
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@54
    move-result v2

    #@55
    sub-int v2, v22, v2

    #@57
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@5a
    move-result v7

    #@5b
    sub-int v7, v2, v7

    #@5d
    const/4 v8, 0x0

    #@5e
    move-object/from16 v2, p0

    #@60
    .line 7157
    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@63
    .line 7184
    :cond_3
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    #@65
    if-ne v14, v2, :cond_23

    #@67
    .line 7186
    move v13, v15

    #@68
    .line 7187
    .local v13, "height":I
    const/4 v2, -0x1

    #@69
    move-object/from16 v0, p0

    #@6b
    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@6d
    .line 7199
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@70
    move-result v2

    #@71
    sub-int v2, v13, v2

    #@73
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@76
    move-result v7

    #@77
    sub-int v20, v2, v7

    #@79
    .line 7200
    .local v20, "unpaddedHeight":I
    move-object/from16 v0, p0

    #@7b
    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    #@7d
    const/4 v7, 0x1

    #@7e
    if-ne v2, v7, :cond_5

    #@80
    move-object/from16 v0, p0

    #@82
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@84
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    #@87
    move-result v2

    #@88
    move-object/from16 v0, p0

    #@8a
    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    #@8c
    if-le v2, v7, :cond_5

    #@8e
    .line 7201
    move-object/from16 v0, p0

    #@90
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@92
    move-object/from16 v0, p0

    #@94
    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    #@96
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    #@99
    move-result v2

    #@9a
    move/from16 v0, v20

    #@9c
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@9f
    move-result v20

    #@a0
    .line 7208
    :cond_5
    move-object/from16 v0, p0

    #@a2
    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@a4
    if-nez v2, :cond_6

    #@a6
    .line 7209
    move-object/from16 v0, p0

    #@a8
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@aa
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    #@ad
    move-result v2

    #@ae
    move/from16 v0, v21

    #@b0
    if-le v2, v0, :cond_24

    #@b2
    .line 7211
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    #@b5
    .line 7216
    :goto_4
    move-object/from16 v0, p0

    #@b7
    move/from16 v1, v22

    #@b9
    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    #@bc
    .line 7046
    return-void

    #@bd
    .line 7069
    .end local v3    # "want":I
    .end local v4    # "hintWant":I
    .end local v13    # "height":I
    .end local v17    # "hintWidth":I
    .end local v20    # "unpaddedHeight":I
    .end local v21    # "unpaddedWidth":I
    .end local v22    # "width":I
    :cond_7
    move-object/from16 v0, p0

    #@bf
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@c1
    if-eqz v2, :cond_8

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@c7
    if-nez v2, :cond_8

    #@c9
    .line 7070
    move-object/from16 v0, p0

    #@cb
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@cd
    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    #@d0
    move-result v9

    #@d1
    .line 7073
    :cond_8
    if-gez v9, :cond_12

    #@d3
    .line 7074
    move-object/from16 v0, p0

    #@d5
    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@df
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    #@e3
    move-object/from16 v26, v0

    #@e5
    move-object/from16 v0, v26

    #@e7
    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    #@ea
    move-result-object v5

    #@eb
    .line 7075
    if-eqz v5, :cond_9

    #@ed
    .line 7076
    move-object/from16 v0, p0

    #@ef
    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    #@f1
    .line 7082
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    #@f3
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@f5
    if-ne v5, v2, :cond_13

    #@f7
    .line 7083
    :cond_a
    if-gez v9, :cond_b

    #@f9
    .line 7084
    move-object/from16 v0, p0

    #@fb
    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@101
    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    #@104
    move-result v2

    #@105
    float-to-double v0, v2

    #@106
    move-wide/from16 v26, v0

    #@108
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    #@10b
    move-result-wide v26

    #@10c
    move-wide/from16 v0, v26

    #@10e
    double-to-int v9, v0

    #@10f
    .line 7086
    :cond_b
    move/from16 v22, v9

    #@111
    .line 7091
    .restart local v22    # "width":I
    :goto_6
    move-object/from16 v0, p0

    #@113
    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@115
    .line 7092
    .local v11, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_c

    #@117
    .line 7093
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@119
    move/from16 v0, v22

    #@11b
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@11e
    move-result v22

    #@11f
    .line 7094
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@121
    move/from16 v0, v22

    #@123
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@126
    move-result v22

    #@127
    .line 7097
    :cond_c
    move-object/from16 v0, p0

    #@129
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@12b
    if-eqz v2, :cond_11

    #@12d
    .line 7098
    const/16 v16, -0x1

    #@12f
    .line 7101
    .local v16, "hintDes":I
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@133
    if-eqz v2, :cond_d

    #@135
    move-object/from16 v0, p0

    #@137
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@139
    if-nez v2, :cond_d

    #@13b
    .line 7102
    move-object/from16 v0, p0

    #@13d
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@13f
    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    #@142
    move-result v16

    #@143
    .line 7105
    :cond_d
    if-gez v16, :cond_e

    #@145
    .line 7106
    move-object/from16 v0, p0

    #@147
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@149
    move-object/from16 v0, p0

    #@14b
    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@14d
    move-object/from16 v0, p0

    #@14f
    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@151
    move-object/from16 v0, p0

    #@153
    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    #@155
    move-object/from16 v26, v0

    #@157
    move-object/from16 v0, v26

    #@159
    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    #@15c
    move-result-object v6

    #@15d
    .line 7107
    if-eqz v6, :cond_e

    #@15f
    .line 7108
    move-object/from16 v0, p0

    #@161
    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    #@163
    .line 7112
    :cond_e
    if-eqz v6, :cond_f

    #@165
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@167
    if-ne v6, v2, :cond_14

    #@169
    .line 7113
    :cond_f
    if-gez v16, :cond_10

    #@16b
    .line 7114
    move-object/from16 v0, p0

    #@16d
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@16f
    move-object/from16 v0, p0

    #@171
    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@173
    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    #@176
    move-result v2

    #@177
    float-to-double v0, v2

    #@178
    move-wide/from16 v26, v0

    #@17a
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    #@17d
    move-result-wide v26

    #@17e
    move-wide/from16 v0, v26

    #@180
    double-to-int v0, v0

    #@181
    move/from16 v16, v0

    #@183
    .line 7116
    :cond_10
    move/from16 v17, v16

    #@185
    .line 7121
    .restart local v17    # "hintWidth":I
    :goto_7
    move/from16 v0, v17

    #@187
    move/from16 v1, v22

    #@189
    if-le v0, v1, :cond_11

    #@18b
    .line 7122
    move/from16 v22, v17

    #@18d
    .line 7126
    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@190
    move-result v2

    #@191
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@194
    move-result v7

    #@195
    add-int/2addr v2, v7

    #@196
    add-int v22, v22, v2

    #@198
    .line 7128
    move-object/from16 v0, p0

    #@19a
    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@19c
    const/4 v7, 0x1

    #@19d
    if-ne v2, v7, :cond_15

    #@19f
    .line 7129
    move-object/from16 v0, p0

    #@1a1
    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    #@1a3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    #@1a6
    move-result v7

    #@1a7
    mul-int/2addr v2, v7

    #@1a8
    move/from16 v0, v22

    #@1aa
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@1ad
    move-result v22

    #@1ae
    .line 7134
    :goto_8
    move-object/from16 v0, p0

    #@1b0
    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    #@1b2
    const/4 v7, 0x1

    #@1b3
    if-ne v2, v7, :cond_16

    #@1b5
    .line 7135
    move-object/from16 v0, p0

    #@1b7
    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    #@1b9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    #@1bc
    move-result v7

    #@1bd
    mul-int/2addr v2, v7

    #@1be
    move/from16 v0, v22

    #@1c0
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@1c3
    move-result v22

    #@1c4
    .line 7141
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    #@1c7
    move-result v2

    #@1c8
    move/from16 v0, v22

    #@1ca
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@1cd
    move-result v22

    #@1ce
    .line 7143
    const/high16 v2, -0x80000000

    #@1d0
    move/from16 v0, v24

    #@1d2
    if-ne v0, v2, :cond_1

    #@1d4
    .line 7144
    move/from16 v0, v25

    #@1d6
    move/from16 v1, v22

    #@1d8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@1db
    move-result v22

    #@1dc
    goto/16 :goto_0

    #@1de
    .line 7079
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "width":I
    :cond_12
    const/4 v12, 0x1

    #@1df
    goto/16 :goto_5

    #@1e1
    .line 7088
    :cond_13
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    #@1e3
    move/from16 v22, v0

    #@1e5
    .restart local v22    # "width":I
    goto/16 :goto_6

    #@1e7
    .line 7118
    .restart local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v16    # "hintDes":I
    :cond_14
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    #@1e9
    move/from16 v17, v0

    #@1eb
    .restart local v17    # "hintWidth":I
    goto :goto_7

    #@1ec
    .line 7131
    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_15
    move-object/from16 v0, p0

    #@1ee
    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    #@1f0
    move/from16 v0, v22

    #@1f2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@1f5
    move-result v22

    #@1f6
    goto :goto_8

    #@1f7
    .line 7137
    :cond_16
    move-object/from16 v0, p0

    #@1f9
    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    #@1fb
    move/from16 v0, v22

    #@1fd
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@200
    move-result v22

    #@201
    goto :goto_9

    #@202
    .line 7154
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "want":I
    .restart local v4    # "hintWant":I
    .restart local v21    # "unpaddedWidth":I
    :cond_17
    move-object/from16 v0, p0

    #@204
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@206
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    #@209
    move-result v17

    #@20a
    .restart local v17    # "hintWidth":I
    goto/16 :goto_1

    #@20c
    .line 7160
    :cond_18
    move-object/from16 v0, p0

    #@20e
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@210
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    #@213
    move-result v2

    #@214
    if-ne v2, v3, :cond_19

    #@216
    .line 7161
    move/from16 v0, v17

    #@218
    if-eq v0, v4, :cond_1d

    #@21a
    .line 7160
    :cond_19
    const/16 v18, 0x1

    #@21c
    .line 7165
    .local v18, "layoutChanged":Z
    :goto_a
    move-object/from16 v0, p0

    #@21e
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@220
    if-nez v2, :cond_20

    #@222
    .line 7166
    move-object/from16 v0, p0

    #@224
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@226
    if-nez v2, :cond_20

    #@228
    .line 7167
    move-object/from16 v0, p0

    #@22a
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@22c
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    #@22f
    move-result v2

    #@230
    if-le v3, v2, :cond_20

    #@232
    .line 7168
    move-object/from16 v0, p0

    #@234
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@236
    instance-of v2, v2, Landroid/text/BoringLayout;

    #@238
    if-nez v2, :cond_1a

    #@23a
    if-eqz v12, :cond_1f

    #@23c
    if-ltz v9, :cond_1f

    #@23e
    if-gt v9, v3, :cond_1f

    #@240
    :cond_1a
    const/16 v23, 0x1

    #@242
    .line 7170
    .local v23, "widthChanged":Z
    :goto_b
    move-object/from16 v0, p0

    #@244
    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    #@246
    move-object/from16 v0, p0

    #@248
    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    #@24a
    if-ne v2, v7, :cond_1b

    #@24c
    move-object/from16 v0, p0

    #@24e
    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    #@250
    move-object/from16 v0, p0

    #@252
    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    #@254
    if-eq v2, v7, :cond_21

    #@256
    :cond_1b
    const/16 v19, 0x1

    #@258
    .line 7172
    .local v19, "maximumChanged":Z
    :goto_c
    if-nez v18, :cond_1c

    #@25a
    if-eqz v19, :cond_3

    #@25c
    .line 7173
    :cond_1c
    if-nez v19, :cond_22

    #@25e
    if-eqz v23, :cond_22

    #@260
    .line 7174
    move-object/from16 v0, p0

    #@262
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@264
    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    #@267
    goto/16 :goto_2

    #@269
    .line 7162
    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_1d
    move-object/from16 v0, p0

    #@26b
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@26d
    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    #@270
    move-result v2

    #@271
    .line 7163
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@274
    move-result v7

    #@275
    sub-int v7, v22, v7

    #@277
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@27a
    move-result v8

    #@27b
    sub-int/2addr v7, v8

    #@27c
    .line 7162
    if-eq v2, v7, :cond_1e

    #@27e
    const/16 v18, 0x1

    #@280
    .restart local v18    # "layoutChanged":Z
    goto :goto_a

    #@281
    .end local v18    # "layoutChanged":Z
    :cond_1e
    const/16 v18, 0x0

    #@283
    .restart local v18    # "layoutChanged":Z
    goto :goto_a

    #@284
    .line 7168
    :cond_1f
    const/16 v23, 0x0

    #@286
    .restart local v23    # "widthChanged":Z
    goto :goto_b

    #@287
    .line 7165
    .end local v23    # "widthChanged":Z
    :cond_20
    const/16 v23, 0x0

    #@289
    .restart local v23    # "widthChanged":Z
    goto :goto_b

    #@28a
    .line 7170
    :cond_21
    const/16 v19, 0x0

    #@28c
    .restart local v19    # "maximumChanged":Z
    goto :goto_c

    #@28d
    .line 7177
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@290
    move-result v2

    #@291
    sub-int v2, v22, v2

    #@293
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@296
    move-result v7

    #@297
    sub-int v7, v2, v7

    #@299
    const/4 v8, 0x0

    #@29a
    move-object/from16 v2, p0

    #@29c
    .line 7176
    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@29f
    goto/16 :goto_2

    #@2a1
    .line 7189
    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_23
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    #@2a4
    move-result v10

    #@2a5
    .line 7191
    .local v10, "desired":I
    move v13, v10

    #@2a6
    .line 7192
    .restart local v13    # "height":I
    move-object/from16 v0, p0

    #@2a8
    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@2aa
    .line 7194
    const/high16 v2, -0x80000000

    #@2ac
    if-ne v14, v2, :cond_4

    #@2ae
    .line 7195
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    #@2b1
    move-result v13

    #@2b2
    goto/16 :goto_3

    #@2b4
    .line 7210
    .end local v10    # "desired":I
    .restart local v20    # "unpaddedHeight":I
    :cond_24
    move-object/from16 v0, p0

    #@2b6
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2b8
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    #@2bb
    move-result v2

    #@2bc
    move/from16 v0, v20

    #@2be
    if-gt v2, v0, :cond_6

    #@2c0
    .line 7213
    const/4 v2, 0x0

    #@2c1
    const/4 v7, 0x0

    #@2c2
    move-object/from16 v0, p0

    #@2c4
    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->scrollTo(II)V

    #@2c7
    goto/16 :goto_4
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 8916
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 8918
    invoke-direct {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    .line 8919
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 8920
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 8915
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5369
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 5370
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    #@8
    .line 5373
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@a
    if-eqz v1, :cond_5

    #@c
    .line 5378
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@f
    move-result v0

    #@10
    .line 5380
    .local v0, "curs":I
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@12
    if-eqz v1, :cond_1

    #@14
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@16
    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 5381
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1c
    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@1e
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    #@21
    move-result v1

    #@22
    .line 5380
    if-eqz v1, :cond_1

    #@24
    .line 5382
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@27
    move-result v0

    #@28
    .line 5390
    :cond_1
    if-gez v0, :cond_2

    #@2a
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    #@2c
    and-int/lit8 v1, v1, 0x70

    #@2e
    const/16 v2, 0x50

    #@30
    if-ne v1, v2, :cond_2

    #@32
    .line 5391
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@34
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@37
    move-result v0

    #@38
    .line 5394
    :cond_2
    if-ltz v0, :cond_3

    #@3a
    .line 5395
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    #@3d
    .line 5404
    .end local v0    # "curs":I
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3f
    if-eqz v1, :cond_4

    #@41
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@43
    iget-boolean v1, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    #@45
    if-eqz v1, :cond_4

    #@47
    .line 5405
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@49
    invoke-virtual {v1}, Landroid/widget/Editor;->refreshTextActionMode()V

    #@4c
    .line 5406
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4e
    iput-boolean v3, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    #@50
    .line 5409
    :cond_4
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    #@53
    .line 5411
    const/4 v1, 0x1

    #@54
    return v1

    #@55
    .line 5398
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    #@58
    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6668
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 32
    .param p1, "structure"    # Landroid/view/ViewStructure;

    #@0
    .prologue
    .line 8941
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    #@3
    .line 8942
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@6
    move-result v29

    #@7
    if-nez v29, :cond_7

    #@9
    .line 8943
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    #@c
    move-result v29

    #@d
    invoke-static/range {v29 .. v29}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    #@10
    move-result v12

    #@11
    .line 8944
    .local v12, "isPassword":Z
    :goto_0
    if-nez v12, :cond_6

    #@13
    .line 8945
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@17
    move-object/from16 v29, v0

    #@19
    if-nez v29, :cond_0

    #@1b
    .line 8946
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    #@1e
    .line 8948
    :cond_0
    move-object/from16 v0, p0

    #@20
    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@22
    .line 8949
    .local v13, "layout":Landroid/text/Layout;
    invoke-virtual {v13}, Landroid/text/Layout;->getLineCount()I

    #@25
    move-result v15

    #@26
    .line 8950
    .local v15, "lineCount":I
    const/16 v29, 0x1

    #@28
    move/from16 v0, v29

    #@2a
    if-gt v15, v0, :cond_8

    #@2c
    .line 8952
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@2f
    move-result-object v29

    #@30
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@33
    move-result v30

    #@34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@37
    move-result v31

    #@38
    move-object/from16 v0, p1

    #@3a
    move-object/from16 v1, v29

    #@3c
    move/from16 v2, v30

    #@3e
    move/from16 v3, v31

    #@40
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    #@43
    .line 9020
    :goto_1
    const/16 v21, 0x0

    #@45
    .line 9021
    .local v21, "style":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    #@48
    move-result v26

    #@49
    .line 9022
    .local v26, "typefaceStyle":I
    and-int/lit8 v29, v26, 0x1

    #@4b
    if-eqz v29, :cond_1

    #@4d
    .line 9023
    const/16 v21, 0x1

    #@4f
    .line 9025
    :cond_1
    and-int/lit8 v29, v26, 0x2

    #@51
    if-eqz v29, :cond_2

    #@53
    .line 9026
    or-int/lit8 v21, v21, 0x2

    #@55
    .line 9030
    :cond_2
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@59
    move-object/from16 v29, v0

    #@5b
    invoke-virtual/range {v29 .. v29}, Landroid/text/TextPaint;->getFlags()I

    #@5e
    move-result v17

    #@5f
    .line 9031
    .local v17, "paintFlags":I
    and-int/lit8 v29, v17, 0x20

    #@61
    if-eqz v29, :cond_3

    #@63
    .line 9032
    or-int/lit8 v21, v21, 0x1

    #@65
    .line 9034
    :cond_3
    and-int/lit8 v29, v17, 0x8

    #@67
    if-eqz v29, :cond_4

    #@69
    .line 9035
    or-int/lit8 v21, v21, 0x4

    #@6b
    .line 9037
    :cond_4
    and-int/lit8 v29, v17, 0x10

    #@6d
    if-eqz v29, :cond_5

    #@6f
    .line 9038
    or-int/lit8 v21, v21, 0x8

    #@71
    .line 9043
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    #@74
    move-result v29

    #@75
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    #@78
    move-result v30

    #@79
    .line 9044
    const/16 v31, 0x1

    #@7b
    .line 9043
    move-object/from16 v0, p1

    #@7d
    move/from16 v1, v29

    #@7f
    move/from16 v2, v30

    #@81
    move/from16 v3, v31

    #@83
    move/from16 v4, v21

    #@85
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    #@88
    .line 9046
    .end local v13    # "layout":Landroid/text/Layout;
    .end local v15    # "lineCount":I
    .end local v17    # "paintFlags":I
    .end local v21    # "style":I
    .end local v26    # "typefaceStyle":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    #@8b
    move-result-object v29

    #@8c
    move-object/from16 v0, p1

    #@8e
    move-object/from16 v1, v29

    #@90
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    #@93
    .line 8940
    return-void

    #@94
    .line 8942
    .end local v12    # "isPassword":Z
    :cond_7
    const/4 v12, 0x1

    #@95
    goto/16 :goto_0

    #@97
    .line 8956
    .restart local v12    # "isPassword":Z
    .restart local v13    # "layout":Landroid/text/Layout;
    .restart local v15    # "lineCount":I
    :cond_8
    const/16 v29, 0x2

    #@99
    move/from16 v0, v29

    #@9b
    new-array v0, v0, [I

    #@9d
    move-object/from16 v23, v0

    #@9f
    .line 8957
    .local v23, "tmpCords":[I
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, v23

    #@a3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    #@a6
    .line 8958
    const/16 v29, 0x1

    #@a8
    aget v25, v23, v29

    #@aa
    .line 8959
    .local v25, "topWindowLocation":I
    move-object/from16 v18, p0

    #@ac
    .line 8960
    .local v18, "root":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    #@af
    move-result-object v27

    #@b0
    .line 8961
    .local v27, "viewParent":Landroid/view/ViewParent;
    :goto_2
    move-object/from16 v0, v27

    #@b2
    instance-of v0, v0, Landroid/view/View;

    #@b4
    move/from16 v29, v0

    #@b6
    if-eqz v29, :cond_9

    #@b8
    move-object/from16 v18, v27

    #@ba
    .line 8962
    check-cast v18, Landroid/view/View;

    #@bc
    .line 8963
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@bf
    move-result-object v27

    #@c0
    goto :goto_2

    #@c1
    .line 8965
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    #@c4
    move-result v28

    #@c5
    .line 8968
    .local v28, "windowHeight":I
    if-ltz v25, :cond_10

    #@c7
    .line 8970
    const/16 v29, 0x0

    #@c9
    move-object/from16 v0, p0

    #@cb
    move/from16 v1, v29

    #@cd
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    #@d0
    move-result v24

    #@d1
    .line 8971
    .local v24, "topLine":I
    add-int/lit8 v29, v28, -0x1

    #@d3
    move/from16 v0, v29

    #@d5
    int-to-float v0, v0

    #@d6
    move/from16 v29, v0

    #@d8
    move-object/from16 v0, p0

    #@da
    move/from16 v1, v29

    #@dc
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    #@df
    move-result v6

    #@e0
    .line 8980
    .local v6, "bottomLine":I
    :goto_3
    sub-int v29, v6, v24

    #@e2
    div-int/lit8 v29, v29, 0x2

    #@e4
    sub-int v10, v24, v29

    #@e6
    .line 8981
    .local v10, "expandedTopLine":I
    if-gez v10, :cond_a

    #@e8
    .line 8982
    const/4 v10, 0x0

    #@e9
    .line 8984
    :cond_a
    sub-int v29, v6, v24

    #@eb
    div-int/lit8 v29, v29, 0x2

    #@ed
    add-int v8, v6, v29

    #@ef
    .line 8985
    .local v8, "expandedBottomLine":I
    if-lt v8, v15, :cond_b

    #@f1
    .line 8986
    add-int/lit8 v8, v15, -0x1

    #@f3
    .line 8989
    :cond_b
    invoke-virtual {v13, v10}, Landroid/text/Layout;->getLineStart(I)I

    #@f6
    move-result v9

    #@f7
    .line 8990
    .local v9, "expandedTopChar":I
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getLineEnd(I)I

    #@fa
    move-result v7

    #@fb
    .line 8993
    .local v7, "expandedBottomChar":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@fe
    move-result v20

    #@ff
    .line 8994
    .local v20, "selStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@102
    move-result v19

    #@103
    .line 8995
    .local v19, "selEnd":I
    move/from16 v0, v20

    #@105
    move/from16 v1, v19

    #@107
    if-ge v0, v1, :cond_d

    #@109
    .line 8996
    move/from16 v0, v20

    #@10b
    if-ge v0, v9, :cond_c

    #@10d
    .line 8997
    move/from16 v9, v20

    #@10f
    .line 8999
    :cond_c
    move/from16 v0, v19

    #@111
    if-le v0, v7, :cond_d

    #@113
    .line 9000
    move/from16 v7, v19

    #@115
    .line 9004
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@118
    move-result-object v22

    #@119
    .line 9005
    .local v22, "text":Ljava/lang/CharSequence;
    if-gtz v9, :cond_e

    #@11b
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    #@11e
    move-result v29

    #@11f
    move/from16 v0, v29

    #@121
    if-ge v7, v0, :cond_f

    #@123
    .line 9006
    :cond_e
    move-object/from16 v0, v22

    #@125
    invoke-interface {v0, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@128
    move-result-object v22

    #@129
    .line 9008
    :cond_f
    sub-int v29, v20, v9

    #@12b
    sub-int v30, v19, v9

    #@12d
    move-object/from16 v0, p1

    #@12f
    move-object/from16 v1, v22

    #@131
    move/from16 v2, v29

    #@133
    move/from16 v3, v30

    #@135
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    #@138
    .line 9009
    sub-int v29, v6, v24

    #@13a
    add-int/lit8 v29, v29, 0x1

    #@13c
    move/from16 v0, v29

    #@13e
    new-array v0, v0, [I

    #@140
    move-object/from16 v16, v0

    #@142
    .line 9010
    .local v16, "lineOffsets":[I
    sub-int v29, v6, v24

    #@144
    add-int/lit8 v29, v29, 0x1

    #@146
    move/from16 v0, v29

    #@148
    new-array v14, v0, [I

    #@14a
    .line 9011
    .local v14, "lineBaselines":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getBaselineOffset()I

    #@14d
    move-result v5

    #@14e
    .line 9012
    .local v5, "baselineOffset":I
    move/from16 v11, v24

    #@150
    .local v11, "i":I
    :goto_4
    if-gt v11, v6, :cond_11

    #@152
    .line 9013
    sub-int v29, v11, v24

    #@154
    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineStart(I)I

    #@157
    move-result v30

    #@158
    aput v30, v16, v29

    #@15a
    .line 9014
    sub-int v29, v11, v24

    #@15c
    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    #@15f
    move-result v30

    #@160
    add-int v30, v30, v5

    #@162
    aput v30, v14, v29

    #@164
    .line 9012
    add-int/lit8 v11, v11, 0x1

    #@166
    goto :goto_4

    #@167
    .line 8975
    .end local v5    # "baselineOffset":I
    .end local v6    # "bottomLine":I
    .end local v7    # "expandedBottomChar":I
    .end local v8    # "expandedBottomLine":I
    .end local v9    # "expandedTopChar":I
    .end local v10    # "expandedTopLine":I
    .end local v11    # "i":I
    .end local v14    # "lineBaselines":[I
    .end local v16    # "lineOffsets":[I
    .end local v19    # "selEnd":I
    .end local v20    # "selStart":I
    .end local v22    # "text":Ljava/lang/CharSequence;
    .end local v24    # "topLine":I
    :cond_10
    move/from16 v0, v25

    #@169
    neg-int v0, v0

    #@16a
    move/from16 v29, v0

    #@16c
    move/from16 v0, v29

    #@16e
    int-to-float v0, v0

    #@16f
    move/from16 v29, v0

    #@171
    move-object/from16 v0, p0

    #@173
    move/from16 v1, v29

    #@175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    #@178
    move-result v24

    #@179
    .line 8976
    .restart local v24    # "topLine":I
    add-int/lit8 v29, v28, -0x1

    #@17b
    sub-int v29, v29, v25

    #@17d
    move/from16 v0, v29

    #@17f
    int-to-float v0, v0

    #@180
    move/from16 v29, v0

    #@182
    move-object/from16 v0, p0

    #@184
    move/from16 v1, v29

    #@186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    #@189
    move-result v6

    #@18a
    .restart local v6    # "bottomLine":I
    goto/16 :goto_3

    #@18c
    .line 9016
    .restart local v5    # "baselineOffset":I
    .restart local v7    # "expandedBottomChar":I
    .restart local v8    # "expandedBottomLine":I
    .restart local v9    # "expandedTopChar":I
    .restart local v10    # "expandedTopLine":I
    .restart local v11    # "i":I
    .restart local v14    # "lineBaselines":[I
    .restart local v16    # "lineOffsets":[I
    .restart local v19    # "selEnd":I
    .restart local v20    # "selStart":I
    .restart local v22    # "text":Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p1

    #@18e
    move-object/from16 v1, v16

    #@190
    invoke-virtual {v0, v1, v14}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    #@193
    goto/16 :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 9828
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 9829
    return-void

    #@5
    .line 9831
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    #@7
    .line 9834
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 9835
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 9836
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@15
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@17
    const/4 v1, 0x0

    #@18
    aget-object v0, v0, v1

    #@1a
    invoke-direct {p0, v0}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 9837
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@1f
    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@21
    const/4 v1, 0x2

    #@22
    aget-object v0, v0, v1

    #@24
    invoke-direct {p0, v0}, Landroid/widget/TextView;->prepareDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    #@27
    .line 9838
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    #@2a
    .line 9826
    :cond_1
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    #@0
    .prologue
    .line 6018
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v4, v4, Landroid/text/Spannable;

    #@4
    if-eqz v4, :cond_0

    #@6
    iget-boolean v4, p0, Landroid/widget/TextView;->mLinksClickable:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 6019
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    #@d
    move-result v2

    #@e
    .line 6020
    .local v2, "x":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    #@11
    move-result v3

    #@12
    .line 6021
    .local v3, "y":F
    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@15
    move-result v1

    #@16
    .line 6022
    .local v1, "offset":I
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@18
    check-cast v4, Landroid/text/Spannable;

    #@1a
    .line 6023
    const-class v5, Landroid/text/style/ClickableSpan;

    #@1c
    .line 6022
    invoke-interface {v4, v1, v1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, [Landroid/text/style/ClickableSpan;

    #@22
    .line 6024
    .local v0, "clickables":[Landroid/text/style/ClickableSpan;
    array-length v4, v0

    #@23
    if-lez v4, :cond_0

    #@25
    .line 6025
    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@27
    const/16 v5, 0x3ea

    #@29
    invoke-static {v4, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    #@2c
    move-result-object v4

    #@2d
    return-object v4

    #@2e
    .line 6028
    .end local v0    # "clickables":[Landroid/text/style/ClickableSpan;
    .end local v1    # "offset":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@31
    move-result v4

    #@32
    if-nez v4, :cond_1

    #@34
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_2

    #@3a
    .line 6029
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@3c
    const/16 v5, 0x3f0

    #@3e
    invoke-static {v4, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    #@41
    move-result-object v4

    #@42
    return-object v4

    #@43
    .line 6031
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    #@46
    move-result-object v4

    #@47
    return-object v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 4193
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 4194
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    .line 4195
    return-void

    #@8
    :cond_0
    move-object v3, p1

    #@9
    .line 4198
    check-cast v3, Landroid/widget/TextView$SavedState;

    #@b
    .line 4199
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@e
    move-result-object v4

    #@f
    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@12
    .line 4202
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 4203
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@18
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1b
    .line 4206
    :cond_1
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    #@1d
    if-ltz v4, :cond_4

    #@1f
    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    #@21
    if-ltz v4, :cond_4

    #@23
    .line 4207
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@25
    instance-of v4, v4, Landroid/text/Spannable;

    #@27
    if-eqz v4, :cond_4

    #@29
    .line 4208
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2b
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@2e
    move-result v1

    #@2f
    .line 4210
    .local v1, "len":I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    #@31
    if-gt v4, v1, :cond_2

    #@33
    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    #@35
    if-le v4, v1, :cond_7

    #@37
    .line 4211
    :cond_2
    const-string/jumbo v2, ""

    #@3a
    .line 4213
    .local v2, "restored":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@3c
    if-eqz v4, :cond_3

    #@3e
    .line 4214
    const-string/jumbo v2, "(restored) "

    #@41
    .line 4217
    :cond_3
    const-string/jumbo v4, "TextView"

    #@44
    new-instance v5, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v6, "Saved cursor position "

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    .line 4218
    const-string/jumbo v6, "/"

    #@59
    .line 4217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 4218
    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    #@5f
    .line 4217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    .line 4218
    const-string/jumbo v6, " out of range for "

    #@66
    .line 4217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    .line 4219
    const-string/jumbo v6, "text "

    #@71
    .line 4217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    .line 4219
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@77
    .line 4217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 4231
    .end local v1    # "len":I
    .end local v2    # "restored":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    #@84
    if-eqz v4, :cond_5

    #@86
    .line 4232
    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    #@88
    .line 4234
    .local v0, "error":Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    #@8a
    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@8d
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    #@90
    .line 4243
    .end local v0    # "error":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    #@92
    if-eqz v4, :cond_6

    #@94
    .line 4244
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@97
    .line 4245
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@99
    iget-object v5, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    #@9b
    invoke-virtual {v4, v5}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    #@9e
    .line 4192
    :cond_6
    return-void

    #@9f
    .line 4221
    .restart local v1    # "len":I
    :cond_7
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@a1
    check-cast v4, Landroid/text/Spannable;

    #@a3
    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    #@a5
    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    #@a7
    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@aa
    .line 4223
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    #@ac
    if-eqz v4, :cond_4

    #@ae
    .line 4224
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@b1
    .line 4225
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b3
    const/4 v5, 0x1

    #@b4
    iput-boolean v5, v4, Landroid/widget/Editor;->mFrozenWithFocus:Z

    #@b6
    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 9778
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    #@3
    .line 9780
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    #@6
    move-result-object v0

    #@7
    .line 9781
    .local v0, "newTextDir":Landroid/text/TextDirectionHeuristic;
    iget-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@9
    if-eq v1, v0, :cond_0

    #@b
    .line 9782
    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@d
    .line 9783
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 9784
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    #@14
    .line 9777
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    #@0
    .prologue
    .line 4123
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v6

    #@4
    .line 4126
    .local v6, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getFreezesText()Z

    #@7
    move-result v1

    #@8
    .line 4127
    .local v1, "freezesText":Z
    const/4 v2, 0x0

    #@9
    .line 4128
    .local v2, "hasSelection":Z
    const/4 v5, -0x1

    #@a
    .line 4129
    .local v5, "start":I
    const/4 v0, -0x1

    #@b
    .line 4131
    .local v0, "end":I
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@d
    if-eqz v7, :cond_1

    #@f
    .line 4132
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@12
    move-result v5

    #@13
    .line 4133
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@16
    move-result v0

    #@17
    .line 4134
    if-gez v5, :cond_0

    #@19
    if-ltz v0, :cond_1

    #@1b
    .line 4136
    :cond_0
    const/4 v2, 0x1

    #@1c
    .line 4140
    :cond_1
    if-nez v1, :cond_2

    #@1e
    if-eqz v2, :cond_9

    #@20
    .line 4141
    :cond_2
    new-instance v4, Landroid/widget/TextView$SavedState;

    #@22
    invoke-direct {v4, v6}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@25
    .line 4143
    .local v4, "ss":Landroid/widget/TextView$SavedState;
    if-eqz v1, :cond_4

    #@27
    .line 4144
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@29
    instance-of v7, v7, Landroid/text/Spanned;

    #@2b
    if-eqz v7, :cond_8

    #@2d
    .line 4145
    new-instance v3, Landroid/text/SpannableStringBuilder;

    #@2f
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@31
    invoke-direct {v3, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@34
    .line 4147
    .local v3, "sp":Landroid/text/Spannable;
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@36
    if-eqz v7, :cond_3

    #@38
    .line 4148
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    #@3b
    .line 4149
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3d
    iget-object v7, v7, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@3f
    invoke-interface {v3, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@42
    .line 4152
    :cond_3
    iput-object v3, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@44
    .line 4158
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    #@46
    .line 4160
    iput v5, v4, Landroid/widget/TextView$SavedState;->selStart:I

    #@48
    .line 4161
    iput v0, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    #@4a
    .line 4164
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@4d
    move-result v7

    #@4e
    if-eqz v7, :cond_6

    #@50
    if-ltz v5, :cond_6

    #@52
    if-ltz v0, :cond_6

    #@54
    .line 4165
    const/4 v7, 0x1

    #@55
    iput-boolean v7, v4, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    #@57
    .line 4168
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    #@5a
    move-result-object v7

    #@5b
    iput-object v7, v4, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    #@5d
    .line 4170
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5f
    if-eqz v7, :cond_7

    #@61
    .line 4171
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@63
    invoke-virtual {v7}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    #@66
    move-result-object v7

    #@67
    iput-object v7, v4, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    #@69
    .line 4173
    :cond_7
    return-object v4

    #@6a
    .line 4154
    :cond_8
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@6c
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6f
    move-result-object v7

    #@70
    iput-object v7, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@72
    goto :goto_0

    #@73
    .line 4176
    .end local v4    # "ss":Landroid/widget/TextView$SavedState;
    :cond_9
    return-object v6
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    #@0
    .prologue
    .line 5443
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    #@3
    .line 5444
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    #@c
    .line 5442
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    #@0
    .prologue
    .line 9434
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    #@3
    .line 9435
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 9436
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    #@c
    .line 9433
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    #@0
    .prologue
    .line 8097
    const/16 v0, 0x2000

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    #@5
    .line 8096
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    #@0
    .prologue
    .line 8085
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 8
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x1

    #@3
    .line 9344
    const/4 v1, 0x0

    #@4
    .line 9345
    .local v1, "min":I
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v0

    #@a
    .line 9347
    .local v0, "max":I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 9348
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@13
    move-result v3

    #@14
    .line 9349
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@17
    move-result v2

    #@18
    .line 9351
    .local v2, "selEnd":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v4

    #@1c
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v1

    #@20
    .line 9352
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v4

    #@24
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    #@27
    move-result v0

    #@28
    .line 9355
    .end local v2    # "selEnd":I
    .end local v3    # "selStart":I
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@2b
    .line 9400
    return v7

    #@2c
    .line 9357
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    #@2f
    .line 9358
    return v5

    #@30
    .line 9361
    :sswitch_1
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@32
    if-eqz v4, :cond_1

    #@34
    .line 9362
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@36
    invoke-virtual {v4}, Landroid/widget/Editor;->undo()V

    #@39
    .line 9364
    :cond_1
    return v5

    #@3a
    .line 9367
    :sswitch_2
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3c
    if-eqz v4, :cond_2

    #@3e
    .line 9368
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@40
    invoke-virtual {v4}, Landroid/widget/Editor;->redo()V

    #@43
    .line 9370
    :cond_2
    return v5

    #@44
    .line 9373
    :sswitch_3
    invoke-direct {p0, v1, v0, v5}, Landroid/widget/TextView;->paste(IIZ)V

    #@47
    .line 9374
    return v5

    #@48
    .line 9377
    :sswitch_4
    invoke-direct {p0, v1, v0, v7}, Landroid/widget/TextView;->paste(IIZ)V

    #@4b
    .line 9378
    return v5

    #@4c
    .line 9381
    :sswitch_5
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    #@4f
    move-result-object v4

    #@50
    invoke-static {v6, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@53
    move-result-object v4

    #@54
    invoke-direct {p0, v4}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    #@57
    .line 9382
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    #@5a
    .line 9383
    return v5

    #@5b
    .line 9386
    :sswitch_6
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    #@5e
    move-result-object v4

    #@5f
    invoke-static {v6, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@62
    move-result-object v4

    #@63
    invoke-direct {p0, v4}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    #@66
    .line 9387
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@69
    .line 9388
    return v5

    #@6a
    .line 9391
    :sswitch_7
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6c
    if-eqz v4, :cond_3

    #@6e
    .line 9392
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@70
    invoke-virtual {v4}, Landroid/widget/Editor;->replace()V

    #@73
    .line 9394
    :cond_3
    return v5

    #@74
    .line 9397
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    #@77
    .line 9398
    return v5

    #@78
    .line 9355
    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_6
        0x1020022 -> :sswitch_3
        0x1020031 -> :sswitch_4
        0x1020032 -> :sswitch_1
        0x1020033 -> :sswitch_2
        0x1020034 -> :sswitch_7
        0x1020035 -> :sswitch_8
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 8450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@5
    move-result v0

    #@6
    .line 8451
    .local v0, "action":I
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    if-eqz v7, :cond_0

    #@a
    .line 8452
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    #@f
    .line 8454
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@11
    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@13
    if-eqz v7, :cond_0

    #@15
    .line 8455
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@17
    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@19
    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    #@1c
    move-result v7

    #@1d
    .line 8454
    if-eqz v7, :cond_0

    #@1f
    .line 8456
    return v12

    #@20
    .line 8460
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@23
    move-result v4

    #@24
    .line 8467
    .local v4, "superResult":Z
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@26
    if-eqz v7, :cond_2

    #@28
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2a
    iget-boolean v7, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@2c
    if-eqz v7, :cond_2

    #@2e
    if-ne v0, v12, :cond_2

    #@30
    .line 8468
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@32
    iput-boolean v8, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@34
    .line 8470
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@36
    iget-boolean v7, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    #@38
    if-eqz v7, :cond_1

    #@3a
    .line 8471
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3c
    invoke-virtual {v7}, Landroid/widget/Editor;->startInsertionActionMode()V

    #@3f
    .line 8472
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@41
    iput-boolean v8, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    #@43
    .line 8474
    :cond_1
    return v4

    #@44
    .line 8477
    :cond_2
    if-ne v0, v12, :cond_3

    #@46
    .line 8478
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@48
    if-eqz v7, :cond_a

    #@4a
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4c
    iget-boolean v7, v7, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    #@4e
    if-eqz v7, :cond_a

    #@50
    .line 8477
    :cond_3
    const/4 v6, 0x0

    #@51
    .line 8480
    :goto_0
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@53
    if-nez v7, :cond_4

    #@55
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_c

    #@5b
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@5e
    move-result v7

    #@5f
    if-eqz v7, :cond_c

    #@61
    .line 8481
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@63
    instance-of v7, v7, Landroid/text/Spannable;

    #@65
    .line 8480
    if-eqz v7, :cond_c

    #@67
    .line 8481
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@69
    if-eqz v7, :cond_c

    #@6b
    .line 8482
    const/4 v1, 0x0

    #@6c
    .line 8484
    .local v1, "handled":Z
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@6e
    if-eqz v7, :cond_5

    #@70
    .line 8485
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@72
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@74
    check-cast v7, Landroid/text/Spannable;

    #@76
    invoke-interface {v9, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    #@79
    move-result v1

    #@7a
    .line 8488
    .end local v1    # "handled":Z
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@7d
    move-result v5

    #@7e
    .line 8489
    .local v5, "textIsSelectable":Z
    if-eqz v6, :cond_6

    #@80
    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    #@82
    if-eqz v7, :cond_6

    #@84
    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@86
    if-eqz v7, :cond_6

    #@88
    if-eqz v5, :cond_6

    #@8a
    .line 8493
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8c
    check-cast v7, Landroid/text/Spannable;

    #@8e
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@91
    move-result v9

    #@92
    .line 8494
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@95
    move-result v10

    #@96
    const-class v11, Landroid/text/style/ClickableSpan;

    #@98
    .line 8493
    invoke-interface {v7, v9, v10, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@9b
    move-result-object v3

    #@9c
    check-cast v3, [Landroid/text/style/ClickableSpan;

    #@9e
    .line 8496
    .local v3, "links":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    #@9f
    if-lez v7, :cond_6

    #@a1
    .line 8497
    aget-object v7, v3, v8

    #@a3
    invoke-virtual {v7, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    #@a6
    .line 8498
    const/4 v1, 0x1

    #@a7
    .line 8502
    .end local v3    # "links":[Landroid/text/style/ClickableSpan;
    :cond_6
    if-eqz v6, :cond_9

    #@a9
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    #@ac
    move-result v7

    #@ad
    if-nez v7, :cond_7

    #@af
    if-eqz v5, :cond_9

    #@b1
    .line 8504
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@b4
    move-result-object v2

    #@b5
    .line 8505
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    #@b8
    .line 8506
    if-nez v5, :cond_8

    #@ba
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@bc
    iget-boolean v7, v7, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@be
    if-eqz v7, :cond_8

    #@c0
    .line 8507
    if-eqz v2, :cond_b

    #@c2
    invoke-virtual {v2, p0, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@c5
    move-result v7

    #@c6
    :goto_1
    or-int/2addr v1, v7

    #@c7
    .line 8511
    :cond_8
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c9
    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    #@cc
    .line 8513
    const/4 v1, 0x1

    #@cd
    .line 8516
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    if-eqz v1, :cond_c

    #@cf
    .line 8517
    return v12

    #@d0
    .line 8478
    .end local v5    # "textIsSelectable":Z
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@d3
    move-result v6

    #@d4
    .local v6, "touchIsFinished":Z
    goto/16 :goto_0

    #@d6
    .end local v6    # "touchIsFinished":Z
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v5    # "textIsSelectable":Z
    :cond_b
    move v7, v8

    #@d7
    .line 8507
    goto :goto_1

    #@d8
    .line 8521
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v5    # "textIsSelectable":Z
    :cond_c
    return v4
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 8589
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@6
    instance-of v0, v0, Landroid/text/Spannable;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 8590
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@10
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@12
    check-cast v0, Landroid/text/Spannable;

    #@14
    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 8591
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 8595
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 8415
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    .line 8416
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    if-eqz p2, :cond_0

    #@9
    .line 8417
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b
    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@e
    .line 8418
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@11
    .line 8414
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 8406
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    #@3
    .line 8408
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    #@c
    .line 8410
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    #@f
    .line 8405
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 9142
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 9143
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@c
    invoke-virtual {v4, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    #@f
    move-result v4

    #@10
    .line 9142
    if-eqz v4, :cond_0

    #@12
    .line 9144
    return v7

    #@13
    .line 9146
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@16
    .line 9224
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@19
    move-result v4

    #@1a
    return v4

    #@1b
    .line 9148
    :sswitch_0
    invoke-direct {p0, p2}, Landroid/widget/TextView;->performAccessibilityActionClick(Landroid/os/Bundle;)Z

    #@1e
    move-result v4

    #@1f
    return v4

    #@20
    .line 9151
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_1

    #@2c
    .line 9152
    const v4, 0x1020021

    #@2f
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 9153
    return v7

    #@36
    .line 9156
    :cond_1
    return v6

    #@37
    .line 9158
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_2

    #@3d
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_2

    #@43
    .line 9159
    const v4, 0x1020022

    #@46
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_2

    #@4c
    .line 9160
    return v7

    #@4d
    .line 9163
    :cond_2
    return v6

    #@4e
    .line 9165
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_3

    #@54
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_3

    #@5a
    .line 9166
    const v4, 0x1020020

    #@5d
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_3

    #@63
    .line 9167
    return v7

    #@64
    .line 9170
    :cond_3
    return v6

    #@65
    .line 9172
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    #@68
    .line 9173
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    #@6b
    move-result-object v2

    #@6c
    .line 9174
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_4

    #@6e
    .line 9175
    return v6

    #@6f
    .line 9177
    :cond_4
    if-eqz p2, :cond_6

    #@71
    .line 9178
    const-string/jumbo v4, "ACTION_ARGUMENT_SELECTION_START_INT"

    #@74
    .line 9177
    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@77
    move-result v1

    #@78
    .line 9179
    .local v1, "start":I
    :goto_0
    if-eqz p2, :cond_7

    #@7a
    .line 9180
    const-string/jumbo v4, "ACTION_ARGUMENT_SELECTION_END_INT"

    #@7d
    .line 9179
    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@80
    move-result v0

    #@81
    .line 9181
    .local v0, "end":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@84
    move-result v4

    #@85
    if-ne v4, v1, :cond_5

    #@87
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@8a
    move-result v4

    #@8b
    if-eq v4, v0, :cond_a

    #@8d
    .line 9183
    :cond_5
    if-ne v1, v0, :cond_8

    #@8f
    if-ne v0, v5, :cond_8

    #@91
    .line 9184
    check-cast v2, Landroid/text/Spannable;

    #@93
    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    #@96
    .line 9185
    return v7

    #@97
    .line 9178
    .end local v0    # "end":I
    .end local v1    # "start":I
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_6
    const/4 v1, -0x1

    #@98
    .restart local v1    # "start":I
    goto :goto_0

    #@99
    .line 9180
    :cond_7
    const/4 v0, -0x1

    #@9a
    .restart local v0    # "end":I
    goto :goto_1

    #@9b
    .line 9187
    :cond_8
    if-ltz v1, :cond_a

    #@9d
    if-gt v1, v0, :cond_a

    #@9f
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@a2
    move-result v4

    #@a3
    if-gt v0, v4, :cond_a

    #@a5
    .line 9188
    check-cast v2, Landroid/text/Spannable;

    #@a7
    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@aa
    .line 9190
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@ac
    if-eqz v4, :cond_9

    #@ae
    .line 9191
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b0
    invoke-virtual {v4}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@b3
    .line 9193
    :cond_9
    return v7

    #@b4
    .line 9196
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_a
    return v6

    #@b5
    .line 9199
    .end local v0    # "end":I
    .end local v1    # "start":I
    .end local v2    # "text":Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    #@b8
    .line 9200
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@bb
    move-result v4

    #@bc
    return v4

    #@bd
    .line 9203
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@c0
    move-result v4

    #@c1
    if-eqz v4, :cond_b

    #@c3
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    #@c6
    move-result v4

    #@c7
    if-eqz v4, :cond_b

    #@c9
    .line 9204
    const v4, 0x1020035

    #@cc
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@cf
    move-result v4

    #@d0
    if-eqz v4, :cond_b

    #@d2
    .line 9205
    return v7

    #@d3
    .line 9208
    :cond_b
    return v6

    #@d4
    .line 9210
    :sswitch_7
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@d7
    move-result v4

    #@d8
    if-eqz v4, :cond_c

    #@da
    iget-object v4, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@dc
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@de
    if-eq v4, v5, :cond_d

    #@e0
    .line 9211
    :cond_c
    return v6

    #@e1
    .line 9213
    :cond_d
    if-eqz p2, :cond_e

    #@e3
    .line 9214
    const-string/jumbo v4, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    #@e6
    .line 9213
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@e9
    move-result-object v2

    #@ea
    .line 9215
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_e
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@ed
    .line 9216
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@ef
    if-eqz v4, :cond_f

    #@f1
    .line 9217
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@f3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@f6
    move-result v3

    #@f7
    .line 9218
    .local v3, "updatedTextLength":I
    if-lez v3, :cond_f

    #@f9
    .line 9219
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@fb
    check-cast v4, Landroid/text/Spannable;

    #@fd
    invoke-static {v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@100
    .line 9222
    .end local v3    # "updatedTextLength":I
    :cond_f
    return v7

    #@101
    .line 9146
    nop

    #@102
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x100 -> :sswitch_5
        0x200 -> :sswitch_5
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_4
        0x200000 -> :sswitch_7
        0x10000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 9409
    const/4 v0, 0x0

    #@3
    .line 9411
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 9412
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    iput-boolean v3, v1, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    #@b
    .line 9415
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 9416
    const/4 v0, 0x1

    #@12
    .line 9419
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 9420
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@18
    invoke-virtual {v1, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    #@1b
    move-result v1

    #@1c
    or-int/2addr v0, v1

    #@1d
    .line 9421
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1f
    iput-boolean v2, v1, Landroid/widget/Editor;->mIsBeingLongClicked:Z

    #@21
    .line 9424
    .end local v0    # "handled":Z
    :cond_2
    if-eqz v0, :cond_3

    #@23
    .line 9425
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    #@26
    .line 9426
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@28
    if-eqz v1, :cond_3

    #@2a
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2c
    iput-boolean v3, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@2e
    .line 9429
    :cond_3
    return v0
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 8162
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v6, v6, Landroid/text/Editable;

    #@4
    if-nez v6, :cond_0

    #@6
    return-void

    #@7
    .line 8163
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@9
    check-cast v5, Landroid/text/Editable;

    #@b
    .line 8165
    .local v5, "text":Landroid/text/Editable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    #@d
    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, [Landroid/text/style/SuggestionSpan;

    #@13
    .line 8166
    .local v4, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v1, v4

    #@14
    .line 8167
    .local v1, "length":I
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@17
    .line 8168
    aget-object v6, v4, v0

    #@19
    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@1c
    move-result v3

    #@1d
    .line 8169
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    #@1f
    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@22
    move-result v2

    #@23
    .line 8170
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_1

    #@25
    if-ne v3, p1, :cond_2

    #@27
    .line 8171
    :cond_1
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_2

    #@2d
    .line 8172
    aget-object v6, v4, v0

    #@2f
    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@32
    .line 8167
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 8161
    .end local v2    # "spanEnd":I
    .end local v3    # "spanStart":I
    :cond_3
    return-void
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p1, "spannable"    # Landroid/text/Spannable;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4180
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    #@4
    move-result v3

    #@5
    .line 4181
    const-class v4, Landroid/text/style/SuggestionSpan;

    #@7
    .line 4180
    invoke-interface {p1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, [Landroid/text/style/SuggestionSpan;

    #@d
    .line 4182
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@f
    if-ge v1, v3, :cond_1

    #@11
    .line 4183
    aget-object v3, v2, v1

    #@13
    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@16
    move-result v0

    #@17
    .line 4184
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 4185
    and-int/lit8 v3, v0, 0x2

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 4186
    aget-object v3, v2, v1

    #@21
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@24
    .line 4182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 4179
    .end local v0    # "flags":I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4622
    instance-of v3, p1, Landroid/text/Spanned;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 4624
    instance-of v3, p1, Landroid/text/Spannable;

    #@6
    if-eqz v3, :cond_0

    #@8
    move-object v1, p1

    #@9
    .line 4625
    check-cast v1, Landroid/text/Spannable;

    #@b
    .line 4631
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v3

    #@f
    const-class v4, Landroid/text/style/SuggestionSpan;

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, [Landroid/text/style/SuggestionSpan;

    #@18
    .line 4632
    .local v2, "spans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_1
    array-length v3, v2

    #@1a
    if-ge v0, v3, :cond_1

    #@1c
    .line 4633
    aget-object v3, v2, v0

    #@1e
    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@21
    .line 4632
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_1

    #@24
    .line 4627
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    #@26
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@29
    .line 4628
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    #@2a
    goto :goto_0

    #@2b
    .line 4636
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    #@0
    .prologue
    .line 8123
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 8124
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    .line 8126
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@c
    .line 8127
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@11
    .line 8122
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 9641
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    check-cast v0, Landroid/text/Editable;

    #@4
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@b
    move-result v2

    #@c
    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@f
    .line 9640
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 9892
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    check-cast v0, Landroid/text/Editable;

    #@4
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@7
    .line 9891
    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    #@0
    .prologue
    .line 6337
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    const/4 v1, 0x0

    #@7
    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    #@9
    .line 6330
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    #@0
    .prologue
    .line 9866
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    #@3
    .line 9867
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    #@6
    .line 9865
    return-void
.end method

.method selectAllText()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 9635
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v0

    #@7
    .line 9636
    .local v0, "length":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@9
    check-cast v1, Landroid/text/Spannable;

    #@b
    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@e
    .line 9637
    if-lez v0, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :goto_0
    return v1

    #@12
    :cond_0
    move v1, v2

    #@13
    goto :goto_0
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 9266
    const v0, 0x8000

    #@3
    if-ne p1, v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 9267
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b
    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@d
    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    #@10
    .line 9273
    :cond_0
    const/16 v0, 0x1000

    #@12
    if-ne p1, v0, :cond_1

    #@14
    .line 9274
    return-void

    #@15
    .line 9276
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    #@18
    .line 9265
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    #@0
    .prologue
    .line 9309
    const/16 v1, 0x10

    #@2
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@5
    move-result-object v0

    #@6
    .line 9310
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    #@9
    .line 9311
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    #@c
    .line 9312
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    #@f
    .line 9313
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    #@12
    .line 9314
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    #@15
    .line 9307
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 8199
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 8200
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@6
    .line 8201
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 8202
    .local v0, "count":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@d
    .line 8203
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/text/TextWatcher;

    #@13
    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    #@16
    .line 8202
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 8206
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    #@1c
    .line 8198
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 8183
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 8184
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@6
    .line 8185
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 8186
    .local v0, "count":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@d
    .line 8187
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/text/TextWatcher;

    #@13
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@16
    .line 8186
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 8191
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1b
    if-eqz v3, :cond_1

    #@1d
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1f
    invoke-virtual {v3, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    #@22
    .line 8182
    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 9999
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    #@3
    move-result v1

    #@4
    if-ne v1, p1, :cond_0

    #@6
    .line 10000
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    #@9
    move-result v1

    #@a
    if-ne v1, p2, :cond_0

    #@c
    .line 10001
    return-void

    #@d
    .line 10003
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    #@10
    move-result-object v0

    #@11
    .line 10004
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v1

    #@15
    if-ltz v1, :cond_2

    #@17
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result v1

    #@1b
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@1e
    move-result v2

    #@1f
    if-gt v1, v2, :cond_2

    #@21
    .line 10005
    check-cast v0, Landroid/text/Spannable;

    #@23
    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@26
    .line 10012
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 10013
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2c
    invoke-virtual {v1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@2f
    .line 10014
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@31
    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    #@34
    .line 9998
    :cond_1
    return-void

    #@35
    .line 10007
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    check-cast v0, Landroid/text/Spannable;

    #@37
    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    #@3a
    goto :goto_0
.end method

.method public setAllCaps(Z)V
    .locals 2
    .param p1, "allCaps"    # Z

    #@0
    .prologue
    .line 7837
    if-eqz p1, :cond_0

    #@2
    .line 7838
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    #@4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@e
    .line 7836
    :goto_0
    return-void

    #@f
    .line 7840
    :cond_0
    const/4 v0, 0x0

    #@10
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@13
    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .param p1, "mask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3434
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@2
    .line 3433
    return-void
.end method

.method public setBreakStrategy(I)V
    .locals 1
    .param p1, "breakStrategy"    # I

    #@0
    .prologue
    .line 3160
    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    #@2
    .line 3161
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3162
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@9
    .line 3163
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3164
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3159
    :cond_0
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .param p1, "pad"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 2601
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 2602
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    #@4
    .line 2603
    if-eqz v0, :cond_0

    #@6
    .line 2604
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@8
    .line 2613
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 2614
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@e
    .line 2600
    return-void

    #@f
    .line 2607
    :cond_1
    if-nez v0, :cond_2

    #@11
    .line 2608
    new-instance v0, Landroid/widget/TextView$Drawables;

    #@13
    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@1a
    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@1c
    .line 2610
    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@1e
    goto :goto_0
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 2644
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2645
    new-instance v0, Landroid/widget/TextView$Drawables;

    #@6
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@f
    .line 2647
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@11
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    #@13
    .line 2648
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@15
    const/4 v1, 0x1

    #@16
    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    #@18
    .line 2650
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    #@1b
    .line 2643
    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 2674
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2675
    new-instance v0, Landroid/widget/TextView$Drawables;

    #@6
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@f
    .line 2677
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@11
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@13
    .line 2678
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@15
    const/4 v1, 0x1

    #@16
    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    #@18
    .line 2680
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    #@1b
    .line 2673
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    .line 2170
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7
    .line 2173
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    #@9
    .line 2174
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v7, :cond_0

    #@d
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@12
    .line 2175
    :cond_0
    iput-object v8, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@14
    .line 2176
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@16
    if-eqz v7, :cond_1

    #@18
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1d
    .line 2177
    :cond_1
    iput-object v8, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@1f
    .line 2178
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@21
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@23
    .line 2179
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@25
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@27
    .line 2182
    :cond_2
    if-nez p1, :cond_3

    #@29
    if-eqz p2, :cond_6

    #@2b
    :cond_3
    move v2, v5

    #@2c
    .line 2183
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_a

    #@2e
    .line 2185
    if-eqz v1, :cond_4

    #@30
    .line 2186
    invoke-virtual {v1}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    #@33
    move-result v5

    #@34
    if-nez v5, :cond_7

    #@36
    .line 2187
    iput-object v8, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@38
    .line 2277
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    #@3a
    .line 2278
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    #@3c
    .line 2279
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    #@3e
    .line 2282
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@41
    .line 2283
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@44
    .line 2284
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    #@47
    .line 2285
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@4a
    .line 2286
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@4d
    .line 2169
    return-void

    #@4e
    .line 2182
    .end local v2    # "drawables":Z
    :cond_6
    if-nez p3, :cond_3

    #@50
    if-nez p4, :cond_3

    #@52
    move v2, v6

    #@53
    goto :goto_0

    #@54
    .line 2191
    .restart local v2    # "drawables":Z
    :cond_7
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@56
    array-length v5, v5

    #@57
    add-int/lit8 v3, v5, -0x1

    #@59
    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    #@5b
    .line 2192
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@5d
    aget-object v5, v5, v3

    #@5f
    if-eqz v5, :cond_8

    #@61
    .line 2193
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@63
    aget-object v5, v5, v3

    #@65
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@68
    .line 2195
    :cond_8
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@6a
    aput-object v8, v5, v3

    #@6c
    .line 2191
    add-int/lit8 v3, v3, -0x1

    #@6e
    goto :goto_2

    #@6f
    .line 2197
    :cond_9
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@71
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@73
    .line 2198
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@75
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@77
    .line 2199
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@79
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@7b
    .line 2200
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@7d
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@7f
    goto :goto_1

    #@80
    .line 2204
    .end local v3    # "i":I
    :cond_a
    if-nez v1, :cond_b

    #@82
    .line 2205
    new-instance v1, Landroid/widget/TextView$Drawables;

    #@84
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@87
    move-result-object v7

    #@88
    invoke-direct {v1, v7}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@8b
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@8d
    .line 2208
    :cond_b
    iget-object v7, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@8f
    iput-boolean v6, v7, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@91
    .line 2210
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@93
    aget-object v7, v7, v6

    #@95
    if-eq v7, p1, :cond_c

    #@97
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@99
    aget-object v7, v7, v6

    #@9b
    if-eqz v7, :cond_c

    #@9d
    .line 2211
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@9f
    aget-object v7, v7, v6

    #@a1
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a4
    .line 2213
    :cond_c
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@a6
    aput-object p1, v7, v6

    #@a8
    .line 2215
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@aa
    aget-object v7, v7, v5

    #@ac
    if-eq v7, p2, :cond_d

    #@ae
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@b0
    aget-object v7, v7, v5

    #@b2
    if-eqz v7, :cond_d

    #@b4
    .line 2216
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@b6
    aget-object v7, v7, v5

    #@b8
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@bb
    .line 2218
    :cond_d
    iget-object v7, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@bd
    aput-object p2, v7, v5

    #@bf
    .line 2220
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@c1
    aget-object v5, v5, v9

    #@c3
    if-eq v5, p3, :cond_e

    #@c5
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@c7
    aget-object v5, v5, v9

    #@c9
    if-eqz v5, :cond_e

    #@cb
    .line 2221
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@cd
    aget-object v5, v5, v9

    #@cf
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@d2
    .line 2223
    :cond_e
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@d4
    aput-object p3, v5, v9

    #@d6
    .line 2225
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@d8
    aget-object v5, v5, v10

    #@da
    if-eq v5, p4, :cond_f

    #@dc
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@de
    aget-object v5, v5, v10

    #@e0
    if-eqz v5, :cond_f

    #@e2
    .line 2226
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@e4
    aget-object v5, v5, v10

    #@e6
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e9
    .line 2228
    :cond_f
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@eb
    aput-object p4, v5, v10

    #@ed
    .line 2230
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@ef
    .line 2233
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@f2
    move-result-object v4

    #@f3
    .line 2235
    .local v4, "state":[I
    if-eqz p1, :cond_10

    #@f5
    .line 2236
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@f8
    .line 2237
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@fb
    .line 2238
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@fe
    .line 2239
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@101
    move-result v5

    #@102
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@104
    .line 2240
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@107
    move-result v5

    #@108
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@10a
    .line 2245
    :goto_3
    if-eqz p3, :cond_11

    #@10c
    .line 2246
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@10f
    .line 2247
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@112
    .line 2248
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@115
    .line 2249
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@118
    move-result v5

    #@119
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@11b
    .line 2250
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@11e
    move-result v5

    #@11f
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@121
    .line 2255
    :goto_4
    if-eqz p2, :cond_12

    #@123
    .line 2256
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@126
    .line 2257
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@129
    .line 2258
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@12c
    .line 2259
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@12f
    move-result v5

    #@130
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@132
    .line 2260
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@135
    move-result v5

    #@136
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@138
    .line 2265
    :goto_5
    if-eqz p4, :cond_13

    #@13a
    .line 2266
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@13d
    .line 2267
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@140
    .line 2268
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@143
    .line 2269
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@146
    move-result v5

    #@147
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@149
    .line 2270
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@14c
    move-result v5

    #@14d
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@14f
    goto/16 :goto_1

    #@151
    .line 2242
    :cond_10
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@153
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@155
    goto :goto_3

    #@156
    .line 2252
    :cond_11
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@158
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@15a
    goto :goto_4

    #@15b
    .line 2262
    :cond_12
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@15d
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@15f
    goto :goto_5

    #@160
    .line 2272
    :cond_13
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@162
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@164
    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v7, 0x0

    #@5
    .line 2367
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7
    .line 2370
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    #@9
    .line 2371
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@b
    aget-object v6, v6, v5

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 2372
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@11
    aget-object v6, v6, v5

    #@13
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@16
    .line 2374
    :cond_0
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@18
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    #@1a
    aput-object v7, v6, v5

    #@1c
    .line 2375
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@1e
    aget-object v6, v6, v9

    #@20
    if-eqz v6, :cond_1

    #@22
    .line 2376
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@24
    aget-object v6, v6, v9

    #@26
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@29
    .line 2378
    :cond_1
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@2b
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    #@2d
    aput-object v7, v6, v9

    #@2f
    .line 2379
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@31
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@33
    .line 2380
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@35
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@37
    .line 2383
    :cond_2
    if-nez p1, :cond_3

    #@39
    if-eqz p2, :cond_5

    #@3b
    :cond_3
    move v2, v4

    #@3c
    .line 2386
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_c

    #@3e
    .line 2388
    if-eqz v1, :cond_4

    #@40
    .line 2389
    invoke-virtual {v1}, Landroid/widget/TextView$Drawables;->hasMetadata()Z

    #@43
    move-result v6

    #@44
    if-nez v6, :cond_7

    #@46
    .line 2390
    iput-object v7, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@48
    .line 2487
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@4b
    .line 2488
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@4e
    .line 2489
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@51
    .line 2490
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@54
    .line 2366
    return-void

    #@55
    .line 2384
    .end local v2    # "drawables":Z
    :cond_5
    if-nez p3, :cond_3

    #@57
    if-eqz p4, :cond_6

    #@59
    move v2, v4

    #@5a
    goto :goto_0

    #@5b
    :cond_6
    move v2, v5

    #@5c
    goto :goto_0

    #@5d
    .line 2394
    .restart local v2    # "drawables":Z
    :cond_7
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@5f
    if-eqz v6, :cond_8

    #@61
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@63
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@66
    .line 2395
    :cond_8
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@68
    .line 2396
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@6a
    aget-object v6, v6, v4

    #@6c
    if-eqz v6, :cond_9

    #@6e
    .line 2397
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@70
    aget-object v6, v6, v4

    #@72
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@75
    .line 2399
    :cond_9
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@77
    aput-object v7, v6, v4

    #@79
    .line 2400
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@7b
    if-eqz v4, :cond_a

    #@7d
    .line 2401
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@7f
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@82
    .line 2403
    :cond_a
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@84
    .line 2404
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@86
    aget-object v4, v4, v8

    #@88
    if-eqz v4, :cond_b

    #@8a
    .line 2405
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@8c
    aget-object v4, v4, v8

    #@8e
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@91
    .line 2407
    :cond_b
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@93
    aput-object v7, v4, v8

    #@95
    .line 2408
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@97
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@99
    .line 2409
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@9b
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@9d
    .line 2410
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@9f
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@a1
    .line 2411
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@a3
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@a5
    goto :goto_1

    #@a6
    .line 2415
    :cond_c
    if-nez v1, :cond_d

    #@a8
    .line 2416
    new-instance v1, Landroid/widget/TextView$Drawables;

    #@aa
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@ad
    move-result-object v6

    #@ae
    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@b1
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@b3
    .line 2419
    :cond_d
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@b5
    iput-boolean v4, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@b7
    .line 2421
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@b9
    if-eq v6, p1, :cond_e

    #@bb
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@bd
    if-eqz v6, :cond_e

    #@bf
    .line 2422
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@c1
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@c4
    .line 2424
    :cond_e
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@c6
    .line 2426
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@c8
    aget-object v6, v6, v4

    #@ca
    if-eq v6, p2, :cond_f

    #@cc
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@ce
    aget-object v6, v6, v4

    #@d0
    if-eqz v6, :cond_f

    #@d2
    .line 2427
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@d4
    aget-object v6, v6, v4

    #@d6
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@d9
    .line 2429
    :cond_f
    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@db
    aput-object p2, v6, v4

    #@dd
    .line 2431
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@df
    if-eq v4, p3, :cond_10

    #@e1
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@e3
    if-eqz v4, :cond_10

    #@e5
    .line 2432
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@e7
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@ea
    .line 2434
    :cond_10
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@ec
    .line 2436
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@ee
    aget-object v4, v4, v8

    #@f0
    if-eq v4, p4, :cond_11

    #@f2
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@f4
    aget-object v4, v4, v8

    #@f6
    if-eqz v4, :cond_11

    #@f8
    .line 2437
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@fa
    aget-object v4, v4, v8

    #@fc
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@ff
    .line 2439
    :cond_11
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@101
    aput-object p4, v4, v8

    #@103
    .line 2441
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@105
    .line 2444
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@108
    move-result-object v3

    #@109
    .line 2446
    .local v3, "state":[I
    if-eqz p1, :cond_12

    #@10b
    .line 2447
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@10e
    .line 2448
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@111
    .line 2449
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@114
    .line 2450
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@117
    move-result v4

    #@118
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@11a
    .line 2451
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@11d
    move-result v4

    #@11e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@120
    .line 2456
    :goto_2
    if-eqz p3, :cond_13

    #@122
    .line 2457
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@125
    .line 2458
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@128
    .line 2459
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@12b
    .line 2460
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@12e
    move-result v4

    #@12f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@131
    .line 2461
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@134
    move-result v4

    #@135
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@137
    .line 2466
    :goto_3
    if-eqz p2, :cond_14

    #@139
    .line 2467
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@13c
    .line 2468
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@13f
    .line 2469
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@142
    .line 2470
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@145
    move-result v4

    #@146
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@148
    .line 2471
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@14b
    move-result v4

    #@14c
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@14e
    .line 2476
    :goto_4
    if-eqz p4, :cond_15

    #@150
    .line 2477
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@153
    .line 2478
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@156
    .line 2479
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@159
    .line 2480
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@15c
    move-result v4

    #@15d
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@15f
    .line 2481
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@162
    move-result v4

    #@163
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@165
    goto/16 :goto_1

    #@167
    .line 2453
    :cond_12
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@169
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@16b
    goto :goto_2

    #@16c
    .line 2463
    :cond_13
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@16e
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@170
    goto :goto_3

    #@171
    .line 2473
    :cond_14
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@173
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@175
    goto :goto_4

    #@176
    .line 2483
    :cond_15
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@178
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@17a
    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2514
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 2516
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v2

    #@b
    move-object v4, v2

    #@c
    .line 2517
    :goto_0
    if-eqz p2, :cond_2

    #@e
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v2

    #@12
    move-object v3, v2

    #@13
    .line 2518
    :goto_1
    if-eqz p3, :cond_3

    #@15
    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v2

    #@19
    .line 2519
    :goto_2
    if-eqz p4, :cond_0

    #@1b
    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v1

    #@1f
    .line 2515
    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 2513
    return-void

    #@23
    :cond_1
    move-object v4, v1

    #@24
    .line 2516
    goto :goto_0

    #@25
    :cond_2
    move-object v3, v1

    #@26
    .line 2517
    goto :goto_1

    #@27
    :cond_3
    move-object v2, v1

    #@28
    .line 2518
    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2539
    if-eqz p1, :cond_0

    #@3
    .line 2540
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@e
    .line 2542
    :cond_0
    if-eqz p3, :cond_1

    #@10
    .line 2543
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 2545
    :cond_1
    if-eqz p2, :cond_2

    #@1d
    .line 2546
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@20
    move-result v0

    #@21
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@24
    move-result v1

    #@25
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@28
    .line 2548
    :cond_2
    if-eqz p4, :cond_3

    #@2a
    .line 2549
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@2d
    move-result v0

    #@2e
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@31
    move-result v1

    #@32
    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@35
    .line 2551
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@38
    .line 2537
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2310
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 2311
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v2

    #@b
    move-object v4, v2

    #@c
    .line 2312
    :goto_0
    if-eqz p2, :cond_2

    #@e
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v2

    #@12
    move-object v3, v2

    #@13
    .line 2313
    :goto_1
    if-eqz p3, :cond_3

    #@15
    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v2

    #@19
    .line 2314
    :goto_2
    if-eqz p4, :cond_0

    #@1b
    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v1

    #@1f
    .line 2311
    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 2309
    return-void

    #@23
    :cond_1
    move-object v4, v1

    #@24
    .line 2311
    goto :goto_0

    #@25
    :cond_2
    move-object v3, v1

    #@26
    .line 2312
    goto :goto_1

    #@27
    :cond_3
    move-object v2, v1

    #@28
    .line 2313
    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2335
    if-eqz p1, :cond_0

    #@3
    .line 2336
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@e
    .line 2338
    :cond_0
    if-eqz p3, :cond_1

    #@10
    .line 2339
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 2341
    :cond_1
    if-eqz p2, :cond_2

    #@1d
    .line 2342
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@20
    move-result v0

    #@21
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@24
    move-result v1

    #@25
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@28
    .line 2344
    :cond_2
    if-eqz p4, :cond_3

    #@2a
    .line 2345
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@2d
    move-result v0

    #@2e
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@31
    move-result v1

    #@32
    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@35
    .line 2347
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@38
    .line 2333
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 9908
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    check-cast v0, Landroid/text/Editable;

    #@4
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@7
    .line 9907
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 7986
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 7987
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a
    .line 7988
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    #@e
    if-eq v0, p1, :cond_1

    #@10
    .line 7989
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@12
    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    #@14
    .line 7990
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@17
    .line 7992
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@19
    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    #@1c
    .line 7995
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1e
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@21
    .line 7985
    :cond_1
    return-void
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 9541
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 9542
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    #@7
    .line 9540
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 9504
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 9505
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    #@7
    .line 9503
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    #@0
    .prologue
    .line 4287
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    #@2
    .line 4288
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7
    .line 4286
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1
    .param p1, "elegant"    # Z

    #@0
    .prologue
    .line 3091
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    #@5
    move-result v0

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 3092
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    #@d
    .line 3093
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3094
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@14
    .line 3095
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@17
    .line 3096
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1a
    .line 3090
    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    #@0
    .prologue
    .line 7913
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 7914
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@6
    .line 7916
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 7917
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@d
    .line 7918
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@10
    .line 7919
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@13
    .line 7911
    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .param p1, "ems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3951
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    #@3
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@5
    .line 3952
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@7
    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@9
    .line 3954
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3955
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3950
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 1597
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@3
    move-result v1

    #@4
    if-ne p1, v1, :cond_0

    #@6
    .line 1598
    return-void

    #@7
    .line 1601
    :cond_0
    if-nez p1, :cond_1

    #@9
    .line 1603
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@c
    move-result-object v0

    #@d
    .line 1604
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    #@f
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1605
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1d
    .line 1609
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@20
    .line 1611
    if-eqz p1, :cond_2

    #@22
    .line 1613
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@25
    move-result-object v0

    #@26
    .line 1614
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    #@28
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    #@2b
    .line 1618
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2d
    if-eqz v1, :cond_3

    #@2f
    .line 1619
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@31
    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    #@34
    .line 1620
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@36
    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@39
    .line 1623
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3b
    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    #@3e
    .line 1596
    :cond_3
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 5078
    if-nez p1, :cond_0

    #@4
    .line 5079
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@7
    .line 5077
    :goto_0
    return-void

    #@8
    .line 5081
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    .line 5082
    const v2, 0x108045c

    #@f
    .line 5081
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v0

    #@13
    .line 5084
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@16
    move-result v1

    #@17
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1e
    .line 5085
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@21
    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 5099
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 5100
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 5102
    const/4 v0, 0x0

    #@9
    .line 5101
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@c
    .line 5098
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 9
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6539
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    #@4
    move-result-object v4

    #@5
    .line 6540
    .local v4, "content":Landroid/text/Editable;
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 6541
    if-nez v4, :cond_3

    #@b
    .line 6542
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@d
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@f
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@12
    .line 6572
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@15
    move-result-object v8

    #@16
    check-cast v8, Landroid/text/Spannable;

    #@18
    .line 6573
    .local v8, "sp":Landroid/text/Spannable;
    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    #@1b
    move-result v6

    #@1c
    .line 6574
    .local v6, "N":I
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    #@1e
    .line 6575
    .local v5, "start":I
    if-gez v5, :cond_7

    #@20
    const/4 v5, 0x0

    #@21
    .line 6577
    :cond_1
    :goto_1
    iget v7, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    #@23
    .line 6578
    .local v7, "end":I
    if-gez v7, :cond_8

    #@25
    const/4 v7, 0x0

    #@26
    .line 6580
    :cond_2
    :goto_2
    invoke-static {v8, v5, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@29
    .line 6583
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@2b
    and-int/lit8 v0, v0, 0x2

    #@2d
    if-eqz v0, :cond_9

    #@2f
    .line 6584
    invoke-static {p0, v8}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    #@32
    .line 6538
    :goto_3
    return-void

    #@33
    .line 6544
    .end local v5    # "start":I
    .end local v6    # "N":I
    .end local v7    # "end":I
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_3
    const/4 v5, 0x0

    #@34
    .line 6545
    .restart local v5    # "start":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    #@37
    move-result v7

    #@38
    .line 6547
    .restart local v7    # "end":I
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@3a
    if-ltz v0, :cond_5

    #@3c
    .line 6548
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    #@3f
    move-result v6

    #@40
    .line 6549
    .restart local v6    # "N":I
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@42
    .line 6550
    if-le v5, v6, :cond_4

    #@44
    move v5, v6

    #@45
    .line 6551
    :cond_4
    iget v7, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    #@47
    .line 6552
    if-le v7, v6, :cond_5

    #@49
    move v7, v6

    #@4a
    .line 6555
    .end local v6    # "N":I
    :cond_5
    invoke-static {v4, v5, v7}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    #@4d
    .line 6556
    invoke-interface {v4, v5, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    #@50
    move-result-object v0

    #@51
    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@53
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_6

    #@59
    .line 6557
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@5b
    instance-of v0, v0, Landroid/text/Spanned;

    #@5d
    if-eqz v0, :cond_0

    #@5f
    .line 6559
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@61
    check-cast v0, Landroid/text/Spanned;

    #@63
    sub-int v2, v7, v5

    #@65
    .line 6560
    const-class v3, Ljava/lang/Object;

    #@67
    .line 6559
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    #@6a
    goto :goto_0

    #@6b
    .line 6563
    :cond_6
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@6d
    invoke-interface {v4, v5, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@70
    goto :goto_0

    #@71
    .line 6576
    .end local v7    # "end":I
    .restart local v6    # "N":I
    .restart local v8    # "sp":Landroid/text/Spannable;
    :cond_7
    if-le v5, v6, :cond_1

    #@73
    move v5, v6

    #@74
    goto :goto_1

    #@75
    .line 6579
    .restart local v7    # "end":I
    :cond_8
    if-le v7, v6, :cond_2

    #@77
    move v7, v6

    #@78
    goto :goto_2

    #@79
    .line 6586
    :cond_9
    invoke-static {p0, v8}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    #@7c
    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .param p1, "req"    # Landroid/view/inputmethod/ExtractedTextRequest;

    #@0
    .prologue
    .line 6594
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 6595
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@a
    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    #@c
    .line 6600
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@e
    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@11
    .line 6601
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@14
    .line 6602
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@16
    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 6603
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1c
    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@1e
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    #@21
    .line 6593
    :cond_1
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    #@0
    .prologue
    .line 5130
    if-nez p1, :cond_0

    #@2
    .line 5131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 5134
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@a
    .line 5136
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@c
    instance-of v0, v0, Landroid/text/Editable;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 5137
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@12
    check-cast v0, Landroid/text/Editable;

    #@14
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    #@17
    .line 5129
    :cond_1
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontFeatureSettings"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3221
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 3222
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    #@d
    .line 3224
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3225
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@14
    .line 3226
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@17
    .line 3227
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1a
    .line 3220
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 5107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    #@3
    move-result v0

    #@4
    .line 5109
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    #@d
    .line 5111
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    #@10
    .line 5113
    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4266
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    #@2
    .line 4265
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .param p1, "gravity"    # I

    #@0
    .prologue
    const v4, 0x800007

    #@3
    .line 3583
    and-int v0, p1, v4

    #@5
    if-nez v0, :cond_0

    #@7
    .line 3584
    const v0, 0x800003

    #@a
    or-int/2addr p1, v0

    #@b
    .line 3586
    :cond_0
    and-int/lit8 v0, p1, 0x70

    #@d
    if-nez v0, :cond_1

    #@f
    .line 3587
    or-int/lit8 p1, p1, 0x30

    #@11
    .line 3590
    :cond_1
    const/4 v7, 0x0

    #@12
    .line 3592
    .local v7, "newLayout":Z
    and-int v0, p1, v4

    #@14
    .line 3593
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    #@16
    and-int/2addr v3, v4

    #@17
    .line 3592
    if-eq v0, v3, :cond_2

    #@19
    .line 3594
    const/4 v7, 0x1

    #@1a
    .line 3597
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    #@1c
    if-eq p1, v0, :cond_3

    #@1e
    .line 3598
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@21
    .line 3601
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    #@23
    .line 3603
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@25
    if-eqz v0, :cond_4

    #@27
    if-eqz v7, :cond_4

    #@29
    .line 3605
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2b
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    #@2e
    move-result v1

    #@2f
    .line 3606
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@31
    if-nez v0, :cond_5

    #@33
    const/4 v2, 0x0

    #@34
    .line 3608
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@36
    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@38
    .line 3609
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    #@3a
    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    #@3c
    sub-int/2addr v0, v5

    #@3d
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@40
    move-result v5

    #@41
    sub-int/2addr v0, v5

    #@42
    .line 3610
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@45
    move-result v5

    #@46
    .line 3609
    sub-int v5, v0, v5

    #@48
    .line 3610
    const/4 v6, 0x1

    #@49
    move-object v0, p0

    #@4a
    .line 3608
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@4d
    .line 3582
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    :cond_4
    return-void

    #@4e
    .line 3606
    .restart local v1    # "want":I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@50
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    #@53
    move-result v2

    #@54
    .restart local v2    # "hintWant":I
    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 3824
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    #@3
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    #@5
    .line 3825
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@7
    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@9
    .line 3827
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3828
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3823
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3301
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 3302
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    #@6
    .line 3303
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@9
    .line 3300
    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4595
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    #@f
    .line 4594
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4571
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@6
    .line 4573
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4574
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    #@d
    .line 4577
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@f
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 4578
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@18
    .line 4582
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1e
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_2

    #@24
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 4583
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2a
    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    #@2d
    .line 4570
    :cond_2
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3489
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 3490
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@9
    .line 3488
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 3504
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 3505
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@5
    .line 3503
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .param p1, "whether"    # Z

    #@0
    .prologue
    .line 3657
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 3658
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@6
    .line 3660
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3661
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@d
    .line 3662
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@10
    .line 3663
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@13
    .line 3656
    :cond_0
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    #@0
    .prologue
    .line 3187
    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@2
    .line 3188
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3189
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@9
    .line 3190
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3191
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3186
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    #@0
    .prologue
    .line 4837
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4838
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@8
    .line 4839
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@c
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    #@e
    .line 4840
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@10
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@12
    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@14
    .line 4836
    return-void
.end method

.method public setImeHintLocales(Landroid/os/LocaleList;)V
    .locals 1
    .param p1, "hintLocales"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 5042
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 5043
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@8
    .line 5044
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@c
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeHintLocales:Landroid/os/LocaleList;

    #@e
    .line 5041
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    #@0
    .prologue
    .line 4810
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4811
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@8
    .line 4812
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@c
    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@e
    .line 4809
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "includepad"    # Z

    #@0
    .prologue
    .line 7020
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 7021
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    #@6
    .line 7023
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 7024
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@d
    .line 7025
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@10
    .line 7026
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@13
    .line 7019
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4999
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 5000
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@a
    move-result-object v0

    #@b
    .line 5001
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@10
    .line 5002
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@12
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@14
    new-instance v2, Landroid/os/Bundle;

    #@16
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@19
    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    #@1b
    .line 5003
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@21
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@23
    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    #@25
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    #@28
    .line 4998
    return-void
.end method

.method public setInputType(I)V
    .locals 13
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v10, -0x1

    #@3
    const/4 v11, 0x0

    #@4
    const/4 v7, 0x0

    #@5
    .line 4655
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    #@8
    move-result v9

    #@9
    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    #@c
    move-result v5

    #@d
    .line 4656
    .local v5, "wasPassword":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    #@10
    move-result v9

    #@11
    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    #@14
    move-result v6

    #@15
    .line 4657
    .local v6, "wasVisiblePassword":Z
    invoke-direct {p0, p1, v7}, Landroid/widget/TextView;->setInputType(IZ)V

    #@18
    .line 4658
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    #@1b
    move-result v2

    #@1c
    .line 4659
    .local v2, "isPassword":Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    #@1f
    move-result v3

    #@20
    .line 4660
    .local v3, "isVisiblePassword":Z
    const/4 v0, 0x0

    #@21
    .line 4661
    .local v0, "forceUpdate":Z
    if-eqz v2, :cond_5

    #@23
    .line 4662
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@26
    move-result-object v9

    #@27
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@2a
    .line 4663
    invoke-direct {p0, v11, v12, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@2d
    .line 4677
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    #@30
    move-result v9

    #@31
    if-eqz v9, :cond_9

    #@33
    const/4 v4, 0x0

    #@34
    .line 4681
    .local v4, "singleLine":Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@36
    if-ne v9, v4, :cond_1

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 4684
    :cond_1
    if-eqz v2, :cond_a

    #@3c
    :goto_2
    invoke-direct {p0, v4, v7, v8}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    #@3f
    .line 4687
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    #@42
    move-result v7

    #@43
    if-nez v7, :cond_3

    #@45
    .line 4688
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@47
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@4a
    move-result-object v7

    #@4b
    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@4d
    .line 4691
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@50
    move-result-object v1

    #@51
    .line 4692
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    #@53
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    #@56
    .line 4654
    :cond_4
    return-void

    #@57
    .line 4664
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "singleLine":Z
    :cond_5
    if-eqz v3, :cond_7

    #@59
    .line 4665
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@5b
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@5e
    move-result-object v10

    #@5f
    if-ne v9, v10, :cond_6

    #@61
    .line 4666
    const/4 v0, 0x1

    #@62
    .line 4668
    :cond_6
    invoke-direct {p0, v11, v12, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@65
    goto :goto_0

    #@66
    .line 4669
    :cond_7
    if-nez v5, :cond_8

    #@68
    if-eqz v6, :cond_0

    #@6a
    .line 4671
    :cond_8
    invoke-direct {p0, v11, v10, v10}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@6d
    .line 4672
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@6f
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@72
    move-result-object v10

    #@73
    if-ne v9, v10, :cond_0

    #@75
    .line 4673
    const/4 v0, 0x1

    #@76
    goto :goto_0

    #@77
    .line 4677
    :cond_9
    const/4 v4, 0x1

    #@78
    .restart local v4    # "singleLine":Z
    goto :goto_1

    #@79
    :cond_a
    move v7, v8

    #@7a
    .line 4684
    goto :goto_2
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .param p1, "input"    # Landroid/text/method/KeyListener;

    #@0
    .prologue
    .line 1813
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    #@3
    .line 1814
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    #@6
    .line 1816
    if-eqz p1, :cond_2

    #@8
    .line 1817
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@b
    .line 1819
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@f
    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@11
    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    #@14
    move-result v3

    #@15
    iput v3, v2, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1825
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@19
    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    #@1c
    .line 1830
    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@1f
    move-result-object v1

    #@20
    .line 1831
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    #@22
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    #@25
    .line 1812
    :cond_1
    return-void

    #@26
    .line 1820
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    #@27
    .line 1821
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@29
    const/4 v3, 0x1

    #@2a
    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    #@2c
    goto :goto_0

    #@2d
    .line 1827
    .end local v0    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2f
    if-eqz v2, :cond_0

    #@31
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@33
    const/4 v3, 0x0

    #@34
    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    #@36
    goto :goto_1
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .param p1, "letterSpacing"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3123
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    #@5
    move-result v0

    #@6
    cmpl-float v0, p1, v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3124
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@c
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    #@f
    .line 3126
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 3127
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@16
    .line 3128
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@19
    .line 3129
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1c
    .line 3122
    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    #@0
    .prologue
    .line 3987
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-nez v0, :cond_0

    #@6
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    #@8
    cmpl-float v0, v0, p2

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 3988
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    #@e
    .line 3989
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    #@10
    .line 3991
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 3992
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@17
    .line 3993
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@1a
    .line 3994
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1d
    .line 3986
    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3805
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    #@3
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    #@5
    .line 3806
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@7
    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@9
    .line 3808
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3809
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3804
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3542
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 3543
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@9
    .line 3541
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 3557
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 3558
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@5
    .line 3556
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3447
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    #@2
    .line 3446
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1, "marqueeLimit"    # I

    #@0
    .prologue
    .line 7933
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@2
    .line 7932
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3892
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@2
    .line 3893
    const/4 v0, 0x1

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@5
    .line 3895
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3896
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3891
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3776
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    #@2
    .line 3777
    const/4 v0, 0x2

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@5
    .line 3779
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3780
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3775
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3747
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    #@2
    .line 3748
    const/4 v0, 0x1

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@5
    .line 3750
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3751
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3746
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "maxpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3919
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@2
    .line 3920
    const/4 v0, 0x2

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@5
    .line 3922
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3923
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3918
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3838
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    #@2
    .line 3839
    const/4 v0, 0x1

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@5
    .line 3841
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3842
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3837
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3719
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    #@2
    .line 3720
    const/4 v0, 0x2

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@5
    .line 3722
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3723
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3718
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3691
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    #@2
    .line 3692
    const/4 v0, 0x1

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@5
    .line 3694
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3695
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3690
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "minpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3865
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    #@2
    .line 3866
    const/4 v0, 0x2

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@5
    .line 3868
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3869
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3864
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    #@0
    .prologue
    .line 1868
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 1869
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@6
    .line 1871
    if-eqz p1, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@a
    instance-of v0, v0, Landroid/text/Spannable;

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 1875
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    #@11
    .line 1879
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@13
    if-eqz v0, :cond_1

    #@15
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@17
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@1a
    .line 1867
    :cond_1
    return-void

    #@1b
    .line 1872
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1d
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@20
    goto :goto_0
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    #@0
    .prologue
    .line 4874
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4875
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@8
    .line 4876
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@c
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@e
    .line 4873
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 2741
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 2742
    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    #@6
    if-eq p3, v0, :cond_2

    #@8
    .line 2745
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@b
    .line 2749
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    #@e
    .line 2750
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@11
    .line 2740
    return-void

    #@12
    .line 2743
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    #@14
    if-ne p2, v0, :cond_0

    #@16
    .line 2744
    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    #@18
    if-eq p4, v0, :cond_1

    #@1a
    goto :goto_0
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 2755
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 2756
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    #@9
    move-result v0

    #@a
    if-eq p3, v0, :cond_2

    #@c
    .line 2759
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@f
    .line 2763
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@12
    .line 2764
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@15
    .line 2754
    return-void

    #@16
    .line 2757
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    #@18
    if-ne p2, v0, :cond_0

    #@1a
    .line 2758
    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    #@1c
    if-eq p4, v0, :cond_1

    #@1e
    goto :goto_0
.end method

.method public setPaintFlags(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3639
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 3640
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    #@d
    .line 3642
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3643
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@14
    .line 3644
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@17
    .line 3645
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1a
    .line 3638
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4971
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4972
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@8
    .line 4973
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@c
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    #@e
    .line 4970
    return-void
.end method

.method public setRawInputType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 4740
    if-nez p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 4741
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a
    .line 4742
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    #@e
    .line 4739
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/Scroller;

    #@0
    .prologue
    .line 8599
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2
    .line 8598
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .param p1, "selectAllOnFocus"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 7968
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 7969
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    #@7
    .line 7971
    if-eqz p1, :cond_0

    #@9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@b
    instance-of v0, v0, Landroid/text/Spannable;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 7967
    :cond_0
    :goto_0
    return-void

    #@10
    .line 7972
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@12
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@14
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@17
    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    #@0
    .prologue
    .line 8435
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    #@3
    move-result v0

    #@4
    .line 8437
    .local v0, "wasSelected":Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    #@7
    .line 8439
    if-eq p1, v0, :cond_0

    #@9
    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@b
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 8440
    if-eqz p1, :cond_1

    #@11
    .line 8441
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    #@14
    .line 8434
    :cond_0
    :goto_0
    return-void

    #@15
    .line 8443
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    #@18
    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    #@0
    .prologue
    .line 3355
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    #@5
    .line 3357
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    #@7
    .line 3358
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    #@9
    .line 3359
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    #@b
    .line 3360
    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    #@d
    .line 3363
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3364
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@13
    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    #@16
    .line 3365
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@18
    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    #@1b
    .line 3367
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1e
    .line 3354
    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3325
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 3326
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@7
    .line 3324
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    #@0
    .prologue
    .line 7821
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@4
    .line 7820
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 7858
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    #@4
    .line 7859
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    #@7
    .line 7855
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 9900
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    check-cast v0, Landroid/text/Editable;

    #@4
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@7
    .line 9899
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    #@0
    .prologue
    .line 4295
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    #@2
    .line 4296
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7
    .line 4294
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4555
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@f
    .line 4554
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    #@0
    .prologue
    .line 4559
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@f
    .line 4558
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4312
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@5
    .line 4311
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4337
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    #@6
    .line 4339
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4340
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@c
    invoke-static {v0, v2}, Landroid/widget/TextView$CharWrapper;->-set0(Landroid/widget/TextView$CharWrapper;[C)[C

    #@f
    .line 4336
    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4504
    const/4 v0, 0x0

    #@2
    .line 4506
    .local v0, "oldlen":I
    if-ltz p2, :cond_0

    #@4
    if-gez p3, :cond_1

    #@6
    .line 4507
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, ", "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 4506
    :cond_1
    add-int v1, p2, p3

    #@26
    array-length v2, p1

    #@27
    if-gt v1, v2, :cond_0

    #@29
    .line 4515
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 4516
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2f
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@32
    move-result v0

    #@33
    .line 4517
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@35
    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    #@38
    .line 4522
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@3a
    if-nez v1, :cond_3

    #@3c
    .line 4523
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    #@3e
    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    #@41
    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@43
    .line 4528
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@45
    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@47
    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    #@4a
    .line 4503
    return-void

    #@4b
    .line 4519
    :cond_2
    const-string/jumbo v1, ""

    #@4e
    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    #@51
    goto :goto_0

    #@52
    .line 4525
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@54
    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    #@57
    goto :goto_1
.end method

.method public setTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 2791
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@5
    .line 2790
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2802
    sget-object v15, Landroid/R$styleable;->TextAppearance:[I

    #@2
    move-object/from16 v0, p1

    #@4
    move/from16 v1, p2

    #@6
    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v8

    #@a
    .line 2805
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/4 v15, 0x4

    #@b
    const/16 v16, 0x0

    #@d
    .line 2804
    move/from16 v0, v16

    #@f
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@12
    move-result v10

    #@13
    .line 2806
    .local v10, "textColorHighlight":I
    if-eqz v10, :cond_0

    #@15
    .line 2807
    move-object/from16 v0, p0

    #@17
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    #@1a
    .line 2810
    :cond_0
    const/4 v15, 0x3

    #@1b
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1e
    move-result-object v9

    #@1f
    .line 2811
    .local v9, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_1

    #@21
    .line 2812
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@26
    .line 2815
    :cond_1
    const/4 v15, 0x0

    #@27
    const/16 v16, 0x0

    #@29
    move/from16 v0, v16

    #@2b
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2e
    move-result v13

    #@2f
    .line 2816
    .local v13, "textSize":I
    if-eqz v13, :cond_2

    #@31
    .line 2817
    int-to-float v15, v13

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-direct {v0, v15}, Landroid/widget/TextView;->setRawTextSize(F)V

    #@37
    .line 2821
    :cond_2
    const/4 v15, 0x5

    #@38
    .line 2820
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@3b
    move-result-object v11

    #@3c
    .line 2822
    .local v11, "textColorHint":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_3

    #@3e
    .line 2823
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    #@43
    .line 2827
    :cond_3
    const/4 v15, 0x6

    #@44
    .line 2826
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@47
    move-result-object v12

    #@48
    .line 2828
    .local v12, "textColorLink":Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_4

    #@4a
    .line 2829
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    #@4f
    .line 2832
    :cond_4
    const/16 v15, 0xc

    #@51
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    .line 2833
    .local v4, "fontFamily":Ljava/lang/String;
    const/4 v15, 0x1

    #@56
    const/16 v16, -0x1

    #@58
    move/from16 v0, v16

    #@5a
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5d
    move-result v14

    #@5e
    .line 2834
    .local v14, "typefaceIndex":I
    const/4 v15, 0x2

    #@5f
    const/16 v16, -0x1

    #@61
    move/from16 v0, v16

    #@63
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@66
    move-result v7

    #@67
    .line 2835
    .local v7, "styleIndex":I
    move-object/from16 v0, p0

    #@69
    invoke-direct {v0, v4, v14, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@6c
    .line 2837
    const/4 v15, 0x7

    #@6d
    const/16 v16, 0x0

    #@6f
    move/from16 v0, v16

    #@71
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@74
    move-result v6

    #@75
    .line 2838
    .local v6, "shadowColor":I
    if-eqz v6, :cond_5

    #@77
    .line 2839
    const/4 v15, 0x0

    #@78
    const/16 v16, 0x8

    #@7a
    move/from16 v0, v16

    #@7c
    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@7f
    move-result v2

    #@80
    .line 2840
    .local v2, "dx":F
    const/4 v15, 0x0

    #@81
    const/16 v16, 0x9

    #@83
    move/from16 v0, v16

    #@85
    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@88
    move-result v3

    #@89
    .line 2841
    .local v3, "dy":F
    const/4 v15, 0x0

    #@8a
    const/16 v16, 0xa

    #@8c
    move/from16 v0, v16

    #@8e
    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@91
    move-result v5

    #@92
    .line 2842
    .local v5, "r":F
    move-object/from16 v0, p0

    #@94
    invoke-virtual {v0, v5, v2, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@97
    .line 2845
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "r":F
    :cond_5
    const/16 v15, 0xb

    #@99
    const/16 v16, 0x0

    #@9b
    move/from16 v0, v16

    #@9d
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a0
    move-result v15

    #@a1
    if-eqz v15, :cond_6

    #@a3
    .line 2846
    new-instance v15, Landroid/text/method/AllCapsTransformationMethod;

    #@a5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@a8
    move-result-object v16

    #@a9
    invoke-direct/range {v15 .. v16}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    #@ac
    move-object/from16 v0, p0

    #@ae
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@b1
    .line 2849
    :cond_6
    const/16 v15, 0xd

    #@b3
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@b6
    move-result v15

    #@b7
    if-eqz v15, :cond_7

    #@b9
    .line 2851
    const/16 v15, 0xd

    #@bb
    const/16 v16, 0x0

    #@bd
    .line 2850
    move/from16 v0, v16

    #@bf
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c2
    move-result v15

    #@c3
    move-object/from16 v0, p0

    #@c5
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    #@c8
    .line 2854
    :cond_7
    const/16 v15, 0xe

    #@ca
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@cd
    move-result v15

    #@ce
    if-eqz v15, :cond_8

    #@d0
    .line 2856
    const/4 v15, 0x0

    #@d1
    const/16 v16, 0xe

    #@d3
    .line 2855
    move/from16 v0, v16

    #@d5
    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@d8
    move-result v15

    #@d9
    move-object/from16 v0, p0

    #@db
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    #@de
    .line 2859
    :cond_8
    const/16 v15, 0xf

    #@e0
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@e3
    move-result v15

    #@e4
    if-eqz v15, :cond_9

    #@e6
    .line 2861
    const/16 v15, 0xf

    #@e8
    .line 2860
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@eb
    move-result-object v15

    #@ec
    move-object/from16 v0, p0

    #@ee
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    #@f1
    .line 2864
    :cond_9
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@f4
    .line 2801
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3248
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 3249
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@9
    .line 3247
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3264
    if-nez p1, :cond_0

    #@2
    .line 3265
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 3268
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    #@a
    .line 3269
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@d
    .line 3263
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .param p1, "selectable"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5608
    if-nez p1, :cond_0

    #@3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-nez v1, :cond_0

    #@7
    return-void

    #@8
    .line 5610
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@b
    .line 5611
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    iget-boolean v1, v1, Landroid/widget/Editor;->mTextIsSelectable:Z

    #@f
    if-ne v1, p1, :cond_1

    #@11
    return-void

    #@12
    .line 5613
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@14
    iput-boolean p1, v1, Landroid/widget/Editor;->mTextIsSelectable:Z

    #@16
    .line 5614
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    #@19
    .line 5615
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    #@1c
    .line 5616
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    #@1f
    .line 5617
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    #@22
    .line 5621
    if-eqz p1, :cond_2

    #@24
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@27
    move-result-object v0

    #@28
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@2b
    .line 5622
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2d
    if-eqz p1, :cond_3

    #@2f
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@31
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@34
    .line 5625
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@36
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@39
    .line 5607
    return-void

    #@3a
    .line 5622
    :cond_3
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    #@3c
    goto :goto_0
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4325
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@5
    .line 4324
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4538
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@4
    move-result v2

    #@5
    .line 4539
    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@8
    move-result v0

    #@9
    .line 4540
    .local v0, "end":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v1

    #@d
    .line 4542
    .local v1, "len":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@10
    .line 4544
    if-gez v2, :cond_0

    #@12
    if-ltz v0, :cond_1

    #@14
    .line 4545
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@16
    instance-of v3, v3, Landroid/text/Spannable;

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 4546
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1c
    check-cast v3, Landroid/text/Spannable;

    #@1e
    .line 4547
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@21
    move-result v4

    #@22
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v4

    #@26
    .line 4548
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v5

    #@2a
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v5

    #@2e
    .line 4546
    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@31
    .line 4537
    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2895
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    #@3
    .line 2896
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@5
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    #@8
    .line 2897
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2898
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@f
    .line 2899
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@12
    .line 2900
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@15
    .line 2894
    :cond_0
    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 1
    .param p1, "locales"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 2916
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/TextView;->mLocalesChanged:Z

    #@3
    .line 2917
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@5
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocales(Landroid/os/LocaleList;)V

    #@8
    .line 2918
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2919
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@f
    .line 2920
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@12
    .line 2921
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@15
    .line 2915
    :cond_0
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3030
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    #@5
    move-result v0

    #@6
    cmpl-float v0, p1, v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3031
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    #@d
    .line 3032
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@f
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    #@12
    .line 3034
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 3035
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@19
    .line 3036
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@1c
    .line 3037
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1f
    .line 3029
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 2978
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    #@4
    .line 2977
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    #@0
    .prologue
    .line 2991
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 2994
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    #@6
    .line 2995
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    .line 3000
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@d
    move-result-object v2

    #@e
    .line 2999
    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@11
    move-result v2

    #@12
    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    #@15
    .line 2990
    return-void

    #@16
    .line 2997
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v1

    #@1a
    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1915
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 1918
    return-void

    #@6
    .line 1920
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1921
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@c
    instance-of v1, v1, Landroid/text/Spannable;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1922
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@12
    check-cast v1, Landroid/text/Spannable;

    #@14
    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@16
    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@19
    .line 1926
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@1b
    .line 1928
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    #@1d
    if-eqz v1, :cond_5

    #@1f
    move-object v0, p1

    #@20
    .line 1929
    check-cast v0, Landroid/text/method/TransformationMethod2;

    #@22
    .line 1930
    .local v0, "method2":Landroid/text/method/TransformationMethod2;
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_2

    #@28
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2a
    instance-of v1, v1, Landroid/text/Editable;

    #@2c
    if-eqz v1, :cond_4

    #@2e
    :cond_2
    move v1, v2

    #@2f
    :goto_0
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    #@31
    .line 1931
    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    #@33
    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    #@36
    .line 1936
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@38
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3b
    .line 1938
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 1939
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@44
    .line 1945
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@4a
    .line 1914
    return-void

    #@4b
    .line 1930
    .restart local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_4
    const/4 v1, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 1933
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_5
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    #@4f
    goto :goto_1
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    #@0
    .prologue
    .line 3056
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 3057
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@d
    .line 3059
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3060
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@14
    .line 3061
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@17
    .line 3062
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1a
    .line 3055
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1637
    if-lez p2, :cond_4

    #@4
    .line 1638
    if-nez p1, :cond_1

    #@6
    .line 1639
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@9
    move-result-object p1

    #@a
    .line 1644
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@d
    .line 1646
    if-eqz p1, :cond_2

    #@f
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    #@12
    move-result v1

    #@13
    .line 1647
    .local v1, "typefaceStyle":I
    :goto_1
    not-int v4, v1

    #@14
    and-int v0, p2, v4

    #@16
    .line 1648
    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@18
    and-int/lit8 v5, v0, 0x1

    #@1a
    if-eqz v5, :cond_0

    #@1c
    const/4 v2, 0x1

    #@1d
    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@20
    .line 1649
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@22
    and-int/lit8 v2, v0, 0x2

    #@24
    if-eqz v2, :cond_3

    #@26
    const/high16 v2, -0x41800000    # -0.25f

    #@28
    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@2b
    .line 1636
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    #@2c
    .line 1641
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@2f
    move-result-object p1

    #@30
    goto :goto_0

    #@31
    :cond_2
    move v1, v2

    #@32
    .line 1646
    goto :goto_1

    #@33
    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    #@34
    .line 1649
    goto :goto_2

    #@35
    .line 1651
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@37
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@3a
    .line 1652
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@3c
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@3f
    .line 1653
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@42
    goto :goto_3
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "undoManager"    # Landroid/content/UndoManager;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1772
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 3972
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    #@3
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@5
    .line 3973
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@7
    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@9
    .line 3975
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3976
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3971
    return-void
.end method

.method public showContextMenu()Z
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x7fc00000    # NaNf

    #@2
    .line 8549
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 8550
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    invoke-virtual {v0, v1, v1}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    #@b
    .line 8552
    :cond_0
    invoke-super {p0}, Landroid/view/View;->showContextMenu()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 8557
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 8558
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setContextMenuAnchor(FF)V

    #@9
    .line 8560
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->showContextMenu(FF)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 8
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 8261
    const/4 v4, 0x0

    #@3
    .line 8262
    .local v4, "selChanged":Z
    const/4 v3, -0x1

    #@4
    .local v3, "newSelStart":I
    const/4 v2, -0x1

    #@5
    .line 8264
    .local v2, "newSelEnd":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    if-nez v5, :cond_16

    #@9
    const/4 v1, 0x0

    #@a
    .line 8266
    :goto_0
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@c
    if-ne p2, v5, :cond_1

    #@e
    .line 8267
    const/4 v4, 0x1

    #@f
    .line 8268
    move v2, p4

    #@10
    .line 8270
    if-gez p3, :cond_0

    #@12
    if-ltz p4, :cond_1

    #@14
    .line 8271
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@17
    move-result v5

    #@18
    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    #@1b
    .line 8272
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    #@1e
    .line 8273
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    #@21
    .line 8274
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@23
    if-eqz v5, :cond_1

    #@25
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@27
    invoke-virtual {v5}, Landroid/widget/Editor;->makeBlink()V

    #@2a
    .line 8278
    :cond_1
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    #@2c
    if-ne p2, v5, :cond_3

    #@2e
    .line 8279
    const/4 v4, 0x1

    #@2f
    .line 8280
    move v3, p4

    #@30
    .line 8282
    if-gez p3, :cond_2

    #@32
    if-ltz p4, :cond_3

    #@34
    .line 8283
    :cond_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@37
    move-result v0

    #@38
    .line 8284
    .local v0, "end":I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    #@3b
    .line 8288
    .end local v0    # "end":I
    :cond_3
    if-eqz v4, :cond_8

    #@3d
    .line 8289
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@3f
    .line 8290
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@41
    if-eqz v5, :cond_4

    #@43
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_17

    #@49
    .line 8292
    :cond_4
    :goto_1
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@4c
    move-result v5

    #@4d
    and-int/lit16 v5, v5, 0x200

    #@4f
    if-nez v5, :cond_8

    #@51
    .line 8293
    if-gez v3, :cond_5

    #@53
    .line 8294
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@56
    move-result v3

    #@57
    .line 8296
    :cond_5
    if-gez v2, :cond_6

    #@59
    .line 8297
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@5c
    move-result v2

    #@5d
    .line 8300
    :cond_6
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5f
    if-eqz v5, :cond_7

    #@61
    .line 8301
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@63
    invoke-virtual {v5}, Landroid/widget/Editor;->refreshTextActionMode()V

    #@66
    .line 8302
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    #@69
    move-result v5

    #@6a
    if-nez v5, :cond_7

    #@6c
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6e
    iget-object v5, v5, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@70
    if-nez v5, :cond_7

    #@72
    invoke-virtual {p0}, Landroid/widget/TextView;->hasTransientState()Z

    #@75
    move-result v5

    #@76
    if-eqz v5, :cond_7

    #@78
    .line 8304
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setHasTransientState(Z)V

    #@7b
    .line 8307
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    #@7e
    .line 8311
    :cond_8
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    #@80
    if-nez v5, :cond_9

    #@82
    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    #@84
    if-nez v5, :cond_9

    #@86
    .line 8312
    instance-of v5, p2, Landroid/text/style/CharacterStyle;

    #@88
    .line 8311
    if-eqz v5, :cond_d

    #@8a
    .line 8313
    :cond_9
    if-eqz v1, :cond_a

    #@8c
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@8e
    if-nez v5, :cond_18

    #@90
    .line 8314
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@93
    .line 8315
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@95
    .line 8316
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    #@98
    .line 8320
    :goto_2
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9a
    if-eqz v5, :cond_d

    #@9c
    .line 8321
    if-ltz p3, :cond_b

    #@9e
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a0
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@a2
    invoke-virtual {v5, v6, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    #@a5
    .line 8322
    :cond_b
    if-ltz p4, :cond_c

    #@a7
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a9
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@ab
    invoke-virtual {v5, v6, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    #@ae
    .line 8323
    :cond_c
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b0
    invoke-virtual {v5}, Landroid/widget/Editor;->invalidateHandlesAndActionMode()V

    #@b3
    .line 8327
    :cond_d
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    #@b6
    move-result v5

    #@b7
    if-eqz v5, :cond_10

    #@b9
    .line 8328
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@bb
    .line 8329
    if-eqz v1, :cond_e

    #@bd
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    #@c0
    move-result v5

    #@c1
    if-eqz v5, :cond_e

    #@c3
    .line 8330
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@c5
    .line 8333
    :cond_e
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@c8
    move-result v5

    #@c9
    if-ltz v5, :cond_10

    #@cb
    .line 8334
    if-eqz v1, :cond_f

    #@cd
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@cf
    if-nez v5, :cond_19

    #@d1
    .line 8335
    :cond_f
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    #@d4
    .line 8342
    :cond_10
    :goto_3
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    #@d6
    if-eqz v5, :cond_14

    #@d8
    .line 8345
    if-eqz v1, :cond_14

    #@da
    iget-object v5, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    #@dc
    if-eqz v5, :cond_14

    #@de
    .line 8346
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@e0
    if-eqz v5, :cond_1a

    #@e2
    .line 8347
    if-ltz p3, :cond_12

    #@e4
    .line 8348
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@e6
    if-le v5, p3, :cond_11

    #@e8
    .line 8349
    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@ea
    .line 8351
    :cond_11
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@ec
    if-le v5, p5, :cond_12

    #@ee
    .line 8352
    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@f0
    .line 8355
    :cond_12
    if-ltz p4, :cond_14

    #@f2
    .line 8356
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@f4
    if-le v5, p4, :cond_13

    #@f6
    .line 8357
    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@f8
    .line 8359
    :cond_13
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@fa
    if-le v5, p6, :cond_14

    #@fc
    .line 8360
    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@fe
    .line 8372
    :cond_14
    :goto_4
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@100
    if-eqz v5, :cond_15

    #@102
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@104
    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@106
    if-eqz v5, :cond_15

    #@108
    if-gez p4, :cond_15

    #@10a
    .line 8373
    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    #@10c
    .line 8372
    if-eqz v5, :cond_15

    #@10e
    .line 8374
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@110
    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@112
    check-cast p2, Landroid/text/style/SpellCheckSpan;

    #@114
    .end local p2    # "what":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    #@117
    .line 8257
    :cond_15
    return-void

    #@118
    .line 8264
    .restart local p2    # "what":Ljava/lang/Object;
    :cond_16
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@11a
    iget-object v1, v5, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@11c
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    goto/16 :goto_0

    #@11e
    .line 8290
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_17
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@120
    iput-boolean v7, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    #@122
    goto/16 :goto_1

    #@124
    .line 8318
    :cond_18
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@126
    goto/16 :goto_2

    #@128
    .line 8337
    :cond_19
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    #@12a
    goto :goto_3

    #@12b
    .line 8367
    :cond_1a
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@12d
    goto :goto_4
.end method

.method protected stopTextActionMode()V
    .locals 1

    #@0
    .prologue
    .line 9558
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 9559
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@9
    .line 9557
    :cond_0
    return-void
.end method

.method textCanBeSelected()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 8815
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@7
    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 8816
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_2

    #@13
    .line 8817
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1b
    instance-of v1, v1, Landroid/text/Spannable;

    #@1d
    if-eqz v1, :cond_0

    #@1f
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@22
    move-result v0

    #@23
    .line 8816
    :cond_0
    :goto_0
    return v0

    #@24
    .line 8815
    :cond_1
    return v0

    #@25
    .line 8816
    :cond_2
    const/4 v0, 0x1

    #@26
    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    #@0
    .prologue
    .line 8210
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@3
    .line 8211
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@6
    move-result v0

    #@7
    .line 8213
    .local v0, "curs":I
    if-gez v0, :cond_0

    #@9
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    #@b
    and-int/lit8 v1, v1, 0x70

    #@d
    const/16 v2, 0x50

    #@f
    if-ne v1, v2, :cond_1

    #@11
    .line 8214
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    #@14
    .line 8217
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    #@17
    .line 8219
    if-ltz v0, :cond_3

    #@19
    .line 8220
    const/4 v1, 0x1

    #@1a
    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@1c
    .line 8221
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1e
    if-eqz v1, :cond_2

    #@20
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@22
    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    #@25
    .line 8222
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    #@28
    .line 8209
    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 5476
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v1

    #@4
    .line 5477
    .local v1, "verified":Z
    if-nez v1, :cond_1

    #@6
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 5478
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@c
    iget-object v3, v2, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@e
    const/4 v2, 0x0

    #@f
    array-length v4, v3

    #@10
    :goto_0
    if-ge v2, v4, :cond_1

    #@12
    aget-object v0, v3, v2

    #@14
    .line 5479
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :cond_0

    #@16
    .line 5480
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 5478
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 5484
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    #@0
    .prologue
    .line 9874
    if-eqz p1, :cond_0

    #@2
    .line 9875
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    #@5
    .line 9873
    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    #@0
    .prologue
    .line 7744
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    #@6
    sub-int/2addr v0, v1

    #@7
    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    #@0
    .prologue
    .line 7748
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    #@6
    sub-int v0, v1, v2

    #@8
    .line 7749
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    #@a
    and-int/lit8 v1, v1, 0x70

    #@c
    const/16 v2, 0x30

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 7750
    const/4 v1, 0x0

    #@11
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@14
    move-result v1

    #@15
    add-int/2addr v0, v1

    #@16
    .line 7752
    :cond_0
    return v0
.end method
