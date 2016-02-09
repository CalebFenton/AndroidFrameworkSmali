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
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$ChangeWatcher;
    }
.end annotation


# static fields
.field private static synthetic -android_text_Layout$AlignmentSwitchesValues:[I = null

.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

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

.field private static final VERY_WIDE:I = 0x100000

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

.field private mDispatchTemporaryDetach:Z

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFirstTouch:Z

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

.field private mLastTouchUpTime:J

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

.field private mLocaleChanged:Z

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

.field mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

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

.method private static synthetic -getandroid_text_Layout$AlignmentSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/widget/TextView;->-android_text_Layout$AlignmentSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/widget/TextView;->-android_text_Layout$AlignmentSwitchesValues:[I

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
    sput-object v0, Landroid/widget/TextView;->-android_text_Layout$AlignmentSwitchesValues:[I

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
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 281
    new-instance v1, Landroid/graphics/RectF;

    #@4
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #@7
    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@9
    .line 287
    new-array v1, v3, [Landroid/text/InputFilter;

    #@b
    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    #@d
    .line 288
    new-instance v1, Landroid/text/SpannedString;

    #@f
    const-string/jumbo v2, ""

    #@12
    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    #@15
    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    #@17
    .line 293
    new-array v1, v4, [I

    #@19
    const v2, 0x101034d

    #@1c
    aput v2, v1, v3

    #@1e
    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    #@20
    .line 636
    new-instance v0, Landroid/graphics/Paint;

    #@22
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@25
    .line 637
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@28
    .line 639
    const-string/jumbo v1, "H"

    #@2b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    #@2e
    .line 6847
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    #@30
    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    #@33
    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@35
    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 663
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 662
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 667
    const v0, 0x1010084

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 666
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 671
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 670
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 76
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 677
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 324
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    #@6
    move-result-object v73

    #@7
    move-object/from16 v0, v73

    #@9
    move-object/from16 v1, p0

    #@b
    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    #@d
    .line 325
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    #@10
    move-result-object v73

    #@11
    move-object/from16 v0, v73

    #@13
    move-object/from16 v1, p0

    #@15
    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    #@17
    .line 518
    const/16 v73, 0x3

    #@19
    move/from16 v0, v73

    #@1b
    move-object/from16 v1, p0

    #@1d
    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@1f
    .line 520
    const/16 v73, -0x1

    #@21
    move/from16 v0, v73

    #@23
    move-object/from16 v1, p0

    #@25
    iput v0, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    #@27
    .line 527
    const/16 v73, 0x0

    #@29
    move/from16 v0, v73

    #@2b
    move-object/from16 v1, p0

    #@2d
    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@2f
    .line 538
    sget-object v73, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    #@31
    move-object/from16 v0, v73

    #@33
    move-object/from16 v1, p0

    #@35
    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@37
    .line 555
    const/16 v73, 0x0

    #@39
    move/from16 v0, v73

    #@3b
    move-object/from16 v1, p0

    #@3d
    iput-boolean v0, v1, Landroid/widget/TextView;->mLocaleChanged:Z

    #@3f
    .line 558
    const v73, 0x800033

    #@42
    move/from16 v0, v73

    #@44
    move-object/from16 v1, p0

    #@46
    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    #@48
    .line 562
    const/16 v73, 0x1

    #@4a
    move/from16 v0, v73

    #@4c
    move-object/from16 v1, p0

    #@4e
    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    #@50
    .line 564
    const/high16 v73, 0x3f800000    # 1.0f

    #@52
    move/from16 v0, v73

    #@54
    move-object/from16 v1, p0

    #@56
    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    #@58
    .line 565
    const/16 v73, 0x0

    #@5a
    move/from16 v0, v73

    #@5c
    move-object/from16 v1, p0

    #@5e
    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    #@60
    .line 570
    const v73, 0x7fffffff

    #@63
    move/from16 v0, v73

    #@65
    move-object/from16 v1, p0

    #@67
    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    #@69
    .line 571
    const/16 v73, 0x1

    #@6b
    move/from16 v0, v73

    #@6d
    move-object/from16 v1, p0

    #@6f
    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    #@71
    .line 572
    const/16 v73, 0x0

    #@73
    move/from16 v0, v73

    #@75
    move-object/from16 v1, p0

    #@77
    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    #@79
    .line 573
    const/16 v73, 0x1

    #@7b
    move/from16 v0, v73

    #@7d
    move-object/from16 v1, p0

    #@7f
    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    #@81
    .line 575
    move-object/from16 v0, p0

    #@83
    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    #@85
    move/from16 v73, v0

    #@87
    move/from16 v0, v73

    #@89
    move-object/from16 v1, p0

    #@8b
    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    #@8d
    .line 576
    move-object/from16 v0, p0

    #@8f
    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    #@91
    move/from16 v73, v0

    #@93
    move/from16 v0, v73

    #@95
    move-object/from16 v1, p0

    #@97
    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    #@99
    .line 578
    const v73, 0x7fffffff

    #@9c
    move/from16 v0, v73

    #@9e
    move-object/from16 v1, p0

    #@a0
    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    #@a2
    .line 579
    const/16 v73, 0x2

    #@a4
    move/from16 v0, v73

    #@a6
    move-object/from16 v1, p0

    #@a8
    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    #@aa
    .line 580
    const/16 v73, 0x0

    #@ac
    move/from16 v0, v73

    #@ae
    move-object/from16 v1, p0

    #@b0
    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    #@b2
    .line 581
    const/16 v73, 0x2

    #@b4
    move/from16 v0, v73

    #@b6
    move-object/from16 v1, p0

    #@b8
    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    #@ba
    .line 584
    const/16 v73, -0x1

    #@bc
    move/from16 v0, v73

    #@be
    move-object/from16 v1, p0

    #@c0
    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@c2
    .line 585
    const/16 v73, 0x1

    #@c4
    move/from16 v0, v73

    #@c6
    move-object/from16 v1, p0

    #@c8
    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    #@ca
    .line 586
    const/16 v73, -0x1

    #@cc
    move/from16 v0, v73

    #@ce
    move-object/from16 v1, p0

    #@d0
    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    #@d2
    .line 598
    sget-object v73, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    #@d4
    move-object/from16 v0, v73

    #@d6
    move-object/from16 v1, p0

    #@d8
    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@da
    .line 604
    const v73, 0x6633b5e5

    #@dd
    move/from16 v0, v73

    #@df
    move-object/from16 v1, p0

    #@e1
    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    #@e3
    .line 607
    const/16 v73, 0x1

    #@e5
    move/from16 v0, v73

    #@e7
    move-object/from16 v1, p0

    #@e9
    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@eb
    .line 609
    const/16 v73, 0x0

    #@ed
    move/from16 v0, v73

    #@ef
    move-object/from16 v1, p0

    #@f1
    iput-boolean v0, v1, Landroid/widget/TextView;->mFirstTouch:Z

    #@f3
    .line 610
    const-wide/16 v74, 0x0

    #@f5
    move-wide/from16 v0, v74

    #@f7
    move-object/from16 v2, p0

    #@f9
    iput-wide v0, v2, Landroid/widget/TextView;->mLastTouchUpTime:J

    #@fb
    .line 679
    const-string/jumbo v73, ""

    #@fe
    move-object/from16 v0, v73

    #@100
    move-object/from16 v1, p0

    #@102
    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@104
    .line 681
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@107
    move-result-object v58

    #@108
    .line 682
    .local v58, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v58 .. v58}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@10b
    move-result-object v18

    #@10c
    .line 684
    .local v18, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v73, Landroid/text/TextPaint;

    #@10e
    const/16 v74, 0x1

    #@110
    invoke-direct/range {v73 .. v74}, Landroid/text/TextPaint;-><init>(I)V

    #@113
    move-object/from16 v0, v73

    #@115
    move-object/from16 v1, p0

    #@117
    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@119
    .line 685
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@11d
    move-object/from16 v73, v0

    #@11f
    invoke-virtual/range {v58 .. v58}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@122
    move-result-object v74

    #@123
    move-object/from16 v0, v74

    #@125
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@127
    move/from16 v74, v0

    #@129
    move/from16 v0, v74

    #@12b
    move-object/from16 v1, v73

    #@12d
    iput v0, v1, Landroid/text/TextPaint;->density:F

    #@12f
    .line 686
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@133
    move-object/from16 v73, v0

    #@135
    move-object/from16 v0, v18

    #@137
    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@139
    move/from16 v74, v0

    #@13b
    invoke-virtual/range {v73 .. v74}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    #@13e
    .line 688
    new-instance v73, Landroid/graphics/Paint;

    #@140
    const/16 v74, 0x1

    #@142
    invoke-direct/range {v73 .. v74}, Landroid/graphics/Paint;-><init>(I)V

    #@145
    move-object/from16 v0, v73

    #@147
    move-object/from16 v1, p0

    #@149
    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@14b
    .line 689
    move-object/from16 v0, p0

    #@14d
    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@14f
    move-object/from16 v73, v0

    #@151
    move-object/from16 v0, v18

    #@153
    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    #@155
    move/from16 v74, v0

    #@157
    invoke-virtual/range {v73 .. v74}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    #@15a
    .line 691
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    #@15d
    move-result-object v73

    #@15e
    move-object/from16 v0, v73

    #@160
    move-object/from16 v1, p0

    #@162
    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@164
    .line 693
    const/16 v73, 0x0

    #@166
    move-object/from16 v0, v73

    #@168
    move-object/from16 v1, p0

    #@16a
    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@16c
    .line 695
    const/16 v65, 0x0

    #@16e
    .line 696
    .local v65, "textColorHighlight":I
    const/16 v64, 0x0

    #@170
    .line 697
    .local v64, "textColor":Landroid/content/res/ColorStateList;
    const/16 v66, 0x0

    #@172
    .line 698
    .local v66, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v67, 0x0

    #@174
    .line 699
    .local v67, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v68, 0xf

    #@176
    .line 700
    .local v68, "textSize":I
    const/16 v41, 0x0

    #@178
    .line 701
    .local v41, "fontFamily":Ljava/lang/String;
    const/16 v42, 0x0

    #@17a
    .line 702
    .local v42, "fontFamilyExplicit":Z
    const/16 v70, -0x1

    #@17c
    .line 703
    .local v70, "typefaceIndex":I
    const/16 v62, -0x1

    #@17e
    .line 704
    .local v62, "styleIndex":I
    const/4 v7, 0x0

    #@17f
    .line 705
    .local v7, "allCaps":Z
    const/16 v60, 0x0

    #@181
    .line 706
    .local v60, "shadowcolor":I
    const/16 v29, 0x0

    #@183
    .local v29, "dx":F
    const/16 v30, 0x0

    #@185
    .local v30, "dy":F
    const/16 v57, 0x0

    #@187
    .line 707
    .local v57, "r":F
    const/16 v35, 0x0

    #@189
    .line 708
    .local v35, "elegant":Z
    const/16 v48, 0x0

    #@18b
    .line 709
    .local v48, "letterSpacing":F
    const/16 v43, 0x0

    #@18d
    .line 710
    .local v43, "fontFeatureSettings":Ljava/lang/String;
    const/16 v73, 0x0

    #@18f
    move/from16 v0, v73

    #@191
    move-object/from16 v1, p0

    #@193
    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    #@195
    .line 711
    const/16 v73, 0x0

    #@197
    move/from16 v0, v73

    #@199
    move-object/from16 v1, p0

    #@19b
    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@19d
    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1a0
    move-result-object v69

    #@1a1
    .line 722
    .local v69, "theme":Landroid/content/res/Resources$Theme;
    sget-object v73, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    #@1a3
    .line 721
    move-object/from16 v0, v69

    #@1a5
    move-object/from16 v1, p2

    #@1a7
    move-object/from16 v2, v73

    #@1a9
    move/from16 v3, p3

    #@1ab
    move/from16 v4, p4

    #@1ad
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@1b0
    move-result-object v6

    #@1b1
    .line 723
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    #@1b2
    .line 725
    .local v9, "appearance":Landroid/content/res/TypedArray;
    const/16 v73, 0x0

    #@1b4
    const/16 v74, -0x1

    #@1b6
    .line 724
    move/from16 v0, v73

    #@1b8
    move/from16 v1, v74

    #@1ba
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1bd
    move-result v8

    #@1be
    .line 726
    .local v8, "ap":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@1c1
    .line 727
    const/16 v73, -0x1

    #@1c3
    move/from16 v0, v73

    #@1c5
    if-eq v8, v0, :cond_0

    #@1c7
    .line 729
    sget-object v73, Lcom/android/internal/R$styleable;->TextAppearance:[I

    #@1c9
    .line 728
    move-object/from16 v0, v69

    #@1cb
    move-object/from16 v1, v73

    #@1cd
    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@1d0
    move-result-object v9

    #@1d1
    .line 731
    .end local v9    # "appearance":Landroid/content/res/TypedArray;
    :cond_0
    if-eqz v9, :cond_2

    #@1d3
    .line 732
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@1d6
    move-result v51

    #@1d7
    .line 733
    .local v51, "n":I
    const/16 v45, 0x0

    #@1d9
    .end local v7    # "allCaps":Z
    .end local v35    # "elegant":Z
    .end local v41    # "fontFamily":Ljava/lang/String;
    .end local v43    # "fontFeatureSettings":Ljava/lang/String;
    .end local v64    # "textColor":Landroid/content/res/ColorStateList;
    .end local v66    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v67    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v45, "i":I
    :goto_0
    move/from16 v0, v45

    #@1db
    move/from16 v1, v51

    #@1dd
    if-ge v0, v1, :cond_1

    #@1df
    .line 734
    move/from16 v0, v45

    #@1e1
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1e4
    move-result v10

    #@1e5
    .line 736
    .local v10, "attr":I
    packed-switch v10, :pswitch_data_0

    #@1e8
    .line 733
    :goto_1
    add-int/lit8 v45, v45, 0x1

    #@1ea
    goto :goto_0

    #@1eb
    .line 738
    :pswitch_0
    move/from16 v0, v65

    #@1ed
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@1f0
    move-result v65

    #@1f1
    goto :goto_1

    #@1f2
    .line 742
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1f5
    move-result-object v64

    #@1f6
    .local v64, "textColor":Landroid/content/res/ColorStateList;
    goto :goto_1

    #@1f7
    .line 746
    .end local v64    # "textColor":Landroid/content/res/ColorStateList;
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1fa
    move-result-object v66

    #@1fb
    .local v66, "textColorHint":Landroid/content/res/ColorStateList;
    goto :goto_1

    #@1fc
    .line 750
    .end local v66    # "textColorHint":Landroid/content/res/ColorStateList;
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1ff
    move-result-object v67

    #@200
    .local v67, "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_1

    #@201
    .line 754
    .end local v67    # "textColorLink":Landroid/content/res/ColorStateList;
    :pswitch_4
    move/from16 v0, v68

    #@203
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@206
    move-result v68

    #@207
    goto :goto_1

    #@208
    .line 758
    :pswitch_5
    const/16 v73, -0x1

    #@20a
    move/from16 v0, v73

    #@20c
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@20f
    move-result v70

    #@210
    goto :goto_1

    #@211
    .line 762
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@214
    move-result-object v41

    #@215
    .local v41, "fontFamily":Ljava/lang/String;
    goto :goto_1

    #@216
    .line 766
    .end local v41    # "fontFamily":Ljava/lang/String;
    :pswitch_7
    const/16 v73, -0x1

    #@218
    move/from16 v0, v73

    #@21a
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@21d
    move-result v62

    #@21e
    goto :goto_1

    #@21f
    .line 770
    :pswitch_8
    const/16 v73, 0x0

    #@221
    move/from16 v0, v73

    #@223
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@226
    move-result v7

    #@227
    .local v7, "allCaps":Z
    goto :goto_1

    #@228
    .line 774
    .end local v7    # "allCaps":Z
    :pswitch_9
    const/16 v73, 0x0

    #@22a
    move/from16 v0, v73

    #@22c
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@22f
    move-result v60

    #@230
    goto :goto_1

    #@231
    .line 778
    :pswitch_a
    const/16 v73, 0x0

    #@233
    move/from16 v0, v73

    #@235
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@238
    move-result v29

    #@239
    goto :goto_1

    #@23a
    .line 782
    :pswitch_b
    const/16 v73, 0x0

    #@23c
    move/from16 v0, v73

    #@23e
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@241
    move-result v30

    #@242
    goto :goto_1

    #@243
    .line 786
    :pswitch_c
    const/16 v73, 0x0

    #@245
    move/from16 v0, v73

    #@247
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@24a
    move-result v57

    #@24b
    goto :goto_1

    #@24c
    .line 790
    :pswitch_d
    const/16 v73, 0x0

    #@24e
    move/from16 v0, v73

    #@250
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@253
    move-result v35

    #@254
    .local v35, "elegant":Z
    goto :goto_1

    #@255
    .line 794
    .end local v35    # "elegant":Z
    :pswitch_e
    const/16 v73, 0x0

    #@257
    move/from16 v0, v73

    #@259
    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@25c
    move-result v48

    #@25d
    goto :goto_1

    #@25e
    .line 798
    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@261
    move-result-object v43

    #@262
    .local v43, "fontFeatureSettings":Ljava/lang/String;
    goto :goto_1

    #@263
    .line 803
    .end local v10    # "attr":I
    .end local v43    # "fontFeatureSettings":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    #@266
    .line 806
    .end local v45    # "i":I
    .end local v51    # "n":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    #@269
    move-result v34

    #@26a
    .line 807
    .local v34, "editable":Z
    const/16 v46, 0x0

    #@26c
    .line 808
    .local v46, "inputMethod":Ljava/lang/CharSequence;
    const/16 v53, 0x0

    #@26e
    .line 809
    .local v53, "numeric":I
    const/16 v19, 0x0

    #@270
    .line 810
    .local v19, "digits":Ljava/lang/CharSequence;
    const/16 v56, 0x0

    #@272
    .line 811
    .local v56, "phone":Z
    const/4 v12, 0x0

    #@273
    .line 812
    .local v12, "autotext":Z
    const/4 v11, -0x1

    #@274
    .line 813
    .local v11, "autocap":I
    const/4 v14, 0x0

    #@275
    .line 814
    .local v14, "buffertype":I
    const/16 v59, 0x0

    #@277
    .line 815
    .local v59, "selectallonfocus":Z
    const/16 v22, 0x0

    #@279
    .local v22, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/16 v28, 0x0

    #@27b
    .local v28, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    #@27d
    .line 816
    .local v24, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    #@27f
    .local v20, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    #@281
    .local v25, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    #@283
    .line 817
    .local v21, "drawableEnd":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x0

    #@285
    .line 818
    .local v26, "drawableTint":Landroid/content/res/ColorStateList;
    const/16 v27, 0x0

    #@287
    .line 819
    .local v27, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    const/16 v23, 0x0

    #@289
    .line 820
    .local v23, "drawablePadding":I
    const/16 v36, -0x1

    #@28b
    .line 821
    .local v36, "ellipsize":I
    const/16 v61, 0x0

    #@28d
    .line 822
    .local v61, "singleLine":Z
    const/16 v50, -0x1

    #@28f
    .line 823
    .local v50, "maxlength":I
    const-string/jumbo v63, ""

    #@292
    .line 824
    .local v63, "text":Ljava/lang/CharSequence;
    const/16 v44, 0x0

    #@294
    .line 825
    .local v44, "hint":Ljava/lang/CharSequence;
    const/16 v54, 0x0

    #@296
    .line 826
    .local v54, "password":Z
    const/16 v47, 0x0

    #@298
    .line 829
    .local v47, "inputType":I
    sget-object v73, Lcom/android/internal/R$styleable;->TextView:[I

    #@29a
    .line 828
    move-object/from16 v0, v69

    #@29c
    move-object/from16 v1, p2

    #@29e
    move-object/from16 v2, v73

    #@2a0
    move/from16 v3, p3

    #@2a2
    move/from16 v4, p4

    #@2a4
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2a7
    move-result-object v6

    #@2a8
    .line 831
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@2ab
    move-result v51

    #@2ac
    .line 832
    .restart local v51    # "n":I
    const/16 v45, 0x0

    #@2ae
    .end local v12    # "autotext":Z
    .end local v19    # "digits":Ljava/lang/CharSequence;
    .end local v20    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .end local v21    # "drawableEnd":Landroid/graphics/drawable/Drawable;
    .end local v22    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v24    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .end local v25    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .end local v26    # "drawableTint":Landroid/content/res/ColorStateList;
    .end local v27    # "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    .end local v28    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .end local v44    # "hint":Ljava/lang/CharSequence;
    .end local v46    # "inputMethod":Ljava/lang/CharSequence;
    .end local v54    # "password":Z
    .end local v56    # "phone":Z
    .end local v59    # "selectallonfocus":Z
    .end local v61    # "singleLine":Z
    .restart local v45    # "i":I
    :goto_2
    move/from16 v0, v45

    #@2b0
    move/from16 v1, v51

    #@2b2
    if-ge v0, v1, :cond_4

    #@2b4
    .line 833
    move/from16 v0, v45

    #@2b6
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@2b9
    move-result v10

    #@2ba
    .line 835
    .restart local v10    # "attr":I
    packed-switch v10, :pswitch_data_1

    #@2bd
    .line 832
    :cond_3
    :goto_3
    :pswitch_10
    add-int/lit8 v45, v45, 0x1

    #@2bf
    goto :goto_2

    #@2c0
    .line 837
    :pswitch_11
    move/from16 v0, v34

    #@2c2
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2c5
    move-result v34

    #@2c6
    goto :goto_3

    #@2c7
    .line 841
    :pswitch_12
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@2ca
    move-result-object v46

    #@2cb
    .local v46, "inputMethod":Ljava/lang/CharSequence;
    goto :goto_3

    #@2cc
    .line 845
    .end local v46    # "inputMethod":Ljava/lang/CharSequence;
    :pswitch_13
    move/from16 v0, v53

    #@2ce
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2d1
    move-result v53

    #@2d2
    goto :goto_3

    #@2d3
    .line 849
    :pswitch_14
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@2d6
    move-result-object v19

    #@2d7
    .local v19, "digits":Ljava/lang/CharSequence;
    goto :goto_3

    #@2d8
    .line 853
    .end local v19    # "digits":Ljava/lang/CharSequence;
    :pswitch_15
    move/from16 v0, v56

    #@2da
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2dd
    move-result v56

    #@2de
    .local v56, "phone":Z
    goto :goto_3

    #@2df
    .line 857
    .end local v56    # "phone":Z
    :pswitch_16
    invoke-virtual {v6, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2e2
    move-result v12

    #@2e3
    .local v12, "autotext":Z
    goto :goto_3

    #@2e4
    .line 861
    .end local v12    # "autotext":Z
    :pswitch_17
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2e7
    move-result v11

    #@2e8
    goto :goto_3

    #@2e9
    .line 865
    :pswitch_18
    invoke-virtual {v6, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2ec
    move-result v14

    #@2ed
    goto :goto_3

    #@2ee
    .line 869
    :pswitch_19
    move/from16 v0, v59

    #@2f0
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2f3
    move-result v59

    #@2f4
    .local v59, "selectallonfocus":Z
    goto :goto_3

    #@2f5
    .line 873
    .end local v59    # "selectallonfocus":Z
    :pswitch_1a
    const/16 v73, 0x0

    #@2f7
    move/from16 v0, v73

    #@2f9
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2fc
    move-result v73

    #@2fd
    move/from16 v0, v73

    #@2ff
    move-object/from16 v1, p0

    #@301
    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    #@303
    goto :goto_3

    #@304
    .line 877
    :pswitch_1b
    const/16 v73, 0x1

    #@306
    move/from16 v0, v73

    #@308
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@30b
    move-result v73

    #@30c
    move/from16 v0, v73

    #@30e
    move-object/from16 v1, p0

    #@310
    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    #@312
    goto :goto_3

    #@313
    .line 881
    :pswitch_1c
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@316
    move-result-object v22

    #@317
    .local v22, "drawableLeft":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@318
    .line 885
    .end local v22    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :pswitch_1d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@31b
    move-result-object v28

    #@31c
    .local v28, "drawableTop":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@31d
    .line 889
    .end local v28    # "drawableTop":Landroid/graphics/drawable/Drawable;
    :pswitch_1e
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@320
    move-result-object v24

    #@321
    .local v24, "drawableRight":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@322
    .line 893
    .end local v24    # "drawableRight":Landroid/graphics/drawable/Drawable;
    :pswitch_1f
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@325
    move-result-object v20

    #@326
    .local v20, "drawableBottom":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@327
    .line 897
    .end local v20    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    :pswitch_20
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@32a
    move-result-object v25

    #@32b
    .local v25, "drawableStart":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@32c
    .line 901
    .end local v25    # "drawableStart":Landroid/graphics/drawable/Drawable;
    :pswitch_21
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@32f
    move-result-object v21

    #@330
    .local v21, "drawableEnd":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    #@331
    .line 905
    .end local v21    # "drawableEnd":Landroid/graphics/drawable/Drawable;
    :pswitch_22
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@334
    move-result-object v26

    #@335
    .local v26, "drawableTint":Landroid/content/res/ColorStateList;
    goto :goto_3

    #@336
    .line 909
    .end local v26    # "drawableTint":Landroid/content/res/ColorStateList;
    :pswitch_23
    const/16 v73, -0x1

    #@338
    move/from16 v0, v73

    #@33a
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@33d
    move-result v73

    #@33e
    move/from16 v0, v73

    #@340
    move-object/from16 v1, v27

    #@342
    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@345
    move-result-object v27

    #@346
    .local v27, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    goto/16 :goto_3

    #@348
    .line 913
    .end local v27    # "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_24
    move/from16 v0, v23

    #@34a
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@34d
    move-result v23

    #@34e
    goto/16 :goto_3

    #@350
    .line 917
    :pswitch_25
    const/16 v73, -0x1

    #@352
    move/from16 v0, v73

    #@354
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@357
    move-result v73

    #@358
    move-object/from16 v0, p0

    #@35a
    move/from16 v1, v73

    #@35c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    #@35f
    goto/16 :goto_3

    #@361
    .line 921
    :pswitch_26
    const/16 v73, -0x1

    #@363
    move/from16 v0, v73

    #@365
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@368
    move-result v73

    #@369
    move-object/from16 v0, p0

    #@36b
    move/from16 v1, v73

    #@36d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    #@370
    goto/16 :goto_3

    #@372
    .line 925
    :pswitch_27
    const/16 v73, -0x1

    #@374
    move/from16 v0, v73

    #@376
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@379
    move-result v73

    #@37a
    move-object/from16 v0, p0

    #@37c
    move/from16 v1, v73

    #@37e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    #@381
    goto/16 :goto_3

    #@383
    .line 929
    :pswitch_28
    const/16 v73, -0x1

    #@385
    move/from16 v0, v73

    #@387
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@38a
    move-result v73

    #@38b
    move-object/from16 v0, p0

    #@38d
    move/from16 v1, v73

    #@38f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    #@392
    goto/16 :goto_3

    #@394
    .line 933
    :pswitch_29
    const/16 v73, -0x1

    #@396
    move/from16 v0, v73

    #@398
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@39b
    move-result v73

    #@39c
    move-object/from16 v0, p0

    #@39e
    move/from16 v1, v73

    #@3a0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    #@3a3
    goto/16 :goto_3

    #@3a5
    .line 937
    :pswitch_2a
    const/16 v73, -0x1

    #@3a7
    move/from16 v0, v73

    #@3a9
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3ac
    move-result v73

    #@3ad
    move-object/from16 v0, p0

    #@3af
    move/from16 v1, v73

    #@3b1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    #@3b4
    goto/16 :goto_3

    #@3b6
    .line 941
    :pswitch_2b
    const/16 v73, -0x1

    #@3b8
    move/from16 v0, v73

    #@3ba
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3bd
    move-result v73

    #@3be
    move-object/from16 v0, p0

    #@3c0
    move/from16 v1, v73

    #@3c2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    #@3c5
    goto/16 :goto_3

    #@3c7
    .line 945
    :pswitch_2c
    const/16 v73, -0x1

    #@3c9
    move/from16 v0, v73

    #@3cb
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3ce
    move-result v73

    #@3cf
    move-object/from16 v0, p0

    #@3d1
    move/from16 v1, v73

    #@3d3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    #@3d6
    goto/16 :goto_3

    #@3d8
    .line 949
    :pswitch_2d
    const/16 v73, -0x1

    #@3da
    move/from16 v0, v73

    #@3dc
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3df
    move-result v73

    #@3e0
    move-object/from16 v0, p0

    #@3e2
    move/from16 v1, v73

    #@3e4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    #@3e7
    goto/16 :goto_3

    #@3e9
    .line 953
    :pswitch_2e
    const/16 v73, -0x1

    #@3eb
    move/from16 v0, v73

    #@3ed
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@3f0
    move-result v73

    #@3f1
    move-object/from16 v0, p0

    #@3f3
    move/from16 v1, v73

    #@3f5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    #@3f8
    goto/16 :goto_3

    #@3fa
    .line 957
    :pswitch_2f
    const/16 v73, -0x1

    #@3fc
    move/from16 v0, v73

    #@3fe
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@401
    move-result v73

    #@402
    move-object/from16 v0, p0

    #@404
    move/from16 v1, v73

    #@406
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    #@409
    goto/16 :goto_3

    #@40b
    .line 961
    :pswitch_30
    const/16 v73, -0x1

    #@40d
    move/from16 v0, v73

    #@40f
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@412
    move-result v73

    #@413
    move-object/from16 v0, p0

    #@415
    move/from16 v1, v73

    #@417
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    #@41a
    goto/16 :goto_3

    #@41c
    .line 965
    :pswitch_31
    const/16 v73, -0x1

    #@41e
    move/from16 v0, v73

    #@420
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@423
    move-result v73

    #@424
    move-object/from16 v0, p0

    #@426
    move/from16 v1, v73

    #@428
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    #@42b
    goto/16 :goto_3

    #@42d
    .line 969
    :pswitch_32
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@430
    move-result-object v44

    #@431
    .local v44, "hint":Ljava/lang/CharSequence;
    goto/16 :goto_3

    #@433
    .line 973
    .end local v44    # "hint":Ljava/lang/CharSequence;
    :pswitch_33
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@436
    move-result-object v63

    #@437
    goto/16 :goto_3

    #@439
    .line 977
    :pswitch_34
    const/16 v73, 0x0

    #@43b
    move/from16 v0, v73

    #@43d
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@440
    move-result v73

    #@441
    if-eqz v73, :cond_3

    #@443
    .line 978
    const/16 v73, 0x1

    #@445
    move-object/from16 v0, p0

    #@447
    move/from16 v1, v73

    #@449
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    #@44c
    goto/16 :goto_3

    #@44e
    .line 983
    :pswitch_35
    move/from16 v0, v61

    #@450
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@453
    move-result v61

    #@454
    .local v61, "singleLine":Z
    goto/16 :goto_3

    #@456
    .line 987
    .end local v61    # "singleLine":Z
    :pswitch_36
    move/from16 v0, v36

    #@458
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@45b
    move-result v36

    #@45c
    goto/16 :goto_3

    #@45e
    .line 991
    :pswitch_37
    move-object/from16 v0, p0

    #@460
    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@462
    move/from16 v73, v0

    #@464
    move/from16 v0, v73

    #@466
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@469
    move-result v73

    #@46a
    move-object/from16 v0, p0

    #@46c
    move/from16 v1, v73

    #@46e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    #@471
    goto/16 :goto_3

    #@473
    .line 995
    :pswitch_38
    const/16 v73, 0x1

    #@475
    move/from16 v0, v73

    #@477
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@47a
    move-result v73

    #@47b
    if-nez v73, :cond_3

    #@47d
    .line 996
    const/16 v73, 0x0

    #@47f
    move-object/from16 v0, p0

    #@481
    move/from16 v1, v73

    #@483
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    #@486
    goto/16 :goto_3

    #@488
    .line 1001
    :pswitch_39
    const/16 v73, 0x1

    #@48a
    move/from16 v0, v73

    #@48c
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@48f
    move-result v73

    #@490
    if-nez v73, :cond_3

    #@492
    .line 1002
    const/16 v73, 0x0

    #@494
    move-object/from16 v0, p0

    #@496
    move/from16 v1, v73

    #@498
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    #@49b
    goto/16 :goto_3

    #@49d
    .line 1007
    :pswitch_3a
    const/16 v73, -0x1

    #@49f
    move/from16 v0, v73

    #@4a1
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4a4
    move-result v50

    #@4a5
    goto/16 :goto_3

    #@4a7
    .line 1011
    :pswitch_3b
    const/high16 v73, 0x3f800000    # 1.0f

    #@4a9
    move/from16 v0, v73

    #@4ab
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4ae
    move-result v73

    #@4af
    move-object/from16 v0, p0

    #@4b1
    move/from16 v1, v73

    #@4b3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    #@4b6
    goto/16 :goto_3

    #@4b8
    .line 1015
    :pswitch_3c
    const/16 v73, 0x0

    #@4ba
    move/from16 v0, v73

    #@4bc
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4bf
    move-result v73

    #@4c0
    move/from16 v0, v73

    #@4c2
    move-object/from16 v1, p0

    #@4c4
    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    #@4c6
    goto/16 :goto_3

    #@4c8
    .line 1019
    :pswitch_3d
    const/16 v73, 0x0

    #@4ca
    move/from16 v0, v73

    #@4cc
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4cf
    move-result v60

    #@4d0
    goto/16 :goto_3

    #@4d2
    .line 1023
    :pswitch_3e
    const/16 v73, 0x0

    #@4d4
    move/from16 v0, v73

    #@4d6
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4d9
    move-result v29

    #@4da
    goto/16 :goto_3

    #@4dc
    .line 1027
    :pswitch_3f
    const/16 v73, 0x0

    #@4de
    move/from16 v0, v73

    #@4e0
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4e3
    move-result v30

    #@4e4
    goto/16 :goto_3

    #@4e6
    .line 1031
    :pswitch_40
    const/16 v73, 0x0

    #@4e8
    move/from16 v0, v73

    #@4ea
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4ed
    move-result v57

    #@4ee
    goto/16 :goto_3

    #@4f0
    .line 1035
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    #@4f3
    move-result v73

    #@4f4
    move/from16 v0, v73

    #@4f6
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4f9
    move-result v73

    #@4fa
    move-object/from16 v0, p0

    #@4fc
    move/from16 v1, v73

    #@4fe
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@501
    goto/16 :goto_3

    #@503
    .line 1039
    :pswitch_42
    move/from16 v0, v65

    #@505
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@508
    move-result v65

    #@509
    goto/16 :goto_3

    #@50b
    .line 1043
    :pswitch_43
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@50e
    move-result-object v64

    #@50f
    .restart local v64    # "textColor":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    #@511
    .line 1047
    .end local v64    # "textColor":Landroid/content/res/ColorStateList;
    :pswitch_44
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@514
    move-result-object v66

    #@515
    .restart local v66    # "textColorHint":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    #@517
    .line 1051
    .end local v66    # "textColorHint":Landroid/content/res/ColorStateList;
    :pswitch_45
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@51a
    move-result-object v67

    #@51b
    .restart local v67    # "textColorLink":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    #@51d
    .line 1055
    .end local v67    # "textColorLink":Landroid/content/res/ColorStateList;
    :pswitch_46
    move/from16 v0, v68

    #@51f
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@522
    move-result v68

    #@523
    goto/16 :goto_3

    #@525
    .line 1059
    :pswitch_47
    move/from16 v0, v70

    #@527
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@52a
    move-result v70

    #@52b
    goto/16 :goto_3

    #@52d
    .line 1063
    :pswitch_48
    move/from16 v0, v62

    #@52f
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@532
    move-result v62

    #@533
    goto/16 :goto_3

    #@535
    .line 1067
    :pswitch_49
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@538
    move-result-object v41

    #@539
    .line 1068
    .restart local v41    # "fontFamily":Ljava/lang/String;
    const/16 v42, 0x1

    #@53b
    .line 1069
    goto/16 :goto_3

    #@53d
    .line 1072
    .end local v41    # "fontFamily":Ljava/lang/String;
    :pswitch_4a
    move/from16 v0, v54

    #@53f
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@542
    move-result v54

    #@543
    .local v54, "password":Z
    goto/16 :goto_3

    #@545
    .line 1076
    .end local v54    # "password":Z
    :pswitch_4b
    move-object/from16 v0, p0

    #@547
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@549
    move/from16 v73, v0

    #@54b
    move/from16 v0, v73

    #@54d
    float-to-int v0, v0

    #@54e
    move/from16 v73, v0

    #@550
    move/from16 v0, v73

    #@552
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@555
    move-result v73

    #@556
    move/from16 v0, v73

    #@558
    int-to-float v0, v0

    #@559
    move/from16 v73, v0

    #@55b
    move/from16 v0, v73

    #@55d
    move-object/from16 v1, p0

    #@55f
    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    #@561
    goto/16 :goto_3

    #@563
    .line 1080
    :pswitch_4c
    move-object/from16 v0, p0

    #@565
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@567
    move/from16 v73, v0

    #@569
    move/from16 v0, v73

    #@56b
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@56e
    move-result v73

    #@56f
    move/from16 v0, v73

    #@571
    move-object/from16 v1, p0

    #@573
    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    #@575
    goto/16 :goto_3

    #@577
    .line 1084
    :pswitch_4d
    const/16 v73, 0x0

    #@579
    move/from16 v0, v73

    #@57b
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@57e
    move-result v47

    #@57f
    goto/16 :goto_3

    #@581
    .line 1088
    :pswitch_4e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@584
    .line 1089
    move-object/from16 v0, p0

    #@586
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@588
    move-object/from16 v73, v0

    #@58a
    const/16 v74, 0x1

    #@58c
    move/from16 v0, v74

    #@58e
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@591
    move-result v74

    #@592
    move/from16 v0, v74

    #@594
    move-object/from16 v1, v73

    #@596
    iput-boolean v0, v1, Landroid/widget/Editor;->mAllowUndo:Z

    #@598
    goto/16 :goto_3

    #@59a
    .line 1093
    :pswitch_4f
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@59d
    .line 1094
    move-object/from16 v0, p0

    #@59f
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5a1
    move-object/from16 v73, v0

    #@5a3
    invoke-virtual/range {v73 .. v73}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@5a6
    .line 1095
    move-object/from16 v0, p0

    #@5a8
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5aa
    move-object/from16 v73, v0

    #@5ac
    move-object/from16 v0, v73

    #@5ae
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@5b0
    move-object/from16 v73, v0

    #@5b2
    .line 1096
    move-object/from16 v0, p0

    #@5b4
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5b6
    move-object/from16 v74, v0

    #@5b8
    move-object/from16 v0, v74

    #@5ba
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@5bc
    move-object/from16 v74, v0

    #@5be
    move-object/from16 v0, v74

    #@5c0
    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@5c2
    move/from16 v74, v0

    #@5c4
    .line 1095
    move/from16 v0, v74

    #@5c6
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@5c9
    move-result v74

    #@5ca
    move/from16 v0, v74

    #@5cc
    move-object/from16 v1, v73

    #@5ce
    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@5d0
    goto/16 :goto_3

    #@5d2
    .line 1100
    :pswitch_50
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@5d5
    .line 1101
    move-object/from16 v0, p0

    #@5d7
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5d9
    move-object/from16 v73, v0

    #@5db
    invoke-virtual/range {v73 .. v73}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@5de
    .line 1102
    move-object/from16 v0, p0

    #@5e0
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5e2
    move-object/from16 v73, v0

    #@5e4
    move-object/from16 v0, v73

    #@5e6
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@5e8
    move-object/from16 v73, v0

    #@5ea
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@5ed
    move-result-object v74

    #@5ee
    move-object/from16 v0, v74

    #@5f0
    move-object/from16 v1, v73

    #@5f2
    iput-object v0, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    #@5f4
    goto/16 :goto_3

    #@5f6
    .line 1106
    :pswitch_51
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@5f9
    .line 1107
    move-object/from16 v0, p0

    #@5fb
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5fd
    move-object/from16 v73, v0

    #@5ff
    invoke-virtual/range {v73 .. v73}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@602
    .line 1108
    move-object/from16 v0, p0

    #@604
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@606
    move-object/from16 v73, v0

    #@608
    move-object/from16 v0, v73

    #@60a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@60c
    move-object/from16 v73, v0

    #@60e
    .line 1109
    move-object/from16 v0, p0

    #@610
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@612
    move-object/from16 v74, v0

    #@614
    move-object/from16 v0, v74

    #@616
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@618
    move-object/from16 v74, v0

    #@61a
    move-object/from16 v0, v74

    #@61c
    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@61e
    move/from16 v74, v0

    #@620
    .line 1108
    move/from16 v0, v74

    #@622
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@625
    move-result v74

    #@626
    move/from16 v0, v74

    #@628
    move-object/from16 v1, v73

    #@62a
    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@62c
    goto/16 :goto_3

    #@62e
    .line 1113
    :pswitch_52
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@631
    move-result-object v73

    #@632
    move-object/from16 v0, p0

    #@634
    move-object/from16 v1, v73

    #@636
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    #@639
    goto/16 :goto_3

    #@63b
    .line 1118
    :pswitch_53
    const/16 v73, 0x0

    #@63d
    :try_start_0
    move/from16 v0, v73

    #@63f
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@642
    move-result v73

    #@643
    move-object/from16 v0, p0

    #@645
    move/from16 v1, v73

    #@647
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@64a
    goto/16 :goto_3

    #@64c
    .line 1119
    :catch_0
    move-exception v33

    #@64d
    .line 1120
    .local v33, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v73, "TextView"

    #@650
    const-string/jumbo v74, "Failure reading input extras"

    #@653
    move-object/from16 v0, v73

    #@655
    move-object/from16 v1, v74

    #@657
    move-object/from16 v2, v33

    #@659
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@65c
    goto/16 :goto_3

    #@65e
    .line 1121
    .end local v33    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v31

    #@65f
    .line 1122
    .local v31, "e":Ljava/io/IOException;
    const-string/jumbo v73, "TextView"

    #@662
    const-string/jumbo v74, "Failure reading input extras"

    #@665
    move-object/from16 v0, v73

    #@667
    move-object/from16 v1, v74

    #@669
    move-object/from16 v2, v31

    #@66b
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@66e
    goto/16 :goto_3

    #@670
    .line 1127
    .end local v31    # "e":Ljava/io/IOException;
    :pswitch_54
    const/16 v73, 0x0

    #@672
    move/from16 v0, v73

    #@674
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@677
    move-result v73

    #@678
    move/from16 v0, v73

    #@67a
    move-object/from16 v1, p0

    #@67c
    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    #@67e
    goto/16 :goto_3

    #@680
    .line 1131
    :pswitch_55
    const/16 v73, 0x0

    #@682
    move/from16 v0, v73

    #@684
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@687
    move-result v73

    #@688
    move/from16 v0, v73

    #@68a
    move-object/from16 v1, p0

    #@68c
    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    #@68e
    goto/16 :goto_3

    #@690
    .line 1135
    :pswitch_56
    const/16 v73, 0x0

    #@692
    move/from16 v0, v73

    #@694
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@697
    move-result v73

    #@698
    move/from16 v0, v73

    #@69a
    move-object/from16 v1, p0

    #@69c
    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    #@69e
    goto/16 :goto_3

    #@6a0
    .line 1139
    :pswitch_57
    const/16 v73, 0x0

    #@6a2
    move/from16 v0, v73

    #@6a4
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@6a7
    move-result v73

    #@6a8
    move/from16 v0, v73

    #@6aa
    move-object/from16 v1, p0

    #@6ac
    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    #@6ae
    goto/16 :goto_3

    #@6b0
    .line 1143
    :pswitch_58
    const/16 v73, 0x0

    #@6b2
    move/from16 v0, v73

    #@6b4
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@6b7
    move-result v73

    #@6b8
    move/from16 v0, v73

    #@6ba
    move-object/from16 v1, p0

    #@6bc
    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    #@6be
    goto/16 :goto_3

    #@6c0
    .line 1147
    :pswitch_59
    const/16 v73, 0x0

    #@6c2
    move/from16 v0, v73

    #@6c4
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6c7
    move-result v73

    #@6c8
    move-object/from16 v0, p0

    #@6ca
    move/from16 v1, v73

    #@6cc
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    #@6cf
    goto/16 :goto_3

    #@6d1
    .line 1151
    :pswitch_5a
    const/16 v73, 0x0

    #@6d3
    move/from16 v0, v73

    #@6d5
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6d8
    move-result v7

    #@6d9
    .restart local v7    # "allCaps":Z
    goto/16 :goto_3

    #@6db
    .line 1155
    .end local v7    # "allCaps":Z
    :pswitch_5b
    const/16 v73, 0x0

    #@6dd
    move/from16 v0, v73

    #@6df
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6e2
    move-result v35

    #@6e3
    .restart local v35    # "elegant":Z
    goto/16 :goto_3

    #@6e5
    .line 1159
    .end local v35    # "elegant":Z
    :pswitch_5c
    const/16 v73, 0x0

    #@6e7
    move/from16 v0, v73

    #@6e9
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@6ec
    move-result v48

    #@6ed
    goto/16 :goto_3

    #@6ef
    .line 1163
    :pswitch_5d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@6f2
    move-result-object v43

    #@6f3
    .restart local v43    # "fontFeatureSettings":Ljava/lang/String;
    goto/16 :goto_3

    #@6f5
    .line 1167
    .end local v43    # "fontFeatureSettings":Ljava/lang/String;
    :pswitch_5e
    const/16 v73, 0x0

    #@6f7
    move/from16 v0, v73

    #@6f9
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@6fc
    move-result v73

    #@6fd
    move/from16 v0, v73

    #@6ff
    move-object/from16 v1, p0

    #@701
    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    #@703
    goto/16 :goto_3

    #@705
    .line 1171
    :pswitch_5f
    const/16 v73, 0x0

    #@707
    move/from16 v0, v73

    #@709
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@70c
    move-result v73

    #@70d
    move/from16 v0, v73

    #@70f
    move-object/from16 v1, p0

    #@711
    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@713
    goto/16 :goto_3

    #@715
    .line 1175
    .end local v10    # "attr":I
    :cond_4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@718
    .line 1177
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@71a
    .line 1180
    .local v13, "bufferType":Landroid/widget/TextView$BufferType;
    move/from16 v0, v47

    #@71c
    and-int/lit16 v0, v0, 0xfff

    #@71e
    move/from16 v71, v0

    #@720
    .line 1182
    .local v71, "variation":I
    const/16 v73, 0x81

    #@722
    .line 1181
    move/from16 v0, v71

    #@724
    move/from16 v1, v73

    #@726
    if-ne v0, v1, :cond_14

    #@728
    const/16 v55, 0x1

    #@72a
    .line 1184
    .local v55, "passwordInputType":Z
    :goto_4
    const/16 v73, 0xe1

    #@72c
    .line 1183
    move/from16 v0, v71

    #@72e
    move/from16 v1, v73

    #@730
    if-ne v0, v1, :cond_15

    #@732
    const/16 v72, 0x1

    #@734
    .line 1186
    .local v72, "webPasswordInputType":Z
    :goto_5
    const/16 v73, 0x12

    #@736
    .line 1185
    move/from16 v0, v71

    #@738
    move/from16 v1, v73

    #@73a
    if-ne v0, v1, :cond_16

    #@73c
    const/16 v52, 0x1

    #@73e
    .line 1188
    .local v52, "numberPasswordInputType":Z
    :goto_6
    if-eqz v46, :cond_18

    #@740
    .line 1192
    :try_start_1
    invoke-interface/range {v46 .. v46}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@743
    move-result-object v73

    #@744
    invoke-static/range {v73 .. v73}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    #@747
    move-result-object v15

    #@748
    .line 1198
    .local v15, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@74b
    .line 1199
    move-object/from16 v0, p0

    #@74d
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@74f
    move-object/from16 v74, v0

    #@751
    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@754
    move-result-object v73

    #@755
    check-cast v73, Landroid/text/method/KeyListener;

    #@757
    move-object/from16 v0, v73

    #@759
    move-object/from16 v1, v74

    #@75b
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    #@75d
    .line 1206
    :try_start_3
    move-object/from16 v0, p0

    #@75f
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@761
    move-object/from16 v74, v0

    #@763
    if-eqz v47, :cond_17

    #@765
    move/from16 v73, v47

    #@767
    :goto_7
    move/from16 v0, v73

    #@769
    move-object/from16 v1, v74

    #@76b
    iput v0, v1, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    #@76d
    .line 1298
    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    move-object/from16 v0, p0

    #@76f
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@771
    move-object/from16 v73, v0

    #@773
    if-eqz v73, :cond_5

    #@775
    move-object/from16 v0, p0

    #@777
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@779
    move-object/from16 v73, v0

    #@77b
    move-object/from16 v0, v73

    #@77d
    move/from16 v1, v54

    #@77f
    move/from16 v2, v55

    #@781
    move/from16 v3, v72

    #@783
    move/from16 v4, v52

    #@785
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    #@788
    .line 1301
    :cond_5
    if-eqz v59, :cond_6

    #@78a
    .line 1302
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@78d
    .line 1303
    move-object/from16 v0, p0

    #@78f
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@791
    move-object/from16 v73, v0

    #@793
    const/16 v74, 0x1

    #@795
    move/from16 v0, v74

    #@797
    move-object/from16 v1, v73

    #@799
    iput-boolean v0, v1, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    #@79b
    .line 1305
    sget-object v73, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    #@79d
    move-object/from16 v0, v73

    #@79f
    if-ne v13, v0, :cond_6

    #@7a1
    .line 1306
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@7a3
    .line 1311
    :cond_6
    if-nez v26, :cond_7

    #@7a5
    if-eqz v27, :cond_a

    #@7a7
    .line 1312
    :cond_7
    move-object/from16 v0, p0

    #@7a9
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7ab
    move-object/from16 v73, v0

    #@7ad
    if-nez v73, :cond_8

    #@7af
    .line 1313
    new-instance v73, Landroid/widget/TextView$Drawables;

    #@7b1
    move-object/from16 v0, v73

    #@7b3
    move-object/from16 v1, p1

    #@7b5
    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@7b8
    move-object/from16 v0, v73

    #@7ba
    move-object/from16 v1, p0

    #@7bc
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7be
    .line 1315
    :cond_8
    if-eqz v26, :cond_9

    #@7c0
    .line 1316
    move-object/from16 v0, p0

    #@7c2
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7c4
    move-object/from16 v73, v0

    #@7c6
    move-object/from16 v0, v26

    #@7c8
    move-object/from16 v1, v73

    #@7ca
    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    #@7cc
    .line 1317
    move-object/from16 v0, p0

    #@7ce
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7d0
    move-object/from16 v73, v0

    #@7d2
    const/16 v74, 0x1

    #@7d4
    move/from16 v0, v74

    #@7d6
    move-object/from16 v1, v73

    #@7d8
    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTint:Z

    #@7da
    .line 1319
    :cond_9
    if-eqz v27, :cond_a

    #@7dc
    .line 1320
    move-object/from16 v0, p0

    #@7de
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7e0
    move-object/from16 v73, v0

    #@7e2
    move-object/from16 v0, v27

    #@7e4
    move-object/from16 v1, v73

    #@7e6
    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@7e8
    .line 1321
    move-object/from16 v0, p0

    #@7ea
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7ec
    move-object/from16 v73, v0

    #@7ee
    const/16 v74, 0x1

    #@7f0
    move/from16 v0, v74

    #@7f2
    move-object/from16 v1, v73

    #@7f4
    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    #@7f6
    .line 1326
    :cond_a
    move-object/from16 v0, p0

    #@7f8
    move-object/from16 v1, v22

    #@7fa
    move-object/from16 v2, v28

    #@7fc
    move-object/from16 v3, v24

    #@7fe
    move-object/from16 v4, v20

    #@800
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@803
    .line 1328
    move-object/from16 v0, p0

    #@805
    move-object/from16 v1, v25

    #@807
    move-object/from16 v2, v21

    #@809
    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@80c
    .line 1329
    move-object/from16 v0, p0

    #@80e
    move/from16 v1, v23

    #@810
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    #@813
    .line 1333
    move-object/from16 v0, p0

    #@815
    move/from16 v1, v61

    #@817
    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    #@81a
    .line 1334
    move-object/from16 v0, p0

    #@81c
    move/from16 v1, v61

    #@81e
    move/from16 v2, v61

    #@820
    move/from16 v3, v61

    #@822
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    #@825
    .line 1336
    if-eqz v61, :cond_b

    #@827
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@82a
    move-result-object v73

    #@82b
    if-nez v73, :cond_b

    #@82d
    if-gez v36, :cond_b

    #@82f
    .line 1337
    const/16 v36, 0x3

    #@831
    .line 1340
    :cond_b
    packed-switch v36, :pswitch_data_2

    #@834
    .line 1362
    :goto_9
    if-eqz v64, :cond_2a

    #@836
    :goto_a
    move-object/from16 v0, p0

    #@838
    move-object/from16 v1, v64

    #@83a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@83d
    .line 1363
    move-object/from16 v0, p0

    #@83f
    move-object/from16 v1, v66

    #@841
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    #@844
    .line 1364
    move-object/from16 v0, p0

    #@846
    move-object/from16 v1, v67

    #@848
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    #@84b
    .line 1365
    if-eqz v65, :cond_c

    #@84d
    .line 1366
    move-object/from16 v0, p0

    #@84f
    move/from16 v1, v65

    #@851
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    #@854
    .line 1368
    :cond_c
    move/from16 v0, v68

    #@856
    int-to-float v0, v0

    #@857
    move/from16 v73, v0

    #@859
    move-object/from16 v0, p0

    #@85b
    move/from16 v1, v73

    #@85d
    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    #@860
    .line 1369
    move-object/from16 v0, p0

    #@862
    move/from16 v1, v35

    #@864
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    #@867
    .line 1370
    move-object/from16 v0, p0

    #@869
    move/from16 v1, v48

    #@86b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    #@86e
    .line 1371
    move-object/from16 v0, p0

    #@870
    move-object/from16 v1, v43

    #@872
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    #@875
    .line 1373
    if-eqz v7, :cond_d

    #@877
    .line 1374
    new-instance v73, Landroid/text/method/AllCapsTransformationMethod;

    #@879
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@87c
    move-result-object v74

    #@87d
    invoke-direct/range {v73 .. v74}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    #@880
    move-object/from16 v0, p0

    #@882
    move-object/from16 v1, v73

    #@884
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@887
    .line 1377
    :cond_d
    if-nez v54, :cond_e

    #@889
    if-nez v55, :cond_e

    #@88b
    if-nez v72, :cond_e

    #@88d
    if-eqz v52, :cond_2b

    #@88f
    .line 1378
    :cond_e
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@892
    move-result-object v73

    #@893
    move-object/from16 v0, p0

    #@895
    move-object/from16 v1, v73

    #@897
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@89a
    .line 1379
    const/16 v70, 0x3

    #@89c
    .line 1386
    :cond_f
    :goto_b
    const/16 v73, -0x1

    #@89e
    move/from16 v0, v70

    #@8a0
    move/from16 v1, v73

    #@8a2
    if-eq v0, v1, :cond_10

    #@8a4
    if-eqz v42, :cond_2c

    #@8a6
    .line 1389
    :cond_10
    :goto_c
    move-object/from16 v0, p0

    #@8a8
    move-object/from16 v1, v41

    #@8aa
    move/from16 v2, v70

    #@8ac
    move/from16 v3, v62

    #@8ae
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@8b1
    .line 1391
    if-eqz v60, :cond_11

    #@8b3
    .line 1392
    move-object/from16 v0, p0

    #@8b5
    move/from16 v1, v57

    #@8b7
    move/from16 v2, v29

    #@8b9
    move/from16 v3, v30

    #@8bb
    move/from16 v4, v60

    #@8bd
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@8c0
    .line 1395
    :cond_11
    if-ltz v50, :cond_2d

    #@8c2
    .line 1396
    const/16 v73, 0x1

    #@8c4
    move/from16 v0, v73

    #@8c6
    new-array v0, v0, [Landroid/text/InputFilter;

    #@8c8
    move-object/from16 v73, v0

    #@8ca
    new-instance v74, Landroid/text/InputFilter$LengthFilter;

    #@8cc
    move-object/from16 v0, v74

    #@8ce
    move/from16 v1, v50

    #@8d0
    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    #@8d3
    const/16 v75, 0x0

    #@8d5
    aput-object v74, v73, v75

    #@8d7
    move-object/from16 v0, p0

    #@8d9
    move-object/from16 v1, v73

    #@8db
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    #@8de
    .line 1401
    :goto_d
    move-object/from16 v0, p0

    #@8e0
    move-object/from16 v1, v63

    #@8e2
    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@8e5
    .line 1402
    if-eqz v44, :cond_12

    #@8e7
    move-object/from16 v0, p0

    #@8e9
    move-object/from16 v1, v44

    #@8eb
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    #@8ee
    .line 1410
    :cond_12
    sget-object v73, Lcom/android/internal/R$styleable;->View:[I

    #@8f0
    .line 1409
    move-object/from16 v0, p1

    #@8f2
    move-object/from16 v1, p2

    #@8f4
    move-object/from16 v2, v73

    #@8f6
    move/from16 v3, p3

    #@8f8
    move/from16 v4, p4

    #@8fa
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8fd
    move-result-object v6

    #@8fe
    .line 1412
    move-object/from16 v0, p0

    #@900
    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@902
    move-object/from16 v73, v0

    #@904
    if-nez v73, :cond_13

    #@906
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@909
    move-result-object v73

    #@90a
    if-eqz v73, :cond_2e

    #@90c
    :cond_13
    const/16 v40, 0x1

    #@90e
    .line 1413
    .local v40, "focusable":Z
    :goto_e
    if-nez v40, :cond_2f

    #@910
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    #@913
    move-result v17

    #@914
    .line 1414
    :goto_f
    if-nez v40, :cond_30

    #@916
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    #@919
    move-result v49

    #@91a
    .line 1416
    :goto_10
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@91d
    move-result v51

    #@91e
    .line 1417
    const/16 v45, 0x0

    #@920
    .end local v40    # "focusable":Z
    :goto_11
    move/from16 v0, v45

    #@922
    move/from16 v1, v51

    #@924
    if-ge v0, v1, :cond_31

    #@926
    .line 1418
    move/from16 v0, v45

    #@928
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@92b
    move-result v10

    #@92c
    .line 1420
    .restart local v10    # "attr":I
    sparse-switch v10, :sswitch_data_0

    #@92f
    .line 1417
    :goto_12
    add-int/lit8 v45, v45, 0x1

    #@931
    goto :goto_11

    #@932
    .line 1181
    .end local v10    # "attr":I
    .end local v52    # "numberPasswordInputType":Z
    .end local v55    # "passwordInputType":Z
    .end local v72    # "webPasswordInputType":Z
    :cond_14
    const/16 v55, 0x0

    #@934
    .restart local v55    # "passwordInputType":Z
    goto/16 :goto_4

    #@936
    .line 1183
    :cond_15
    const/16 v72, 0x0

    #@938
    .restart local v72    # "webPasswordInputType":Z
    goto/16 :goto_5

    #@93a
    .line 1185
    :cond_16
    const/16 v52, 0x0

    #@93c
    .restart local v52    # "numberPasswordInputType":Z
    goto/16 :goto_6

    #@93e
    .line 1193
    :catch_2
    move-exception v37

    #@93f
    .line 1194
    .local v37, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v73, Ljava/lang/RuntimeException;

    #@941
    move-object/from16 v0, v73

    #@943
    move-object/from16 v1, v37

    #@945
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@948
    throw v73

    #@949
    .line 1202
    .end local v37    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v38

    #@94a
    .line 1203
    .local v38, "ex":Ljava/lang/IllegalAccessException;
    new-instance v73, Ljava/lang/RuntimeException;

    #@94c
    move-object/from16 v0, v73

    #@94e
    move-object/from16 v1, v38

    #@950
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@953
    throw v73

    #@954
    .line 1200
    .end local v38    # "ex":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v39

    #@955
    .line 1201
    .local v39, "ex":Ljava/lang/InstantiationException;
    new-instance v73, Ljava/lang/RuntimeException;

    #@957
    move-object/from16 v0, v73

    #@959
    move-object/from16 v1, v39

    #@95b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@95e
    throw v73

    #@95f
    .line 1208
    .end local v39    # "ex":Ljava/lang/InstantiationException;
    :cond_17
    :try_start_4
    move-object/from16 v0, p0

    #@961
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@963
    move-object/from16 v73, v0

    #@965
    move-object/from16 v0, v73

    #@967
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@969
    move-object/from16 v73, v0

    #@96b
    invoke-interface/range {v73 .. v73}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    #@96e
    move-result v73

    #@96f
    goto/16 :goto_7

    #@971
    .line 1209
    :catch_5
    move-exception v32

    #@972
    .line 1210
    .local v32, "e":Ljava/lang/IncompatibleClassChangeError;
    move-object/from16 v0, p0

    #@974
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@976
    move-object/from16 v73, v0

    #@978
    const/16 v74, 0x1

    #@97a
    move/from16 v0, v74

    #@97c
    move-object/from16 v1, v73

    #@97e
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@980
    goto/16 :goto_8

    #@982
    .line 1212
    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v32    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_18
    if-eqz v19, :cond_1a

    #@984
    .line 1213
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@987
    .line 1214
    move-object/from16 v0, p0

    #@989
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@98b
    move-object/from16 v73, v0

    #@98d
    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@990
    move-result-object v74

    #@991
    invoke-static/range {v74 .. v74}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    #@994
    move-result-object v74

    #@995
    move-object/from16 v0, v74

    #@997
    move-object/from16 v1, v73

    #@999
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@99b
    .line 1218
    move-object/from16 v0, p0

    #@99d
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@99f
    move-object/from16 v74, v0

    #@9a1
    if-eqz v47, :cond_19

    #@9a3
    move/from16 v73, v47

    #@9a5
    :goto_13
    move/from16 v0, v73

    #@9a7
    move-object/from16 v1, v74

    #@9a9
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@9ab
    goto/16 :goto_8

    #@9ad
    .line 1219
    :cond_19
    const/16 v73, 0x1

    #@9af
    goto :goto_13

    #@9b0
    .line 1220
    :cond_1a
    if-eqz v47, :cond_1c

    #@9b2
    .line 1221
    const/16 v73, 0x1

    #@9b4
    move-object/from16 v0, p0

    #@9b6
    move/from16 v1, v47

    #@9b8
    move/from16 v2, v73

    #@9ba
    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    #@9bd
    .line 1223
    invoke-static/range {v47 .. v47}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    #@9c0
    move-result v73

    #@9c1
    if-eqz v73, :cond_1b

    #@9c3
    const/16 v61, 0x0

    #@9c5
    .local v61, "singleLine":Z
    goto/16 :goto_8

    #@9c7
    .end local v61    # "singleLine":Z
    :cond_1b
    const/16 v61, 0x1

    #@9c9
    .restart local v61    # "singleLine":Z
    goto/16 :goto_8

    #@9cb
    .line 1224
    .end local v61    # "singleLine":Z
    :cond_1c
    if-eqz v56, :cond_1d

    #@9cd
    .line 1225
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@9d0
    .line 1226
    move-object/from16 v0, p0

    #@9d2
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9d4
    move-object/from16 v73, v0

    #@9d6
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    #@9d9
    move-result-object v74

    #@9da
    move-object/from16 v0, v74

    #@9dc
    move-object/from16 v1, v73

    #@9de
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@9e0
    .line 1227
    move-object/from16 v0, p0

    #@9e2
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9e4
    move-object/from16 v73, v0

    #@9e6
    const/16 v47, 0x3

    #@9e8
    const/16 v74, 0x3

    #@9ea
    move/from16 v0, v74

    #@9ec
    move-object/from16 v1, v73

    #@9ee
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@9f0
    goto/16 :goto_8

    #@9f2
    .line 1228
    :cond_1d
    if-eqz v53, :cond_22

    #@9f4
    .line 1229
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@9f7
    .line 1230
    move-object/from16 v0, p0

    #@9f9
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9fb
    move-object/from16 v75, v0

    #@9fd
    and-int/lit8 v73, v53, 0x2

    #@9ff
    if-eqz v73, :cond_20

    #@a01
    const/16 v73, 0x1

    #@a03
    move/from16 v74, v73

    #@a05
    .line 1231
    :goto_14
    and-int/lit8 v73, v53, 0x4

    #@a07
    if-eqz v73, :cond_21

    #@a09
    const/16 v73, 0x1

    #@a0b
    .line 1230
    :goto_15
    move/from16 v0, v74

    #@a0d
    move/from16 v1, v73

    #@a0f
    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    #@a12
    move-result-object v73

    #@a13
    move-object/from16 v0, v73

    #@a15
    move-object/from16 v1, v75

    #@a17
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@a19
    .line 1232
    const/16 v47, 0x2

    #@a1b
    .line 1233
    and-int/lit8 v73, v53, 0x2

    #@a1d
    if-eqz v73, :cond_1e

    #@a1f
    .line 1234
    const/16 v47, 0x1002

    #@a21
    .line 1236
    :cond_1e
    and-int/lit8 v73, v53, 0x4

    #@a23
    if-eqz v73, :cond_1f

    #@a25
    .line 1237
    move/from16 v0, v47

    #@a27
    or-int/lit16 v0, v0, 0x2000

    #@a29
    move/from16 v47, v0

    #@a2b
    .line 1239
    :cond_1f
    move-object/from16 v0, p0

    #@a2d
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a2f
    move-object/from16 v73, v0

    #@a31
    move/from16 v0, v47

    #@a33
    move-object/from16 v1, v73

    #@a35
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@a37
    goto/16 :goto_8

    #@a39
    .line 1230
    :cond_20
    const/16 v73, 0x0

    #@a3b
    move/from16 v74, v73

    #@a3d
    goto :goto_14

    #@a3e
    .line 1231
    :cond_21
    const/16 v73, 0x0

    #@a40
    goto :goto_15

    #@a41
    .line 1240
    :cond_22
    if-nez v12, :cond_23

    #@a43
    const/16 v73, -0x1

    #@a45
    move/from16 v0, v73

    #@a47
    if-eq v11, v0, :cond_24

    #@a49
    .line 1243
    :cond_23
    const/16 v47, 0x1

    #@a4b
    .line 1245
    packed-switch v11, :pswitch_data_3

    #@a4e
    .line 1262
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@a50
    .line 1266
    .local v16, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a53
    .line 1267
    move-object/from16 v0, p0

    #@a55
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a57
    move-object/from16 v73, v0

    #@a59
    move-object/from16 v0, v16

    #@a5b
    invoke-static {v12, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    #@a5e
    move-result-object v74

    #@a5f
    move-object/from16 v0, v74

    #@a61
    move-object/from16 v1, v73

    #@a63
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@a65
    .line 1268
    move-object/from16 v0, p0

    #@a67
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a69
    move-object/from16 v73, v0

    #@a6b
    move/from16 v0, v47

    #@a6d
    move-object/from16 v1, v73

    #@a6f
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@a71
    goto/16 :goto_8

    #@a73
    .line 1247
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_60
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    #@a75
    .line 1248
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v47, 0x4001

    #@a77
    .line 1249
    goto :goto_16

    #@a78
    .line 1252
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_61
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@a7a
    .line 1253
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v47, 0x2001

    #@a7c
    .line 1254
    goto :goto_16

    #@a7d
    .line 1257
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_62
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@a7f
    .line 1258
    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v47, 0x1001

    #@a81
    .line 1259
    goto :goto_16

    #@a82
    .line 1269
    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@a85
    move-result v73

    #@a86
    if-eqz v73, :cond_26

    #@a88
    .line 1271
    move-object/from16 v0, p0

    #@a8a
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a8c
    move-object/from16 v73, v0

    #@a8e
    if-eqz v73, :cond_25

    #@a90
    .line 1272
    move-object/from16 v0, p0

    #@a92
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a94
    move-object/from16 v73, v0

    #@a96
    const/16 v74, 0x0

    #@a98
    move-object/from16 v0, v74

    #@a9a
    move-object/from16 v1, v73

    #@a9c
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@a9e
    .line 1273
    move-object/from16 v0, p0

    #@aa0
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@aa2
    move-object/from16 v73, v0

    #@aa4
    const/16 v74, 0x0

    #@aa6
    move/from16 v0, v74

    #@aa8
    move-object/from16 v1, v73

    #@aaa
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@aac
    .line 1275
    :cond_25
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@aae
    .line 1277
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@ab1
    move-result-object v73

    #@ab2
    move-object/from16 v0, p0

    #@ab4
    move-object/from16 v1, v73

    #@ab6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@ab9
    goto/16 :goto_8

    #@abb
    .line 1278
    :cond_26
    if-eqz v34, :cond_27

    #@abd
    .line 1279
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@ac0
    .line 1280
    move-object/from16 v0, p0

    #@ac2
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@ac4
    move-object/from16 v73, v0

    #@ac6
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    #@ac9
    move-result-object v74

    #@aca
    move-object/from16 v0, v74

    #@acc
    move-object/from16 v1, v73

    #@ace
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@ad0
    .line 1281
    move-object/from16 v0, p0

    #@ad2
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@ad4
    move-object/from16 v73, v0

    #@ad6
    const/16 v74, 0x1

    #@ad8
    move/from16 v0, v74

    #@ada
    move-object/from16 v1, v73

    #@adc
    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    #@ade
    goto/16 :goto_8

    #@ae0
    .line 1283
    :cond_27
    move-object/from16 v0, p0

    #@ae2
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@ae4
    move-object/from16 v73, v0

    #@ae6
    if-eqz v73, :cond_28

    #@ae8
    move-object/from16 v0, p0

    #@aea
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@aec
    move-object/from16 v73, v0

    #@aee
    const/16 v74, 0x0

    #@af0
    move-object/from16 v0, v74

    #@af2
    move-object/from16 v1, v73

    #@af4
    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@af6
    .line 1285
    :cond_28
    packed-switch v14, :pswitch_data_4

    #@af9
    goto/16 :goto_8

    #@afb
    .line 1287
    :pswitch_63
    sget-object v13, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    #@afd
    goto/16 :goto_8

    #@aff
    .line 1290
    :pswitch_64
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@b01
    goto/16 :goto_8

    #@b03
    .line 1293
    :pswitch_65
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@b05
    goto/16 :goto_8

    #@b07
    .line 1342
    :pswitch_66
    sget-object v73, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@b09
    move-object/from16 v0, p0

    #@b0b
    move-object/from16 v1, v73

    #@b0d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@b10
    goto/16 :goto_9

    #@b12
    .line 1345
    :pswitch_67
    sget-object v73, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    #@b14
    move-object/from16 v0, p0

    #@b16
    move-object/from16 v1, v73

    #@b18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@b1b
    goto/16 :goto_9

    #@b1d
    .line 1348
    :pswitch_68
    sget-object v73, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@b1f
    move-object/from16 v0, p0

    #@b21
    move-object/from16 v1, v73

    #@b23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@b26
    goto/16 :goto_9

    #@b28
    .line 1351
    :pswitch_69
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@b2b
    move-result-object v73

    #@b2c
    invoke-virtual/range {v73 .. v73}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    #@b2f
    move-result v73

    #@b30
    if-eqz v73, :cond_29

    #@b32
    .line 1352
    const/16 v73, 0x1

    #@b34
    move-object/from16 v0, p0

    #@b36
    move/from16 v1, v73

    #@b38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@b3b
    .line 1353
    const/16 v73, 0x0

    #@b3d
    move/from16 v0, v73

    #@b3f
    move-object/from16 v1, p0

    #@b41
    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@b43
    .line 1358
    :goto_17
    sget-object v73, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@b45
    move-object/from16 v0, p0

    #@b47
    move-object/from16 v1, v73

    #@b49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@b4c
    goto/16 :goto_9

    #@b4e
    .line 1355
    :cond_29
    const/16 v73, 0x0

    #@b50
    move-object/from16 v0, p0

    #@b52
    move/from16 v1, v73

    #@b54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@b57
    .line 1356
    const/16 v73, 0x1

    #@b59
    move/from16 v0, v73

    #@b5b
    move-object/from16 v1, p0

    #@b5d
    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@b5f
    goto :goto_17

    #@b60
    .line 1362
    :cond_2a
    const/high16 v73, -0x1000000

    #@b62
    invoke-static/range {v73 .. v73}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@b65
    move-result-object v64

    #@b66
    goto/16 :goto_a

    #@b68
    .line 1380
    :cond_2b
    move-object/from16 v0, p0

    #@b6a
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b6c
    move-object/from16 v73, v0

    #@b6e
    if-eqz v73, :cond_f

    #@b70
    .line 1381
    move-object/from16 v0, p0

    #@b72
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b74
    move-object/from16 v73, v0

    #@b76
    move-object/from16 v0, v73

    #@b78
    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    #@b7a
    move/from16 v73, v0

    #@b7c
    move/from16 v0, v73

    #@b7e
    and-int/lit16 v0, v0, 0xfff

    #@b80
    move/from16 v73, v0

    #@b82
    .line 1382
    const/16 v74, 0x81

    #@b84
    .line 1381
    move/from16 v0, v73

    #@b86
    move/from16 v1, v74

    #@b88
    if-ne v0, v1, :cond_f

    #@b8a
    .line 1383
    const/16 v70, 0x3

    #@b8c
    goto/16 :goto_b

    #@b8e
    .line 1387
    :cond_2c
    const/16 v41, 0x0

    #@b90
    .local v41, "fontFamily":Ljava/lang/String;
    goto/16 :goto_c

    #@b92
    .line 1398
    .end local v41    # "fontFamily":Ljava/lang/String;
    :cond_2d
    sget-object v73, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    #@b94
    move-object/from16 v0, p0

    #@b96
    move-object/from16 v1, v73

    #@b98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    #@b9b
    goto/16 :goto_d

    #@b9d
    .line 1412
    :cond_2e
    const/16 v40, 0x0

    #@b9f
    .restart local v40    # "focusable":Z
    goto/16 :goto_e

    #@ba1
    .line 1413
    :cond_2f
    const/16 v17, 0x1

    #@ba3
    .local v17, "clickable":Z
    goto/16 :goto_f

    #@ba5
    .line 1414
    .end local v17    # "clickable":Z
    :cond_30
    const/16 v49, 0x1

    #@ba7
    .local v49, "longClickable":Z
    goto/16 :goto_10

    #@ba9
    .line 1422
    .end local v40    # "focusable":Z
    .end local v49    # "longClickable":Z
    .restart local v10    # "attr":I
    :sswitch_0
    move/from16 v0, v40

    #@bab
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bae
    move-result v40

    #@baf
    .local v40, "focusable":Z
    goto/16 :goto_12

    #@bb1
    .line 1426
    .end local v40    # "focusable":Z
    :sswitch_1
    move/from16 v0, v17

    #@bb3
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bb6
    move-result v17

    #@bb7
    .local v17, "clickable":Z
    goto/16 :goto_12

    #@bb9
    .line 1430
    .end local v17    # "clickable":Z
    :sswitch_2
    move/from16 v0, v49

    #@bbb
    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bbe
    move-result v49

    #@bbf
    .local v49, "longClickable":Z
    goto/16 :goto_12

    #@bc1
    .line 1434
    .end local v10    # "attr":I
    .end local v49    # "longClickable":Z
    :cond_31
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@bc4
    .line 1436
    move-object/from16 v0, p0

    #@bc6
    move/from16 v1, v40

    #@bc8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    #@bcb
    .line 1437
    move-object/from16 v0, p0

    #@bcd
    move/from16 v1, v17

    #@bcf
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    #@bd2
    .line 1438
    move-object/from16 v0, p0

    #@bd4
    move/from16 v1, v49

    #@bd6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    #@bd9
    .line 1440
    move-object/from16 v0, p0

    #@bdb
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@bdd
    move-object/from16 v73, v0

    #@bdf
    if-eqz v73, :cond_32

    #@be1
    move-object/from16 v0, p0

    #@be3
    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@be5
    move-object/from16 v73, v0

    #@be7
    invoke-virtual/range {v73 .. v73}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@bea
    .line 1443
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    #@bed
    move-result v73

    #@bee
    if-nez v73, :cond_33

    #@bf0
    .line 1444
    const/16 v73, 0x1

    #@bf2
    move-object/from16 v0, p0

    #@bf4
    move/from16 v1, v73

    #@bf6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    #@bf9
    .line 676
    :cond_33
    return-void

    #@bfa
    .line 736
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

    #@c1e
    .line 835
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
        :pswitch_59
        :pswitch_10
        :pswitch_10
        :pswitch_54
        :pswitch_58
        :pswitch_5a
        :pswitch_20
        :pswitch_21
        :pswitch_49
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_22
        :pswitch_23
        :pswitch_5e
        :pswitch_5f
        :pswitch_4e
    .end packed-switch

    #@cca
    .line 1340
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
    .end packed-switch

    #@cd6
    .line 1420
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    #@ce4
    .line 1245
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_60
        :pswitch_61
        :pswitch_62
    .end packed-switch

    #@cee
    .line 1285
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_63
        :pswitch_64
        :pswitch_65
    .end packed-switch
.end method

.method private applyCompoundDrawableTint()V
    .locals 10

    #@0
    .prologue
    .line 2639
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 2640
    return-void

    #@5
    .line 2643
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
    .line 2644
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@13
    iget-object v4, v6, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    #@15
    .line 2645
    .local v4, "tintList":Landroid/content/res/ColorStateList;
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@17
    iget-object v5, v6, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@19
    .line 2646
    .local v5, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@1b
    iget-boolean v1, v6, Landroid/widget/TextView$Drawables;->mHasTint:Z

    #@1d
    .line 2647
    .local v1, "hasTint":Z
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@1f
    iget-boolean v2, v6, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    #@21
    .line 2648
    .local v2, "hasTintMode":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@24
    move-result-object v3

    #@25
    .line 2650
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
    .line 2651
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    #@31
    .line 2650
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@33
    goto :goto_0

    #@34
    .line 2655
    :cond_3
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@36
    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    #@38
    if-eq v0, v9, :cond_2

    #@3a
    .line 2662
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@3d
    .line 2664
    if-eqz v1, :cond_4

    #@3f
    .line 2665
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@42
    .line 2668
    :cond_4
    if-eqz v2, :cond_5

    #@44
    .line 2669
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@47
    .line 2674
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@4a
    move-result v9

    #@4b
    if-eqz v9, :cond_2

    #@4d
    .line 2675
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@50
    goto :goto_1

    #@51
    .line 2638
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
    .line 7683
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@3
    .line 7684
    if-eqz p1, :cond_1

    #@5
    .line 7685
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    #@8
    .line 7686
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    #@b
    .line 7687
    if-eqz p2, :cond_0

    #@d
    .line 7688
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@14
    .line 7682
    :cond_0
    :goto_0
    return-void

    #@15
    .line 7691
    :cond_1
    if-eqz p3, :cond_2

    #@17
    .line 7692
    const v0, 0x7fffffff

    #@1a
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    #@1d
    .line 7694
    :cond_2
    const/4 v0, 0x0

    #@1e
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    #@21
    .line 7695
    if-eqz p2, :cond_0

    #@23
    .line 7696
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
    .line 6499
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
    .line 6501
    .local v1, "width":I
    const/4 v0, 0x1

    #@11
    if-ge v1, v0, :cond_0

    #@13
    .line 6502
    const/4 v1, 0x0

    #@14
    .line 6505
    :cond_0
    move v2, v1

    #@15
    .line 6507
    .local v2, "physicalWidth":I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 6508
    const/high16 v1, 0x100000

    #@1b
    .line 6511
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@1d
    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@1f
    .line 6512
    const/4 v6, 0x0

    #@20
    move-object v0, p0

    #@21
    move v5, v2

    #@22
    .line 6511
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@25
    .line 6498
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 14

    #@0
    .prologue
    .line 7195
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    #@3
    move-result v11

    #@4
    if-eqz v11, :cond_3

    #@6
    iget-object v4, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@8
    .line 7196
    .local v4, "layout":Landroid/text/Layout;
    :goto_0
    const/4 v6, 0x0

    #@9
    .line 7197
    .local v6, "line":I
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    #@b
    and-int/lit8 v11, v11, 0x70

    #@d
    const/16 v12, 0x50

    #@f
    if-ne v11, v12, :cond_0

    #@11
    .line 7198
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    #@14
    move-result v11

    #@15
    add-int/lit8 v6, v11, -0x1

    #@17
    .line 7201
    :cond_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    #@1a
    move-result-object v0

    #@1b
    .line 7202
    .local v0, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1e
    move-result v1

    #@1f
    .line 7203
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
    .line 7204
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
    .line 7205
    .local v10, "vspace":I
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    #@42
    move-result v3

    #@43
    .line 7210
    .local v3, "ht":I
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@45
    if-ne v0, v11, :cond_5

    #@47
    .line 7211
    const/4 v11, 0x1

    #@48
    if-ne v1, v11, :cond_4

    #@4a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@4c
    .line 7218
    :cond_1
    :goto_1
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@4e
    if-ne v0, v11, :cond_9

    #@50
    .line 7224
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
    .line 7225
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
    .line 7227
    .local v7, "right":I
    sub-int v11, v7, v5

    #@66
    if-ge v11, v2, :cond_7

    #@68
    .line 7228
    add-int v11, v7, v5

    #@6a
    div-int/lit8 v11, v11, 0x2

    #@6c
    div-int/lit8 v12, v2, 0x2

    #@6e
    sub-int v8, v11, v12

    #@70
    .line 7243
    .end local v5    # "left":I
    .end local v7    # "right":I
    .local v8, "scrollx":I
    :goto_2
    if-ge v3, v10, :cond_b

    #@72
    .line 7244
    const/4 v9, 0x0

    #@73
    .line 7253
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
    .line 7254
    :cond_2
    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->scrollTo(II)V

    #@7e
    .line 7255
    const/4 v11, 0x1

    #@7f
    return v11

    #@80
    .line 7195
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
    .line 7212
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
    .line 7213
    :cond_5
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@88
    if-ne v0, v11, :cond_1

    #@8a
    .line 7214
    const/4 v11, 0x1

    #@8b
    if-ne v1, v11, :cond_6

    #@8d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@8f
    goto :goto_1

    #@90
    .line 7215
    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@92
    goto :goto_1

    #@93
    .line 7230
    .restart local v5    # "left":I
    .restart local v7    # "right":I
    :cond_7
    if-gez v1, :cond_8

    #@95
    .line 7231
    sub-int v8, v7, v2

    #@97
    .restart local v8    # "scrollx":I
    goto :goto_2

    #@98
    .line 7233
    .end local v8    # "scrollx":I
    :cond_8
    move v8, v5

    #@99
    .restart local v8    # "scrollx":I
    goto :goto_2

    #@9a
    .line 7236
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_9
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@9c
    if-ne v0, v11, :cond_a

    #@9e
    .line 7237
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
    .line 7238
    .restart local v7    # "right":I
    sub-int v8, v7, v2

    #@aa
    .restart local v8    # "scrollx":I
    goto :goto_2

    #@ab
    .line 7240
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
    .line 7246
    :cond_b
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    #@b8
    and-int/lit8 v11, v11, 0x70

    #@ba
    const/16 v12, 0x50

    #@bc
    if-ne v11, v12, :cond_c

    #@be
    .line 7247
    sub-int v9, v3, v10

    #@c0
    .restart local v9    # "scrolly":I
    goto :goto_3

    #@c1
    .line 7249
    .end local v9    # "scrolly":I
    :cond_c
    const/4 v9, 0x0

    #@c2
    .restart local v9    # "scrolly":I
    goto :goto_3

    #@c3
    .line 7257
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
    .line 7816
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
    .line 7817
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
    .line 7818
    iget v3, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@21
    if-eqz v3, :cond_2

    #@23
    iget-object v3, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 7819
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
    .line 7817
    :cond_0
    :goto_0
    return v1

    #@33
    :cond_1
    move v1, v2

    #@34
    .line 7819
    goto :goto_0

    #@35
    :cond_2
    move v1, v2

    #@36
    .line 7818
    goto :goto_0

    #@37
    :cond_3
    move v1, v2

    #@38
    .line 7817
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
    .line 7128
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@6
    if-ne v0, v8, :cond_0

    #@8
    .line 7129
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
    .line 7130
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@16
    if-eqz v0, :cond_1

    #@18
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@1a
    if-eqz v0, :cond_6

    #@1c
    .line 7131
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
    .line 7134
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2f
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@32
    move-result v7

    #@33
    .line 7135
    .local v7, "oldht":I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@35
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    #@38
    move-result v1

    #@39
    .line 7136
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@3b
    if-nez v0, :cond_2

    #@3d
    const/4 v2, 0x0

    #@3e
    .line 7143
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@40
    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@42
    .line 7144
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
    .line 7143
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@56
    .line 7147
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@58
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@5a
    if-eq v0, v3, :cond_5

    #@5c
    .line 7149
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@5e
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@60
    if-eq v0, v8, :cond_3

    #@62
    .line 7150
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@64
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@66
    const/4 v3, -0x1

    #@67
    if-eq v0, v3, :cond_3

    #@69
    .line 7151
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@6c
    .line 7152
    return-void

    #@6d
    .line 7136
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
    .line 7157
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@76
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@79
    move-result v0

    #@7a
    if-ne v0, v7, :cond_5

    #@7c
    .line 7158
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
    .line 7159
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@8b
    .line 7160
    return-void

    #@8c
    .line 7166
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8f
    .line 7167
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@92
    .line 7124
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :goto_1
    return-void

    #@93
    .line 7171
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@96
    .line 7172
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@99
    .line 7173
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
    .line 7087
    const/4 v1, 0x0

    #@2
    .line 7089
    .local v1, "sizeChanged":Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 7091
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@8
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@a
    if-ne v2, v3, :cond_0

    #@c
    .line 7092
    const/4 v1, 0x1

    #@d
    .line 7093
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@10
    .line 7097
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@12
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@14
    if-ne v2, v3, :cond_3

    #@16
    .line 7098
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    #@19
    move-result v0

    #@1a
    .line 7100
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    #@1d
    move-result v2

    #@1e
    if-eq v0, v2, :cond_1

    #@20
    .line 7101
    const/4 v1, 0x1

    #@21
    .line 7114
    .end local v0    # "desiredHeight":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    #@23
    .line 7115
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@26
    .line 7086
    :cond_2
    return-void

    #@27
    .line 7103
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@29
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2b
    const/4 v3, -0x1

    #@2c
    if-ne v2, v3, :cond_1

    #@2e
    .line 7104
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@30
    if-ltz v2, :cond_1

    #@32
    .line 7105
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    #@35
    move-result v0

    #@36
    .line 7107
    .restart local v0    # "desiredHeight":I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@38
    if-eq v0, v2, :cond_1

    #@3a
    .line 7108
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
    .line 6773
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    return v4

    #@c
    .line 6776
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
    .line 6791
    :cond_1
    return v4

    #@1f
    .line 6777
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
    .line 6778
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2b
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    #@2e
    move-result v1

    #@2f
    .line 6779
    .local v1, "textWidth":F
    add-float v2, v1, v3

    #@31
    sub-float/2addr v2, p1

    #@32
    div-float v0, v2, p1

    #@34
    .line 6780
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
    .line 6781
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
    .line 6782
    new-instance v2, Landroid/widget/TextView$2;

    #@4b
    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    #@4e
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    #@51
    .line 6787
    return v6
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 7538
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    #@3
    move-result v0

    #@4
    .line 7539
    .local v0, "horizontalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@6
    add-int/2addr v2, v0

    #@7
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@9
    .line 7540
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@b
    add-int/2addr v2, v0

    #@c
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@e
    .line 7542
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    #@11
    move-result v1

    #@12
    .line 7543
    .local v1, "verticalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@14
    add-int/2addr v2, v1

    #@15
    iput v2, p1, Landroid/graphics/Rect;->top:I

    #@17
    .line 7544
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@19
    add-int/2addr v2, v1

    #@1a
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@1c
    .line 7537
    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 9710
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 9711
    new-instance v0, Landroid/widget/Editor;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    #@9
    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b
    .line 9709
    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .param p0, "layout"    # Landroid/text/Layout;

    #@0
    .prologue
    .line 6795
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    #@3
    move-result v2

    #@4
    .line 6796
    .local v2, "n":I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    #@7
    move-result-object v3

    #@8
    .line 6797
    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    #@9
    .line 6802
    .local v1, "max":F
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    #@c
    if-ge v0, v4, :cond_1

    #@e
    .line 6803
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
    .line 6804
    const/4 v4, -0x1

    #@1d
    return v4

    #@1e
    .line 6802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 6807
    :cond_1
    const/4 v0, 0x0

    #@22
    :goto_1
    if-ge v0, v2, :cond_2

    #@24
    .line 6808
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    #@27
    move-result v4

    #@28
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    #@2b
    move-result v1

    #@2c
    .line 6807
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 6811
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
    .line 6006
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 6007
    return v5

    #@a
    .line 6015
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
    .line 6019
    :cond_1
    :goto_0
    sparse-switch p1, :sswitch_data_0

    #@19
    .line 6076
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
    .line 6077
    const/4 v0, 0x1

    #@24
    .line 6078
    .local v0, "doDown":Z
    if-eqz p3, :cond_9

    #@26
    .line 6080
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    #@29
    .line 6081
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
    .line 6083
    .local v2, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 6084
    const/4 v0, 0x0

    #@39
    .line 6085
    if-eqz v2, :cond_8

    #@3b
    .line 6092
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@3e
    .line 6086
    return v4

    #@3f
    .line 6016
    .end local v0    # "doDown":Z
    .end local v2    # "handled":Z
    :cond_3
    iput-boolean v5, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    #@41
    goto :goto_0

    #@42
    .line 6021
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 6026
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
    .line 6029
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@54
    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@56
    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@58
    if-eqz v3, :cond_4

    #@5a
    .line 6030
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
    .line 6029
    if-eqz v3, :cond_4

    #@66
    .line 6032
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@68
    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@6a
    iput-boolean v7, v3, Landroid/widget/Editor$InputContentType;->enterDown:Z

    #@6c
    .line 6034
    return v4

    #@6d
    .line 6041
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    #@70
    move-result v3

    #@71
    and-int/lit8 v3, v3, 0x10

    #@73
    if-nez v3, :cond_5

    #@75
    .line 6042
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    #@78
    move-result v3

    #@79
    .line 6041
    if-eqz v3, :cond_2

    #@7b
    .line 6043
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    #@7e
    move-result v3

    #@7f
    if-eqz v3, :cond_6

    #@81
    .line 6044
    return v5

    #@82
    .line 6046
    :cond_6
    return v4

    #@83
    .line 6052
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_2

    #@89
    .line 6053
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_2

    #@8f
    .line 6054
    return v5

    #@90
    .line 6060
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
    .line 6061
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    #@9f
    move-result v3

    #@a0
    if-eqz v3, :cond_2

    #@a2
    .line 6062
    return v5

    #@a3
    .line 6069
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
    .line 6070
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@b0
    .line 6071
    return v4

    #@b1
    .line 6092
    .restart local v0    # "doDown":Z
    .restart local v2    # "handled":Z
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@b4
    .line 6096
    .end local v2    # "handled":Z
    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    #@b6
    .line 6097
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    #@b9
    .line 6098
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@bb
    iget-object v6, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@bd
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@bf
    check-cast v3, Landroid/text/Editable;

    #@c1
    invoke-interface {v6, p0, v3, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@c4
    move-result v2

    #@c5
    .line 6100
    .restart local v2    # "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@c8
    .line 6101
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    #@cb
    .line 6102
    if-eqz v2, :cond_a

    #@cd
    return v7

    #@ce
    .line 6088
    .end local v2    # "handled":Z
    :catch_0
    move-exception v1

    #@cf
    .line 6092
    .local v1, "e":Ljava/lang/AbstractMethodError;
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@d2
    goto :goto_1

    #@d3
    .line 6091
    .end local v1    # "e":Ljava/lang/AbstractMethodError;
    :catchall_0
    move-exception v3

    #@d4
    .line 6092
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    #@d7
    .line 6091
    throw v3

    #@d8
    .line 6109
    .end local v0    # "doDown":Z
    :cond_a
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@da
    if-eqz v3, :cond_e

    #@dc
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@de
    if-eqz v3, :cond_e

    #@e0
    .line 6110
    const/4 v0, 0x1

    #@e1
    .line 6111
    .restart local v0    # "doDown":Z
    if-eqz p3, :cond_b

    #@e3
    .line 6113
    :try_start_1
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@e5
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@e7
    check-cast v3, Landroid/text/Spannable;

    #@e9
    invoke-interface {v6, p0, v3, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    #@ec
    move-result v2

    #@ed
    .line 6115
    .restart local v2    # "handled":Z
    const/4 v0, 0x0

    #@ee
    .line 6116
    if-eqz v2, :cond_b

    #@f0
    .line 6117
    return v4

    #@f1
    .line 6119
    .end local v2    # "handled":Z
    :catch_1
    move-exception v1

    #@f2
    .line 6124
    :cond_b
    if-eqz v0, :cond_e

    #@f4
    .line 6125
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@f6
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@f8
    check-cast v3, Landroid/text/Spannable;

    #@fa
    invoke-interface {v6, p0, v3, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@fd
    move-result v3

    #@fe
    if-eqz v3, :cond_e

    #@100
    .line 6126
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@103
    move-result v3

    #@104
    if-nez v3, :cond_c

    #@106
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@109
    move-result v3

    #@10a
    if-eqz v3, :cond_d

    #@10c
    .line 6129
    :cond_c
    :goto_2
    const/4 v3, 0x2

    #@10d
    return v3

    #@10e
    .line 6127
    :cond_d
    iput-boolean v7, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    #@110
    goto :goto_2

    #@111
    .line 6134
    .end local v0    # "doDown":Z
    :cond_e
    iget-boolean v3, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    #@113
    if-eqz v3, :cond_f

    #@115
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@118
    move-result v3

    #@119
    if-eqz v3, :cond_10

    #@11b
    :cond_f
    move v3, v5

    #@11c
    :goto_3
    return v3

    #@11d
    :cond_10
    move v3, v4

    #@11e
    goto :goto_3

    #@11f
    .line 6019
    nop

    #@120
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .locals 2

    #@0
    .prologue
    .line 9724
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v0, v0, Landroid/text/Spannable;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 9725
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@d
    .line 9723
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
    .line 1830
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
    .line 1831
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    #@13
    .line 1832
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    #@16
    .line 1833
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    #@19
    .line 1829
    :goto_0
    return-void

    #@1a
    .line 1835
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    #@1d
    .line 1836
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    #@20
    .line 1837
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    #@23
    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    #@0
    .prologue
    .line 5048
    const/4 v4, 0x0

    #@1
    .line 5049
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    #@3
    and-int/lit8 v1, v5, 0x70

    #@5
    .line 5051
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@7
    .line 5052
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
    .line 5053
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@17
    .line 5056
    :cond_0
    const/16 v5, 0x50

    #@19
    if-eq v1, v5, :cond_1

    #@1b
    .line 5057
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    #@1e
    move-result v0

    #@1f
    .line 5058
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    #@22
    move-result v3

    #@23
    .line 5060
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    #@25
    .line 5061
    const/16 v5, 0x30

    #@27
    if-ne v1, v5, :cond_2

    #@29
    .line 5062
    sub-int v4, v0, v3

    #@2b
    .line 5067
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    #@2c
    .line 5064
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
    .line 5017
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
    .line 5018
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@e
    if-ne p1, v2, :cond_1

    #@10
    .line 5019
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
    .line 5021
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
    .line 5017
    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@28
    .restart local v0    # "opticalInsets":Landroid/graphics/Insets;
    goto :goto_0

    #@29
    .line 5020
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
    .line 7025
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3
    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    #@6
    move-result v1

    #@7
    .line 7026
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
    .line 7024
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 7026
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
    .line 7030
    if-nez p1, :cond_0

    #@3
    .line 7031
    const/4 v4, 0x0

    #@4
    return v4

    #@5
    .line 7034
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    #@8
    move-result v2

    #@9
    .line 7035
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
    .line 7036
    .local v3, "pad":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    #@16
    move-result v0

    #@17
    .line 7038
    .local v0, "desired":I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@19
    .line 7039
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    #@1b
    .line 7040
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@1d
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@20
    move-result v0

    #@21
    .line 7041
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@23
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v0

    #@27
    .line 7044
    :cond_1
    add-int/2addr v0, v3

    #@28
    .line 7046
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    #@2a
    if-ne v4, v6, :cond_5

    #@2c
    .line 7051
    if-eqz p2, :cond_3

    #@2e
    .line 7052
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    #@30
    if-le v2, v4, :cond_3

    #@32
    .line 7053
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    #@34
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    #@37
    move-result v0

    #@38
    .line 7055
    if-eqz v1, :cond_2

    #@3a
    .line 7056
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@3c
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v0

    #@40
    .line 7057
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@42
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@45
    move-result v0

    #@46
    .line 7060
    :cond_2
    add-int/2addr v0, v3

    #@47
    .line 7061
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    #@49
    .line 7068
    :cond_3
    :goto_0
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    #@4b
    if-ne v4, v6, :cond_6

    #@4d
    .line 7069
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    #@4f
    if-ge v2, v4, :cond_4

    #@51
    .line 7070
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
    .line 7077
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
    .line 7079
    return v0

    #@63
    .line 7065
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    #@65
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@68
    move-result v0

    #@69
    goto :goto_0

    #@6a
    .line 7073
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    #@6c
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    #@6f
    move-result v0

    #@70
    goto :goto_1
.end method

.method private getFudgedPaddingRight()I
    .locals 3

    #@0
    .prologue
    .line 5317
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    iget v1, v1, Landroid/text/TextPaint;->density:F

    #@4
    float-to-int v1, v1

    #@5
    add-int/lit8 v0, v1, 0x2

    #@7
    .line 5318
    .local v0, "cursorWidth":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v2, v0, -0x1

    #@d
    sub-int/2addr v1, v2

    #@e
    const/4 v2, 0x0

    #@f
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@12
    move-result v1

    #@13
    return v1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "line"    # I

    #@0
    .prologue
    .line 7528
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    #@3
    .line 7533
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
    .line 7534
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
    .line 7527
    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 6517
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    #@4
    move-result v1

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 6561
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@a
    .line 6564
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v0

    #@b
    .line 6519
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
    .line 6536
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@16
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@17
    .line 6521
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@19
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@1a
    .line 6524
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@1c
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@1d
    .line 6527
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@1f
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@20
    .line 6530
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@22
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@23
    .line 6533
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@25
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@26
    .line 6541
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@28
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@29
    .line 6544
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@2b
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@2c
    .line 6547
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@2e
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    #@2f
    .line 6550
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@32
    move-result v1

    #@33
    if-ne v1, v2, :cond_0

    #@35
    .line 6551
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
    .line 6554
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@3e
    move-result v1

    #@3f
    if-ne v1, v2, :cond_1

    #@41
    .line 6555
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
    .line 6517
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
    .line 6519
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
    .line 8578
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    .line 8579
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    #@6
    .line 8580
    return p2

    #@7
    .line 8582
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
    .line 8544
    if-nez p1, :cond_0

    #@3
    .line 8546
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 8553
    :cond_0
    sget-object v4, Landroid/R$styleable;->TextView:[I

    #@b
    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@e
    move-result-object v0

    #@f
    .line 8554
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    #@10
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@13
    move-result-object v3

    #@14
    .line 8555
    .local v3, "colors":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_1

    #@16
    .line 8556
    const/4 v4, 0x1

    #@17
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1a
    move-result v1

    #@1b
    .line 8557
    .local v1, "ap":I
    if-eqz v1, :cond_1

    #@1d
    .line 8559
    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    #@1f
    .line 8558
    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@22
    move-result-object v2

    #@23
    .line 8560
    .local v2, "appearance":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    #@24
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@27
    move-result-object v3

    #@28
    .line 8561
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@2b
    .line 8564
    .end local v1    # "ap":I
    .end local v2    # "appearance":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2e
    .line 8566
    return-object v3
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1
    .param p1, "allowNullLocale"    # Z

    #@0
    .prologue
    .line 8661
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    #@3
    .line 8664
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    #@5
    if-nez v0, :cond_0

    #@7
    if-eqz p1, :cond_1

    #@9
    .line 8665
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    #@b
    .line 8664
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
    .line 5512
    const/4 v0, 0x0

    #@2
    .line 5513
    .local v0, "highlight":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@4
    .line 5515
    .local v1, "highlightPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@7
    move-result v3

    #@8
    .line 5516
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@b
    move-result v2

    #@c
    .line 5517
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
    .line 5518
    if-ne v3, v2, :cond_4

    #@20
    .line 5519
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
    .line 5520
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
    .line 5521
    const-wide/16 v6, 0x3e8

    #@37
    .line 5520
    rem-long/2addr v4, v6

    #@38
    .line 5521
    const-wide/16 v6, 0x1f4

    #@3a
    .line 5520
    cmp-long v4, v4, v6

    #@3c
    if-gez v4, :cond_3

    #@3e
    .line 5522
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 5523
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
    .line 5524
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@4f
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    #@52
    .line 5525
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@54
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@56
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@58
    invoke-virtual {v4, v3, v5, v6}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    #@5b
    .line 5526
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5d
    invoke-virtual {v4}, Landroid/widget/Editor;->updateCursorsPositions()V

    #@60
    .line 5527
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@62
    .line 5531
    :cond_2
    iget v4, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@64
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@67
    .line 5532
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@69
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@6c
    .line 5533
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@6e
    .line 5550
    .end local v0    # "highlight":Landroid/graphics/Path;
    :cond_3
    :goto_0
    return-object v0

    #@6f
    .line 5536
    .restart local v0    # "highlight":Landroid/graphics/Path;
    :cond_4
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@71
    if-eqz v4, :cond_6

    #@73
    .line 5537
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
    .line 5538
    :cond_5
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@80
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    #@83
    .line 5539
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@85
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@87
    invoke-virtual {v4, v3, v2, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    #@8a
    .line 5540
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@8c
    .line 5544
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mHighlightColor:I

    #@8e
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@91
    .line 5545
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@93
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@96
    .line 5547
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@98
    .local v0, "highlight":Landroid/graphics/Path;
    goto :goto_0
.end method

.method private invalidateCursor(III)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    #@0
    .prologue
    .line 5120
    if-gez p1, :cond_0

    #@2
    if-ltz p2, :cond_2

    #@4
    .line 5121
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
    .line 5122
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v2

    #@10
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v0

    #@14
    .line 5123
    .local v0, "end":I
    const/4 v2, 0x1

    #@15
    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    #@18
    .line 5119
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    return-void

    #@19
    .line 5120
    :cond_2
    if-ltz p3, :cond_1

    #@1b
    goto :goto_0
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .param p0, "type"    # I

    #@0
    .prologue
    .line 4476
    const v0, 0x2000f

    #@3
    and-int/2addr v0, p0

    #@4
    .line 4477
    const v1, 0x20001

    #@7
    .line 4476
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
    .line 4578
    and-int/lit16 v0, p0, 0xfff

    #@3
    .line 4580
    .local v0, "variation":I
    const/16 v2, 0x81

    #@5
    .line 4579
    if-eq v0, v2, :cond_0

    #@7
    .line 4582
    const/16 v2, 0xe1

    #@9
    .line 4581
    if-ne v0, v2, :cond_1

    #@b
    .line 4579
    :cond_0
    :goto_0
    return v1

    #@c
    .line 4584
    :cond_1
    const/16 v2, 0x12

    #@e
    .line 4583
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
    .line 7188
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
    .line 4589
    and-int/lit16 v0, p0, 0xfff

    #@2
    .line 4591
    .local v0, "variation":I
    const/16 v1, 0x91

    #@4
    .line 4590
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

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
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
    .line 6707
    const/4 v2, 0x0

    #@1
    .line 6708
    .local v2, "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    #@3
    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@5
    instance-of v3, v3, Landroid/text/Spannable;

    #@7
    if-eqz v3, :cond_4

    #@9
    .line 6709
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
    .line 6710
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
    .line 6711
    move-object/from16 v0, p0

    #@29
    iget v12, v0, Landroid/widget/TextView;->mBreakStrategy:I

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget v13, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@2f
    .line 6712
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
    .line 6709
    invoke-direct/range {v2 .. v15}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V

    #@40
    .line 6752
    :cond_0
    :goto_1
    if-nez v2, :cond_2

    #@42
    .line 6753
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@46
    .line 6754
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
    .line 6753
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
    .line 6756
    move-object/from16 v0, p0

    #@61
    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@63
    .line 6753
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    #@66
    move-result-object v3

    #@67
    .line 6757
    move-object/from16 v0, p0

    #@69
    iget v4, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@6f
    .line 6753
    invoke-virtual {v3, v4, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    #@72
    move-result-object v3

    #@73
    .line 6758
    move-object/from16 v0, p0

    #@75
    iget-boolean v4, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@77
    .line 6753
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    #@7a
    move-result-object v3

    #@7b
    .line 6759
    move-object/from16 v0, p0

    #@7d
    iget v4, v0, Landroid/widget/TextView;->mBreakStrategy:I

    #@7f
    .line 6753
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    #@82
    move-result-object v3

    #@83
    .line 6760
    move-object/from16 v0, p0

    #@85
    iget v4, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@87
    .line 6753
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    #@8a
    move-result-object v16

    #@8b
    .line 6761
    .local v16, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz p5, :cond_1

    #@8d
    .line 6762
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
    .line 6764
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
    .line 6762
    :goto_2
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    #@a9
    .line 6767
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    #@ac
    move-result-object v2

    #@ad
    .line 6769
    .end local v16    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_2
    return-object v2

    #@ae
    .line 6712
    :cond_3
    const/4 v14, 0x0

    #@af
    goto :goto_0

    #@b0
    .line 6714
    .restart local v2    # "result":Landroid/text/Layout;
    :cond_4
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@b2
    move-object/from16 v0, p2

    #@b4
    if-ne v0, v3, :cond_5

    #@b6
    .line 6715
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
    .line 6716
    if-eqz p2, :cond_5

    #@cc
    .line 6717
    move-object/from16 v0, p2

    #@ce
    move-object/from16 v1, p0

    #@d0
    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    #@d2
    .line 6721
    :cond_5
    if-eqz p2, :cond_0

    #@d4
    .line 6722
    move-object/from16 v0, p2

    #@d6
    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@d8
    move/from16 v0, p1

    #@da
    if-gt v3, v0, :cond_8

    #@dc
    .line 6723
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
    .line 6724
    :cond_6
    if-eqz p7, :cond_7

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@ec
    if-eqz v3, :cond_7

    #@ee
    .line 6725
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
    .line 6726
    move-object/from16 v0, p0

    #@fc
    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@fe
    move-object/from16 v0, p0

    #@100
    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@102
    .line 6727
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
    .line 6725
    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    #@10f
    move-result-object v2

    #@110
    .line 6734
    .local v2, "result":Landroid/text/Layout;
    :goto_3
    if-eqz p7, :cond_0

    #@112
    move-object v3, v2

    #@113
    .line 6735
    check-cast v3, Landroid/text/BoringLayout;

    #@115
    move-object/from16 v0, p0

    #@117
    iput-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@119
    goto/16 :goto_1

    #@11b
    .line 6729
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
    .line 6730
    move-object/from16 v0, p0

    #@125
    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@127
    move-object/from16 v0, p0

    #@129
    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@12b
    .line 6731
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
    .line 6729
    invoke-static/range {v3 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    #@138
    move-result-object v2

    #@139
    .local v2, "result":Landroid/text/Layout;
    goto :goto_3

    #@13a
    .line 6737
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
    .line 6738
    if-eqz p7, :cond_9

    #@146
    move-object/from16 v0, p0

    #@148
    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@14a
    if-eqz v3, :cond_9

    #@14c
    .line 6739
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
    .line 6740
    move-object/from16 v0, p0

    #@15a
    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@15c
    move-object/from16 v0, p0

    #@15e
    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@160
    .line 6741
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
    .line 6739
    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    #@171
    move-result-object v2

    #@172
    .local v2, "result":Landroid/text/Layout;
    goto/16 :goto_1

    #@174
    .line 6744
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
    .line 6745
    move-object/from16 v0, p0

    #@17e
    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@180
    move-object/from16 v0, p0

    #@182
    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@184
    .line 6746
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
    .line 6744
    invoke-static/range {v3 .. v12}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    #@195
    move-result-object v2

    #@196
    .local v2, "result":Landroid/text/Layout;
    goto/16 :goto_1

    #@198
    .line 6764
    .end local v2    # "result":Landroid/text/Layout;
    .restart local v16    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_a
    const v3, 0x7fffffff

    #@19b
    goto/16 :goto_2
.end method

.method private nullLayouts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6479
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
    .line 6480
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@d
    check-cast v0, Landroid/text/BoringLayout;

    #@f
    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    #@11
    .line 6482
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
    .line 6483
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@1d
    check-cast v0, Landroid/text/BoringLayout;

    #@1f
    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@21
    .line 6486
    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@23
    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@25
    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@27
    .line 6488
    iput-object v1, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    #@29
    iput-object v1, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    #@2b
    .line 6491
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2d
    if-eqz v0, :cond_2

    #@2f
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@31
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@34
    .line 6478
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
    .line 1449
    if-nez p1, :cond_0

    #@3
    .line 1450
    return-object v2

    #@4
    .line 1452
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    #@7
    move-result v2

    #@8
    new-array v1, v2, [I

    #@a
    .line 1453
    .local v1, "result":[I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@c
    if-ge v0, v2, :cond_1

    #@e
    .line 1454
    const/4 v2, 0x0

    #@f
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@12
    move-result v2

    #@13
    aput v2, v1, v0

    #@15
    .line 1453
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1456
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
    .line 9460
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
    .line 9461
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    #@10
    move-result-object v0

    #@11
    .line 9462
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_5

    #@13
    .line 9463
    const/4 v2, 0x0

    #@14
    .line 9464
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
    .line 9466
    if-eqz p3, :cond_1

    #@1d
    .line 9467
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
    .line 9473
    .local v4, "paste":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v4, :cond_0

    #@2b
    .line 9474
    if-nez v2, :cond_3

    #@2d
    .line 9475
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2f
    check-cast v6, Landroid/text/Spannable;

    #@31
    invoke-static {v6, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@34
    .line 9476
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@36
    check-cast v6, Landroid/text/Editable;

    #@38
    invoke-interface {v6, p1, p2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@3b
    .line 9477
    const/4 v2, 0x1

    #@3c
    .line 9464
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 9470
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
    .line 9471
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
    .line 9479
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
    .line 9480
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
    .line 9484
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@73
    .line 9485
    const-wide/16 v6, 0x0

    #@75
    sput-wide v6, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    #@77
    .line 9458
    .end local v2    # "didFirst":Z
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private registerForPreDraw()V
    .locals 1

    #@0
    .prologue
    .line 5186
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5187
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@b
    .line 5188
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    #@e
    .line 5185
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
    .line 7952
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v6, v6, Landroid/text/Editable;

    #@4
    if-nez v6, :cond_0

    #@6
    return-void

    #@7
    .line 7953
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@9
    check-cast v5, Landroid/text/Editable;

    #@b
    .line 7955
    .local v5, "text":Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    .line 7956
    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    #@10
    .line 7957
    .local v1, "length":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@13
    .line 7958
    aget-object v6, v4, v0

    #@15
    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@18
    move-result v3

    #@19
    .line 7959
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    #@1b
    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@1e
    move-result v2

    #@1f
    .line 7960
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_1

    #@21
    if-ne v3, p2, :cond_2

    #@23
    .line 7951
    .end local v2    # "spanEnd":I
    .end local v3    # "spanStart":I
    :cond_1
    return-void

    #@24
    .line 7961
    .restart local v2    # "spanEnd":I
    .restart local v3    # "spanStart":I
    :cond_2
    aget-object v6, v4, v0

    #@26
    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@29
    .line 7957
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
    .line 6336
    const-class v2, Landroid/text/ParcelableSpan;

    #@2
    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 6337
    .local v1, "spans":[Ljava/lang/Object;
    array-length v0, v1

    #@7
    .line 6338
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@9
    .line 6339
    add-int/lit8 v0, v0, -0x1

    #@b
    .line 6340
    aget-object v2, v1, v0

    #@d
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@10
    goto :goto_0

    #@11
    .line 6335
    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 4950
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
    .line 4951
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    #@d
    .line 4952
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    #@10
    .line 4949
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
    .line 7937
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 7938
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@6
    .line 7939
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 7940
    .local v0, "count":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@d
    .line 7941
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/text/TextWatcher;

    #@13
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    #@16
    .line 7940
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 7946
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
    .line 7947
    add-int v3, p2, p3

    #@22
    const-class v4, Landroid/text/style/SuggestionSpan;

    #@24
    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    #@27
    .line 7936
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
    .line 4979
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-eqz v4, :cond_5

    #@5
    .line 4980
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    iget-object v4, v4, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@9
    if-eqz v4, :cond_4

    #@b
    const/4 v3, 0x1

    #@c
    .line 4981
    .local v3, "undoFilter":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@e
    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@10
    instance-of v0, v4, Landroid/text/InputFilter;

    #@12
    .line 4982
    .local v0, "keyFilter":Z
    const/4 v2, 0x0

    #@13
    .line 4983
    .local v2, "num":I
    if-eqz v3, :cond_0

    #@15
    const/4 v2, 0x1

    #@16
    .line 4984
    :cond_0
    if-eqz v0, :cond_1

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    .line 4985
    :cond_1
    if-lez v2, :cond_5

    #@1c
    .line 4986
    array-length v4, p2

    #@1d
    add-int/2addr v4, v2

    #@1e
    new-array v1, v4, [Landroid/text/InputFilter;

    #@20
    .line 4988
    .local v1, "nf":[Landroid/text/InputFilter;
    array-length v4, p2

    #@21
    invoke-static {p2, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 4989
    const/4 v2, 0x0

    #@25
    .line 4990
    if-eqz v3, :cond_2

    #@27
    .line 4991
    array-length v4, p2

    #@28
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2a
    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    #@2c
    aput-object v5, v1, v4

    #@2e
    .line 4992
    const/4 v2, 0x1

    #@2f
    .line 4994
    :cond_2
    if-eqz v0, :cond_3

    #@31
    .line 4995
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
    .line 4998
    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    #@3f
    .line 4999
    return-void

    #@40
    .line 4980
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
    .line 5002
    .end local v3    # "undoFilter":Z
    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    #@45
    .line 4978
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
    .line 4608
    and-int/lit8 v2, p1, 0xf

    #@4
    .line 4610
    .local v2, "cls":I
    if-ne v2, v4, :cond_4

    #@6
    .line 4611
    const v4, 0x8000

    #@9
    and-int/2addr v4, p1

    #@a
    if-eqz v4, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 4613
    .local v0, "autotext":Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    #@f
    if-eqz v4, :cond_1

    #@11
    .line 4614
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@13
    .line 4622
    .local v1, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    #@16
    move-result-object v3

    #@17
    .line 4644
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, "input":Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    #@1a
    .line 4645
    if-eqz p2, :cond_a

    #@1c
    .line 4646
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@1f
    .line 4647
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@21
    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@23
    .line 4607
    :goto_3
    return-void

    #@24
    .line 4611
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_0
    const/4 v0, 0x0

    #@25
    .restart local v0    # "autotext":Z
    goto :goto_0

    #@26
    .line 4615
    :cond_1
    and-int/lit16 v4, p1, 0x2000

    #@28
    if-eqz v4, :cond_2

    #@2a
    .line 4616
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@2c
    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    #@2d
    .line 4617
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2
    and-int/lit16 v4, p1, 0x4000

    #@2f
    if-eqz v4, :cond_3

    #@31
    .line 4618
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    #@33
    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    #@34
    .line 4620
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@36
    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    #@37
    .line 4623
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    const/4 v6, 0x2

    #@38
    if-ne v2, v6, :cond_7

    #@3a
    .line 4625
    and-int/lit16 v6, p1, 0x1000

    #@3c
    if-eqz v6, :cond_5

    #@3e
    move v6, v4

    #@3f
    .line 4626
    :goto_4
    and-int/lit16 v7, p1, 0x2000

    #@41
    if-eqz v7, :cond_6

    #@43
    .line 4624
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
    .line 4625
    goto :goto_4

    #@4a
    :cond_6
    move v4, v5

    #@4b
    .line 4626
    goto :goto_5

    #@4c
    .line 4627
    :cond_7
    const/4 v4, 0x4

    #@4d
    if-ne v2, v4, :cond_8

    #@4f
    .line 4628
    and-int/lit16 v4, p1, 0xff0

    #@51
    sparse-switch v4, :sswitch_data_0

    #@54
    .line 4636
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    #@57
    move-result-object v3

    #@58
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@59
    .line 4630
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    #@5c
    move-result-object v3

    #@5d
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@5e
    .line 4633
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    #@61
    move-result-object v3

    #@62
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@63
    .line 4639
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_8
    const/4 v4, 0x3

    #@64
    if-ne v2, v4, :cond_9

    #@66
    .line 4640
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    #@69
    move-result-object v3

    #@6a
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@6b
    .line 4642
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    #@6e
    move-result-object v3

    #@6f
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    #@70
    .line 4649
    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    #@73
    goto :goto_3

    #@74
    .line 4628
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
    .line 7671
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 7672
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
    .line 7673
    if-eqz p1, :cond_1

    #@f
    .line 7674
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
    .line 7670
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 7676
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
    .line 1781
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-nez v0, :cond_0

    #@4
    if-nez p1, :cond_0

    #@6
    return-void

    #@7
    .line 1783
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a
    .line 1784
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@e
    if-eq v0, p1, :cond_2

    #@10
    .line 1785
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@12
    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@14
    .line 1786
    if-eqz p1, :cond_1

    #@16
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@18
    instance-of v0, v0, Landroid/text/Editable;

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 1790
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
    .line 1780
    :cond_2
    return-void

    #@26
    .line 1787
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
    .line 9502
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    .line 9503
    const-string/jumbo v2, "clipboard"

    #@7
    .line 9502
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/content/ClipboardManager;

    #@d
    .line 9504
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    #@10
    .line 9505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13
    move-result-wide v2

    #@14
    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    #@16
    .line 9501
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    #@0
    .prologue
    .line 2905
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
    .line 2906
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@c
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    #@f
    .line 2908
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2909
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@16
    .line 2910
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@19
    .line 2911
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1c
    .line 2904
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "end"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1511
    if-nez p1, :cond_0

    #@3
    if-eqz p2, :cond_3

    #@5
    :cond_0
    const/4 v2, 0x1

    #@6
    .line 1512
    .local v2, "hasRelativeDrawables":Z
    :goto_0
    if-eqz v2, :cond_2

    #@8
    .line 1513
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@a
    .line 1514
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    #@c
    .line 1515
    new-instance v1, Landroid/widget/TextView$Drawables;

    #@e
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@11
    move-result-object v4

    #@12
    invoke-direct {v1, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@15
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@17
    .line 1517
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@19
    const/4 v5, 0x1

    #@1a
    iput-boolean v5, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@1c
    .line 1518
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@1e
    .line 1519
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@21
    move-result-object v3

    #@22
    .line 1520
    .local v3, "state":[I
    if-eqz p1, :cond_4

    #@24
    .line 1521
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@27
    move-result v4

    #@28
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2b
    move-result v5

    #@2c
    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2f
    .line 1522
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@32
    .line 1523
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@35
    .line 1524
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@38
    .line 1526
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@3a
    .line 1527
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@3d
    move-result v4

    #@3e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@40
    .line 1528
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@43
    move-result v4

    #@44
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@46
    .line 1532
    :goto_1
    if-eqz p2, :cond_5

    #@48
    .line 1533
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@4b
    move-result v4

    #@4c
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@4f
    move-result v5

    #@50
    invoke-virtual {p2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@53
    .line 1534
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@56
    .line 1535
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@59
    .line 1536
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@5c
    .line 1538
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@5e
    .line 1539
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@61
    move-result v4

    #@62
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@64
    .line 1540
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@67
    move-result v4

    #@68
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@6a
    .line 1544
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@6d
    .line 1545
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@70
    .line 1546
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    #@73
    .line 1510
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v3    # "state":[I
    :cond_2
    return-void

    #@74
    .line 1511
    .end local v2    # "hasRelativeDrawables":Z
    :cond_3
    const/4 v2, 0x0

    #@75
    .restart local v2    # "hasRelativeDrawables":Z
    goto :goto_0

    #@76
    .line 1530
    .restart local v0    # "compoundRect":Landroid/graphics/Rect;
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "state":[I
    :cond_4
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@78
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@7a
    goto :goto_1

    #@7b
    .line 1542
    :cond_5
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@7d
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

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
    .line 4208
    if-nez p1, :cond_0

    #@2
    .line 4209
    const-string/jumbo p1, ""

    #@5
    .line 4213
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_1

    #@b
    .line 4214
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@e
    move-result-object p1

    #@f
    .line 4217
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
    .line 4219
    :cond_2
    move-object/from16 v0, p1

    #@20
    instance-of v4, v0, Landroid/text/Spanned;

    #@22
    if-eqz v4, :cond_3

    #@24
    move-object/from16 v4, p1

    #@26
    .line 4220
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
    .line 4221
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
    .line 4222
    const/4 v4, 0x1

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@44
    .line 4223
    const/4 v4, 0x0

    #@45
    move-object/from16 v0, p0

    #@47
    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@49
    .line 4228
    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@50
    .line 4231
    :cond_3
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@54
    array-length v14, v4

    #@55
    .line 4232
    .local v14, "n":I
    const/4 v12, 0x0

    #@56
    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_6

    #@58
    .line 4233
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
    .line 4234
    .local v16, "out":Ljava/lang/CharSequence;
    if-eqz v16, :cond_4

    #@6f
    .line 4235
    move-object/from16 p1, v16

    #@71
    .line 4232
    :cond_4
    add-int/lit8 v12, v12, 0x1

    #@73
    goto :goto_1

    #@74
    .line 4225
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
    .line 4226
    const/4 v4, 0x1

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@7f
    goto :goto_0

    #@80
    .line 4239
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    :cond_6
    if-eqz p3, :cond_7

    #@82
    .line 4240
    move-object/from16 v0, p0

    #@84
    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@86
    if-eqz v4, :cond_11

    #@88
    .line 4241
    move-object/from16 v0, p0

    #@8a
    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8c
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@8f
    move-result p4

    #@90
    .line 4242
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
    .line 4248
    :cond_7
    :goto_2
    const/4 v15, 0x0

    #@a1
    .line 4250
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
    .line 4251
    const/4 v15, 0x1

    #@b2
    .line 4254
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
    .line 4256
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@c1
    .line 4257
    move-object/from16 v0, p0

    #@c3
    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c5
    invoke-virtual {v4}, Landroid/widget/Editor;->forgetUndoRedo()V

    #@c8
    .line 4258
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
    .line 4259
    .local v19, "t":Landroid/text/Editable;
    move-object/from16 p1, v19

    #@d4
    .line 4260
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
    .line 4261
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@e2
    move-result-object v13

    #@e3
    .line 4262
    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_a

    #@e5
    move-object/from16 v0, p0

    #@e7
    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    #@ea
    .line 4269
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
    .line 4272
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
    .line 4273
    check-cast v17, Landroid/text/Spannable;

    #@100
    .line 4278
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
    .line 4279
    move-object/from16 p1, v17

    #@10e
    .line 4280
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@110
    move-object/from16 v0, p2

    #@112
    if-ne v0, v4, :cond_16

    #@114
    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@116
    .line 4287
    :goto_5
    move-object/from16 v0, p1

    #@118
    move-object/from16 v1, p0

    #@11a
    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@11c
    .line 4291
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
    .line 4297
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_c
    :goto_6
    move-object/from16 v0, p2

    #@12a
    move-object/from16 v1, p0

    #@12c
    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@12e
    .line 4298
    move-object/from16 v0, p1

    #@130
    move-object/from16 v1, p0

    #@132
    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@134
    .line 4300
    move-object/from16 v0, p0

    #@136
    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@138
    if-nez v4, :cond_18

    #@13a
    .line 4301
    move-object/from16 v0, p1

    #@13c
    move-object/from16 v1, p0

    #@13e
    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    #@140
    .line 4306
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@143
    move-result v20

    #@144
    .line 4308
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
    .line 4341
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    #@152
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@154
    if-eqz v4, :cond_e

    #@156
    .line 4342
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    #@159
    .line 4345
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
    .line 4346
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
    .line 4348
    const/4 v4, 0x2

    #@172
    move-object/from16 v0, p0

    #@174
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@177
    .line 4350
    if-eqz v15, :cond_f

    #@179
    .line 4351
    check-cast p1, Landroid/text/Editable;

    #@17b
    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    #@17e
    .line 4355
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
    .line 4207
    :cond_10
    return-void

    #@18c
    .line 4244
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
    .line 4254
    .restart local v15    # "needEditableForNotification":Z
    :cond_12
    if-nez v15, :cond_9

    #@19e
    .line 4263
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
    .line 4264
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
    .line 4265
    :cond_14
    move-object/from16 v0, p1

    #@1b8
    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    #@1ba
    if-nez v4, :cond_a

    #@1bc
    .line 4266
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1bf
    move-result-object p1

    #@1c0
    goto/16 :goto_3

    #@1c2
    .line 4275
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
    .line 4280
    :cond_16
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@1d0
    goto/16 :goto_5

    #@1d2
    .line 4292
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
    .line 4303
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
    .line 4309
    check-cast v18, Landroid/text/Spannable;

    #@1f3
    .line 4312
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
    .line 4313
    .local v21, "watchers":[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    #@204
    array-length v11, v0

    #@205
    .line 4314
    .local v11, "count":I
    const/4 v12, 0x0

    #@206
    :goto_9
    if-ge v12, v11, :cond_1a

    #@208
    .line 4315
    aget-object v4, v21, v12

    #@20a
    move-object/from16 v0, v18

    #@20c
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@20f
    .line 4314
    add-int/lit8 v12, v12, 0x1

    #@211
    goto :goto_9

    #@212
    .line 4318
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
    .line 4320
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
    .line 4323
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
    .line 4325
    :cond_1c
    move-object/from16 v0, p0

    #@244
    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@246
    if-eqz v4, :cond_1d

    #@248
    .line 4326
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
    .line 4329
    :cond_1d
    move-object/from16 v0, p0

    #@258
    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@25a
    if-eqz v4, :cond_d

    #@25c
    .line 4330
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
    .line 4337
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
    .line 1485
    const/4 v0, 0x0

    #@1
    .line 1486
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    #@3
    .line 1487
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@6
    move-result-object v0

    #@7
    .line 1488
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    #@9
    .line 1489
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@c
    .line 1490
    return-void

    #@d
    .line 1493
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_0
    packed-switch p2, :pswitch_data_0

    #@10
    .line 1507
    :goto_0
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    #@13
    .line 1484
    return-void

    #@14
    .line 1495
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@16
    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    #@17
    .line 1499
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@19
    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    #@1a
    .line 1503
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@1c
    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    #@1d
    .line 1493
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
    .line 9490
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 9491
    .local v0, "selectedText":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 9489
    :cond_0
    :goto_0
    return-void

    #@e
    .line 9492
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@10
    const-string/jumbo v2, "android.intent.action.SEND"

    #@13
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 9493
    .local v1, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    #@19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 9494
    const-string/jumbo v2, "android.intent.extra.TEXT"

    #@1f
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@22
    .line 9495
    const-string/jumbo v2, "android.intent.extra.TEXT"

    #@25
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@28
    .line 9496
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
    .line 9497
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@36
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
    .line 5969
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 5970
    return v3

    #@9
    .line 5973
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 5974
    return v2

    #@e
    .line 5977
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@10
    if-eqz v1, :cond_3

    #@12
    .line 5978
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@14
    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    #@16
    and-int/lit8 v1, v1, 0xf

    #@18
    if-ne v1, v2, :cond_3

    #@1a
    .line 5979
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1c
    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    #@1e
    and-int/lit16 v0, v1, 0xff0

    #@20
    .line 5980
    .local v0, "variation":I
    const/16 v1, 0x20

    #@22
    if-eq v0, v1, :cond_2

    #@24
    .line 5981
    const/16 v1, 0x30

    #@26
    if-ne v0, v1, :cond_3

    #@28
    .line 5982
    :cond_2
    return v2

    #@29
    .line 5986
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
    .line 5994
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
    .line 6002
    :cond_0
    return v2

    #@c
    .line 5994
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 5995
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@12
    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    #@14
    and-int/lit8 v1, v1, 0xf

    #@16
    if-ne v1, v2, :cond_0

    #@18
    .line 5996
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1a
    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    #@1c
    and-int/lit16 v0, v1, 0xff0

    #@1e
    .line 5997
    .local v0, "variation":I
    const/high16 v1, 0x40000

    #@20
    if-eq v0, v1, :cond_2

    #@22
    .line 5998
    const/high16 v1, 0x20000

    #@24
    if-ne v0, v1, :cond_0

    #@26
    .line 5999
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
    .line 8772
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 8773
    const-string/jumbo v3, "speak_password"

    #@b
    .line 8774
    const/4 v4, -0x3

    #@c
    .line 8772
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
    .line 7824
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    return-void

    #@8
    .line 7826
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
    .line 7827
    return-void

    #@1e
    .line 7830
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
    .line 7831
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
    .line 7830
    if-eqz v1, :cond_6

    #@42
    .line 7833
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@44
    if-ne v1, v3, :cond_4

    #@46
    .line 7834
    const/4 v1, 0x2

    #@47
    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@49
    .line 7835
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4b
    .line 7836
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@4d
    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4f
    .line 7837
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@51
    .line 7838
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@54
    .line 7839
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@57
    .line 7840
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@5a
    .line 7843
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
    .line 7844
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@67
    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@69
    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    #@6c
    .line 7822
    :cond_6
    return-void
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .param p1, "start"    # Z

    #@0
    .prologue
    .line 7865
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 7866
    if-eqz p1, :cond_1

    #@8
    .line 7867
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    #@b
    .line 7864
    :cond_0
    :goto_0
    return-void

    #@c
    .line 7869
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    #@f
    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    #@0
    .prologue
    .line 7849
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
    .line 7853
    :cond_0
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@e
    const/4 v2, 0x2

    #@f
    if-ne v1, v2, :cond_1

    #@11
    .line 7854
    const/4 v1, 0x1

    #@12
    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@14
    .line 7855
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@16
    .line 7856
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@18
    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@1a
    .line 7857
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@1c
    .line 7858
    const/4 v1, 0x0

    #@1d
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    #@20
    .line 7859
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@23
    .line 7860
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@26
    .line 7848
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_1
    return-void

    #@27
    .line 7850
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
    .line 5193
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@8
    .line 5194
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    #@a
    .line 5195
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    #@c
    .line 5192
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3929
    const/4 v1, 0x0

    #@2
    .line 3930
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
    .line 3931
    .local v0, "color":I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@e
    if-eq v0, v2, :cond_0

    #@10
    .line 3932
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@12
    .line 3933
    const/4 v1, 0x1

    #@13
    .line 3935
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 3936
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
    .line 3937
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@23
    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    #@25
    if-eq v0, v2, :cond_1

    #@27
    .line 3938
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@29
    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    #@2b
    .line 3939
    const/4 v1, 0x1

    #@2c
    .line 3942
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 3943
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
    .line 3944
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    #@3c
    if-eq v0, v2, :cond_2

    #@3e
    .line 3945
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    #@40
    .line 3946
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@42
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@45
    move-result v2

    #@46
    if-nez v2, :cond_2

    #@48
    .line 3947
    const/4 v1, 0x1

    #@49
    .line 3951
    :cond_2
    if-eqz v1, :cond_4

    #@4b
    .line 3953
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4d
    if-eqz v2, :cond_3

    #@4f
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@51
    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    #@54
    .line 3954
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@57
    .line 3928
    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    #@0
    .prologue
    .line 8714
    new-instance v0, Landroid/widget/TextView$3;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    #@5
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #@8
    .line 8710
    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 5

    #@0
    .prologue
    .line 8724
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v4, "textservices"

    #@5
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 8723
    check-cast v2, Landroid/view/textservice/TextServicesManager;

    #@b
    .line 8725
    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    #@c
    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    #@f
    move-result-object v1

    #@10
    .line 8727
    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    #@12
    .line 8728
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    #@19
    move-result-object v0

    #@1a
    .line 8732
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    #@1c
    .line 8722
    return-void

    #@1d
    .line 8730
    :cond_0
    const/4 v0, 0x0

    #@1e
    .local v0, "locale":Ljava/util/Locale;
    goto :goto_0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    #@0
    .prologue
    .line 7914
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7915
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@b
    .line 7918
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 7913
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3912
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    #@8
    .line 3911
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 3921
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v0, v0, Landroid/text/Editable;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 3922
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8
    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@d
    .line 3925
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@f
    check-cast v0, Landroid/text/Editable;

    #@11
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    #@14
    .line 3920
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    #@0
    .prologue
    .line 6441
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    #@9
    .line 6440
    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 30
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 7266
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    #@3
    move-result v25

    #@4
    if-eqz v25, :cond_0

    #@6
    .line 7267
    move/from16 v0, p1

    #@8
    move-object/from16 v1, p0

    #@a
    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    #@c
    .line 7268
    const/16 v25, 0x0

    #@e
    return v25

    #@f
    .line 7270
    :cond_0
    const/4 v5, 0x0

    #@10
    .line 7272
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
    .line 7274
    .local v16, "layout":Landroid/text/Layout;
    :goto_0
    if-nez v16, :cond_2

    #@1e
    return v5

    #@1f
    .line 7272
    .end local v16    # "layout":Landroid/text/Layout;
    :cond_1
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@23
    move-object/from16 v16, v0

    #@25
    .restart local v16    # "layout":Landroid/text/Layout;
    goto :goto_0

    #@26
    .line 7276
    :cond_2
    move-object/from16 v0, v16

    #@28
    move/from16 v1, p1

    #@2a
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@2d
    move-result v18

    #@2e
    .line 7280
    .local v18, "line":I
    invoke-static {}, Landroid/widget/TextView;->-getandroid_text_Layout$AlignmentSwitchesValues()[I

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
    .line 7295
    const/4 v11, 0x0

    #@44
    .line 7309
    .local v11, "grav":I
    :goto_1
    if-lez v11, :cond_12

    #@46
    const/4 v6, 0x1

    #@47
    .line 7311
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
    .line 7312
    .local v24, "x":I
    move-object/from16 v0, v16

    #@56
    move/from16 v1, v18

    #@58
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@5b
    move-result v20

    #@5c
    .line 7313
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
    .line 7315
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
    .line 7316
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
    .line 7317
    .local v19, "right":I
    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    #@95
    move-result v15

    #@96
    .line 7319
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
    .line 7320
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
    .line 7321
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
    .line 7323
    add-int v25, v17, v14

    #@e0
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    #@e3
    move-result v19

    #@e4
    .line 7326
    :cond_3
    sub-int v25, v4, v20

    #@e6
    div-int/lit8 v13, v25, 0x2

    #@e8
    .line 7327
    .local v13, "hslack":I
    move/from16 v22, v13

    #@ea
    .line 7329
    .local v22, "vslack":I
    div-int/lit8 v25, v23, 0x4

    #@ec
    move/from16 v0, v22

    #@ee
    move/from16 v1, v25

    #@f0
    if-le v0, v1, :cond_4

    #@f2
    .line 7330
    div-int/lit8 v22, v23, 0x4

    #@f4
    .line 7331
    :cond_4
    div-int/lit8 v25, v14, 0x4

    #@f6
    move/from16 v0, v25

    #@f8
    if-le v13, v0, :cond_5

    #@fa
    .line 7332
    div-int/lit8 v13, v14, 0x4

    #@fc
    .line 7334
    :cond_5
    move-object/from16 v0, p0

    #@fe
    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    #@100
    .line 7335
    .local v12, "hs":I
    move-object/from16 v0, p0

    #@102
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@104
    move/from16 v21, v0

    #@106
    .line 7337
    .local v21, "vs":I
    sub-int v25, v20, v21

    #@108
    move/from16 v0, v25

    #@10a
    move/from16 v1, v22

    #@10c
    if-ge v0, v1, :cond_6

    #@10e
    .line 7338
    sub-int v21, v20, v22

    #@110
    .line 7339
    :cond_6
    sub-int v25, v4, v21

    #@112
    sub-int v26, v23, v22

    #@114
    move/from16 v0, v25

    #@116
    move/from16 v1, v26

    #@118
    if-le v0, v1, :cond_7

    #@11a
    .line 7340
    sub-int v25, v23, v22

    #@11c
    sub-int v21, v4, v25

    #@11e
    .line 7341
    :cond_7
    sub-int v25, v15, v21

    #@120
    move/from16 v0, v25

    #@122
    move/from16 v1, v23

    #@124
    if-ge v0, v1, :cond_8

    #@126
    .line 7342
    sub-int v21, v15, v23

    #@128
    .line 7343
    :cond_8
    rsub-int/lit8 v25, v21, 0x0

    #@12a
    if-lez v25, :cond_9

    #@12c
    .line 7344
    const/16 v21, 0x0

    #@12e
    .line 7346
    :cond_9
    if-eqz v11, :cond_b

    #@130
    .line 7347
    sub-int v25, v24, v12

    #@132
    move/from16 v0, v25

    #@134
    if-ge v0, v13, :cond_a

    #@136
    .line 7348
    sub-int v12, v24, v13

    #@138
    .line 7350
    :cond_a
    sub-int v25, v24, v12

    #@13a
    sub-int v26, v14, v13

    #@13c
    move/from16 v0, v25

    #@13e
    move/from16 v1, v26

    #@140
    if-le v0, v1, :cond_b

    #@142
    .line 7351
    sub-int v25, v14, v13

    #@144
    sub-int v12, v24, v25

    #@146
    .line 7355
    :cond_b
    if-gez v11, :cond_13

    #@148
    .line 7356
    sub-int v25, v17, v12

    #@14a
    if-lez v25, :cond_c

    #@14c
    .line 7357
    move/from16 v12, v17

    #@14e
    .line 7358
    :cond_c
    sub-int v25, v19, v12

    #@150
    move/from16 v0, v25

    #@152
    if-ge v0, v14, :cond_d

    #@154
    .line 7359
    sub-int v12, v19, v14

    #@156
    .line 7406
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    #@158
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@15a
    move/from16 v25, v0

    #@15c
    move/from16 v0, v25

    #@15e
    if-ne v12, v0, :cond_e

    #@160
    move-object/from16 v0, p0

    #@162
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@164
    move/from16 v25, v0

    #@166
    move/from16 v0, v21

    #@168
    move/from16 v1, v25

    #@16a
    if-eq v0, v1, :cond_f

    #@16c
    .line 7407
    :cond_e
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@170
    move-object/from16 v25, v0

    #@172
    if-nez v25, :cond_1c

    #@174
    .line 7408
    move-object/from16 v0, p0

    #@176
    move/from16 v1, v21

    #@178
    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->scrollTo(II)V

    #@17b
    .line 7429
    :goto_4
    const/4 v5, 0x1

    #@17c
    .line 7432
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    #@17f
    move-result v25

    #@180
    if-eqz v25, :cond_11

    #@182
    .line 7440
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@186
    move-object/from16 v25, v0

    #@188
    if-nez v25, :cond_10

    #@18a
    new-instance v25, Landroid/graphics/Rect;

    #@18c
    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    #@18f
    move-object/from16 v0, v25

    #@191
    move-object/from16 v1, p0

    #@193
    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@195
    .line 7441
    :cond_10
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@199
    move-object/from16 v25, v0

    #@19b
    add-int/lit8 v26, v24, -0x2

    #@19d
    add-int/lit8 v27, v24, 0x2

    #@19f
    move-object/from16 v0, v25

    #@1a1
    move/from16 v1, v26

    #@1a3
    move/from16 v2, v20

    #@1a5
    move/from16 v3, v27

    #@1a7
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@1aa
    .line 7442
    move-object/from16 v0, p0

    #@1ac
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@1ae
    move-object/from16 v25, v0

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    move-object/from16 v1, v25

    #@1b4
    move/from16 v2, v18

    #@1b6
    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    #@1b9
    .line 7443
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@1bd
    move-object/from16 v25, v0

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@1c3
    move/from16 v26, v0

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@1c9
    move/from16 v27, v0

    #@1cb
    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Rect;->offset(II)V

    #@1ce
    .line 7445
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    #@1d2
    move-object/from16 v25, v0

    #@1d4
    move-object/from16 v0, p0

    #@1d6
    move-object/from16 v1, v25

    #@1d8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    #@1db
    move-result v25

    #@1dc
    if-eqz v25, :cond_11

    #@1de
    .line 7446
    const/4 v5, 0x1

    #@1df
    .line 7450
    :cond_11
    return v5

    #@1e0
    .line 7282
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

    #@1e1
    .line 7283
    .restart local v11    # "grav":I
    goto/16 :goto_1

    #@1e3
    .line 7285
    .end local v11    # "grav":I
    :pswitch_1
    const/4 v11, -0x1

    #@1e4
    .line 7286
    .restart local v11    # "grav":I
    goto/16 :goto_1

    #@1e6
    .line 7288
    .end local v11    # "grav":I
    :pswitch_2
    move-object/from16 v0, v16

    #@1e8
    move/from16 v1, v18

    #@1ea
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1ed
    move-result v11

    #@1ee
    .restart local v11    # "grav":I
    goto/16 :goto_1

    #@1f0
    .line 7291
    .end local v11    # "grav":I
    :pswitch_3
    move-object/from16 v0, v16

    #@1f2
    move/from16 v1, v18

    #@1f4
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1f7
    move-result v25

    #@1f8
    move/from16 v0, v25

    #@1fa
    neg-int v11, v0

    #@1fb
    .line 7292
    .restart local v11    # "grav":I
    goto/16 :goto_1

    #@1fd
    .line 7309
    :cond_12
    const/4 v6, 0x0

    #@1fe
    .restart local v6    # "clamped":Z
    goto/16 :goto_2

    #@200
    .line 7360
    .restart local v4    # "bottom":I
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

    #@202
    .line 7361
    sub-int v25, v19, v12

    #@204
    move/from16 v0, v25

    #@206
    if-ge v0, v14, :cond_14

    #@208
    .line 7362
    sub-int v12, v19, v14

    #@20a
    .line 7363
    :cond_14
    sub-int v25, v17, v12

    #@20c
    if-lez v25, :cond_d

    #@20e
    .line 7364
    move/from16 v12, v17

    #@210
    goto/16 :goto_3

    #@212
    .line 7366
    :cond_15
    sub-int v25, v19, v17

    #@214
    move/from16 v0, v25

    #@216
    if-gt v0, v14, :cond_16

    #@218
    .line 7370
    sub-int v25, v19, v17

    #@21a
    sub-int v25, v14, v25

    #@21c
    div-int/lit8 v25, v25, 0x2

    #@21e
    sub-int v12, v17, v25

    #@220
    goto/16 :goto_3

    #@222
    .line 7371
    :cond_16
    sub-int v25, v19, v13

    #@224
    move/from16 v0, v24

    #@226
    move/from16 v1, v25

    #@228
    if-le v0, v1, :cond_17

    #@22a
    .line 7376
    sub-int v12, v19, v14

    #@22c
    goto/16 :goto_3

    #@22e
    .line 7377
    :cond_17
    add-int v25, v17, v13

    #@230
    move/from16 v0, v24

    #@232
    move/from16 v1, v25

    #@234
    if-ge v0, v1, :cond_18

    #@236
    .line 7382
    move/from16 v12, v17

    #@238
    goto/16 :goto_3

    #@23a
    .line 7383
    :cond_18
    move/from16 v0, v17

    #@23c
    if-le v0, v12, :cond_19

    #@23e
    .line 7387
    move/from16 v12, v17

    #@240
    goto/16 :goto_3

    #@242
    .line 7388
    :cond_19
    add-int v25, v12, v14

    #@244
    move/from16 v0, v19

    #@246
    move/from16 v1, v25

    #@248
    if-ge v0, v1, :cond_1a

    #@24a
    .line 7392
    sub-int v12, v19, v14

    #@24c
    goto/16 :goto_3

    #@24e
    .line 7397
    :cond_1a
    sub-int v25, v24, v12

    #@250
    move/from16 v0, v25

    #@252
    if-ge v0, v13, :cond_1b

    #@254
    .line 7398
    sub-int v12, v24, v13

    #@256
    .line 7400
    :cond_1b
    sub-int v25, v24, v12

    #@258
    sub-int v26, v14, v13

    #@25a
    move/from16 v0, v25

    #@25c
    move/from16 v1, v26

    #@25e
    if-le v0, v1, :cond_d

    #@260
    .line 7401
    sub-int v25, v14, v13

    #@262
    sub-int v12, v24, v25

    #@264
    goto/16 :goto_3

    #@266
    .line 7410
    :cond_1c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@269
    move-result-wide v26

    #@26a
    move-object/from16 v0, p0

    #@26c
    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    #@26e
    move-wide/from16 v28, v0

    #@270
    sub-long v8, v26, v28

    #@272
    .line 7411
    .local v8, "duration":J
    move-object/from16 v0, p0

    #@274
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@276
    move/from16 v25, v0

    #@278
    sub-int v7, v12, v25

    #@27a
    .line 7412
    .local v7, "dx":I
    move-object/from16 v0, p0

    #@27c
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@27e
    move/from16 v25, v0

    #@280
    sub-int v10, v21, v25

    #@282
    .line 7414
    .local v10, "dy":I
    const-wide/16 v26, 0xfa

    #@284
    cmp-long v25, v8, v26

    #@286
    if-lez v25, :cond_1d

    #@288
    .line 7415
    move-object/from16 v0, p0

    #@28a
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@28c
    move-object/from16 v25, v0

    #@28e
    move-object/from16 v0, p0

    #@290
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@292
    move/from16 v26, v0

    #@294
    move-object/from16 v0, p0

    #@296
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@298
    move/from16 v27, v0

    #@29a
    move-object/from16 v0, v25

    #@29c
    move/from16 v1, v26

    #@29e
    move/from16 v2, v27

    #@2a0
    invoke-virtual {v0, v1, v2, v7, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    #@2a3
    .line 7416
    move-object/from16 v0, p0

    #@2a5
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2a7
    move-object/from16 v25, v0

    #@2a9
    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    #@2ac
    move-result v25

    #@2ad
    move-object/from16 v0, p0

    #@2af
    move/from16 v1, v25

    #@2b1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    #@2b4
    .line 7417
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    #@2b7
    .line 7426
    :goto_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@2ba
    move-result-wide v26

    #@2bb
    move-wide/from16 v0, v26

    #@2bd
    move-object/from16 v2, p0

    #@2bf
    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    #@2c1
    goto/16 :goto_4

    #@2c3
    .line 7419
    :cond_1d
    move-object/from16 v0, p0

    #@2c5
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2c7
    move-object/from16 v25, v0

    #@2c9
    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    #@2cc
    move-result v25

    #@2cd
    if-nez v25, :cond_1e

    #@2cf
    .line 7420
    move-object/from16 v0, p0

    #@2d1
    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2d3
    move-object/from16 v25, v0

    #@2d5
    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    #@2d8
    .line 7423
    :cond_1e
    move-object/from16 v0, p0

    #@2da
    invoke-virtual {v0, v7, v10}, Landroid/widget/TextView;->scrollBy(II)V

    #@2dd
    goto :goto_5

    #@2de
    .line 7280
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
    .line 9397
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 9398
    return v1

    #@8
    .line 9401
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
    .line 9402
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 9405
    :cond_1
    return v1
.end method

.method canCut()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 9384
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 9385
    return v1

    #@8
    .line 9388
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
    .line 9389
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@22
    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 9390
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    .line 9393
    :cond_1
    return v1
.end method

.method canPaste()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 9413
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@3
    instance-of v1, v1, Landroid/text/Editable;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 9414
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
    .line 9415
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@14
    move-result v1

    #@15
    if-ltz v1, :cond_0

    #@17
    .line 9416
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@1a
    move-result v1

    #@1b
    if-ltz v1, :cond_0

    #@1d
    .line 9417
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
    .line 9413
    :cond_0
    return v0
.end method

.method canProcessText()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 9422
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    #@e
    move-result v0

    #@f
    const/4 v1, -0x1

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 9424
    :cond_0
    return v2

    #@13
    .line 9423
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@16
    move-result v0

    #@17
    .line 9422
    if-nez v0, :cond_0

    #@19
    .line 9427
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1b
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@1e
    move-result v0

    #@1f
    if-lez v0, :cond_2

    #@21
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 9428
    const/4 v0, 0x1

    #@2c
    return v0

    #@2d
    .line 9431
    :cond_2
    return v2
.end method

.method canRedo()Z
    .locals 1

    #@0
    .prologue
    .line 9380
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
    .line 9435
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
    .line 9436
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
    .line 8641
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
    .line 9409
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method canUndo()Z
    .locals 1

    #@0
    .prologue
    .line 9376
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
    .line 8403
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    #@3
    .line 8404
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
    .line 8402
    :cond_0
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    #@0
    .prologue
    .line 8254
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v0, v0, Landroid/text/Spannable;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 8255
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@8
    check-cast v0, Landroid/text/Spannable;

    #@a
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    #@d
    .line 8253
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    #@0
    .prologue
    .line 8498
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 8499
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
    .line 8500
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
    .line 8499
    :goto_0
    return v0

    #@18
    .line 8500
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@1a
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    #@1d
    move-result v0

    #@1e
    goto :goto_0

    #@1f
    .line 8503
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
    .line 7517
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 7518
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@6
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 7519
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@e
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    #@14
    .line 7520
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@16
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    #@1c
    .line 7521
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    #@1f
    .line 7522
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    #@22
    .line 7516
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    #@0
    .prologue
    .line 8516
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
    .line 8508
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 8509
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@6
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 8511
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
    .line 9525
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    sub-float/2addr p1, v0

    #@6
    .line 9527
    const/4 v0, 0x0

    #@7
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@a
    move-result p1

    #@b
    .line 9528
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
    .line 9529
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    #@1e
    move-result v0

    #@1f
    int-to-float v0, v0

    #@20
    add-float/2addr p1, v0

    #@21
    .line 9530
    return p1
.end method

.method public debug(I)V
    .locals 3
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 7561
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    #@3
    .line 7563
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 7564
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
    .line 7565
    const-string/jumbo v2, ", "

    #@3a
    .line 7564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 7565
    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    #@40
    .line 7564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 7565
    const-string/jumbo v2, "} scroll={"

    #@47
    .line 7564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 7565
    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    #@4d
    .line 7564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 7565
    const-string/jumbo v2, ", "

    #@54
    .line 7564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    .line 7565
    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    #@5a
    .line 7564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 7566
    const-string/jumbo v2, "} "

    #@61
    .line 7564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 7568
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@6b
    if-eqz v1, :cond_1

    #@6d
    .line 7570
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
    .line 7571
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@90
    if-eqz v1, :cond_0

    #@92
    .line 7572
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
    .line 7573
    const-string/jumbo v2, " height="

    #@af
    .line 7572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v1

    #@b3
    .line 7573
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@b5
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    #@b8
    move-result v2

    #@b9
    .line 7572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v0

    #@c1
    .line 7578
    :cond_0
    :goto_0
    const-string/jumbo v1, "View"

    #@c4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 7560
    return-void

    #@c8
    .line 7576
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
    .line 9670
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    check-cast v0, Landroid/text/Editable;

    #@4
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@7
    .line 9669
    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    #@0
    .prologue
    .line 8398
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

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    #@0
    .prologue
    .line 8178
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    #@3
    .line 8179
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    #@6
    .line 8180
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    #@9
    .line 8177
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 3979
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@3
    .line 3981
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 3982
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@a
    move-result-object v1

    #@b
    .line 3983
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@d
    iget-object v3, v2, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@f
    const/4 v2, 0x0

    #@10
    array-length v4, v3

    #@11
    :goto_0
    if-ge v2, v4, :cond_1

    #@13
    aget-object v0, v3, v2

    #@15
    .line 3984
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@17
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    .line 3985
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@20
    .line 3983
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 3978
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "state":[I
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    #@0
    .prologue
    .line 3960
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 3961
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
    .line 3962
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
    .line 3961
    if-nez v2, :cond_2

    #@1b
    .line 3963
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
    .line 3961
    if-eqz v2, :cond_3

    #@27
    .line 3964
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@2a
    .line 3967
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2c
    if-eqz v2, :cond_5

    #@2e
    .line 3968
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@31
    move-result-object v1

    #@32
    .line 3969
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
    .line 3970
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    #@3e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_4

    #@44
    .line 3971
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@47
    .line 3969
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 3959
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
    .line 9807
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@4
    .line 9809
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    #@7
    move-result-object v0

    #@8
    .line 9810
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
    .line 9811
    const-string/jumbo v1, "text:textSize"

    #@14
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    #@17
    move-result v3

    #@18
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    #@1b
    .line 9812
    const-string/jumbo v1, "text:scaledTextSize"

    #@1e
    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    #@21
    move-result v3

    #@22
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    #@25
    .line 9813
    const-string/jumbo v1, "text:typefaceStyle"

    #@28
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@2f
    .line 9814
    const-string/jumbo v1, "text:selectionStart"

    #@32
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@35
    move-result v3

    #@36
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@39
    .line 9815
    const-string/jumbo v1, "text:selectionEnd"

    #@3c
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3f
    move-result v3

    #@40
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@43
    .line 9816
    const-string/jumbo v1, "text:curTextColor"

    #@46
    iget v3, p0, Landroid/widget/TextView;->mCurTextColor:I

    #@48
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@4b
    .line 9817
    const-string/jumbo v1, "text:text"

    #@4e
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@50
    if-nez v3, :cond_1

    #@52
    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 9818
    const-string/jumbo v1, "text:gravity"

    #@58
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    #@5a
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@5d
    .line 9806
    return-void

    #@5e
    .line 9810
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    goto :goto_0

    #@63
    .line 9817
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
    .line 6445
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    #@9
    .line 6444
    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 6326
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 6327
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
    .line 8521
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    #@3
    .line 8522
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
    .line 8523
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 8520
    :cond_0
    :goto_0
    return-void

    #@14
    .line 8523
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 8524
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 8525
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
    .line 8526
    .local v1, "textLowerCase":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_0

    #@34
    .line 8527
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 8779
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
    .line 9777
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
    .line 9762
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
    .line 2717
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@2
    return v0
.end method

.method public getBaseline()I
    .locals 3

    #@0
    .prologue
    .line 5825
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5826
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 5829
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
    .line 5833
    const/4 v0, 0x0

    #@1
    .line 5834
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    #@3
    and-int/lit8 v1, v1, 0x70

    #@5
    const/16 v2, 0x30

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 5835
    const/4 v1, 0x1

    #@a
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@d
    move-result v0

    #@e
    .line 5838
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    #@10
    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 5839
    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    #@19
    move-result-object v1

    #@1a
    iget v1, v1, Landroid/graphics/Insets;->top:I

    #@1c
    sub-int/2addr v0, v1

    #@1d
    .line 5842
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
    .line 5312
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
    .line 3065
    iget v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    #@2
    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    #@0
    .prologue
    .line 2565
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 2566
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
    .line 2601
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
    .line 2635
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
    .line 2506
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@3
    .line 2507
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    #@5
    .line 2508
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
    .line 2510
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
    .line 2524
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7
    .line 2525
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    #@9
    .line 2526
    const/4 v1, 0x4

    #@a
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    #@c
    .line 2527
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
    .line 2528
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
    .line 2526
    return-object v1

    #@21
    .line 2531
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
    .line 1908
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 1909
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
    .line 1910
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    #@d
    return v1

    #@e
    .line 1912
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
    .line 1962
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@3
    .line 1963
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@6
    move-result v0

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 1966
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 1968
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 1963
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
    .line 1921
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 1922
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
    .line 1923
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    #@d
    return v1

    #@e
    .line 1925
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
    .line 1934
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 1935
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
    .line 1936
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    #@d
    return v1

    #@e
    .line 1938
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
    .line 1947
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@3
    .line 1948
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@6
    move-result v0

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 1951
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 1953
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 1948
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
    .line 1895
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 1896
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
    .line 1897
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    #@d
    return v1

    #@e
    .line 1899
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
    .line 3408
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
    .line 3173
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
    .line 9363
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
    .line 9326
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
    .line 1617
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    #@0
    .prologue
    .line 1624
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    #@0
    .prologue
    .line 1656
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

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 7761
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
    .line 4898
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
    .line 2015
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    #@2
    const/4 v6, 0x1

    #@3
    if-eq v5, v6, :cond_0

    #@5
    .line 2016
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 2019
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@c
    if-nez v5, :cond_1

    #@e
    .line 2020
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    #@11
    .line 2023
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
    .line 2024
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@1e
    move-result v5

    #@1f
    return v5

    #@20
    .line 2027
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@23
    move-result v3

    #@24
    .line 2028
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@27
    move-result v0

    #@28
    .line 2029
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    #@2b
    move-result v5

    #@2c
    sub-int/2addr v5, v3

    #@2d
    sub-int v4, v5, v0

    #@2f
    .line 2030
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@31
    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    #@33
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    #@36
    move-result v2

    #@37
    .line 2032
    .local v2, "layoutht":I
    if-lt v2, v4, :cond_3

    #@39
    .line 2033
    return v0

    #@3a
    .line 2036
    :cond_3
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    #@3c
    and-int/lit8 v1, v5, 0x70

    #@3e
    .line 2037
    .local v1, "gravity":I
    const/16 v5, 0x30

    #@40
    if-ne v1, v5, :cond_4

    #@42
    .line 2038
    add-int v5, v0, v4

    #@44
    sub-int/2addr v5, v2

    #@45
    return v5

    #@46
    .line 2039
    :cond_4
    const/16 v5, 0x50

    #@48
    if-ne v1, v5, :cond_5

    #@4a
    .line 2040
    return v0

    #@4b
    .line 2042
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
    .line 1978
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    #@2
    const/4 v6, 0x1

    #@3
    if-eq v5, v6, :cond_0

    #@5
    .line 1979
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 1982
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@c
    if-nez v5, :cond_1

    #@e
    .line 1983
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    #@11
    .line 1986
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
    .line 1987
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@1e
    move-result v5

    #@1f
    return v5

    #@20
    .line 1990
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@23
    move-result v3

    #@24
    .line 1991
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@27
    move-result v0

    #@28
    .line 1992
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    #@2b
    move-result v5

    #@2c
    sub-int/2addr v5, v3

    #@2d
    sub-int v4, v5, v0

    #@2f
    .line 1993
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@31
    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    #@33
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    #@36
    move-result v2

    #@37
    .line 1995
    .local v2, "layoutht":I
    if-lt v2, v4, :cond_3

    #@39
    .line 1996
    return v3

    #@3a
    .line 1999
    :cond_3
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    #@3c
    and-int/lit8 v1, v5, 0x70

    #@3e
    .line 2000
    .local v1, "gravity":I
    const/16 v5, 0x30

    #@40
    if-ne v1, v5, :cond_4

    #@42
    .line 2001
    return v3

    #@43
    .line 2002
    :cond_4
    const/16 v5, 0x50

    #@45
    if-ne v1, v5, :cond_5

    #@47
    .line 2003
    add-int v5, v3, v4

    #@49
    sub-int/2addr v5, v2

    #@4a
    return v5

    #@4b
    .line 2005
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
    .line 5867
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
    .line 5850
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 5852
    :cond_0
    const/4 v0, 0x0

    #@7
    .line 5853
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    #@9
    and-int/lit8 v1, v1, 0x70

    #@b
    const/16 v2, 0x30

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 5854
    const/4 v1, 0x1

    #@10
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@13
    move-result v0

    #@14
    .line 5857
    :cond_1
    if-eqz p1, :cond_2

    #@16
    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    #@19
    move-result v1

    #@1a
    add-int/2addr v0, v1

    #@1b
    .line 5859
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
    .line 5011
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
    .line 5731
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3
    if-nez v8, :cond_0

    #@5
    .line 5732
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@8
    .line 5733
    return-void

    #@9
    .line 5736
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@c
    move-result v6

    #@d
    .line 5737
    .local v6, "selEnd":I
    if-gez v6, :cond_1

    #@f
    .line 5738
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@12
    .line 5739
    return-void

    #@13
    .line 5742
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@16
    move-result v7

    #@17
    .line 5743
    .local v7, "selStart":I
    if-ltz v7, :cond_2

    #@19
    if-lt v7, v6, :cond_4

    #@1b
    .line 5744
    :cond_2
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@1d
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    #@20
    move-result v0

    #@21
    .line 5745
    .local v0, "line":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@23
    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@26
    move-result v8

    #@27
    iput v8, p1, Landroid/graphics/Rect;->top:I

    #@29
    .line 5746
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2b
    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    #@2e
    move-result v8

    #@2f
    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    #@31
    .line 5747
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
    .line 5748
    iget v8, p1, Landroid/graphics/Rect;->left:I

    #@3e
    add-int/lit8 v8, v8, 0x4

    #@40
    iput v8, p1, Landroid/graphics/Rect;->right:I

    #@42
    .line 5775
    .end local v0    # "line":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@45
    move-result v4

    #@46
    .line 5776
    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@49
    move-result v5

    #@4a
    .line 5777
    .local v5, "paddingTop":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    #@4c
    and-int/lit8 v8, v8, 0x70

    #@4e
    const/16 v9, 0x30

    #@50
    if-eq v8, v9, :cond_3

    #@52
    .line 5778
    invoke-virtual {p0, v12}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@55
    move-result v8

    #@56
    add-int/2addr v5, v8

    #@57
    .line 5780
    :cond_3
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    #@5a
    .line 5781
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@5d
    move-result v3

    #@5e
    .line 5782
    .local v3, "paddingBottom":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    #@60
    add-int/2addr v8, v3

    #@61
    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    #@63
    .line 5730
    return-void

    #@64
    .line 5750
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
    .line 5751
    .local v2, "lineStart":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@6c
    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    #@6f
    move-result v1

    #@70
    .line 5752
    .local v1, "lineEnd":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@72
    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineTop(I)I

    #@75
    move-result v8

    #@76
    iput v8, p1, Landroid/graphics/Rect;->top:I

    #@78
    .line 5753
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@7a
    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@7d
    move-result v8

    #@7e
    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    #@80
    .line 5754
    if-ne v2, v1, :cond_5

    #@82
    .line 5755
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
    .line 5756
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
    .line 5760
    :cond_5
    iget-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@97
    if-eqz v8, :cond_7

    #@99
    .line 5761
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
    .line 5762
    :cond_6
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@a6
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    #@a9
    .line 5763
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@ab
    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@ad
    invoke-virtual {v8, v7, v6, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    #@b0
    .line 5764
    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@b2
    .line 5766
    :cond_7
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@b4
    monitor-enter v9

    #@b5
    .line 5767
    :try_start_0
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@b7
    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@b9
    const/4 v11, 0x1

    #@ba
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@bd
    .line 5768
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
    .line 5769
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
    .line 5766
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
    .line 3036
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
    .line 4140
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    #@2
    return v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 3500
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    #@2
    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    #@0
    .prologue
    .line 3198
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
    .line 4468
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    #@0
    .prologue
    .line 1682
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@2
    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 3398
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    #@0
    .prologue
    .line 5557
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    #@0
    .prologue
    .line 3555
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@2
    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    #@0
    .prologue
    .line 3092
    iget v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@2
    return v0
.end method

.method public getImeActionId()I
    .locals 1

    #@0
    .prologue
    .line 4723
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
    .line 4724
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@e
    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@10
    .line 4723
    :goto_0
    return v0

    #@11
    .line 4724
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
    .line 4712
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
    .line 4713
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@f
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    #@11
    .line 4712
    :cond_0
    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    #@0
    .prologue
    .line 4684
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
    .line 4685
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@e
    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@10
    .line 4684
    :goto_0
    return v0

    #@11
    .line 4685
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    #@0
    .prologue
    .line 6844
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
    .line 4879
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-nez v0, :cond_0

    #@5
    if-eqz p1, :cond_1

    #@7
    .line 4880
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a
    .line 4881
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@e
    if-nez v0, :cond_3

    #@10
    .line 4882
    if-nez p1, :cond_2

    #@12
    return-object v1

    #@13
    .line 4879
    :cond_1
    return-object v1

    #@14
    .line 4883
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@16
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@19
    .line 4885
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1b
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@1d
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    #@1f
    if-nez v0, :cond_5

    #@21
    .line 4886
    if-nez p1, :cond_4

    #@23
    return-object v1

    #@24
    .line 4887
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
    .line 4889
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
    .line 4660
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
    .line 9720
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 4
    .param p1, "granularity"    # I

    #@0
    .prologue
    .line 9734
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 9754
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    #@6
    move-result-object v3

    #@7
    return-object v3

    #@8
    .line 9736
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/text/Spannable;

    #@e
    .line 9737
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
    .line 9739
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    #@1d
    move-result-object v0

    #@1e
    .line 9740
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v0, v2, v3}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    #@25
    .line 9741
    return-object v0

    #@26
    .line 9745
    .end local v0    # "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .end local v2    # "text":Landroid/text/Spannable;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/text/Spannable;

    #@2c
    .line 9746
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
    .line 9748
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    #@3b
    move-result-object v1

    #@3c
    .line 9749
    .local v1, "iterator":Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    invoke-virtual {v1, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    #@3f
    .line 9750
    return-object v1

    #@40
    .line 9734
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
    .line 1733
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
    .line 1674
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2
    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 8424
    iget-object v5, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@5
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@7
    if-ne v5, v6, :cond_1

    #@9
    .line 8425
    iget v5, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@b
    if-eq v5, v9, :cond_1

    #@d
    .line 8426
    iget-object v5, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@f
    if-eqz v5, :cond_0

    #@11
    iget-object v5, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@13
    invoke-virtual {v5}, Landroid/widget/TextView$Marquee;->isStopped()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_2

    #@19
    .line 8434
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    #@1c
    move-result v5

    #@1d
    if-ne v5, v9, :cond_1

    #@1f
    .line 8435
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@22
    move-result v1

    #@23
    .line 8436
    .local v1, "layoutDirection":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    #@25
    invoke-static {v5, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@28
    move-result v0

    #@29
    .line 8437
    .local v0, "absoluteGravity":I
    and-int/lit8 v5, v0, 0x7

    #@2b
    packed-switch v5, :pswitch_data_0

    #@2e
    .line 8457
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_1
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    #@31
    move-result v5

    #@32
    return v5

    #@33
    .line 8427
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@35
    .line 8428
    .local v2, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_3

    #@3b
    .line 8429
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    #@3e
    move-result v3

    #@3f
    .line 8430
    .local v3, "scroll":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    #@42
    move-result v5

    #@43
    int-to-float v5, v5

    #@44
    div-float v5, v3, v5

    #@46
    return v5

    #@47
    .line 8432
    .end local v3    # "scroll":F
    :cond_3
    return v7

    #@48
    .line 8439
    .end local v2    # "marquee":Landroid/widget/TextView$Marquee;
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_1
    return v7

    #@49
    .line 8441
    :pswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4b
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    #@4e
    move-result v5

    #@4f
    iget v6, p0, Landroid/widget/TextView;->mRight:I

    #@51
    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    #@53
    sub-int/2addr v6, v7

    #@54
    int-to-float v6, v6

    #@55
    sub-float/2addr v5, v6

    #@56
    .line 8442
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@59
    move-result v6

    #@5a
    int-to-float v6, v6

    #@5b
    .line 8441
    sub-float/2addr v5, v6

    #@5c
    .line 8442
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@5f
    move-result v6

    #@60
    int-to-float v6, v6

    #@61
    .line 8441
    sub-float/2addr v5, v6

    #@62
    .line 8443
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@64
    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    #@67
    move-result v6

    #@68
    .line 8441
    sub-float/2addr v5, v6

    #@69
    .line 8443
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    #@6c
    move-result v6

    #@6d
    int-to-float v6, v6

    #@6e
    .line 8441
    div-float/2addr v5, v6

    #@6f
    return v5

    #@70
    .line 8446
    :pswitch_3
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@72
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@75
    move-result v4

    #@76
    .line 8447
    .local v4, "textDirection":I
    if-ne v4, v9, :cond_4

    #@78
    .line 8448
    return v7

    #@79
    .line 8450
    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@7b
    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    #@7e
    move-result v5

    #@7f
    iget v6, p0, Landroid/widget/TextView;->mRight:I

    #@81
    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    #@83
    sub-int/2addr v6, v7

    #@84
    int-to-float v6, v6

    #@85
    sub-float/2addr v5, v6

    #@86
    .line 8451
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@89
    move-result v6

    #@8a
    int-to-float v6, v6

    #@8b
    .line 8450
    sub-float/2addr v5, v6

    #@8c
    .line 8451
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@8f
    move-result v6

    #@90
    int-to-float v6, v6

    #@91
    .line 8450
    sub-float/2addr v5, v6

    #@92
    .line 8452
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@94
    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    #@97
    move-result v6

    #@98
    .line 8450
    sub-float/2addr v5, v6

    #@99
    .line 8452
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    #@9c
    move-result v6

    #@9d
    int-to-float v6, v6

    #@9e
    .line 8450
    div-float/2addr v5, v6

    #@9f
    return v5

    #@a0
    .line 8437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    #@0
    .prologue
    .line 5301
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    #@6
    sub-int/2addr v0, v1

    #@7
    .line 5302
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
    .line 5301
    add-int/2addr v0, v1

    #@13
    return v0
.end method

.method public getLetterSpacing()F
    .locals 1

    #@0
    .prologue
    .line 3003
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
    .line 9534
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    sub-float/2addr p1, v0

    #@6
    .line 9536
    const/4 v0, 0x0

    #@7
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@a
    move-result p1

    #@b
    .line 9537
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
    .line 9538
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    #@1e
    move-result v0

    #@1f
    int-to-float v0, v0

    #@20
    add-float/2addr p1, v0

    #@21
    .line 9539
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
    .line 9543
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    sub-float/2addr p1, v0

    #@6
    .line 9544
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    #@9
    move-result v0

    #@a
    int-to-float v0, v0

    #@b
    add-float/2addr p1, v0

    #@c
    .line 9545
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
    .line 5803
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 5804
    if-eqz p2, :cond_0

    #@7
    .line 5805
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@a
    .line 5807
    :cond_0
    return v3

    #@b
    .line 5810
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@d
    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    #@10
    move-result v0

    #@11
    .line 5812
    .local v0, "baseline":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@14
    move-result v1

    #@15
    .line 5813
    .local v1, "voffset":I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    #@17
    and-int/lit8 v2, v2, 0x70

    #@19
    const/16 v3, 0x30

    #@1b
    if-eq v2, v3, :cond_2

    #@1d
    .line 5814
    const/4 v2, 0x1

    #@1e
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@21
    move-result v2

    #@22
    add-int/2addr v1, v2

    #@23
    .line 5816
    :cond_2
    if-eqz p2, :cond_3

    #@25
    .line 5817
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@28
    move-result v2

    #@29
    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    #@2c
    .line 5819
    :cond_3
    add-int v2, v0, v1

    #@2e
    return v2
.end method

.method public getLineCount()I
    .locals 1

    #@0
    .prologue
    .line 5790
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
    .line 1666
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
    .line 3903
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    #@2
    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    #@0
    .prologue
    .line 3889
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    #@2
    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 3450
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    #@0
    .prologue
    .line 3338
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    #@2
    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    #@0
    .prologue
    .line 7752
    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@2
    return v0
.end method

.method public getMaxEms()I
    .locals 2

    #@0
    .prologue
    .line 3788
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
    .line 3671
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
    .line 3642
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
    .line 3815
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
    .line 3734
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
    .line 3614
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
    .line 3586
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
    .line 3761
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
    .line 1799
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
    .line 9549
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    #@3
    move-result p2

    #@4
    .line 9550
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
    .line 9518
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
    .line 9519
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    #@b
    move-result v0

    #@c
    .line 9520
    .local v0, "line":I
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    #@f
    move-result v1

    #@10
    .line 9521
    .local v1, "offset":I
    return v1
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    #@0
    .prologue
    .line 3301
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    #@0
    .prologue
    .line 3508
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
    .line 4845
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
    .line 4846
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@f
    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    #@11
    .line 4845
    :cond_0
    return-object v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 8462
    iget-object v8, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@5
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@7
    if-ne v8, v9, :cond_1

    #@9
    .line 8463
    iget v8, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@b
    if-eq v8, v12, :cond_1

    #@d
    .line 8464
    iget-object v8, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@f
    if-eqz v8, :cond_0

    #@11
    iget-object v8, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@13
    invoke-virtual {v8}, Landroid/widget/TextView$Marquee;->isStopped()Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_2

    #@19
    .line 8469
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    #@1c
    move-result v8

    #@1d
    if-ne v8, v12, :cond_1

    #@1f
    .line 8470
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@22
    move-result v1

    #@23
    .line 8471
    .local v1, "layoutDirection":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    #@25
    invoke-static {v8, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@28
    move-result v0

    #@29
    .line 8472
    .local v0, "absoluteGravity":I
    and-int/lit8 v8, v0, 0x7

    #@2b
    packed-switch v8, :pswitch_data_0

    #@2e
    .line 8493
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_1
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    #@31
    move-result v8

    #@32
    return v8

    #@33
    .line 8465
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@35
    .line 8466
    .local v3, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    #@38
    move-result v4

    #@39
    .line 8467
    .local v4, "maxFadeScroll":F
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getScroll()F

    #@3c
    move-result v5

    #@3d
    .line 8468
    .local v5, "scroll":F
    sub-float v8, v4, v5

    #@3f
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    #@42
    move-result v9

    #@43
    int-to-float v9, v9

    #@44
    div-float/2addr v8, v9

    #@45
    return v8

    #@46
    .line 8474
    .end local v3    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v4    # "maxFadeScroll":F
    .end local v5    # "scroll":F
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_1
    iget v8, p0, Landroid/widget/TextView;->mRight:I

    #@48
    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    #@4a
    sub-int/2addr v8, v9

    #@4b
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@4e
    move-result v9

    #@4f
    sub-int/2addr v8, v9

    #@50
    .line 8475
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@53
    move-result v9

    #@54
    .line 8474
    sub-int v7, v8, v9

    #@56
    .line 8476
    .local v7, "textWidth":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@58
    invoke-virtual {v8, v10}, Landroid/text/Layout;->getLineWidth(I)F

    #@5b
    move-result v2

    #@5c
    .line 8477
    .local v2, "lineWidth":F
    int-to-float v8, v7

    #@5d
    sub-float v8, v2, v8

    #@5f
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    #@62
    move-result v9

    #@63
    int-to-float v9, v9

    #@64
    div-float/2addr v8, v9

    #@65
    return v8

    #@66
    .line 8479
    .end local v2    # "lineWidth":F
    .end local v7    # "textWidth":I
    :pswitch_2
    return v11

    #@67
    .line 8482
    :pswitch_3
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@69
    invoke-virtual {v8, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@6c
    move-result v6

    #@6d
    .line 8483
    .local v6, "textDirection":I
    const/4 v8, -0x1

    #@6e
    if-ne v6, v8, :cond_3

    #@70
    .line 8484
    return v11

    #@71
    .line 8486
    :cond_3
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@73
    invoke-virtual {v8, v10}, Landroid/text/Layout;->getLineWidth(I)F

    #@76
    move-result v8

    #@77
    iget v9, p0, Landroid/widget/TextView;->mRight:I

    #@79
    iget v10, p0, Landroid/widget/TextView;->mLeft:I

    #@7b
    sub-int/2addr v9, v10

    #@7c
    .line 8487
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@7f
    move-result v10

    #@80
    .line 8486
    sub-int/2addr v9, v10

    #@81
    .line 8487
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@84
    move-result v10

    #@85
    .line 8486
    sub-int/2addr v9, v10

    #@86
    int-to-float v9, v9

    #@87
    sub-float/2addr v8, v9

    #@88
    .line 8488
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    #@8b
    move-result v9

    #@8c
    int-to-float v9, v9

    #@8d
    .line 8486
    div-float/2addr v8, v9

    #@8e
    return v8

    #@8f
    .line 8472
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    #@0
    .prologue
    .line 5323
    invoke-direct {p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    #@6
    sub-int/2addr v0, v1

    #@7
    neg-int v0, v0

    #@8
    .line 5324
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
    .line 5323
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
    .line 2853
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
    .line 7608
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 7609
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 7612
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@b
    move-result v1

    #@c
    .line 7613
    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@f
    move-result v0

    #@10
    .line 7615
    .local v0, "end":I
    if-le v1, v0, :cond_1

    #@12
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@14
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@17
    move-result-object v2

    #@18
    .line 7614
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    return-object v2

    #@1d
    .line 7615
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
    .line 7594
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
    .line 7586
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
    .line 3293
    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    #@2
    return v0
.end method

.method public getShadowDx()F
    .locals 1

    #@0
    .prologue
    .line 3270
    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    #@2
    return v0
.end method

.method public getShadowDy()F
    .locals 1

    #@0
    .prologue
    .line 3281
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    #@2
    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    #@0
    .prologue
    .line 3259
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    #@2
    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    #@0
    .prologue
    .line 3217
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
    .line 8707
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
    .line 1639
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 3163
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 3

    #@0
    .prologue
    .line 9602
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 9604
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@8
    return-object v1

    #@9
    .line 9608
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
    .line 9611
    .local v0, "defaultIsRtl":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    #@14
    move-result v1

    #@15
    packed-switch v1, :pswitch_data_0

    #@18
    .line 9614
    :pswitch_0
    if-eqz v0, :cond_2

    #@1a
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@1c
    :goto_1
    return-object v1

    #@1d
    .line 9608
    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    #@1e
    .restart local v0    # "defaultIsRtl":Z
    goto :goto_0

    #@1f
    .line 9615
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@21
    goto :goto_1

    #@22
    .line 9617
    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    #@24
    return-object v1

    #@25
    .line 9619
    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@27
    return-object v1

    #@28
    .line 9621
    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@2a
    return-object v1

    #@2b
    .line 9623
    :pswitch_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    #@2d
    return-object v1

    #@2e
    .line 9625
    :pswitch_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@30
    return-object v1

    #@31
    .line 9627
    :pswitch_6
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@33
    return-object v1

    #@34
    .line 9611
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

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 9106
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 9107
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 9108
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    .line 9110
    :cond_0
    return-object v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 2814
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    #@0
    .prologue
    .line 2921
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
    .line 8684
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
    .line 2844
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
    .line 5307
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
    .line 2093
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
    .line 2075
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
    .line 2051
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
    .line 2059
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
    .line 2067
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
    .line 2084
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
    .line 1850
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
    .line 9221
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
    .line 2979
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
    .line 2864
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    .line 2865
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
    .line 1695
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
    .line 3349
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@3
    instance-of v0, v0, Landroid/text/Spanned;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 3350
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
    .line 3352
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
    .line 5025
    const/4 v4, 0x0

    #@1
    .line 5026
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    #@3
    and-int/lit8 v1, v5, 0x70

    #@5
    .line 5028
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@7
    .line 5029
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
    .line 5030
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@17
    .line 5033
    :cond_0
    const/16 v5, 0x30

    #@19
    if-eq v1, v5, :cond_1

    #@1b
    .line 5034
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    #@1e
    move-result v0

    #@1f
    .line 5035
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    #@22
    move-result v3

    #@23
    .line 5037
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    #@25
    .line 5038
    const/16 v5, 0x50

    #@27
    if-ne v1, v5, :cond_2

    #@29
    .line 5039
    sub-int v4, v0, v3

    #@2b
    .line 5044
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    #@2c
    .line 5041
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
    .line 8746
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 8747
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 8749
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
    .line 5886
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
    .line 5887
    :cond_0
    return v2

    #@d
    .line 5890
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
    .line 5891
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@1c
    move-result-object v0

    #@1d
    .line 5892
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    #@1f
    .line 5893
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@22
    .line 5895
    :cond_2
    return v3

    #@23
    .line 5896
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@26
    move-result v1

    #@27
    if-ne v1, v3, :cond_5

    #@29
    .line 5897
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@2c
    move-result-object v0

    #@2d
    .line 5898
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    #@2f
    .line 5899
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@32
    .line 5901
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
    .line 5906
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    return v2

    #@3f
    .line 5902
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@42
    .line 5903
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
    .line 8035
    const-wide/16 v2, 0x0

    #@2
    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    #@4
    .line 8037
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    if-nez v1, :cond_3

    #@8
    const/4 v0, 0x0

    #@9
    .line 8038
    :goto_0
    if-eqz v0, :cond_0

    #@b
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@d
    if-nez v1, :cond_1

    #@f
    .line 8039
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    #@12
    .line 8041
    :cond_1
    if-eqz v0, :cond_2

    #@14
    .line 8042
    const/4 v1, 0x1

    #@15
    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@17
    .line 8043
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@19
    if-gez v1, :cond_4

    #@1b
    .line 8044
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@1d
    .line 8045
    add-int v1, p2, p3

    #@1f
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    #@21
    .line 8050
    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@23
    sub-int v2, p4, p3

    #@25
    add-int/2addr v1, v2

    #@26
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    #@28
    .line 8052
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    #@2b
    .line 8053
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    #@2e
    .line 8054
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@31
    .line 8034
    return-void

    #@32
    .line 8037
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@34
    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@36
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    goto :goto_0

    #@37
    .line 8047
    .end local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_4
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@39
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    #@3c
    move-result v1

    #@3d
    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@3f
    .line 8048
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
    .line 5415
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
    .line 5416
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@14
    instance-of v0, v0, Landroid/text/Spannable;

    #@16
    .line 5415
    if-nez v0, :cond_0

    #@18
    .line 5416
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    #@1b
    move-result v0

    #@1c
    .line 5415
    if-nez v0, :cond_0

    #@1e
    .line 5417
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
    .line 4573
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
    .line 7601
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@4
    move-result v1

    #@5
    .line 7602
    .local v1, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@8
    move-result v0

    #@9
    .line 7604
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
    .line 6156
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
    .line 6155
    :cond_0
    :goto_0
    return-void

    #@12
    .line 6157
    :cond_1
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@15
    goto :goto_0
.end method

.method invalidateCursor()V
    .locals 1

    #@0
    .prologue
    .line 5114
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@3
    move-result v0

    #@4
    .line 5116
    .local v0, "where":I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    #@7
    .line 5113
    return-void
.end method

.method invalidateCursorPath()V
    .locals 12

    #@0
    .prologue
    .line 5071
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@2
    if-eqz v5, :cond_1

    #@4
    .line 5072
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    #@7
    .line 5070
    :cond_0
    :goto_0
    return-void

    #@8
    .line 5074
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@b
    move-result v1

    #@c
    .line 5075
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
    .line 5077
    .local v4, "verticalPadding":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@19
    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    #@1b
    if-nez v5, :cond_3

    #@1d
    .line 5078
    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@1f
    monitor-enter v6

    #@20
    .line 5088
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
    .line 5089
    .local v3, "thick":F
    const/high16 v5, 0x3f800000    # 1.0f

    #@2e
    cmpg-float v5, v3, v5

    #@30
    if-gez v5, :cond_2

    #@32
    .line 5090
    const/high16 v3, 0x3f800000    # 1.0f

    #@34
    .line 5093
    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    #@36
    div-float/2addr v3, v5

    #@37
    .line 5096
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    #@39
    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    #@3b
    const/4 v8, 0x0

    #@3c
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@3f
    .line 5098
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
    .line 5099
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
    .line 5100
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
    .line 5101
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
    .line 5098
    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@76
    monitor-exit v6

    #@77
    goto :goto_0

    #@78
    .line 5078
    .end local v3    # "thick":F
    :catchall_0
    move-exception v5

    #@79
    monitor-exit v6

    #@7a
    throw v5

    #@7b
    .line 5104
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
    .line 5105
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
    .line 5106
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    #@8e
    add-int/2addr v5, v1

    #@8f
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@91
    add-int/2addr v6, v4

    #@92
    .line 5107
    iget v7, v0, Landroid/graphics/Rect;->right:I

    #@94
    add-int/2addr v7, v1

    #@95
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@97
    add-int/2addr v8, v4

    #@98
    .line 5106
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    #@9b
    .line 5104
    add-int/lit8 v2, v2, 0x1

    #@9d
    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 16
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 5354
    const/4 v7, 0x0

    #@1
    .line 5356
    .local v7, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v12

    #@5
    if-eqz v12, :cond_1

    #@7
    .line 5357
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@a
    move-result-object v5

    #@b
    .line 5358
    .local v5, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@d
    iget v9, v0, Landroid/widget/TextView;->mScrollX:I

    #@f
    .line 5359
    .local v9, "scrollX":I
    move-object/from16 v0, p0

    #@11
    iget v10, v0, Landroid/widget/TextView;->mScrollY:I

    #@13
    .line 5364
    .local v10, "scrollY":I
    move-object/from16 v0, p0

    #@15
    iget-object v6, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@17
    .line 5365
    .local v6, "drawables":Landroid/widget/TextView$Drawables;
    if-eqz v6, :cond_0

    #@19
    .line 5366
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
    .line 5367
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@25
    move-result v4

    #@26
    .line 5368
    .local v4, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@29
    move-result v1

    #@2a
    .line 5369
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
    .line 5371
    .local v11, "vspace":I
    move-object/from16 v0, p0

    #@38
    iget v12, v0, Landroid/widget/TextView;->mPaddingLeft:I

    #@3a
    add-int/2addr v9, v12

    #@3b
    .line 5372
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
    .line 5373
    const/4 v7, 0x1

    #@44
    .line 5401
    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    #@46
    .line 5402
    iget v12, v5, Landroid/graphics/Rect;->left:I

    #@48
    add-int/2addr v12, v9

    #@49
    iget v13, v5, Landroid/graphics/Rect;->top:I

    #@4b
    add-int/2addr v13, v10

    #@4c
    .line 5403
    iget v14, v5, Landroid/graphics/Rect;->right:I

    #@4e
    add-int/2addr v14, v9

    #@4f
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    #@51
    add-int/2addr v15, v10

    #@52
    .line 5402
    move-object/from16 v0, p0

    #@54
    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    #@57
    .line 5407
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-nez v7, :cond_2

    #@59
    .line 5408
    invoke-super/range {p0 .. p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5c
    .line 5353
    :cond_2
    return-void

    #@5d
    .line 5374
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
    .line 5375
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@69
    move-result v4

    #@6a
    .line 5376
    .restart local v4    # "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@6d
    move-result v1

    #@6e
    .line 5377
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
    .line 5379
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
    .line 5380
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
    .line 5381
    const/4 v7, 0x1

    #@95
    goto :goto_0

    #@96
    .line 5382
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
    .line 5383
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@a2
    move-result v2

    #@a3
    .line 5384
    .local v2, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@a6
    move-result v3

    #@a7
    .line 5385
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
    .line 5387
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
    .line 5388
    move-object/from16 v0, p0

    #@bd
    iget v12, v0, Landroid/widget/TextView;->mPaddingTop:I

    #@bf
    add-int/2addr v10, v12

    #@c0
    .line 5389
    const/4 v7, 0x1

    #@c1
    goto :goto_0

    #@c2
    .line 5390
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
    .line 5391
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@ce
    move-result v2

    #@cf
    .line 5392
    .restart local v2    # "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@d2
    move-result v3

    #@d3
    .line 5393
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
    .line 5395
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
    .line 5396
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
    .line 5397
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
    .line 5131
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4
    if-nez v12, :cond_0

    #@6
    .line 5132
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    #@9
    .line 5130
    :goto_0
    return-void

    #@a
    .line 5134
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
    .line 5135
    .local v8, "lineStart":I
    move-object/from16 v0, p0

    #@16
    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@18
    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    #@1b
    move-result v10

    #@1c
    .line 5143
    .local v10, "top":I
    if-lez v8, :cond_1

    #@1e
    .line 5144
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
    .line 5149
    :cond_1
    move/from16 v0, p1

    #@2b
    move/from16 v1, p2

    #@2d
    if-ne v0, v1, :cond_2

    #@2f
    .line 5150
    move v7, v8

    #@30
    .line 5154
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
    .line 5157
    .local v2, "bottom":I
    if-eqz p3, :cond_3

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3e
    if-eqz v12, :cond_3

    #@40
    .line 5158
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
    .line 5159
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
    .line 5160
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    #@57
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    #@5a
    move-result v10

    #@5b
    .line 5161
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    #@5d
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    #@60
    move-result v2

    #@61
    .line 5158
    add-int/lit8 v5, v5, 0x1

    #@63
    goto :goto_2

    #@64
    .line 5152
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
    .line 5165
    .restart local v2    # "bottom":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@72
    move-result v4

    #@73
    .line 5166
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
    .line 5169
    .local v11, "verticalPadding":I
    if-ne v8, v7, :cond_4

    #@82
    if-eqz p3, :cond_5

    #@84
    .line 5176
    :cond_4
    move v6, v4

    #@85
    .line 5177
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
    .line 5180
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
    .line 5181
    move-object/from16 v0, p0

    #@98
    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    #@9a
    add-int/2addr v14, v9

    #@9b
    add-int v15, v11, v2

    #@9d
    .line 5180
    move-object/from16 v0, p0

    #@9f
    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    #@a2
    goto/16 :goto_0

    #@a4
    .line 5170
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
    .line 5171
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
    .line 5172
    .restart local v9    # "right":I
    add-int/2addr v6, v4

    #@bf
    .line 5173
    add-int/2addr v9, v4

    #@c0
    .line 5169
    goto :goto_3
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    #@0
    .prologue
    .line 9769
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    #@0
    .prologue
    .line 7812
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

.method isInBatchEditMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 9580
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 9581
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@a
    .line 9582
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_2

    #@c
    .line 9583
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@e
    if-lez v2, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    :cond_1
    return v1

    #@12
    .line 9585
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
    .line 8693
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    #@0
    .prologue
    .line 9129
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@3
    move-result-object v0

    #@4
    .line 9130
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
    .line 5296
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
    .line 4472
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
    .line 9275
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-nez v3, :cond_0

    #@6
    return v2

    #@7
    .line 9276
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    #@b
    and-int/lit8 v3, v3, 0xf

    #@d
    if-eq v3, v1, :cond_1

    #@f
    .line 9277
    return v2

    #@10
    .line 9279
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
    .line 9281
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1c
    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    #@1e
    and-int/lit16 v0, v3, 0xff0

    #@20
    .line 9282
    .local v0, "variation":I
    if-eqz v0, :cond_3

    #@22
    .line 9283
    const/16 v3, 0x30

    #@24
    if-ne v0, v3, :cond_4

    #@26
    .line 9282
    :cond_3
    :goto_0
    return v1

    #@27
    .line 9284
    :cond_4
    const/16 v3, 0x50

    #@29
    if-eq v0, v3, :cond_3

    #@2b
    .line 9285
    const/16 v3, 0x40

    #@2d
    if-eq v0, v3, :cond_3

    #@2f
    .line 9286
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
    .line 8388
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
    .line 5433
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
    .line 5342
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    .line 5343
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 5344
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
    .line 5345
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@13
    .line 5346
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@16
    .line 5344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 5341
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 1646
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
    .line 6576
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    #@3
    .line 6579
    move-object/from16 v0, p0

    #@5
    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    #@7
    move-object/from16 v0, p0

    #@9
    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    #@b
    .line 6580
    move-object/from16 v0, p0

    #@d
    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    #@f
    move-object/from16 v0, p0

    #@11
    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    #@13
    .line 6582
    const/4 v2, 0x1

    #@14
    move-object/from16 v0, p0

    #@16
    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@18
    .line 6584
    if-gez p1, :cond_0

    #@1a
    .line 6585
    const/16 p1, 0x0

    #@1c
    .line 6587
    :cond_0
    if-gez p2, :cond_1

    #@1e
    .line 6588
    const/16 p2, 0x0

    #@20
    .line 6591
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    #@23
    move-result-object v6

    #@24
    .line 6592
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
    .line 6593
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@32
    if-eq v6, v2, :cond_10

    #@34
    .line 6594
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@36
    if-ne v6, v2, :cond_11

    #@38
    const/16 v31, 0x1

    #@3a
    .line 6595
    .local v31, "testDirChange":Z
    :goto_0
    const/16 v29, 0x0

    #@3c
    .line 6596
    .local v29, "oldDir":I
    if-eqz v31, :cond_2

    #@3e
    move-object/from16 v0, p0

    #@40
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@42
    const/4 v3, 0x0

    #@43
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@46
    move-result v29

    #@47
    .line 6597
    :cond_2
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@4b
    if-eqz v2, :cond_13

    #@4d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    #@50
    move-result-object v2

    #@51
    if-nez v2, :cond_13

    #@53
    const/4 v7, 0x1

    #@54
    .line 6598
    .local v7, "shouldEllipsize":Z
    :goto_1
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@58
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@5a
    if-ne v2, v3, :cond_15

    #@5c
    .line 6599
    move-object/from16 v0, p0

    #@5e
    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@60
    if-eqz v2, :cond_14

    #@62
    const/16 v30, 0x1

    #@64
    .line 6600
    .local v30, "switchEllipsize":Z
    :goto_2
    move-object/from16 v0, p0

    #@66
    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@68
    .line 6601
    .local v8, "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@6c
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@6e
    if-ne v2, v3, :cond_3

    #@70
    .line 6602
    move-object/from16 v0, p0

    #@72
    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@74
    const/4 v3, 0x1

    #@75
    if-ne v2, v3, :cond_3

    #@77
    .line 6603
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@79
    .line 6606
    :cond_3
    move-object/from16 v0, p0

    #@7b
    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@7d
    if-nez v2, :cond_4

    #@7f
    .line 6607
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    #@82
    move-result-object v2

    #@83
    move-object/from16 v0, p0

    #@85
    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@87
    .line 6611
    :cond_4
    move-object/from16 v0, p0

    #@89
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@8b
    if-ne v8, v2, :cond_16

    #@8d
    const/4 v9, 0x1

    #@8e
    :goto_3
    move-object/from16 v2, p0

    #@90
    move/from16 v3, p1

    #@92
    move-object/from16 v4, p3

    #@94
    move/from16 v5, p5

    #@96
    .line 6610
    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    #@99
    move-result-object v2

    #@9a
    move-object/from16 v0, p0

    #@9c
    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@9e
    .line 6612
    if-eqz v30, :cond_5

    #@a0
    .line 6613
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@a2
    if-ne v8, v2, :cond_17

    #@a4
    .line 6614
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@a6
    .line 6616
    .local v15, "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_4
    move-object/from16 v0, p0

    #@a8
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@aa
    if-eq v8, v2, :cond_18

    #@ac
    const/16 v16, 0x1

    #@ae
    :goto_5
    move-object/from16 v9, p0

    #@b0
    move/from16 v10, p1

    #@b2
    move-object/from16 v11, p3

    #@b4
    move/from16 v12, p5

    #@b6
    move-object v13, v6

    #@b7
    move v14, v7

    #@b8
    .line 6615
    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    #@bb
    move-result-object v2

    #@bc
    move-object/from16 v0, p0

    #@be
    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    #@c0
    .line 6619
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_5
    move-object/from16 v0, p0

    #@c2
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@c4
    if-eqz v2, :cond_19

    #@c6
    const/4 v7, 0x1

    #@c7
    .line 6620
    :goto_6
    const/4 v2, 0x0

    #@c8
    move-object/from16 v0, p0

    #@ca
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@cc
    .line 6622
    move-object/from16 v0, p0

    #@ce
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@d0
    if-eqz v2, :cond_b

    #@d2
    .line 6623
    if-eqz v7, :cond_6

    #@d4
    move/from16 p2, p1

    #@d6
    .line 6625
    :cond_6
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@d8
    move-object/from16 v0, p4

    #@da
    if-ne v0, v2, :cond_7

    #@dc
    .line 6626
    move-object/from16 v0, p0

    #@de
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@e4
    move-object/from16 v0, p0

    #@e6
    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@e8
    .line 6627
    move-object/from16 v0, p0

    #@ea
    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    #@ec
    .line 6626
    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    #@ef
    move-result-object p4

    #@f0
    .line 6628
    if-eqz p4, :cond_7

    #@f2
    .line 6629
    move-object/from16 v0, p4

    #@f4
    move-object/from16 v1, p0

    #@f6
    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    #@f8
    .line 6633
    :cond_7
    if-eqz p4, :cond_9

    #@fa
    .line 6634
    move-object/from16 v0, p4

    #@fc
    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@fe
    move/from16 v0, p2

    #@100
    if-gt v2, v0, :cond_1b

    #@102
    .line 6635
    if-eqz v7, :cond_8

    #@104
    move-object/from16 v0, p4

    #@106
    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@108
    move/from16 v0, p5

    #@10a
    if-gt v2, v0, :cond_1b

    #@10c
    .line 6636
    :cond_8
    move-object/from16 v0, p0

    #@10e
    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@110
    if-eqz v2, :cond_1a

    #@112
    .line 6637
    move-object/from16 v0, p0

    #@114
    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@116
    move-object/from16 v16, v0

    #@118
    .line 6638
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@11c
    move-object/from16 v17, v0

    #@11e
    move-object/from16 v0, p0

    #@120
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@122
    move-object/from16 v18, v0

    #@124
    .line 6639
    move-object/from16 v0, p0

    #@126
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@128
    move/from16 v21, v0

    #@12a
    move-object/from16 v0, p0

    #@12c
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@12e
    move/from16 v22, v0

    #@130
    .line 6640
    move-object/from16 v0, p0

    #@132
    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@134
    move/from16 v24, v0

    #@136
    move/from16 v19, p2

    #@138
    move-object/from16 v20, v6

    #@13a
    move-object/from16 v23, p4

    #@13c
    .line 6637
    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    #@13f
    move-result-object v2

    #@140
    move-object/from16 v0, p0

    #@142
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@144
    .line 6647
    :goto_7
    move-object/from16 v0, p0

    #@146
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@148
    check-cast v2, Landroid/text/BoringLayout;

    #@14a
    move-object/from16 v0, p0

    #@14c
    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@14e
    .line 6664
    :cond_9
    :goto_8
    move-object/from16 v0, p0

    #@150
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@152
    if-nez v2, :cond_b

    #@154
    .line 6665
    move-object/from16 v0, p0

    #@156
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@158
    .line 6666
    move-object/from16 v0, p0

    #@15a
    iget-object v3, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@15c
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    #@15f
    move-result v3

    #@160
    move-object/from16 v0, p0

    #@162
    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@164
    .line 6665
    const/4 v5, 0x0

    #@165
    move/from16 v0, p2

    #@167
    invoke-static {v2, v5, v3, v4, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    #@16a
    move-result-object v2

    #@16b
    invoke-virtual {v2, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    #@16e
    move-result-object v2

    #@16f
    .line 6668
    move-object/from16 v0, p0

    #@171
    iget-object v3, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@173
    .line 6665
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    #@176
    move-result-object v2

    #@177
    .line 6669
    move-object/from16 v0, p0

    #@179
    iget v3, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget v4, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@17f
    .line 6665
    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    #@182
    move-result-object v2

    #@183
    .line 6670
    move-object/from16 v0, p0

    #@185
    iget-boolean v3, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@187
    .line 6665
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    #@18a
    move-result-object v2

    #@18b
    .line 6671
    move-object/from16 v0, p0

    #@18d
    iget v3, v0, Landroid/widget/TextView;->mBreakStrategy:I

    #@18f
    .line 6665
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    #@192
    move-result-object v2

    #@193
    .line 6672
    move-object/from16 v0, p0

    #@195
    iget v3, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@197
    .line 6665
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    #@19a
    move-result-object v27

    #@19b
    .line 6673
    .local v27, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz v7, :cond_a

    #@19d
    .line 6674
    move-object/from16 v0, p0

    #@19f
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@1a1
    move-object/from16 v0, v27

    #@1a3
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    #@1a6
    move-result-object v2

    #@1a7
    move/from16 v0, p5

    #@1a9
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    #@1ac
    move-result-object v3

    #@1ad
    .line 6676
    move-object/from16 v0, p0

    #@1af
    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    #@1b1
    const/4 v4, 0x1

    #@1b2
    if-ne v2, v4, :cond_1d

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    #@1b8
    .line 6674
    :goto_9
    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    #@1bb
    .line 6678
    :cond_a
    invoke-virtual/range {v27 .. v27}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    #@1be
    move-result-object v2

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@1c3
    .line 6682
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_b
    if-nez p6, :cond_c

    #@1c5
    if-eqz v31, :cond_d

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@1cb
    const/4 v3, 0x0

    #@1cc
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1cf
    move-result v2

    #@1d0
    move/from16 v0, v29

    #@1d2
    if-eq v0, v2, :cond_d

    #@1d4
    .line 6683
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    #@1d7
    .line 6686
    :cond_d
    move-object/from16 v0, p0

    #@1d9
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@1db
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@1dd
    if-ne v2, v3, :cond_e

    #@1df
    .line 6687
    move/from16 v0, p5

    #@1e1
    int-to-float v2, v0

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    #@1e7
    move-result v2

    #@1e8
    if-nez v2, :cond_e

    #@1ea
    .line 6688
    move-object/from16 v0, p0

    #@1ec
    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    #@1ee
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@1f0
    move/from16 v28, v0

    #@1f2
    .line 6691
    .local v28, "height":I
    const/4 v2, -0x2

    #@1f3
    move/from16 v0, v28

    #@1f5
    if-eq v0, v2, :cond_1e

    #@1f7
    const/4 v2, -0x1

    #@1f8
    move/from16 v0, v28

    #@1fa
    if-eq v0, v2, :cond_1e

    #@1fc
    .line 6692
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    #@1ff
    .line 6701
    .end local v28    # "height":I
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    #@201
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@203
    if-eqz v2, :cond_f

    #@205
    move-object/from16 v0, p0

    #@207
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@209
    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@20c
    .line 6575
    :cond_f
    return-void

    #@20d
    .line 6593
    .end local v7    # "shouldEllipsize":Z
    .end local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v29    # "oldDir":I
    .end local v30    # "switchEllipsize":Z
    .end local v31    # "testDirChange":Z
    :cond_10
    const/16 v31, 0x1

    #@20f
    .restart local v31    # "testDirChange":Z
    goto/16 :goto_0

    #@211
    .line 6594
    .end local v31    # "testDirChange":Z
    :cond_11
    const/16 v31, 0x0

    #@213
    .restart local v31    # "testDirChange":Z
    goto/16 :goto_0

    #@215
    .line 6592
    .end local v31    # "testDirChange":Z
    :cond_12
    const/16 v31, 0x0

    #@217
    .restart local v31    # "testDirChange":Z
    goto/16 :goto_0

    #@219
    .line 6597
    .restart local v29    # "oldDir":I
    :cond_13
    const/4 v7, 0x0

    #@21a
    .restart local v7    # "shouldEllipsize":Z
    goto/16 :goto_1

    #@21c
    .line 6599
    :cond_14
    const/16 v30, 0x0

    #@21e
    .restart local v30    # "switchEllipsize":Z
    goto/16 :goto_2

    #@220
    .line 6598
    .end local v30    # "switchEllipsize":Z
    :cond_15
    const/16 v30, 0x0

    #@222
    .restart local v30    # "switchEllipsize":Z
    goto/16 :goto_2

    #@224
    .line 6611
    .restart local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_16
    const/4 v9, 0x0

    #@225
    goto/16 :goto_3

    #@227
    .line 6614
    :cond_17
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@229
    .restart local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    goto/16 :goto_4

    #@22b
    .line 6616
    :cond_18
    const/16 v16, 0x0

    #@22d
    goto/16 :goto_5

    #@22f
    .line 6619
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_19
    const/4 v7, 0x0

    #@230
    goto/16 :goto_6

    #@232
    .line 6642
    :cond_1a
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@236
    move-object/from16 v16, v0

    #@238
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@23c
    move-object/from16 v17, v0

    #@23e
    .line 6643
    move-object/from16 v0, p0

    #@240
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@242
    move/from16 v20, v0

    #@244
    move-object/from16 v0, p0

    #@246
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@248
    move/from16 v21, v0

    #@24a
    .line 6644
    move-object/from16 v0, p0

    #@24c
    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@24e
    move/from16 v23, v0

    #@250
    move/from16 v18, p2

    #@252
    move-object/from16 v19, v6

    #@254
    move-object/from16 v22, p4

    #@256
    .line 6642
    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    #@259
    move-result-object v2

    #@25a
    move-object/from16 v0, p0

    #@25c
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@25e
    goto/16 :goto_7

    #@260
    .line 6648
    :cond_1b
    if-eqz v7, :cond_9

    #@262
    move-object/from16 v0, p4

    #@264
    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    #@266
    move/from16 v0, p2

    #@268
    if-gt v2, v0, :cond_9

    #@26a
    .line 6649
    move-object/from16 v0, p0

    #@26c
    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@26e
    if-eqz v2, :cond_1c

    #@270
    .line 6650
    move-object/from16 v0, p0

    #@272
    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    #@274
    move-object/from16 v16, v0

    #@276
    .line 6651
    move-object/from16 v0, p0

    #@278
    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@27a
    move-object/from16 v17, v0

    #@27c
    move-object/from16 v0, p0

    #@27e
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@280
    move-object/from16 v18, v0

    #@282
    .line 6652
    move-object/from16 v0, p0

    #@284
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@286
    move/from16 v21, v0

    #@288
    move-object/from16 v0, p0

    #@28a
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@28c
    move/from16 v22, v0

    #@28e
    .line 6653
    move-object/from16 v0, p0

    #@290
    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@292
    move/from16 v24, v0

    #@294
    move-object/from16 v0, p0

    #@296
    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@298
    move-object/from16 v25, v0

    #@29a
    move/from16 v19, p2

    #@29c
    move-object/from16 v20, v6

    #@29e
    move-object/from16 v23, p4

    #@2a0
    move/from16 v26, p5

    #@2a2
    .line 6650
    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    #@2a5
    move-result-object v2

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@2aa
    goto/16 :goto_8

    #@2ac
    .line 6656
    :cond_1c
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@2b0
    move-object/from16 v16, v0

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2b6
    move-object/from16 v17, v0

    #@2b8
    .line 6657
    move-object/from16 v0, p0

    #@2ba
    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    #@2bc
    move/from16 v20, v0

    #@2be
    move-object/from16 v0, p0

    #@2c0
    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    #@2c2
    move/from16 v21, v0

    #@2c4
    .line 6658
    move-object/from16 v0, p0

    #@2c6
    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    #@2c8
    move/from16 v23, v0

    #@2ca
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2ce
    move-object/from16 v24, v0

    #@2d0
    move/from16 v18, p2

    #@2d2
    move-object/from16 v19, v6

    #@2d4
    move-object/from16 v22, p4

    #@2d6
    move/from16 v25, p5

    #@2d8
    .line 6656
    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    #@2db
    move-result-object v2

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@2e0
    goto/16 :goto_8

    #@2e2
    .line 6676
    .restart local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_1d
    const v2, 0x7fffffff

    #@2e5
    goto/16 :goto_9

    #@2e7
    .line 6695
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v28    # "height":I
    :cond_1e
    const/4 v2, 0x1

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    #@2ec
    goto/16 :goto_a
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    #@0
    .prologue
    .line 7462
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
    .line 7463
    const/16 v17, 0x0

    #@10
    return v17

    #@11
    .line 7465
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@14
    move-result v12

    #@15
    .line 7466
    .local v12, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@18
    move-result v3

    #@19
    .line 7467
    .local v3, "end":I
    if-eq v12, v3, :cond_1

    #@1b
    .line 7468
    const/16 v17, 0x0

    #@1d
    return v17

    #@1e
    .line 7473
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
    .line 7475
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
    .line 7476
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
    .line 7477
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
    .line 7478
    .local v16, "vspace":I
    sub-int v17, v2, v13

    #@5e
    div-int/lit8 v15, v17, 0x2

    #@60
    .line 7479
    .local v15, "vslack":I
    div-int/lit8 v17, v16, 0x4

    #@62
    move/from16 v0, v17

    #@64
    if-le v15, v0, :cond_2

    #@66
    .line 7480
    div-int/lit8 v15, v16, 0x4

    #@68
    .line 7481
    :cond_2
    move-object/from16 v0, p0

    #@6a
    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    #@6c
    .line 7483
    .local v14, "vs":I
    add-int v17, v14, v15

    #@6e
    move/from16 v0, v17

    #@70
    if-ge v13, v0, :cond_5

    #@72
    .line 7484
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
    .line 7491
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
    .line 7492
    .local v6, "hspace":I
    move-object/from16 v0, p0

    #@9e
    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    #@a0
    .line 7493
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
    .line 7494
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
    .line 7497
    .local v11, "rightChar":I
    if-ge v7, v11, :cond_6

    #@c8
    move v9, v7

    #@c9
    .line 7498
    .local v9, "lowChar":I
    :goto_1
    if-le v7, v11, :cond_7

    #@cb
    move v4, v7

    #@cc
    .line 7500
    .local v4, "highChar":I
    :goto_2
    move v10, v12

    #@cd
    .line 7501
    .local v10, "newStart":I
    if-ge v10, v9, :cond_8

    #@cf
    .line 7502
    move v10, v9

    #@d0
    .line 7507
    :cond_4
    :goto_3
    if-eq v10, v12, :cond_9

    #@d2
    .line 7508
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
    .line 7509
    const/16 v17, 0x1

    #@e1
    return v17

    #@e2
    .line 7485
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
    .line 7486
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
    .line 7497
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
    .line 7498
    :cond_7
    move v4, v11

    #@100
    .restart local v4    # "highChar":I
    goto :goto_2

    #@101
    .line 7503
    .restart local v10    # "newStart":I
    :cond_8
    if-le v10, v4, :cond_4

    #@103
    .line 7504
    move v10, v4

    #@104
    goto :goto_3

    #@105
    .line 7512
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
    .line 1464
    const/16 v1, 0x64

    #@2
    if-ne p1, v1, :cond_1

    #@4
    .line 1465
    const/4 v1, -0x1

    #@5
    if-ne p2, v1, :cond_0

    #@7
    if-eqz p3, :cond_0

    #@9
    .line 1466
    const-string/jumbo v1, "android.intent.extra.PROCESS_TEXT"

    #@c
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    .line 1467
    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@12
    .line 1468
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 1469
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->replaceSelectionWithText(Ljava/lang/CharSequence;)V

    #@1b
    .line 1478
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1d
    invoke-virtual {v1}, Landroid/widget/Editor;->hasSelectionController()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 1479
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@25
    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@28
    .line 1463
    :cond_1
    return-void

    #@29
    .line 1471
    .restart local v0    # "result":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@2c
    move-result v1

    #@2d
    if-lez v1, :cond_0

    #@2f
    .line 1472
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@32
    move-result-object v1

    #@33
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x1

    #@38
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    #@3f
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5261
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@4
    .line 5263
    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    #@6
    .line 5265
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    #@f
    .line 5267
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 5268
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@1a
    .line 5269
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    #@1c
    .line 5260
    :cond_1
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    #@0
    .prologue
    .line 6452
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6266
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
    .line 6424
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    #@0
    .prologue
    .line 6437
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    #@9
    .line 6436
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2833
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 2834
    iget-boolean v0, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2835
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    #@10
    .line 2832
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
    .line 5485
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 5486
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@8
    move-result-object v0

    #@9
    .line 5492
    .local v0, "drawableState":[I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_2

    #@f
    .line 5497
    array-length v2, v0

    #@10
    .line 5498
    .local v2, "length":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@13
    .line 5499
    aget v4, v0, v1

    #@15
    const v5, 0x10100a7

    #@18
    if-ne v4, v5, :cond_1

    #@1a
    .line 5500
    add-int/lit8 v4, v2, -0x1

    #@1c
    new-array v3, v4, [I

    #@1e
    .line 5501
    .local v3, "nonPressedState":[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    .line 5502
    add-int/lit8 v4, v1, 0x1

    #@23
    sub-int v5, v2, v1

    #@25
    add-int/lit8 v5, v5, -0x1

    #@27
    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@2a
    .line 5503
    return-object v3

    #@2b
    .line 5488
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
    .line 5489
    .restart local v0    # "drawableState":[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    #@33
    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    #@36
    goto :goto_0

    #@37
    .line 5498
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 5508
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
    .line 6271
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
    .line 6272
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@14
    invoke-virtual {v1}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    #@17
    .line 6273
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    #@1a
    move-result v1

    #@1b
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@1d
    .line 6274
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1f
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@21
    if-eqz v1, :cond_4

    #@23
    .line 6275
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@25
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@27
    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@29
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@2b
    .line 6276
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2d
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@2f
    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    #@31
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    #@33
    .line 6277
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@35
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@37
    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    #@39
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    #@3b
    .line 6278
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3d
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@3f
    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@41
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    #@43
    .line 6279
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@45
    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@47
    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    #@49
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    #@4b
    .line 6283
    :goto_0
    const/16 v1, 0x82

    #@4d
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@50
    move-result-object v1

    #@51
    if-eqz v1, :cond_0

    #@53
    .line 6284
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@55
    or-int/2addr v1, v4

    #@56
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@58
    .line 6286
    :cond_0
    const/16 v1, 0x21

    #@5a
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@5d
    move-result-object v1

    #@5e
    if-eqz v1, :cond_1

    #@60
    .line 6287
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@62
    const/high16 v2, 0x4000000

    #@64
    or-int/2addr v1, v2

    #@65
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@67
    .line 6289
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@69
    and-int/lit16 v1, v1, 0xff

    #@6b
    if-nez v1, :cond_2

    #@6d
    .line 6291
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@6f
    and-int/2addr v1, v4

    #@70
    if-eqz v1, :cond_5

    #@72
    .line 6294
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@74
    or-int/lit8 v1, v1, 0x5

    #@76
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@78
    .line 6300
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    #@7b
    move-result v1

    #@7c
    if-nez v1, :cond_2

    #@7e
    .line 6301
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@80
    or-int/2addr v1, v5

    #@81
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@83
    .line 6304
    :cond_2
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@85
    invoke-static {v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    #@88
    move-result v1

    #@89
    if-eqz v1, :cond_3

    #@8b
    .line 6306
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@8d
    or-int/2addr v1, v5

    #@8e
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@90
    .line 6308
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@92
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@94
    .line 6309
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@96
    instance-of v1, v1, Landroid/text/Editable;

    #@98
    if-eqz v1, :cond_6

    #@9a
    .line 6310
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    #@9c
    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    #@9f
    .line 6311
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@a2
    move-result v1

    #@a3
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #@a5
    .line 6312
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@a8
    move-result v1

    #@a9
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #@ab
    .line 6313
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    #@ae
    move-result v1

    #@af
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    #@b2
    move-result v1

    #@b3
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    #@b5
    .line 6314
    return-object v0

    #@b6
    .line 6281
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@b8
    goto :goto_0

    #@b9
    .line 6298
    :cond_5
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@bb
    or-int/lit8 v1, v1, 0x6

    #@bd
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@bf
    goto :goto_1

    #@c0
    .line 6317
    :cond_6
    return-object v3
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    #@0
    .prologue
    .line 5276
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5277
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@b
    .line 5278
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    #@e
    .line 5281
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@11
    .line 5283
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@13
    if-eqz v0, :cond_1

    #@15
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@17
    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    #@1a
    .line 5285
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    #@1d
    .line 5275
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 9555
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    #@4
    move-result v1

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 9575
    :pswitch_0
    return v3

    #@9
    .line 9557
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
    .line 9560
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    #@19
    .line 9561
    return v3

    #@1a
    .line 9564
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
    .line 9565
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@28
    check-cast v1, Landroid/text/Spannable;

    #@2a
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@2d
    .line 9566
    return v3

    #@2e
    .line 9569
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
    .line 9570
    :cond_1
    return v3

    #@38
    .line 9555
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
    .line 5562
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    #@3
    .line 5565
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@6
    .line 5567
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@9
    move-result v16

    #@a
    .line 5568
    .local v16, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@d
    move-result v18

    #@e
    .line 5569
    .local v18, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@11
    move-result v17

    #@12
    .line 5570
    .local v17, "compoundPaddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@15
    move-result v15

    #@16
    .line 5571
    .local v15, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    #@1a
    move/from16 v33, v0

    #@1c
    .line 5572
    .local v33, "scrollX":I
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    #@20
    move/from16 v34, v0

    #@22
    .line 5573
    .local v34, "scrollY":I
    move-object/from16 v0, p0

    #@24
    iget v0, v0, Landroid/widget/TextView;->mRight:I

    #@26
    move/from16 v31, v0

    #@28
    .line 5574
    .local v31, "right":I
    move-object/from16 v0, p0

    #@2a
    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    #@2c
    move/from16 v26, v0

    #@2e
    .line 5575
    .local v26, "left":I
    move-object/from16 v0, p0

    #@30
    iget v9, v0, Landroid/widget/TextView;->mBottom:I

    #@32
    .line 5576
    .local v9, "bottom":I
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Landroid/widget/TextView;->mTop:I

    #@36
    move/from16 v35, v0

    #@38
    .line 5577
    .local v35, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    #@3b
    move-result v24

    #@3c
    .line 5578
    .local v24, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    #@3f
    move-result v29

    #@40
    .line 5579
    .local v29, "offset":I
    if-eqz v24, :cond_d

    #@42
    const/16 v27, 0x0

    #@44
    .line 5580
    .local v27, "leftOffset":I
    :goto_0
    if-eqz v24, :cond_e

    #@46
    move/from16 v32, v29

    #@48
    .line 5582
    .local v32, "rightOffset":I
    :goto_1
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@4c
    move-object/from16 v19, v0

    #@4e
    .line 5583
    .local v19, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v19, :cond_3

    #@50
    .line 5589
    sub-int v2, v9, v35

    #@52
    sub-int/2addr v2, v15

    #@53
    sub-int v38, v2, v18

    #@55
    .line 5590
    .local v38, "vspace":I
    sub-int v2, v31, v26

    #@57
    sub-int v2, v2, v17

    #@59
    sub-int v23, v2, v16

    #@5b
    .line 5594
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
    .line 5595
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@67
    .line 5596
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
    .line 5597
    add-int v3, v34, v18

    #@72
    .line 5598
    move-object/from16 v0, v19

    #@74
    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@76
    sub-int v6, v38, v6

    #@78
    div-int/lit8 v6, v6, 0x2

    #@7a
    .line 5597
    add-int/2addr v3, v6

    #@7b
    int-to-float v3, v3

    #@7c
    .line 5596
    move-object/from16 v0, p1

    #@7e
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@81
    .line 5599
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
    .line 5600
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@90
    .line 5605
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
    .line 5606
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@9c
    .line 5607
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
    .line 5608
    move-object/from16 v0, v19

    #@a7
    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@a9
    .line 5607
    sub-int/2addr v2, v3

    #@aa
    sub-int v2, v2, v32

    #@ac
    int-to-float v2, v2

    #@ad
    .line 5609
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
    .line 5607
    move-object/from16 v0, p1

    #@bb
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@be
    .line 5610
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
    .line 5611
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@cd
    .line 5616
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
    .line 5617
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@d9
    .line 5618
    add-int v2, v33, v16

    #@db
    .line 5619
    move-object/from16 v0, v19

    #@dd
    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@df
    sub-int v3, v23, v3

    #@e1
    div-int/lit8 v3, v3, 0x2

    #@e3
    .line 5618
    add-int/2addr v2, v3

    #@e4
    int-to-float v2, v2

    #@e5
    .line 5619
    move-object/from16 v0, p0

    #@e7
    iget v3, v0, Landroid/widget/TextView;->mPaddingTop:I

    #@e9
    add-int v3, v3, v34

    #@eb
    int-to-float v3, v3

    #@ec
    .line 5618
    move-object/from16 v0, p1

    #@ee
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@f1
    .line 5620
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
    .line 5621
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@100
    .line 5626
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
    .line 5627
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@10c
    .line 5628
    add-int v2, v33, v16

    #@10e
    .line 5629
    move-object/from16 v0, v19

    #@110
    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@112
    sub-int v3, v23, v3

    #@114
    div-int/lit8 v3, v3, 0x2

    #@116
    .line 5628
    add-int/2addr v2, v3

    #@117
    int-to-float v2, v2

    #@118
    .line 5630
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
    .line 5628
    move-object/from16 v0, p1

    #@129
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@12c
    .line 5631
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
    .line 5632
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@13b
    .line 5636
    .end local v23    # "hspace":I
    .end local v38    # "vspace":I
    :cond_3
    move-object/from16 v0, p0

    #@13d
    iget v14, v0, Landroid/widget/TextView;->mCurTextColor:I

    #@13f
    .line 5638
    .local v14, "color":I
    move-object/from16 v0, p0

    #@141
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@143
    if-nez v2, :cond_4

    #@145
    .line 5639
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    #@148
    .line 5642
    :cond_4
    move-object/from16 v0, p0

    #@14a
    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@14c
    .line 5644
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
    .line 5645
    move-object/from16 v0, p0

    #@15e
    iget-object v2, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@160
    if-eqz v2, :cond_5

    #@162
    .line 5646
    move-object/from16 v0, p0

    #@164
    iget v14, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    #@166
    .line 5649
    :cond_5
    move-object/from16 v0, p0

    #@168
    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@16a
    .line 5652
    :cond_6
    move-object/from16 v0, p0

    #@16c
    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@16e
    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setColor(I)V

    #@171
    .line 5653
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
    .line 5655
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@17e
    .line 5660
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@181
    move-result v22

    #@182
    .line 5661
    .local v22, "extendedPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    #@185
    move-result v21

    #@186
    .line 5663
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
    .line 5664
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
    .line 5666
    .local v28, "maxScrollY":I
    add-int v2, v16, v33

    #@19e
    int-to-float v11, v2

    #@19f
    .line 5667
    .local v11, "clipLeft":F
    if-nez v34, :cond_f

    #@1a1
    const/4 v2, 0x0

    #@1a2
    :goto_2
    int-to-float v13, v2

    #@1a3
    .line 5668
    .local v13, "clipTop":F
    sub-int v2, v31, v26

    #@1a5
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    #@1a8
    move-result v3

    #@1a9
    sub-int/2addr v2, v3

    #@1aa
    add-int v2, v2, v33

    #@1ac
    int-to-float v12, v2

    #@1ad
    .line 5669
    .local v12, "clipRight":F
    sub-int v2, v9, v35

    #@1af
    add-int v2, v2, v34

    #@1b1
    .line 5670
    move/from16 v0, v34

    #@1b3
    move/from16 v1, v28

    #@1b5
    if-ne v0, v1, :cond_7

    #@1b7
    const/16 v21, 0x0

    #@1b9
    .line 5669
    .end local v21    # "extendedPaddingBottom":I
    :cond_7
    sub-int v2, v2, v21

    #@1bb
    int-to-float v10, v2

    #@1bc
    .line 5672
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
    .line 5673
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
    .line 5674
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
    .line 5676
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
    .line 5677
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
    .line 5680
    :cond_8
    move-object/from16 v0, p1

    #@203
    invoke-virtual {v0, v11, v13, v12, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    #@206
    .line 5682
    const/16 v37, 0x0

    #@208
    .line 5683
    .local v37, "voffsetText":I
    const/16 v36, 0x0

    #@20a
    .line 5687
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
    .line 5688
    const/4 v2, 0x0

    #@215
    move-object/from16 v0, p0

    #@217
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@21a
    move-result v37

    #@21b
    .line 5689
    const/4 v2, 0x1

    #@21c
    move-object/from16 v0, p0

    #@21e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@221
    move-result v36

    #@222
    .line 5691
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
    .line 5693
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    #@230
    move-result v25

    #@231
    .line 5694
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
    .line 5695
    .local v8, "absoluteGravity":I
    move-object/from16 v0, p0

    #@23d
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@23f
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@241
    if-ne v2, v3, :cond_b

    #@243
    .line 5696
    move-object/from16 v0, p0

    #@245
    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    #@247
    const/4 v3, 0x1

    #@248
    if-eq v2, v3, :cond_b

    #@24a
    .line 5697
    move-object/from16 v0, p0

    #@24c
    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    #@24e
    if-nez v2, :cond_a

    #@250
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    #@253
    move-result v2

    #@254
    const/4 v3, 0x1

    #@255
    if-ne v2, v3, :cond_a

    #@257
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    #@25a
    move-result v2

    #@25b
    if-eqz v2, :cond_a

    #@25d
    .line 5698
    and-int/lit8 v2, v8, 0x7

    #@25f
    const/4 v3, 0x3

    #@260
    if-eq v2, v3, :cond_a

    #@262
    .line 5699
    move-object/from16 v0, p0

    #@264
    iget v2, v0, Landroid/widget/TextView;->mRight:I

    #@266
    move-object/from16 v0, p0

    #@268
    iget v3, v0, Landroid/widget/TextView;->mLeft:I

    #@26a
    sub-int v39, v2, v3

    #@26c
    .line 5700
    .local v39, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    #@26f
    move-result v2

    #@270
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@273
    move-result v3

    #@274
    add-int v30, v2, v3

    #@276
    .line 5701
    .local v30, "padding":I
    move-object/from16 v0, p0

    #@278
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@27a
    const/4 v3, 0x0

    #@27b
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    #@27e
    move-result v2

    #@27f
    sub-int v3, v39, v30

    #@281
    int-to-float v3, v3

    #@282
    sub-float v20, v2, v3

    #@284
    .line 5702
    .local v20, "dx":F
    const/4 v2, 0x0

    #@285
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@288
    move-result v2

    #@289
    int-to-float v2, v2

    #@28a
    mul-float v2, v2, v20

    #@28c
    const/4 v3, 0x0

    #@28d
    move-object/from16 v0, p1

    #@28f
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@292
    .line 5705
    .end local v20    # "dx":F
    .end local v30    # "padding":I
    .end local v39    # "width":I
    :cond_a
    move-object/from16 v0, p0

    #@294
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@296
    if-eqz v2, :cond_b

    #@298
    move-object/from16 v0, p0

    #@29a
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@29c
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    #@29f
    move-result v2

    #@2a0
    if-eqz v2, :cond_b

    #@2a2
    .line 5706
    move-object/from16 v0, p0

    #@2a4
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@2a6
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    #@2a9
    move-result v2

    #@2aa
    neg-float v0, v2

    #@2ab
    move/from16 v20, v0

    #@2ad
    .line 5707
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    #@2ae
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@2b1
    move-result v2

    #@2b2
    int-to-float v2, v2

    #@2b3
    mul-float v2, v2, v20

    #@2b5
    const/4 v3, 0x0

    #@2b6
    move-object/from16 v0, p1

    #@2b8
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@2bb
    .line 5711
    .end local v20    # "dx":F
    :cond_b
    sub-int v7, v36, v37

    #@2bd
    .line 5713
    .local v7, "cursorOffsetVertical":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    #@2c0
    move-result-object v5

    #@2c1
    .line 5714
    .local v5, "highlight":Landroid/graphics/Path;
    move-object/from16 v0, p0

    #@2c3
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2c5
    if-eqz v2, :cond_10

    #@2c7
    .line 5715
    move-object/from16 v0, p0

    #@2c9
    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2cb
    move-object/from16 v0, p0

    #@2cd
    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@2cf
    move-object/from16 v3, p1

    #@2d1
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@2d4
    .line 5720
    :goto_3
    move-object/from16 v0, p0

    #@2d6
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@2d8
    if-eqz v2, :cond_c

    #@2da
    move-object/from16 v0, p0

    #@2dc
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@2de
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    #@2e1
    move-result v2

    #@2e2
    if-eqz v2, :cond_c

    #@2e4
    .line 5721
    move-object/from16 v0, p0

    #@2e6
    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    #@2e8
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    #@2eb
    move-result v20

    #@2ec
    .line 5722
    .restart local v20    # "dx":F
    const/4 v2, 0x0

    #@2ed
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@2f0
    move-result v2

    #@2f1
    int-to-float v2, v2

    #@2f2
    mul-float v2, v2, v20

    #@2f4
    const/4 v3, 0x0

    #@2f5
    move-object/from16 v0, p1

    #@2f7
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@2fa
    .line 5723
    move-object/from16 v0, p0

    #@2fc
    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@2fe
    move-object/from16 v0, p1

    #@300
    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@303
    .line 5726
    .end local v20    # "dx":F
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    #@306
    .line 5561
    return-void

    #@307
    .line 5579
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

    #@309
    .restart local v27    # "leftOffset":I
    goto/16 :goto_0

    #@30b
    .line 5580
    :cond_e
    const/16 v32, 0x0

    #@30d
    .restart local v32    # "rightOffset":I
    goto/16 :goto_1

    #@30f
    .line 5667
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

    #@311
    goto/16 :goto_2

    #@313
    .line 5717
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

    #@315
    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    #@317
    move-object/from16 v0, p1

    #@319
    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@31c
    goto :goto_3
.end method

.method public onEditorAction(I)V
    .locals 22
    .param p1, "actionCode"    # I

    #@0
    .prologue
    .line 4762
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-nez v3, :cond_0

    #@6
    const/4 v2, 0x0

    #@7
    .line 4763
    :goto_0
    if-eqz v2, :cond_7

    #@9
    .line 4764
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 4765
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@f
    .line 4766
    const/4 v6, 0x0

    #@10
    .line 4765
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
    .line 4767
    return-void

    #@1b
    .line 4762
    :cond_0
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1f
    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@21
    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    goto :goto_0

    #@22
    .line 4776
    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_1
    const/4 v3, 0x5

    #@23
    move/from16 v0, p1

    #@25
    if-ne v0, v3, :cond_3

    #@27
    .line 4777
    const/4 v3, 0x2

    #@28
    move-object/from16 v0, p0

    #@2a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@2d
    move-result-object v20

    #@2e
    .line 4778
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_2

    #@30
    .line 4779
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
    .line 4780
    new-instance v3, Ljava/lang/IllegalStateException;

    #@3b
    const-string/jumbo v6, "focus search returned a view that wasn\'t able to take focus!"

    #@3e
    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 4784
    :cond_2
    return-void

    #@43
    .line 4786
    .end local v20    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, 0x7

    #@44
    move/from16 v0, p1

    #@46
    if-ne v0, v3, :cond_5

    #@48
    .line 4787
    const/4 v3, 0x1

    #@49
    move-object/from16 v0, p0

    #@4b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@4e
    move-result-object v20

    #@4f
    .line 4788
    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_4

    #@51
    .line 4789
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
    .line 4790
    new-instance v3, Ljava/lang/IllegalStateException;

    #@5c
    const-string/jumbo v6, "focus search returned a view that wasn\'t able to take focus!"

    #@5f
    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v3

    #@63
    .line 4794
    :cond_4
    return-void

    #@64
    .line 4796
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/4 v3, 0x6

    #@65
    move/from16 v0, p1

    #@67
    if-ne v0, v3, :cond_7

    #@69
    .line 4797
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@6c
    move-result-object v19

    #@6d
    .line 4798
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
    .line 4799
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
    .line 4801
    :cond_6
    return-void

    #@84
    .line 4805
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@87
    move-result-object v21

    #@88
    .line 4806
    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_8

    #@8a
    .line 4807
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@8d
    move-result-wide v4

    #@8e
    .line 4809
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    #@90
    .line 4810
    const/4 v8, 0x0

    #@91
    const/16 v9, 0x42

    #@93
    const/4 v10, 0x0

    #@94
    const/4 v11, 0x0

    #@95
    .line 4811
    const/4 v12, -0x1

    #@96
    const/4 v13, 0x0

    #@97
    .line 4812
    const/16 v14, 0x16

    #@99
    move-wide v6, v4

    #@9a
    .line 4809
    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@9d
    .line 4808
    move-object/from16 v0, v21

    #@9f
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    #@a2
    .line 4815
    new-instance v7, Landroid/view/KeyEvent;

    #@a4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a7
    move-result-wide v8

    #@a8
    .line 4816
    const/4 v12, 0x1

    #@a9
    const/16 v13, 0x42

    #@ab
    const/4 v14, 0x0

    #@ac
    const/4 v15, 0x0

    #@ad
    .line 4817
    const/16 v16, -0x1

    #@af
    const/16 v17, 0x0

    #@b1
    .line 4818
    const/16 v18, 0x16

    #@b3
    move-wide v10, v4

    #@b4
    .line 4815
    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    #@b7
    .line 4814
    move-object/from16 v0, v21

    #@b9
    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    #@bc
    .line 4761
    .end local v4    # "eventTime":J
    :cond_8
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 0

    #@0
    .prologue
    .line 6460
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 8197
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    #@4
    .line 8200
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    #@a
    .line 8201
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    if-eqz v0, :cond_1

    #@e
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@10
    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    #@12
    .line 8196
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 8206
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 8208
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@7
    .line 8209
    return-void

    #@8
    .line 8212
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    if-eqz v0, :cond_1

    #@c
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    #@11
    .line 8214
    :cond_1
    if-eqz p1, :cond_2

    #@13
    .line 8215
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@15
    instance-of v0, v0, Landroid/text/Spannable;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 8216
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1b
    check-cast v6, Landroid/text/Spannable;

    #@1d
    .line 8217
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    #@20
    .line 8221
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    #@23
    .line 8223
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 8224
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@29
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2b
    move-object v1, p0

    #@2c
    move v3, p1

    #@2d
    move v4, p2

    #@2e
    move-object v5, p3

    #@2f
    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    #@32
    .line 8227
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@35
    .line 8205
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 8369
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
    .line 8371
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
    .line 8372
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 8374
    :catch_0
    move-exception v0

    #@1d
    .line 8380
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
    .line 8895
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 8897
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@6
    move-result v0

    #@7
    .line 8898
    .local v0, "isPassword":Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    #@a
    .line 8900
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@d
    move-result v1

    #@e
    const/16 v2, 0x2000

    #@10
    if-ne v1, v2, :cond_0

    #@12
    .line 8901
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@14
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@17
    move-result v1

    #@18
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    #@1b
    .line 8902
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1d
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@20
    move-result v1

    #@21
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    #@24
    .line 8903
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@26
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@29
    move-result v1

    #@2a
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    #@2d
    .line 8894
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
    .line 8910
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@4
    .line 8912
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@7
    move-result v2

    #@8
    .line 8913
    .local v2, "isPassword":Z
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    #@b
    .line 8915
    if-eqz v2, :cond_0

    #@d
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 8916
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@1a
    .line 8919
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@1c
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@1e
    if-ne v4, v5, :cond_2

    #@20
    .line 8920
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    #@23
    .line 8923
    :cond_2
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 8924
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@29
    iget v4, v4, Landroid/widget/Editor;->mInputType:I

    #@2b
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    #@2e
    .line 8926
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@30
    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@32
    if-eqz v4, :cond_3

    #@34
    .line 8927
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    #@37
    .line 8928
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@39
    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    #@3b
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    #@3e
    .line 8932
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@40
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@43
    move-result v4

    #@44
    if-nez v4, :cond_4

    #@46
    .line 8933
    const/16 v4, 0x100

    #@48
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@4b
    .line 8934
    const/16 v4, 0x200

    #@4d
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@50
    .line 8935
    const/16 v4, 0x1f

    #@52
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    #@55
    .line 8940
    const/high16 v4, 0x20000

    #@57
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@5a
    .line 8943
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_9

    #@60
    .line 8944
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    #@63
    move-result v4

    #@64
    if-eqz v4, :cond_5

    #@66
    .line 8945
    const/16 v4, 0x4000

    #@68
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@6b
    .line 8947
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_6

    #@71
    .line 8948
    const v4, 0x8000

    #@74
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@77
    .line 8950
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    #@7a
    move-result v4

    #@7b
    if-eqz v4, :cond_7

    #@7d
    .line 8951
    const/high16 v4, 0x10000

    #@7f
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@82
    .line 8953
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    #@85
    move-result v4

    #@86
    if-eqz v4, :cond_8

    #@88
    .line 8954
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@8a
    .line 8956
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@8d
    move-result-object v5

    #@8e
    const v6, 0x1040448

    #@91
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    .line 8955
    const/high16 v6, 0x10000000

    #@97
    .line 8954
    invoke-direct {v4, v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    #@9a
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@9d
    .line 8958
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    #@a0
    move-result v4

    #@a1
    if-eqz v4, :cond_9

    #@a3
    .line 8959
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a5
    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@a7
    invoke-virtual {v4, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@aa
    .line 8964
    :cond_9
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@ac
    array-length v3, v4

    #@ad
    .line 8965
    .local v3, "numFilters":I
    const/4 v1, 0x0

    #@ae
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_b

    #@b0
    .line 8966
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@b2
    aget-object v0, v4, v1

    #@b4
    .line 8967
    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v4, v0, Landroid/text/InputFilter$LengthFilter;

    #@b6
    if-eqz v4, :cond_a

    #@b8
    .line 8968
    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    #@ba
    .end local v0    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    #@bd
    move-result v4

    #@be
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    #@c1
    .line 8965
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@c3
    goto :goto_0

    #@c4
    .line 8972
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    #@c7
    move-result v4

    #@c8
    if-nez v4, :cond_c

    #@ca
    .line 8973
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    #@cd
    .line 8909
    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 5911
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    #@4
    move-result v0

    #@5
    .line 5912
    .local v0, "which":I
    if-nez v0, :cond_0

    #@7
    .line 5913
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 5916
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
    .line 5921
    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@5
    move-result-object v0

    #@6
    .line 5923
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    #@9
    move-result v2

    #@a
    .line 5924
    .local v2, "which":I
    if-nez v2, :cond_0

    #@c
    .line 5926
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@f
    move-result v3

    #@10
    return v3

    #@11
    .line 5928
    :cond_0
    const/4 v3, -0x1

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 5930
    return v5

    #@15
    .line 5933
    :cond_1
    add-int/lit8 p2, p2, -0x1

    #@17
    .line 5940
    invoke-static {p3, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    #@1a
    move-result-object v1

    #@1b
    .line 5941
    .local v1, "up":Landroid/view/KeyEvent;
    if-ne v2, v5, :cond_4

    #@1d
    .line 5943
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
    .line 5944
    :goto_0
    add-int/lit8 p2, p2, -0x1

    #@2a
    if-lez p2, :cond_2

    #@2c
    .line 5945
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
    .line 5946
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
    .line 5948
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    #@46
    .line 5959
    :cond_3
    return v5

    #@47
    .line 5950
    :cond_4
    const/4 v3, 0x2

    #@48
    if-ne v2, v3, :cond_3

    #@4a
    .line 5952
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@4c
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@4e
    check-cast v3, Landroid/text/Spannable;

    #@50
    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@53
    .line 5953
    :goto_1
    add-int/lit8 p2, p2, -0x1

    #@55
    if-lez p2, :cond_3

    #@57
    .line 5954
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@59
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@5b
    check-cast v3, Landroid/text/Spannable;

    #@5d
    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    #@60
    .line 5955
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
    .line 5875
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
    .line 5876
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 5878
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
    .line 8588
    const/16 v0, 0x1000

    #@2
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 8590
    sparse-switch p1, :sswitch_data_0

    #@b
    .line 8631
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 8592
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 8593
    const v0, 0x102001f

    #@19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 8597
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 8598
    const v0, 0x1020032

    #@27
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@2a
    move-result v0

    #@2b
    return v0

    #@2c
    .line 8602
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_0

    #@32
    .line 8603
    const v0, 0x1020020

    #@35
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@38
    move-result v0

    #@39
    return v0

    #@3a
    .line 8607
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_0

    #@40
    .line 8608
    const v0, 0x1020021

    #@43
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@46
    move-result v0

    #@47
    return v0

    #@48
    .line 8612
    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_0

    #@4e
    .line 8613
    const v0, 0x1020022

    #@51
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@54
    move-result v0

    #@55
    return v0

    #@56
    .line 8617
    :cond_1
    const/16 v0, 0x1001

    #@58
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 8619
    sparse-switch p1, :sswitch_data_1

    #@61
    goto :goto_0

    #@62
    .line 8626
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_0

    #@68
    .line 8627
    const v0, 0x1020031

    #@6b
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@6e
    move-result v0

    #@6f
    return v0

    #@70
    .line 8621
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_0

    #@76
    .line 8622
    const v0, 0x1020033

    #@79
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@7c
    move-result v0

    #@7d
    return v0

    #@7e
    .line 8590
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_3
        0x32 -> :sswitch_4
        0x34 -> :sswitch_2
        0x36 -> :sswitch_1
    .end sparse-switch

    #@94
    .line 8619
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
    .line 6163
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 6164
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 6167
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 6168
    iput-boolean v3, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    #@17
    .line 6171
    :cond_1
    sparse-switch p1, :sswitch_data_0

    #@1a
    .line 6253
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
    .line 6254
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
    .line 6255
    return v4

    #@33
    .line 6173
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 6183
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    #@3c
    move-result v2

    #@3d
    if-nez v2, :cond_3

    #@3f
    .line 6184
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
    .line 6185
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4b
    if-eqz v2, :cond_3

    #@4d
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    #@50
    move-result v2

    #@51
    .line 6184
    if-eqz v2, :cond_3

    #@53
    .line 6186
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@56
    move-result-object v0

    #@57
    .line 6187
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    #@5a
    .line 6188
    if-eqz v0, :cond_3

    #@5c
    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_3

    #@62
    .line 6189
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@65
    .line 6194
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@68
    move-result v2

    #@69
    return v2

    #@6a
    .line 6197
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_2

    #@70
    .line 6198
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
    .line 6199
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7c
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@7e
    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@80
    if-eqz v2, :cond_4

    #@82
    .line 6200
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@84
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@86
    iget-boolean v2, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    #@88
    .line 6198
    if-eqz v2, :cond_4

    #@8a
    .line 6201
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8c
    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@8e
    iput-boolean v3, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    #@90
    .line 6202
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
    .line 6204
    return v4

    #@9d
    .line 6208
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    #@a0
    move-result v2

    #@a1
    and-int/lit8 v2, v2, 0x10

    #@a3
    if-nez v2, :cond_5

    #@a5
    .line 6209
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    #@a8
    move-result v2

    #@a9
    .line 6208
    if-eqz v2, :cond_8

    #@ab
    .line 6220
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    #@ae
    move-result v2

    #@af
    if-nez v2, :cond_8

    #@b1
    .line 6221
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    #@b4
    move-result-object v1

    #@b5
    .line 6223
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_7

    #@b7
    .line 6224
    invoke-virtual {v1, v5}, Landroid/view/View;->requestFocus(I)Z

    #@ba
    move-result v2

    #@bb
    if-nez v2, :cond_6

    #@bd
    .line 6225
    new-instance v2, Ljava/lang/IllegalStateException;

    #@bf
    .line 6226
    const-string/jumbo v3, "focus search returned a view that wasn\'t able to take focus!"

    #@c2
    .line 6225
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v2

    #@c6
    .line 6235
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@c9
    .line 6236
    return v4

    #@ca
    .line 6237
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    #@cd
    move-result v2

    #@ce
    and-int/lit8 v2, v2, 0x10

    #@d0
    if-eqz v2, :cond_8

    #@d2
    .line 6241
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@d5
    move-result-object v0

    #@d6
    .line 6242
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_8

    #@d8
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@db
    move-result v2

    #@dc
    if-eqz v2, :cond_8

    #@de
    .line 6243
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    #@e1
    move-result-object v2

    #@e2
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@e5
    .line 6248
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "v":Landroid/view/View;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@e8
    move-result v2

    #@e9
    return v2

    #@ea
    .line 6257
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@ec
    if-eqz v2, :cond_a

    #@ee
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f0
    if-eqz v2, :cond_a

    #@f2
    .line 6258
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
    .line 6259
    return v4

    #@ff
    .line 6261
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@102
    move-result v2

    #@103
    return v2

    #@104
    .line 6171
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
    .line 7179
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    #@3
    .line 7180
    iget v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    #@5
    if-ltz v1, :cond_0

    #@7
    .line 7181
    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    #@9
    .line 7182
    .local v0, "curs":I
    const/4 v1, -0x1

    #@a
    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    #@c
    .line 7183
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
    .line 7178
    .end local v0    # "curs":I
    :cond_0
    return-void
.end method

.method onLocaleChanged()V
    .locals 2

    #@0
    .prologue
    .line 8737
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    const/4 v1, 0x0

    #@3
    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    #@5
    .line 8735
    return-void
.end method

.method protected onMeasure(II)V
    .locals 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 6851
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v24

    #@4
    .line 6852
    .local v24, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v14

    #@8
    .line 6853
    .local v14, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@b
    move-result v25

    #@c
    .line 6854
    .local v25, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result v15

    #@10
    .line 6859
    .local v15, "heightSize":I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@12
    .line 6860
    .local v5, "boring":Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@14
    .line 6862
    .local v6, "hintBoring":Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 6863
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    #@1d
    move-result-object v2

    #@1e
    move-object/from16 v0, p0

    #@20
    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@22
    .line 6866
    :cond_0
    const/4 v9, -0x1

    #@23
    .line 6867
    .local v9, "des":I
    const/4 v12, 0x0

    #@24
    .line 6869
    .local v12, "fromexisting":Z
    const/high16 v2, 0x40000000    # 2.0f

    #@26
    move/from16 v0, v24

    #@28
    if-ne v0, v2, :cond_7

    #@2a
    .line 6871
    move/from16 v22, v25

    #@2c
    .line 6952
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
    .line 6953
    .local v3, "want":I
    move/from16 v21, v3

    #@3a
    .line 6955
    .local v21, "unpaddedWidth":I
    move-object/from16 v0, p0

    #@3c
    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@3e
    if-eqz v2, :cond_2

    #@40
    const/high16 v3, 0x100000

    #@42
    .line 6957
    :cond_2
    move v4, v3

    #@43
    .line 6958
    .local v4, "hintWant":I
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@47
    if-nez v2, :cond_17

    #@49
    move/from16 v17, v4

    #@4b
    .line 6960
    .local v17, "hintWidth":I
    :goto_1
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4f
    if-nez v2, :cond_18

    #@51
    .line 6962
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
    .line 6961
    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@63
    .line 6988
    :cond_3
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    #@65
    if-ne v14, v2, :cond_23

    #@67
    .line 6990
    move v13, v15

    #@68
    .line 6991
    .local v13, "height":I
    const/4 v2, -0x1

    #@69
    move-object/from16 v0, p0

    #@6b
    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@6d
    .line 7003
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
    .line 7004
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
    .line 7005
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
    .line 7012
    :cond_5
    move-object/from16 v0, p0

    #@a2
    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@a4
    if-nez v2, :cond_6

    #@a6
    .line 7013
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
    .line 7015
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    #@b5
    .line 7020
    :goto_4
    move-object/from16 v0, p0

    #@b7
    move/from16 v1, v22

    #@b9
    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    #@bc
    .line 6850
    return-void

    #@bd
    .line 6873
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
    .line 6874
    move-object/from16 v0, p0

    #@cb
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@cd
    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    #@d0
    move-result v9

    #@d1
    .line 6877
    :cond_8
    if-gez v9, :cond_12

    #@d3
    .line 6878
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
    .line 6879
    if-eqz v5, :cond_9

    #@ed
    .line 6880
    move-object/from16 v0, p0

    #@ef
    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    #@f1
    .line 6886
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    #@f3
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@f5
    if-ne v5, v2, :cond_13

    #@f7
    .line 6887
    :cond_a
    if-gez v9, :cond_b

    #@f9
    .line 6888
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
    .line 6890
    :cond_b
    move/from16 v22, v9

    #@111
    .line 6895
    .restart local v22    # "width":I
    :goto_6
    move-object/from16 v0, p0

    #@113
    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@115
    .line 6896
    .local v11, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_c

    #@117
    .line 6897
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@119
    move/from16 v0, v22

    #@11b
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@11e
    move-result v22

    #@11f
    .line 6898
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@121
    move/from16 v0, v22

    #@123
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@126
    move-result v22

    #@127
    .line 6901
    :cond_c
    move-object/from16 v0, p0

    #@129
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@12b
    if-eqz v2, :cond_11

    #@12d
    .line 6902
    const/16 v16, -0x1

    #@12f
    .line 6905
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
    .line 6906
    move-object/from16 v0, p0

    #@13d
    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@13f
    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    #@142
    move-result v16

    #@143
    .line 6909
    :cond_d
    if-gez v16, :cond_e

    #@145
    .line 6910
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
    .line 6911
    if-eqz v6, :cond_e

    #@15f
    .line 6912
    move-object/from16 v0, p0

    #@161
    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    #@163
    .line 6916
    :cond_e
    if-eqz v6, :cond_f

    #@165
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@167
    if-ne v6, v2, :cond_14

    #@169
    .line 6917
    :cond_f
    if-gez v16, :cond_10

    #@16b
    .line 6918
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
    .line 6920
    :cond_10
    move/from16 v17, v16

    #@185
    .line 6925
    .restart local v17    # "hintWidth":I
    :goto_7
    move/from16 v0, v17

    #@187
    move/from16 v1, v22

    #@189
    if-le v0, v1, :cond_11

    #@18b
    .line 6926
    move/from16 v22, v17

    #@18d
    .line 6930
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
    .line 6932
    move-object/from16 v0, p0

    #@19a
    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@19c
    const/4 v7, 0x1

    #@19d
    if-ne v2, v7, :cond_15

    #@19f
    .line 6933
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
    .line 6938
    :goto_8
    move-object/from16 v0, p0

    #@1b0
    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    #@1b2
    const/4 v7, 0x1

    #@1b3
    if-ne v2, v7, :cond_16

    #@1b5
    .line 6939
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
    .line 6945
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
    .line 6947
    const/high16 v2, -0x80000000

    #@1d0
    move/from16 v0, v24

    #@1d2
    if-ne v0, v2, :cond_1

    #@1d4
    .line 6948
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
    .line 6883
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "width":I
    :cond_12
    const/4 v12, 0x1

    #@1df
    goto/16 :goto_5

    #@1e1
    .line 6892
    :cond_13
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    #@1e3
    move/from16 v22, v0

    #@1e5
    .restart local v22    # "width":I
    goto/16 :goto_6

    #@1e7
    .line 6922
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
    .line 6935
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
    .line 6941
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
    .line 6958
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
    .line 6964
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
    .line 6965
    move/from16 v0, v17

    #@218
    if-eq v0, v4, :cond_1d

    #@21a
    .line 6964
    :cond_19
    const/16 v18, 0x1

    #@21c
    .line 6969
    .local v18, "layoutChanged":Z
    :goto_a
    move-object/from16 v0, p0

    #@21e
    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@220
    if-nez v2, :cond_20

    #@222
    .line 6970
    move-object/from16 v0, p0

    #@224
    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@226
    if-nez v2, :cond_20

    #@228
    .line 6971
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
    .line 6972
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
    .line 6974
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
    .line 6976
    .local v19, "maximumChanged":Z
    :goto_c
    if-nez v18, :cond_1c

    #@25a
    if-eqz v19, :cond_3

    #@25c
    .line 6977
    :cond_1c
    if-nez v19, :cond_22

    #@25e
    if-eqz v23, :cond_22

    #@260
    .line 6978
    move-object/from16 v0, p0

    #@262
    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@264
    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    #@267
    goto/16 :goto_2

    #@269
    .line 6966
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
    .line 6967
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
    .line 6966
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
    .line 6972
    :cond_1f
    const/16 v23, 0x0

    #@286
    .restart local v23    # "widthChanged":Z
    goto :goto_b

    #@287
    .line 6969
    .end local v23    # "widthChanged":Z
    :cond_20
    const/16 v23, 0x0

    #@289
    .restart local v23    # "widthChanged":Z
    goto :goto_b

    #@28a
    .line 6974
    :cond_21
    const/16 v19, 0x0

    #@28c
    .restart local v19    # "maximumChanged":Z
    goto :goto_c

    #@28d
    .line 6981
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
    .line 6980
    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@29f
    goto/16 :goto_2

    #@2a1
    .line 6993
    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_23
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    #@2a4
    move-result v10

    #@2a5
    .line 6995
    .local v10, "desired":I
    move v13, v10

    #@2a6
    .line 6996
    .restart local v13    # "height":I
    move-object/from16 v0, p0

    #@2a8
    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    #@2aa
    .line 6998
    const/high16 v2, -0x80000000

    #@2ac
    if-ne v14, v2, :cond_4

    #@2ae
    .line 6999
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    #@2b1
    move-result v13

    #@2b2
    goto/16 :goto_3

    #@2b4
    .line 7014
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
    .line 7017
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
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 8756
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 8758
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@6
    move-result v0

    #@7
    .line 8759
    .local v0, "isPassword":Z
    if-eqz v0, :cond_0

    #@9
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 8760
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    #@12
    move-result-object v1

    #@13
    .line 8761
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 8762
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 8755
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5202
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 5203
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    #@8
    .line 5206
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@a
    if-eqz v1, :cond_6

    #@c
    .line 5211
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@f
    move-result v0

    #@10
    .line 5213
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
    .line 5214
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1c
    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@1e
    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    #@21
    move-result v1

    #@22
    .line 5213
    if-eqz v1, :cond_1

    #@24
    .line 5215
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@27
    move-result v0

    #@28
    .line 5223
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
    .line 5224
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@34
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@37
    move-result v0

    #@38
    .line 5227
    :cond_2
    if-ltz v0, :cond_3

    #@3a
    .line 5228
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    #@3d
    .line 5237
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
    .line 5238
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@49
    invoke-virtual {v1}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_7

    #@4f
    .line 5239
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@51
    invoke-virtual {v1}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    #@54
    .line 5243
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@56
    iput-boolean v3, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    #@58
    .line 5249
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isInExtractedMode()Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_5

    #@5e
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_5

    #@64
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@66
    if-eqz v1, :cond_5

    #@68
    .line 5250
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6a
    iget-object v1, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@6c
    if-nez v1, :cond_5

    #@6e
    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    #@71
    move-result v1

    #@72
    .line 5249
    if-eqz v1, :cond_5

    #@74
    .line 5250
    invoke-virtual {p0}, Landroid/widget/TextView;->hasWindowFocus()Z

    #@77
    move-result v1

    #@78
    .line 5249
    if-eqz v1, :cond_5

    #@7a
    .line 5251
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7c
    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@7f
    .line 5254
    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    #@82
    .line 5256
    const/4 v1, 0x1

    #@83
    return v1

    #@84
    .line 5231
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    #@87
    goto :goto_0

    #@88
    .line 5241
    :cond_7
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8a
    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@8d
    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6475
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 32
    .param p1, "structure"    # Landroid/view/ViewStructure;

    #@0
    .prologue
    .line 8784
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    #@3
    .line 8785
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@6
    move-result v29

    #@7
    if-nez v29, :cond_7

    #@9
    .line 8786
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    #@c
    move-result v29

    #@d
    invoke-static/range {v29 .. v29}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    #@10
    move-result v12

    #@11
    .line 8787
    :goto_0
    if-nez v12, :cond_6

    #@13
    .line 8788
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@17
    move-object/from16 v29, v0

    #@19
    if-nez v29, :cond_0

    #@1b
    .line 8789
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    #@1e
    .line 8791
    :cond_0
    move-object/from16 v0, p0

    #@20
    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@22
    .line 8792
    .local v13, "layout":Landroid/text/Layout;
    invoke-virtual {v13}, Landroid/text/Layout;->getLineCount()I

    #@25
    move-result v15

    #@26
    .line 8793
    .local v15, "lineCount":I
    const/16 v29, 0x1

    #@28
    move/from16 v0, v29

    #@2a
    if-gt v15, v0, :cond_8

    #@2c
    .line 8795
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
    .line 8863
    :goto_1
    const/16 v21, 0x0

    #@45
    .line 8864
    .local v21, "style":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    #@48
    move-result v26

    #@49
    .line 8865
    .local v26, "typefaceStyle":I
    and-int/lit8 v29, v26, 0x1

    #@4b
    if-eqz v29, :cond_1

    #@4d
    .line 8866
    const/16 v21, 0x1

    #@4f
    .line 8868
    :cond_1
    and-int/lit8 v29, v26, 0x2

    #@51
    if-eqz v29, :cond_2

    #@53
    .line 8869
    or-int/lit8 v21, v21, 0x2

    #@55
    .line 8873
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
    .line 8874
    .local v17, "paintFlags":I
    and-int/lit8 v29, v17, 0x20

    #@61
    if-eqz v29, :cond_3

    #@63
    .line 8875
    or-int/lit8 v21, v21, 0x1

    #@65
    .line 8877
    :cond_3
    and-int/lit8 v29, v17, 0x8

    #@67
    if-eqz v29, :cond_4

    #@69
    .line 8878
    or-int/lit8 v21, v21, 0x4

    #@6b
    .line 8880
    :cond_4
    and-int/lit8 v29, v17, 0x10

    #@6d
    if-eqz v29, :cond_5

    #@6f
    .line 8881
    or-int/lit8 v21, v21, 0x8

    #@71
    .line 8886
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    #@74
    move-result v29

    #@75
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    #@78
    move-result v30

    #@79
    .line 8887
    const/16 v31, 0x1

    #@7b
    .line 8886
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
    .line 8889
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
    .line 8783
    return-void

    #@94
    .line 8785
    :cond_7
    const/4 v12, 0x1

    #@95
    .local v12, "isPassword":Z
    goto/16 :goto_0

    #@97
    .line 8799
    .end local v12    # "isPassword":Z
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
    .line 8800
    .local v23, "tmpCords":[I
    move-object/from16 v0, p0

    #@a1
    move-object/from16 v1, v23

    #@a3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    #@a6
    .line 8801
    const/16 v29, 0x1

    #@a8
    aget v25, v23, v29

    #@aa
    .line 8802
    .local v25, "topWindowLocation":I
    move-object/from16 v18, p0

    #@ac
    .line 8803
    .local v18, "root":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    #@af
    move-result-object v27

    #@b0
    .line 8804
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
    .line 8805
    check-cast v18, Landroid/view/View;

    #@bc
    .line 8806
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@bf
    move-result-object v27

    #@c0
    goto :goto_2

    #@c1
    .line 8808
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    #@c4
    move-result v28

    #@c5
    .line 8811
    .local v28, "windowHeight":I
    if-ltz v25, :cond_10

    #@c7
    .line 8813
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
    .line 8814
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
    .line 8823
    .local v6, "bottomLine":I
    :goto_3
    sub-int v29, v6, v24

    #@e2
    div-int/lit8 v29, v29, 0x2

    #@e4
    sub-int v10, v24, v29

    #@e6
    .line 8824
    .local v10, "expandedTopLine":I
    if-gez v10, :cond_a

    #@e8
    .line 8825
    const/4 v10, 0x0

    #@e9
    .line 8827
    :cond_a
    sub-int v29, v6, v24

    #@eb
    div-int/lit8 v29, v29, 0x2

    #@ed
    add-int v8, v6, v29

    #@ef
    .line 8828
    .local v8, "expandedBottomLine":I
    if-lt v8, v15, :cond_b

    #@f1
    .line 8829
    add-int/lit8 v8, v15, -0x1

    #@f3
    .line 8832
    :cond_b
    invoke-virtual {v13, v10}, Landroid/text/Layout;->getLineStart(I)I

    #@f6
    move-result v9

    #@f7
    .line 8833
    .local v9, "expandedTopChar":I
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getLineEnd(I)I

    #@fa
    move-result v7

    #@fb
    .line 8836
    .local v7, "expandedBottomChar":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@fe
    move-result v20

    #@ff
    .line 8837
    .local v20, "selStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@102
    move-result v19

    #@103
    .line 8838
    .local v19, "selEnd":I
    move/from16 v0, v20

    #@105
    move/from16 v1, v19

    #@107
    if-ge v0, v1, :cond_d

    #@109
    .line 8839
    move/from16 v0, v20

    #@10b
    if-ge v0, v9, :cond_c

    #@10d
    .line 8840
    move/from16 v9, v20

    #@10f
    .line 8842
    :cond_c
    move/from16 v0, v19

    #@111
    if-le v0, v7, :cond_d

    #@113
    .line 8843
    move/from16 v7, v19

    #@115
    .line 8847
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@118
    move-result-object v22

    #@119
    .line 8848
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
    .line 8849
    :cond_e
    move-object/from16 v0, v22

    #@125
    invoke-interface {v0, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@128
    move-result-object v22

    #@129
    .line 8851
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
    .line 8852
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
    .line 8853
    .local v16, "lineOffsets":[I
    sub-int v29, v6, v24

    #@144
    add-int/lit8 v29, v29, 0x1

    #@146
    move/from16 v0, v29

    #@148
    new-array v14, v0, [I

    #@14a
    .line 8854
    .local v14, "lineBaselines":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getBaselineOffset()I

    #@14d
    move-result v5

    #@14e
    .line 8855
    .local v5, "baselineOffset":I
    move/from16 v11, v24

    #@150
    .local v11, "i":I
    :goto_4
    if-gt v11, v6, :cond_11

    #@152
    .line 8856
    sub-int v29, v11, v24

    #@154
    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineStart(I)I

    #@157
    move-result v30

    #@158
    aput v30, v16, v29

    #@15a
    .line 8857
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
    .line 8855
    add-int/lit8 v11, v11, 0x1

    #@166
    goto :goto_4

    #@167
    .line 8818
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
    .line 8819
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
    .line 8859
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
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 9637
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 9638
    return-void

    #@5
    .line 9640
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    #@7
    .line 9643
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 9644
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    #@10
    .line 9635
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 4057
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 4058
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    .line 4059
    return-void

    #@8
    :cond_0
    move-object v3, p1

    #@9
    .line 4062
    check-cast v3, Landroid/widget/TextView$SavedState;

    #@b
    .line 4063
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@e
    move-result-object v4

    #@f
    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@12
    .line 4066
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 4067
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@18
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1b
    .line 4070
    :cond_1
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    #@1d
    if-ltz v4, :cond_4

    #@1f
    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    #@21
    if-ltz v4, :cond_4

    #@23
    .line 4071
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@25
    instance-of v4, v4, Landroid/text/Spannable;

    #@27
    if-eqz v4, :cond_4

    #@29
    .line 4072
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2b
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@2e
    move-result v1

    #@2f
    .line 4074
    .local v1, "len":I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    #@31
    if-gt v4, v1, :cond_2

    #@33
    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    #@35
    if-le v4, v1, :cond_7

    #@37
    .line 4075
    :cond_2
    const-string/jumbo v2, ""

    #@3a
    .line 4077
    .local v2, "restored":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@3c
    if-eqz v4, :cond_3

    #@3e
    .line 4078
    const-string/jumbo v2, "(restored) "

    #@41
    .line 4081
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
    .line 4082
    const-string/jumbo v6, "/"

    #@59
    .line 4081
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 4082
    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    #@5f
    .line 4081
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    .line 4082
    const-string/jumbo v6, " out of range for "

    #@66
    .line 4081
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    .line 4083
    const-string/jumbo v6, "text "

    #@71
    .line 4081
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    .line 4083
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@77
    .line 4081
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
    .line 4095
    .end local v1    # "len":I
    .end local v2    # "restored":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    #@84
    if-eqz v4, :cond_5

    #@86
    .line 4096
    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    #@88
    .line 4098
    .local v0, "error":Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    #@8a
    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    #@8d
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    #@90
    .line 4107
    .end local v0    # "error":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    #@92
    if-eqz v4, :cond_6

    #@94
    .line 4108
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@97
    .line 4109
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@99
    iget-object v5, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    #@9b
    invoke-virtual {v4, v5}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    #@9e
    .line 4056
    :cond_6
    return-void

    #@9f
    .line 4085
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
    .line 4087
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    #@ac
    if-eqz v4, :cond_4

    #@ae
    .line 4088
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@b1
    .line 4089
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
    .line 9590
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    #@3
    .line 9592
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    #@6
    move-result-object v0

    #@7
    .line 9593
    .local v0, "newTextDir":Landroid/text/TextDirectionHeuristic;
    iget-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@9
    if-eq v1, v0, :cond_0

    #@b
    .line 9594
    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@d
    .line 9595
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 9596
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    #@14
    .line 9589
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    #@0
    .prologue
    .line 3993
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v5

    #@4
    .line 3996
    .local v5, "superState":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/widget/TextView;->mFreezesText:Z

    #@6
    .line 3997
    .local v1, "save":Z
    const/4 v4, 0x0

    #@7
    .line 3998
    .local v4, "start":I
    const/4 v0, 0x0

    #@8
    .line 4000
    .local v0, "end":I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@a
    if-eqz v6, :cond_1

    #@c
    .line 4001
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@f
    move-result v4

    #@10
    .line 4002
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@13
    move-result v0

    #@14
    .line 4003
    if-gez v4, :cond_0

    #@16
    if-ltz v0, :cond_1

    #@18
    .line 4005
    :cond_0
    const/4 v1, 0x1

    #@19
    .line 4009
    .end local v1    # "save":Z
    :cond_1
    if-eqz v1, :cond_6

    #@1b
    .line 4010
    new-instance v3, Landroid/widget/TextView$SavedState;

    #@1d
    invoke-direct {v3, v5}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@20
    .line 4012
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    iput v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    #@22
    .line 4013
    iput v0, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    #@24
    .line 4015
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@26
    instance-of v6, v6, Landroid/text/Spanned;

    #@28
    if-eqz v6, :cond_5

    #@2a
    .line 4016
    new-instance v2, Landroid/text/SpannableStringBuilder;

    #@2c
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2e
    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@31
    .line 4018
    .local v2, "sp":Landroid/text/Spannable;
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@33
    if-eqz v6, :cond_2

    #@35
    .line 4019
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    #@38
    .line 4020
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3a
    iget-object v6, v6, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@3c
    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@3f
    .line 4023
    :cond_2
    iput-object v2, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@41
    .line 4028
    .end local v2    # "sp":Landroid/text/Spannable;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_3

    #@47
    if-ltz v4, :cond_3

    #@49
    if-ltz v0, :cond_3

    #@4b
    .line 4029
    const/4 v6, 0x1

    #@4c
    iput-boolean v6, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    #@4e
    .line 4032
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    #@51
    move-result-object v6

    #@52
    iput-object v6, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    #@54
    .line 4034
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@56
    if-eqz v6, :cond_4

    #@58
    .line 4035
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5a
    invoke-virtual {v6}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    #@5d
    move-result-object v6

    #@5e
    iput-object v6, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    #@60
    .line 4037
    :cond_4
    return-object v3

    #@61
    .line 4025
    :cond_5
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@63
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    iput-object v6, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@69
    goto :goto_0

    #@6a
    .line 4040
    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_6
    return-object v5
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    #@0
    .prologue
    .line 5290
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    #@3
    .line 5291
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    #@c
    .line 5289
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
    .line 9246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    #@3
    .line 9247
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 9248
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    #@c
    .line 9245
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    #@0
    .prologue
    .line 7901
    const/16 v0, 0x2000

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    #@5
    .line 7900
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 8185
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    #@4
    .line 8188
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    #@a
    .line 8192
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    if-eqz v0, :cond_1

    #@e
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@10
    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    #@12
    .line 8184
    :cond_1
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
    .line 7889
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 9
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x1

    #@3
    .line 9151
    const/4 v1, 0x0

    #@4
    .line 9152
    .local v1, "min":I
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@6
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v0

    #@a
    .line 9154
    .local v0, "max":I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 9155
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@13
    move-result v3

    #@14
    .line 9156
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@17
    move-result v2

    #@18
    .line 9158
    .local v2, "selEnd":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v5

    #@1c
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v1

    #@20
    .line 9159
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v5

    #@24
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    #@27
    move-result v0

    #@28
    .line 9162
    .end local v2    # "selEnd":I
    .end local v3    # "selStart":I
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@2b
    .line 9217
    return v8

    #@2c
    .line 9168
    :sswitch_0
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2e
    if-eqz v5, :cond_2

    #@30
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@32
    iget-object v5, v5, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@34
    if-eqz v5, :cond_2

    #@36
    const/4 v4, 0x1

    #@37
    .line 9169
    .local v4, "shouldRestartActionMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@3a
    .line 9170
    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    #@3d
    .line 9171
    if-eqz v4, :cond_1

    #@3f
    .line 9172
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@41
    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@44
    .line 9174
    :cond_1
    return v6

    #@45
    .line 9168
    .end local v4    # "shouldRestartActionMode":Z
    :cond_2
    const/4 v4, 0x0

    #@46
    .restart local v4    # "shouldRestartActionMode":Z
    goto :goto_0

    #@47
    .line 9177
    .end local v4    # "shouldRestartActionMode":Z
    :sswitch_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@49
    if-eqz v5, :cond_3

    #@4b
    .line 9178
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4d
    invoke-virtual {v5}, Landroid/widget/Editor;->undo()V

    #@50
    .line 9180
    :cond_3
    return v6

    #@51
    .line 9183
    :sswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@53
    if-eqz v5, :cond_4

    #@55
    .line 9184
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@57
    invoke-virtual {v5}, Landroid/widget/Editor;->redo()V

    #@5a
    .line 9186
    :cond_4
    return v6

    #@5b
    .line 9189
    :sswitch_3
    invoke-direct {p0, v1, v0, v6}, Landroid/widget/TextView;->paste(IIZ)V

    #@5e
    .line 9190
    return v6

    #@5f
    .line 9193
    :sswitch_4
    invoke-direct {p0, v1, v0, v8}, Landroid/widget/TextView;->paste(IIZ)V

    #@62
    .line 9194
    return v6

    #@63
    .line 9197
    :sswitch_5
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    #@66
    move-result-object v5

    #@67
    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@6a
    move-result-object v5

    #@6b
    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    #@6e
    .line 9198
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    #@71
    .line 9199
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@74
    .line 9200
    return v6

    #@75
    .line 9203
    :sswitch_6
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    #@78
    move-result-object v5

    #@79
    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    #@7c
    move-result-object v5

    #@7d
    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    #@80
    .line 9204
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@83
    .line 9205
    return v6

    #@84
    .line 9208
    :sswitch_7
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@86
    if-eqz v5, :cond_5

    #@88
    .line 9209
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8a
    invoke-virtual {v5}, Landroid/widget/Editor;->replace()V

    #@8d
    .line 9211
    :cond_5
    return v6

    #@8e
    .line 9214
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    #@91
    .line 9215
    return v6

    #@92
    .line 9162
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
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 8276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    .line 8278
    .local v0, "action":I
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    if-eqz v7, :cond_0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 8280
    iget-boolean v7, p0, Landroid/widget/TextView;->mFirstTouch:Z

    #@c
    if-eqz v7, :cond_2

    #@e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v8

    #@12
    iget-wide v10, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    #@14
    sub-long/2addr v8, v10

    #@15
    .line 8281
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    #@18
    move-result v7

    #@19
    int-to-long v10, v7

    #@1a
    .line 8280
    cmp-long v7, v8, v10

    #@1c
    if-gtz v7, :cond_2

    #@1e
    .line 8282
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@20
    const/4 v8, 0x1

    #@21
    iput-boolean v8, v7, Landroid/widget/Editor;->mDoubleTap:Z

    #@23
    .line 8283
    const/4 v7, 0x0

    #@24
    iput-boolean v7, p0, Landroid/widget/TextView;->mFirstTouch:Z

    #@26
    .line 8290
    :cond_0
    :goto_0
    const/4 v7, 0x1

    #@27
    if-ne v0, v7, :cond_1

    #@29
    .line 8291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2c
    move-result-wide v8

    #@2d
    iput-wide v8, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    #@2f
    .line 8294
    :cond_1
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@31
    if-eqz v7, :cond_3

    #@33
    .line 8295
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@35
    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    #@38
    .line 8297
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3a
    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@3c
    if-eqz v7, :cond_3

    #@3e
    .line 8298
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@40
    iget-object v7, v7, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    #@42
    invoke-virtual {v7}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    #@45
    move-result v7

    #@46
    .line 8297
    if-eqz v7, :cond_3

    #@48
    .line 8299
    const/4 v7, 0x1

    #@49
    return v7

    #@4a
    .line 8285
    :cond_2
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4c
    const/4 v8, 0x0

    #@4d
    iput-boolean v8, v7, Landroid/widget/Editor;->mDoubleTap:Z

    #@4f
    .line 8286
    const/4 v7, 0x1

    #@50
    iput-boolean v7, p0, Landroid/widget/TextView;->mFirstTouch:Z

    #@52
    goto :goto_0

    #@53
    .line 8303
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@56
    move-result v4

    #@57
    .line 8310
    .local v4, "superResult":Z
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@59
    if-eqz v7, :cond_5

    #@5b
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5d
    iget-boolean v7, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@5f
    if-eqz v7, :cond_5

    #@61
    const/4 v7, 0x1

    #@62
    if-ne v0, v7, :cond_5

    #@64
    .line 8311
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@66
    const/4 v8, 0x0

    #@67
    iput-boolean v8, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@69
    .line 8313
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6b
    iget-boolean v7, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    #@6d
    if-eqz v7, :cond_4

    #@6f
    .line 8314
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@71
    invoke-virtual {v7}, Landroid/widget/Editor;->startInsertionActionMode()V

    #@74
    .line 8315
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@76
    const/4 v8, 0x0

    #@77
    iput-boolean v8, v7, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    #@79
    .line 8317
    :cond_4
    return v4

    #@7a
    .line 8320
    :cond_5
    const/4 v7, 0x1

    #@7b
    if-ne v0, v7, :cond_6

    #@7d
    .line 8321
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7f
    if-eqz v7, :cond_d

    #@81
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@83
    iget-boolean v7, v7, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    #@85
    if-eqz v7, :cond_d

    #@87
    .line 8320
    :cond_6
    const/4 v6, 0x0

    #@88
    .line 8323
    :goto_1
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@8a
    if-nez v7, :cond_7

    #@8c
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    #@8f
    move-result v7

    #@90
    if-eqz v7, :cond_f

    #@92
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@95
    move-result v7

    #@96
    if-eqz v7, :cond_f

    #@98
    .line 8324
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@9a
    instance-of v7, v7, Landroid/text/Spannable;

    #@9c
    .line 8323
    if-eqz v7, :cond_f

    #@9e
    .line 8324
    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@a0
    if-eqz v7, :cond_f

    #@a2
    .line 8325
    const/4 v1, 0x0

    #@a3
    .line 8327
    .local v1, "handled":Z
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@a5
    if-eqz v7, :cond_8

    #@a7
    .line 8328
    iget-object v8, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@a9
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@ab
    check-cast v7, Landroid/text/Spannable;

    #@ad
    invoke-interface {v8, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    #@b0
    move-result v1

    #@b1
    .line 8331
    .end local v1    # "handled":Z
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@b4
    move-result v5

    #@b5
    .line 8332
    .local v5, "textIsSelectable":Z
    if-eqz v6, :cond_9

    #@b7
    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    #@b9
    if-eqz v7, :cond_9

    #@bb
    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@bd
    if-eqz v7, :cond_9

    #@bf
    if-eqz v5, :cond_9

    #@c1
    .line 8336
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@c3
    check-cast v7, Landroid/text/Spannable;

    #@c5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@c8
    move-result v8

    #@c9
    .line 8337
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@cc
    move-result v9

    #@cd
    const-class v10, Landroid/text/style/ClickableSpan;

    #@cf
    .line 8336
    invoke-interface {v7, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@d2
    move-result-object v3

    #@d3
    check-cast v3, [Landroid/text/style/ClickableSpan;

    #@d5
    .line 8339
    .local v3, "links":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    #@d6
    if-lez v7, :cond_9

    #@d8
    .line 8340
    const/4 v7, 0x0

    #@d9
    aget-object v7, v3, v7

    #@db
    invoke-virtual {v7, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    #@de
    .line 8341
    const/4 v1, 0x1

    #@df
    .line 8345
    .end local v3    # "links":[Landroid/text/style/ClickableSpan;
    :cond_9
    if-eqz v6, :cond_c

    #@e1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    #@e4
    move-result v7

    #@e5
    if-nez v7, :cond_a

    #@e7
    if-eqz v5, :cond_c

    #@e9
    .line 8347
    :cond_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@ec
    move-result-object v2

    #@ed
    .line 8348
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    #@f0
    .line 8349
    if-nez v5, :cond_b

    #@f2
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@f4
    iget-boolean v7, v7, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@f6
    if-eqz v7, :cond_b

    #@f8
    .line 8350
    if-eqz v2, :cond_e

    #@fa
    const/4 v7, 0x0

    #@fb
    invoke-virtual {v2, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@fe
    move-result v7

    #@ff
    :goto_2
    or-int/2addr v1, v7

    #@100
    .line 8354
    :cond_b
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@102
    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    #@105
    .line 8356
    const/4 v1, 0x1

    #@106
    .line 8359
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    if-eqz v1, :cond_f

    #@108
    .line 8360
    const/4 v7, 0x1

    #@109
    return v7

    #@10a
    .line 8321
    .end local v5    # "textIsSelectable":Z
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@10d
    move-result v6

    #@10e
    .local v6, "touchIsFinished":Z
    goto/16 :goto_1

    #@110
    .line 8350
    .end local v6    # "touchIsFinished":Z
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v5    # "textIsSelectable":Z
    :cond_e
    const/4 v7, 0x0

    #@111
    goto :goto_2

    #@112
    .line 8364
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v5    # "textIsSelectable":Z
    :cond_f
    return v4
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 8409
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
    .line 8410
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
    .line 8411
    const/4 v0, 0x1

    #@1b
    return v0

    #@1c
    .line 8415
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
    .line 8241
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    .line 8242
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    if-eqz p2, :cond_0

    #@9
    .line 8243
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b
    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@e
    .line 8244
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@11
    .line 8240
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    .line 8232
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    #@3
    .line 8234
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    #@c
    .line 8236
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    #@f
    .line 8231
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 8985
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 8986
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@9
    iget-object v5, v5, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@b
    invoke-virtual {v5, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    #@e
    move-result v5

    #@f
    .line 8985
    if-eqz v5, :cond_0

    #@11
    .line 8987
    return v7

    #@12
    .line 8989
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@15
    .line 9077
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@18
    move-result v5

    #@19
    return v5

    #@1a
    .line 8991
    :sswitch_0
    const/4 v1, 0x0

    #@1b
    .line 8994
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_1

    #@21
    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_3

    #@27
    .line 8995
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_2

    #@2d
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_7

    #@33
    .line 8999
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    #@36
    .line 9000
    const/4 v1, 0x1

    #@37
    .line 9004
    :cond_3
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@39
    if-nez v5, :cond_4

    #@3b
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_6

    #@41
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_6

    #@47
    .line 9005
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@49
    instance-of v5, v5, Landroid/text/Spannable;

    #@4b
    .line 9004
    if-eqz v5, :cond_6

    #@4d
    .line 9005
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4f
    if-eqz v5, :cond_6

    #@51
    .line 9006
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    #@54
    move-result v5

    #@55
    if-nez v5, :cond_5

    #@57
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@5a
    move-result v5

    #@5b
    .line 9004
    if-eqz v5, :cond_6

    #@5d
    .line 9006
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@60
    move-result v5

    #@61
    .line 9004
    if-eqz v5, :cond_6

    #@63
    .line 9008
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@66
    move-result-object v2

    #@67
    .line 9009
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    #@6a
    .line 9010
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    #@6d
    move-result v5

    #@6e
    if-nez v5, :cond_6

    #@70
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@72
    iget-boolean v5, v5, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@74
    if-eqz v5, :cond_6

    #@76
    if-eqz v2, :cond_6

    #@78
    .line 9011
    invoke-virtual {v2, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@7b
    move-result v5

    #@7c
    or-int/2addr v1, v5

    #@7d
    .line 9015
    .end local v1    # "handled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    return v1

    #@7e
    .line 8996
    .restart local v1    # "handled":Z
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    #@81
    goto :goto_0

    #@82
    .line 9018
    .end local v1    # "handled":Z
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@85
    move-result v5

    #@86
    if-eqz v5, :cond_8

    #@88
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    #@8b
    move-result v5

    #@8c
    if-eqz v5, :cond_8

    #@8e
    .line 9019
    const v5, 0x1020021

    #@91
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@94
    move-result v5

    #@95
    if-eqz v5, :cond_8

    #@97
    .line 9020
    return v7

    #@98
    .line 9023
    :cond_8
    return v6

    #@99
    .line 9025
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@9c
    move-result v5

    #@9d
    if-eqz v5, :cond_9

    #@9f
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    #@a2
    move-result v5

    #@a3
    if-eqz v5, :cond_9

    #@a5
    .line 9026
    const v5, 0x1020022

    #@a8
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@ab
    move-result v5

    #@ac
    if-eqz v5, :cond_9

    #@ae
    .line 9027
    return v7

    #@af
    .line 9030
    :cond_9
    return v6

    #@b0
    .line 9032
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@b3
    move-result v5

    #@b4
    if-eqz v5, :cond_a

    #@b6
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    #@b9
    move-result v5

    #@ba
    if-eqz v5, :cond_a

    #@bc
    .line 9033
    const v5, 0x1020020

    #@bf
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@c2
    move-result v5

    #@c3
    if-eqz v5, :cond_a

    #@c5
    .line 9034
    return v7

    #@c6
    .line 9037
    :cond_a
    return v6

    #@c7
    .line 9039
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    #@ca
    .line 9040
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    #@cd
    move-result-object v4

    #@ce
    .line 9041
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_b

    #@d0
    .line 9042
    return v6

    #@d1
    .line 9044
    :cond_b
    if-eqz p2, :cond_d

    #@d3
    .line 9045
    const-string/jumbo v5, "ACTION_ARGUMENT_SELECTION_START_INT"

    #@d6
    .line 9044
    invoke-virtual {p2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@d9
    move-result v3

    #@da
    .line 9046
    .local v3, "start":I
    :goto_1
    if-eqz p2, :cond_e

    #@dc
    .line 9047
    const-string/jumbo v5, "ACTION_ARGUMENT_SELECTION_END_INT"

    #@df
    .line 9046
    invoke-virtual {p2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@e2
    move-result v0

    #@e3
    .line 9048
    .local v0, "end":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@e6
    move-result v5

    #@e7
    if-ne v5, v3, :cond_c

    #@e9
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@ec
    move-result v5

    #@ed
    if-eq v5, v0, :cond_11

    #@ef
    .line 9050
    :cond_c
    if-ne v3, v0, :cond_f

    #@f1
    if-ne v0, v8, :cond_f

    #@f3
    .line 9051
    check-cast v4, Landroid/text/Spannable;

    #@f5
    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    #@f8
    .line 9052
    return v7

    #@f9
    .line 9045
    .end local v0    # "end":I
    .end local v3    # "start":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_d
    const/4 v3, -0x1

    #@fa
    .restart local v3    # "start":I
    goto :goto_1

    #@fb
    .line 9047
    :cond_e
    const/4 v0, -0x1

    #@fc
    .restart local v0    # "end":I
    goto :goto_2

    #@fd
    .line 9054
    :cond_f
    if-ltz v3, :cond_11

    #@ff
    if-gt v3, v0, :cond_11

    #@101
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@104
    move-result v5

    #@105
    if-gt v0, v5, :cond_11

    #@107
    .line 9055
    check-cast v4, Landroid/text/Spannable;

    #@109
    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@10c
    .line 9057
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@10e
    if-eqz v5, :cond_10

    #@110
    .line 9058
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@112
    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    #@115
    .line 9060
    :cond_10
    return v7

    #@116
    .line 9063
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_11
    return v6

    #@117
    .line 9066
    .end local v0    # "end":I
    .end local v3    # "start":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    #@11a
    .line 9067
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@11d
    move-result v5

    #@11e
    return v5

    #@11f
    .line 9070
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@122
    move-result v5

    #@123
    if-eqz v5, :cond_12

    #@125
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    #@128
    move-result v5

    #@129
    if-eqz v5, :cond_12

    #@12b
    .line 9071
    const v5, 0x1020035

    #@12e
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    #@131
    move-result v5

    #@132
    if-eqz v5, :cond_12

    #@134
    .line 9072
    return v7

    #@135
    .line 9075
    :cond_12
    return v6

    #@136
    .line 8989
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x100 -> :sswitch_5
        0x200 -> :sswitch_5
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_4
        0x10000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 3

    #@0
    .prologue
    .line 9226
    const/4 v0, 0x0

    #@1
    .line 9228
    .local v0, "handled":Z
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 9229
    const/4 v0, 0x1

    #@8
    .line 9232
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 9233
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@e
    invoke-virtual {v1, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    #@11
    move-result v1

    #@12
    or-int/2addr v0, v1

    #@13
    .line 9236
    .end local v0    # "handled":Z
    :cond_1
    if-eqz v0, :cond_2

    #@15
    .line 9237
    const/4 v1, 0x0

    #@16
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    #@19
    .line 9238
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1f
    const/4 v2, 0x1

    #@20
    iput-boolean v2, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    #@22
    .line 9241
    :cond_2
    return v0
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 7966
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    instance-of v6, v6, Landroid/text/Editable;

    #@4
    if-nez v6, :cond_0

    #@6
    return-void

    #@7
    .line 7967
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@9
    check-cast v5, Landroid/text/Editable;

    #@b
    .line 7969
    .local v5, "text":Landroid/text/Editable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    #@d
    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, [Landroid/text/style/SuggestionSpan;

    #@13
    .line 7970
    .local v4, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v1, v4

    #@14
    .line 7971
    .local v1, "length":I
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@17
    .line 7972
    aget-object v6, v4, v0

    #@19
    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@1c
    move-result v3

    #@1d
    .line 7973
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    #@1f
    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@22
    move-result v2

    #@23
    .line 7974
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_1

    #@25
    if-ne v3, p1, :cond_2

    #@27
    .line 7975
    :cond_1
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_2

    #@2d
    .line 7976
    aget-object v6, v4, v0

    #@2f
    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@32
    .line 7971
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 7965
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
    .line 4044
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    #@4
    move-result v3

    #@5
    .line 4045
    const-class v4, Landroid/text/style/SuggestionSpan;

    #@7
    .line 4044
    invoke-interface {p1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, [Landroid/text/style/SuggestionSpan;

    #@d
    .line 4046
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@f
    if-ge v1, v3, :cond_1

    #@11
    .line 4047
    aget-object v3, v2, v1

    #@13
    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@16
    move-result v0

    #@17
    .line 4048
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 4049
    and-int/lit8 v3, v0, 0x2

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 4050
    aget-object v3, v2, v1

    #@21
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@24
    .line 4046
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 4043
    .end local v0    # "flags":I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4484
    instance-of v3, p1, Landroid/text/Spanned;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 4486
    instance-of v3, p1, Landroid/text/Spannable;

    #@6
    if-eqz v3, :cond_0

    #@8
    move-object v1, p1

    #@9
    .line 4487
    check-cast v1, Landroid/text/Spannable;

    #@b
    .line 4493
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
    .line 4494
    .local v2, "spans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_1
    array-length v3, v2

    #@1a
    if-ge v0, v3, :cond_1

    #@1c
    .line 4495
    aget-object v3, v2, v0

    #@1e
    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@21
    .line 4494
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_1

    #@24
    .line 4489
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    #@26
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@29
    .line 4490
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    #@2a
    goto :goto_0

    #@2b
    .line 4498
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    #@0
    .prologue
    .line 7927
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 7928
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    .line 7930
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@c
    .line 7931
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@11
    .line 7926
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 9452
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
    .line 9451
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 9678
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    check-cast v0, Landroid/text/Editable;

    #@4
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@7
    .line 9677
    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    #@0
    .prologue
    .line 6149
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
    .line 6142
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    #@0
    .prologue
    .line 9652
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    #@3
    .line 9653
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    #@6
    .line 9651
    return-void
.end method

.method selectAllText()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 9443
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 9444
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    invoke-virtual {v1}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    #@a
    .line 9446
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@c
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result v0

    #@10
    .line 9447
    .local v0, "length":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@12
    check-cast v1, Landroid/text/Spannable;

    #@14
    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@17
    .line 9448
    if-lez v0, :cond_1

    #@19
    const/4 v1, 0x1

    #@1a
    :goto_0
    return v1

    #@1b
    :cond_1
    move v1, v2

    #@1c
    goto :goto_0
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 9085
    const v0, 0x8000

    #@3
    if-ne p1, v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 9086
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@b
    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    #@d
    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    #@10
    .line 9092
    :cond_0
    const/16 v0, 0x1000

    #@12
    if-ne p1, v0, :cond_1

    #@14
    .line 9093
    return-void

    #@15
    .line 9095
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    #@18
    .line 9084
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
    .line 9116
    const/16 v1, 0x10

    #@2
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    #@5
    move-result-object v0

    #@6
    .line 9117
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    #@9
    .line 9118
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    #@c
    .line 9119
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    #@f
    .line 9120
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    #@12
    .line 9121
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    #@15
    .line 9114
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 8003
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 8004
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@6
    .line 8005
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 8006
    .local v0, "count":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@d
    .line 8007
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/text/TextWatcher;

    #@13
    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    #@16
    .line 8006
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 8010
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    #@1c
    .line 8002
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
    .line 7987
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 7988
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    #@6
    .line 7989
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 7990
    .local v0, "count":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@d
    .line 7991
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/text/TextWatcher;

    #@13
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@16
    .line 7990
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 7995
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
    .line 7986
    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 9785
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    #@3
    move-result v1

    #@4
    if-ne v1, p1, :cond_0

    #@6
    .line 9786
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    #@9
    move-result v1

    #@a
    if-ne v1, p2, :cond_0

    #@c
    .line 9787
    return-void

    #@d
    .line 9792
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 9793
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@13
    invoke-virtual {v1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@16
    .line 9794
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@18
    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    #@1b
    .line 9796
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    #@1e
    move-result-object v0

    #@1f
    .line 9797
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@22
    move-result v1

    #@23
    if-ltz v1, :cond_2

    #@25
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v1

    #@29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@2c
    move-result v2

    #@2d
    if-gt v1, v2, :cond_2

    #@2f
    .line 9798
    check-cast v0, Landroid/text/Spannable;

    #@31
    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@34
    .line 9784
    :goto_0
    return-void

    #@35
    .line 9800
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
    .line 7641
    if-eqz p1, :cond_0

    #@2
    .line 7642
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
    .line 7640
    :goto_0
    return-void

    #@f
    .line 7644
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
    .line 3313
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    #@2
    .line 3312
    return-void
.end method

.method public setBreakStrategy(I)V
    .locals 1
    .param p1, "breakStrategy"    # I

    #@0
    .prologue
    .line 3049
    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    #@2
    .line 3050
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3051
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@9
    .line 3052
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3053
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3048
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
    .line 2543
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    .line 2544
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    #@4
    .line 2545
    if-eqz v0, :cond_0

    #@6
    .line 2546
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@8
    .line 2555
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 2556
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@e
    .line 2542
    return-void

    #@f
    .line 2549
    :cond_1
    if-nez v0, :cond_2

    #@11
    .line 2550
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
    .line 2552
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
    .line 2586
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2587
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
    .line 2589
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@11
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    #@13
    .line 2590
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@15
    const/4 v1, 0x1

    #@16
    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    #@18
    .line 2592
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    #@1b
    .line 2585
    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 2616
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2617
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
    .line 2619
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@11
    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@13
    .line 2620
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@15
    const/4 v1, 0x1

    #@16
    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    #@18
    .line 2622
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    #@1b
    .line 2615
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
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    .line 2112
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7
    .line 2115
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    #@9
    .line 2116
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v5, :cond_0

    #@d
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@12
    .line 2117
    :cond_0
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@14
    .line 2118
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@16
    if-eqz v5, :cond_1

    #@18
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1d
    .line 2119
    :cond_1
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@1f
    .line 2120
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@21
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@23
    .line 2121
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@25
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@27
    .line 2124
    :cond_2
    if-nez p1, :cond_3

    #@29
    if-eqz p2, :cond_6

    #@2b
    :cond_3
    const/4 v2, 0x1

    #@2c
    .line 2125
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_a

    #@2e
    .line 2127
    if-eqz v1, :cond_4

    #@30
    .line 2128
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@32
    if-nez v5, :cond_7

    #@34
    .line 2129
    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@36
    .line 2219
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    #@38
    .line 2220
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    #@3a
    .line 2221
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    #@3c
    .line 2224
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@3f
    .line 2225
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@42
    .line 2226
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    #@45
    .line 2227
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@48
    .line 2228
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@4b
    .line 2111
    return-void

    #@4c
    .line 2124
    .end local v2    # "drawables":Z
    :cond_6
    if-nez p3, :cond_3

    #@4e
    if-nez p4, :cond_3

    #@50
    const/4 v2, 0x0

    #@51
    .restart local v2    # "drawables":Z
    goto :goto_0

    #@52
    .line 2133
    :cond_7
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@54
    array-length v5, v5

    #@55
    add-int/lit8 v3, v5, -0x1

    #@57
    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    #@59
    .line 2134
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@5b
    aget-object v5, v5, v3

    #@5d
    if-eqz v5, :cond_8

    #@5f
    .line 2135
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@61
    aget-object v5, v5, v3

    #@63
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@66
    .line 2137
    :cond_8
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@68
    aput-object v6, v5, v3

    #@6a
    .line 2133
    add-int/lit8 v3, v3, -0x1

    #@6c
    goto :goto_2

    #@6d
    .line 2139
    :cond_9
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@6f
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@71
    .line 2140
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@73
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@75
    .line 2141
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@77
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@79
    .line 2142
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@7b
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@7d
    goto :goto_1

    #@7e
    .line 2146
    .end local v3    # "i":I
    :cond_a
    if-nez v1, :cond_b

    #@80
    .line 2147
    new-instance v1, Landroid/widget/TextView$Drawables;

    #@82
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@85
    move-result-object v5

    #@86
    invoke-direct {v1, v5}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@89
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@8b
    .line 2150
    :cond_b
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@8d
    iput-boolean v7, v5, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@8f
    .line 2152
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@91
    aget-object v5, v5, v7

    #@93
    if-eq v5, p1, :cond_c

    #@95
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@97
    aget-object v5, v5, v7

    #@99
    if-eqz v5, :cond_c

    #@9b
    .line 2153
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@9d
    aget-object v5, v5, v7

    #@9f
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a2
    .line 2155
    :cond_c
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@a4
    aput-object p1, v5, v7

    #@a6
    .line 2157
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@a8
    aget-object v5, v5, v8

    #@aa
    if-eq v5, p2, :cond_d

    #@ac
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@ae
    aget-object v5, v5, v8

    #@b0
    if-eqz v5, :cond_d

    #@b2
    .line 2158
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@b4
    aget-object v5, v5, v8

    #@b6
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@b9
    .line 2160
    :cond_d
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@bb
    aput-object p2, v5, v8

    #@bd
    .line 2162
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@bf
    aget-object v5, v5, v9

    #@c1
    if-eq v5, p3, :cond_e

    #@c3
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@c5
    aget-object v5, v5, v9

    #@c7
    if-eqz v5, :cond_e

    #@c9
    .line 2163
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@cb
    aget-object v5, v5, v9

    #@cd
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@d0
    .line 2165
    :cond_e
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@d2
    aput-object p3, v5, v9

    #@d4
    .line 2167
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@d6
    aget-object v5, v5, v10

    #@d8
    if-eq v5, p4, :cond_f

    #@da
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@dc
    aget-object v5, v5, v10

    #@de
    if-eqz v5, :cond_f

    #@e0
    .line 2168
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@e2
    aget-object v5, v5, v10

    #@e4
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e7
    .line 2170
    :cond_f
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@e9
    aput-object p4, v5, v10

    #@eb
    .line 2172
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@ed
    .line 2175
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@f0
    move-result-object v4

    #@f1
    .line 2177
    .local v4, "state":[I
    if-eqz p1, :cond_10

    #@f3
    .line 2178
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@f6
    .line 2179
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@f9
    .line 2180
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@fc
    .line 2181
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@ff
    move-result v5

    #@100
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@102
    .line 2182
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@105
    move-result v5

    #@106
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@108
    .line 2187
    :goto_3
    if-eqz p3, :cond_11

    #@10a
    .line 2188
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@10d
    .line 2189
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@110
    .line 2190
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@113
    .line 2191
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@116
    move-result v5

    #@117
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@119
    .line 2192
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@11c
    move-result v5

    #@11d
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@11f
    .line 2197
    :goto_4
    if-eqz p2, :cond_12

    #@121
    .line 2198
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@124
    .line 2199
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@127
    .line 2200
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@12a
    .line 2201
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@12d
    move-result v5

    #@12e
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@130
    .line 2202
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@133
    move-result v5

    #@134
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@136
    .line 2207
    :goto_5
    if-eqz p4, :cond_13

    #@138
    .line 2208
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@13b
    .line 2209
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@13e
    .line 2210
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@141
    .line 2211
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@144
    move-result v5

    #@145
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@147
    .line 2212
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@14a
    move-result v5

    #@14b
    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@14d
    goto/16 :goto_1

    #@14f
    .line 2184
    :cond_10
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@151
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@153
    goto :goto_3

    #@154
    .line 2194
    :cond_11
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@156
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@158
    goto :goto_4

    #@159
    .line 2204
    :cond_12
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@15b
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@15d
    goto :goto_5

    #@15e
    .line 2214
    :cond_13
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@160
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@162
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
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    .line 2309
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@7
    .line 2312
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    #@9
    .line 2313
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@b
    aget-object v4, v4, v6

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 2314
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@11
    aget-object v4, v4, v6

    #@13
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@16
    .line 2316
    :cond_0
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@18
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    #@1a
    aput-object v5, v4, v6

    #@1c
    .line 2317
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@1e
    aget-object v4, v4, v9

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 2318
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@24
    aget-object v4, v4, v9

    #@26
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@29
    .line 2320
    :cond_1
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@2b
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    #@2d
    aput-object v5, v4, v9

    #@2f
    .line 2321
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    #@31
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    #@33
    .line 2322
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    #@35
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    #@37
    .line 2325
    :cond_2
    if-nez p1, :cond_3

    #@39
    if-eqz p2, :cond_5

    #@3b
    :cond_3
    const/4 v2, 0x1

    #@3c
    .line 2328
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_c

    #@3e
    .line 2330
    if-eqz v1, :cond_4

    #@40
    .line 2331
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    #@42
    if-nez v4, :cond_7

    #@44
    .line 2332
    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@46
    .line 2429
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    #@49
    .line 2430
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    #@4c
    .line 2431
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@4f
    .line 2432
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@52
    .line 2308
    return-void

    #@53
    .line 2326
    .end local v2    # "drawables":Z
    :cond_5
    if-nez p3, :cond_3

    #@55
    if-eqz p4, :cond_6

    #@57
    const/4 v2, 0x1

    #@58
    .restart local v2    # "drawables":Z
    goto :goto_0

    #@59
    .end local v2    # "drawables":Z
    :cond_6
    const/4 v2, 0x0

    #@5a
    .restart local v2    # "drawables":Z
    goto :goto_0

    #@5b
    .line 2336
    :cond_7
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@5d
    if-eqz v4, :cond_8

    #@5f
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@61
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@64
    .line 2337
    :cond_8
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@66
    .line 2338
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@68
    aget-object v4, v4, v7

    #@6a
    if-eqz v4, :cond_9

    #@6c
    .line 2339
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@6e
    aget-object v4, v4, v7

    #@70
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@73
    .line 2341
    :cond_9
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@75
    aput-object v5, v4, v7

    #@77
    .line 2342
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@79
    if-eqz v4, :cond_a

    #@7b
    .line 2343
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@7d
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@80
    .line 2345
    :cond_a
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@82
    .line 2346
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@84
    aget-object v4, v4, v8

    #@86
    if-eqz v4, :cond_b

    #@88
    .line 2347
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@8a
    aget-object v4, v4, v8

    #@8c
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@8f
    .line 2349
    :cond_b
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@91
    aput-object v5, v4, v8

    #@93
    .line 2350
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@95
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@97
    .line 2351
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@99
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@9b
    .line 2352
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@9d
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@9f
    .line 2353
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@a1
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@a3
    goto :goto_1

    #@a4
    .line 2357
    :cond_c
    if-nez v1, :cond_d

    #@a6
    .line 2358
    new-instance v1, Landroid/widget/TextView$Drawables;

    #@a8
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@ab
    move-result-object v4

    #@ac
    invoke-direct {v1, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    #@af
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@b1
    .line 2361
    :cond_d
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@b3
    iput-boolean v7, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    #@b5
    .line 2363
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@b7
    if-eq v4, p1, :cond_e

    #@b9
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@bb
    if-eqz v4, :cond_e

    #@bd
    .line 2364
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@bf
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@c2
    .line 2366
    :cond_e
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    #@c4
    .line 2368
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@c6
    aget-object v4, v4, v7

    #@c8
    if-eq v4, p2, :cond_f

    #@ca
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@cc
    aget-object v4, v4, v7

    #@ce
    if-eqz v4, :cond_f

    #@d0
    .line 2369
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@d2
    aget-object v4, v4, v7

    #@d4
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@d7
    .line 2371
    :cond_f
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@d9
    aput-object p2, v4, v7

    #@db
    .line 2373
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@dd
    if-eq v4, p3, :cond_10

    #@df
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@e1
    if-eqz v4, :cond_10

    #@e3
    .line 2374
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@e5
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e8
    .line 2376
    :cond_10
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    #@ea
    .line 2378
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@ec
    aget-object v4, v4, v8

    #@ee
    if-eq v4, p4, :cond_11

    #@f0
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@f2
    aget-object v4, v4, v8

    #@f4
    if-eqz v4, :cond_11

    #@f6
    .line 2379
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@f8
    aget-object v4, v4, v8

    #@fa
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@fd
    .line 2381
    :cond_11
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    #@ff
    aput-object p4, v4, v8

    #@101
    .line 2383
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    #@103
    .line 2386
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    #@106
    move-result-object v3

    #@107
    .line 2388
    .local v3, "state":[I
    if-eqz p1, :cond_12

    #@109
    .line 2389
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@10c
    .line 2390
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@10f
    .line 2391
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@112
    .line 2392
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@115
    move-result v4

    #@116
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@118
    .line 2393
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@11b
    move-result v4

    #@11c
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@11e
    .line 2398
    :goto_2
    if-eqz p3, :cond_13

    #@120
    .line 2399
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@123
    .line 2400
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@126
    .line 2401
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@129
    .line 2402
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@12c
    move-result v4

    #@12d
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@12f
    .line 2403
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@132
    move-result v4

    #@133
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@135
    .line 2408
    :goto_3
    if-eqz p2, :cond_14

    #@137
    .line 2409
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@13a
    .line 2410
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@13d
    .line 2411
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@140
    .line 2412
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@143
    move-result v4

    #@144
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@146
    .line 2413
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@149
    move-result v4

    #@14a
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@14c
    .line 2418
    :goto_4
    if-eqz p4, :cond_15

    #@14e
    .line 2419
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@151
    .line 2420
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@154
    .line 2421
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@157
    .line 2422
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@15a
    move-result v4

    #@15b
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@15d
    .line 2423
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@160
    move-result v4

    #@161
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@163
    goto/16 :goto_1

    #@165
    .line 2395
    :cond_12
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    #@167
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    #@169
    goto :goto_2

    #@16a
    .line 2405
    :cond_13
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    #@16c
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    #@16e
    goto :goto_3

    #@16f
    .line 2415
    :cond_14
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    #@171
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    #@173
    goto :goto_4

    #@174
    .line 2425
    :cond_15
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    #@176
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    #@178
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
    .line 2456
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 2458
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v2

    #@b
    move-object v4, v2

    #@c
    .line 2459
    :goto_0
    if-eqz p2, :cond_2

    #@e
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v2

    #@12
    move-object v3, v2

    #@13
    .line 2460
    :goto_1
    if-eqz p3, :cond_3

    #@15
    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v2

    #@19
    .line 2461
    :goto_2
    if-eqz p4, :cond_0

    #@1b
    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v1

    #@1f
    .line 2457
    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 2455
    return-void

    #@23
    :cond_1
    move-object v4, v1

    #@24
    .line 2458
    goto :goto_0

    #@25
    :cond_2
    move-object v3, v1

    #@26
    .line 2459
    goto :goto_1

    #@27
    :cond_3
    move-object v2, v1

    #@28
    .line 2460
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
    .line 2481
    if-eqz p1, :cond_0

    #@3
    .line 2482
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
    .line 2484
    :cond_0
    if-eqz p3, :cond_1

    #@10
    .line 2485
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
    .line 2487
    :cond_1
    if-eqz p2, :cond_2

    #@1d
    .line 2488
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
    .line 2490
    :cond_2
    if-eqz p4, :cond_3

    #@2a
    .line 2491
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
    .line 2493
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@38
    .line 2479
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
    .line 2252
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 2253
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v2

    #@b
    move-object v4, v2

    #@c
    .line 2254
    :goto_0
    if-eqz p2, :cond_2

    #@e
    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v2

    #@12
    move-object v3, v2

    #@13
    .line 2255
    :goto_1
    if-eqz p3, :cond_3

    #@15
    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v2

    #@19
    .line 2256
    :goto_2
    if-eqz p4, :cond_0

    #@1b
    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v1

    #@1f
    .line 2253
    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@22
    .line 2251
    return-void

    #@23
    :cond_1
    move-object v4, v1

    #@24
    .line 2253
    goto :goto_0

    #@25
    :cond_2
    move-object v3, v1

    #@26
    .line 2254
    goto :goto_1

    #@27
    :cond_3
    move-object v2, v1

    #@28
    .line 2255
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
    .line 2277
    if-eqz p1, :cond_0

    #@3
    .line 2278
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
    .line 2280
    :cond_0
    if-eqz p3, :cond_1

    #@10
    .line 2281
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
    .line 2283
    :cond_1
    if-eqz p2, :cond_2

    #@1d
    .line 2284
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
    .line 2286
    :cond_2
    if-eqz p4, :cond_3

    #@2a
    .line 2287
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
    .line 2289
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@38
    .line 2275
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 9694
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    check-cast v0, Landroid/text/Editable;

    #@4
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@7
    .line 9693
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 7790
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 7791
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a
    .line 7792
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    #@e
    if-eq v0, p1, :cond_1

    #@10
    .line 7793
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@12
    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    #@14
    .line 7794
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@17
    .line 7796
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@19
    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    #@1c
    .line 7799
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1e
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@21
    .line 7789
    :cond_1
    return-void
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 9353
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 9354
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    #@7
    .line 9352
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    #@0
    .prologue
    .line 9316
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 9317
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    #@7
    .line 9315
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    #@0
    .prologue
    .line 4149
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    #@2
    .line 4150
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7
    .line 4148
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1
    .param p1, "elegant"    # Z

    #@0
    .prologue
    .line 2992
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    #@5
    .line 2991
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    #@0
    .prologue
    .line 7717
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 7718
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@6
    .line 7720
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 7721
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@d
    .line 7722
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@10
    .line 7723
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@13
    .line 7715
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
    .line 3830
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    #@3
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@5
    .line 3831
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@7
    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@9
    .line 3833
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3834
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3829
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1552
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    #@3
    move-result v1

    #@4
    if-ne p1, v1, :cond_0

    #@6
    .line 1553
    return-void

    #@7
    .line 1556
    :cond_0
    if-nez p1, :cond_1

    #@9
    .line 1558
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@c
    move-result-object v0

    #@d
    .line 1559
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    #@f
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1560
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1d
    .line 1564
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@20
    .line 1566
    if-eqz p1, :cond_2

    #@22
    .line 1568
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@25
    move-result-object v0

    #@26
    .line 1569
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    #@28
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    #@2b
    .line 1573
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2d
    if-eqz v1, :cond_3

    #@2f
    .line 1574
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@31
    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    #@34
    .line 1575
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@36
    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@39
    .line 1578
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@3b
    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    #@3e
    .line 1551
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
    .line 4911
    if-nez p1, :cond_0

    #@4
    .line 4912
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@7
    .line 4910
    :goto_0
    return-void

    #@8
    .line 4914
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    .line 4915
    const v2, 0x1080441

    #@f
    .line 4914
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v0

    #@13
    .line 4917
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
    .line 4918
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
    .line 4932
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4933
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 4935
    const/4 v0, 0x0

    #@9
    .line 4934
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@c
    .line 4931
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    #@0
    .prologue
    .line 6349
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    #@3
    move-result-object v4

    #@4
    .line 6350
    .local v4, "content":Landroid/text/Editable;
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 6351
    if-nez v4, :cond_3

    #@a
    .line 6352
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@c
    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    #@e
    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@11
    .line 6382
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@14
    move-result-object v7

    #@15
    check-cast v7, Landroid/text/Spannable;

    #@17
    .line 6383
    .local v7, "sp":Landroid/text/Spannable;
    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    #@1a
    move-result v6

    #@1b
    .line 6384
    .local v6, "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    #@1d
    .line 6385
    .local v1, "start":I
    if-gez v1, :cond_7

    #@1f
    const/4 v1, 0x0

    #@20
    .line 6387
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    #@22
    .line 6388
    .local v2, "end":I
    if-gez v2, :cond_8

    #@24
    const/4 v2, 0x0

    #@25
    .line 6390
    :cond_2
    :goto_2
    invoke-static {v7, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@28
    .line 6393
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    #@2a
    and-int/lit8 v0, v0, 0x2

    #@2c
    if-eqz v0, :cond_9

    #@2e
    .line 6394
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    #@31
    .line 6348
    :goto_3
    return-void

    #@32
    .line 6354
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v6    # "N":I
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_3
    const/4 v1, 0x0

    #@33
    .line 6355
    .restart local v1    # "start":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    #@36
    move-result v2

    #@37
    .line 6357
    .restart local v2    # "end":I
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@39
    if-ltz v0, :cond_5

    #@3b
    .line 6358
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    #@3e
    move-result v6

    #@3f
    .line 6359
    .restart local v6    # "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    #@41
    .line 6360
    if-le v1, v6, :cond_4

    #@43
    move v1, v6

    #@44
    .line 6361
    :cond_4
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    #@46
    .line 6362
    if-le v2, v6, :cond_5

    #@48
    move v2, v6

    #@49
    .line 6365
    .end local v6    # "N":I
    :cond_5
    invoke-static {v4, v1, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    #@4c
    .line 6366
    invoke-interface {v4, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    #@4f
    move-result-object v0

    #@50
    iget-object v3, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@52
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_6

    #@58
    .line 6367
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@5a
    instance-of v0, v0, Landroid/text/Spanned;

    #@5c
    if-eqz v0, :cond_0

    #@5e
    .line 6369
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@60
    check-cast v0, Landroid/text/Spanned;

    #@62
    .line 6370
    const-class v3, Ljava/lang/Object;

    #@64
    move v5, v1

    #@65
    .line 6369
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    #@68
    goto :goto_0

    #@69
    .line 6373
    :cond_6
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    #@6b
    invoke-interface {v4, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@6e
    goto :goto_0

    #@6f
    .line 6386
    .end local v2    # "end":I
    .restart local v6    # "N":I
    .restart local v7    # "sp":Landroid/text/Spannable;
    :cond_7
    if-le v1, v6, :cond_1

    #@71
    move v1, v6

    #@72
    goto :goto_1

    #@73
    .line 6389
    .restart local v2    # "end":I
    :cond_8
    if-le v2, v6, :cond_2

    #@75
    move v2, v6

    #@76
    goto :goto_2

    #@77
    .line 6396
    :cond_9
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    #@7a
    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .param p1, "req"    # Landroid/view/inputmethod/ExtractedTextRequest;

    #@0
    .prologue
    .line 6404
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 6405
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8
    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@a
    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    #@c
    .line 6410
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@e
    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    #@11
    .line 6411
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    #@14
    .line 6403
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    #@0
    .prologue
    .line 4963
    if-nez p1, :cond_0

    #@2
    .line 4964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 4967
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    #@a
    .line 4969
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@c
    instance-of v0, v0, Landroid/text/Editable;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 4970
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@12
    check-cast v0, Landroid/text/Editable;

    #@14
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    #@17
    .line 4962
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
    .line 3108
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 3109
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    #@d
    .line 3111
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3112
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@14
    .line 3113
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@17
    .line 3114
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1a
    .line 3107
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
    .line 4940
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    #@3
    move-result v0

    #@4
    .line 4942
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    #@d
    .line 4944
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    #@10
    .line 4946
    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4128
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    #@2
    .line 4127
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .param p1, "gravity"    # I

    #@0
    .prologue
    const v4, 0x800007

    #@3
    .line 3462
    and-int v0, p1, v4

    #@5
    if-nez v0, :cond_0

    #@7
    .line 3463
    const v0, 0x800003

    #@a
    or-int/2addr p1, v0

    #@b
    .line 3465
    :cond_0
    and-int/lit8 v0, p1, 0x70

    #@d
    if-nez v0, :cond_1

    #@f
    .line 3466
    or-int/lit8 p1, p1, 0x30

    #@11
    .line 3469
    :cond_1
    const/4 v7, 0x0

    #@12
    .line 3471
    .local v7, "newLayout":Z
    and-int v0, p1, v4

    #@14
    .line 3472
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    #@16
    and-int/2addr v3, v4

    #@17
    .line 3471
    if-eq v0, v3, :cond_2

    #@19
    .line 3473
    const/4 v7, 0x1

    #@1a
    .line 3476
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    #@1c
    if-eq p1, v0, :cond_3

    #@1e
    .line 3477
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@21
    .line 3480
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    #@23
    .line 3482
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@25
    if-eqz v0, :cond_4

    #@27
    if-eqz v7, :cond_4

    #@29
    .line 3484
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@2b
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    #@2e
    move-result v1

    #@2f
    .line 3485
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    #@31
    if-nez v0, :cond_5

    #@33
    const/4 v2, 0x0

    #@34
    .line 3487
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@36
    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    #@38
    .line 3488
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
    .line 3489
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    #@45
    move-result v5

    #@46
    .line 3488
    sub-int v5, v0, v5

    #@48
    .line 3489
    const/4 v6, 0x1

    #@49
    move-object v0, p0

    #@4a
    .line 3487
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    #@4d
    .line 3461
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    :cond_4
    return-void

    #@4e
    .line 3485
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
    .line 3703
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    #@3
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    #@5
    .line 3704
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@7
    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@9
    .line 3706
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3707
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3702
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3183
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 3184
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    #@6
    .line 3185
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@9
    .line 3182
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
    .line 4457
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
    .line 4456
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4433
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    #@6
    .line 4435
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4436
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    #@d
    .line 4439
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@f
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 4440
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@18
    .line 4444
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
    .line 4445
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2a
    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    #@2d
    .line 4432
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
    .line 3368
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 3369
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@9
    .line 3367
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 3383
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 3384
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@5
    .line 3382
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .param p1, "whether"    # Z

    #@0
    .prologue
    .line 3536
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 3537
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    #@6
    .line 3539
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3540
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@d
    .line 3541
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@10
    .line 3542
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@13
    .line 3535
    :cond_0
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    #@0
    .prologue
    .line 3076
    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    #@2
    .line 3077
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3078
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@9
    .line 3079
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3080
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3075
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    #@0
    .prologue
    .line 4699
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4700
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@8
    .line 4701
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@c
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    #@e
    .line 4702
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@10
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@12
    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    #@14
    .line 4698
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    #@0
    .prologue
    .line 4672
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4673
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@8
    .line 4674
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@c
    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    #@e
    .line 4671
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "includepad"    # Z

    #@0
    .prologue
    .line 6824
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 6825
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    #@6
    .line 6827
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 6828
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@d
    .line 6829
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@10
    .line 6830
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@13
    .line 6823
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
    .line 4861
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4862
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@a
    move-result-object v0

    #@b
    .line 4863
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@10
    .line 4864
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
    .line 4865
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
    .line 4860
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
    .line 4517
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    #@8
    move-result v9

    #@9
    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    #@c
    move-result v5

    #@d
    .line 4518
    .local v5, "wasPassword":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    #@10
    move-result v9

    #@11
    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    #@14
    move-result v6

    #@15
    .line 4519
    .local v6, "wasVisiblePassword":Z
    invoke-direct {p0, p1, v7}, Landroid/widget/TextView;->setInputType(IZ)V

    #@18
    .line 4520
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    #@1b
    move-result v2

    #@1c
    .line 4521
    .local v2, "isPassword":Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    #@1f
    move-result v3

    #@20
    .line 4522
    .local v3, "isVisiblePassword":Z
    const/4 v0, 0x0

    #@21
    .line 4523
    .local v0, "forceUpdate":Z
    if-eqz v2, :cond_5

    #@23
    .line 4524
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@26
    move-result-object v9

    #@27
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@2a
    .line 4525
    invoke-direct {p0, v11, v12, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@2d
    .line 4539
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
    .line 4543
    .local v4, "singleLine":Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@36
    if-ne v9, v4, :cond_1

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 4546
    :cond_1
    if-eqz v2, :cond_a

    #@3c
    :goto_2
    invoke-direct {p0, v4, v7, v8}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    #@3f
    .line 4549
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    #@42
    move-result v7

    #@43
    if-nez v7, :cond_3

    #@45
    .line 4550
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@47
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@4a
    move-result-object v7

    #@4b
    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@4d
    .line 4553
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@50
    move-result-object v1

    #@51
    .line 4554
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    #@53
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    #@56
    .line 4516
    :cond_4
    return-void

    #@57
    .line 4526
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "singleLine":Z
    :cond_5
    if-eqz v3, :cond_7

    #@59
    .line 4527
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@5b
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@5e
    move-result-object v10

    #@5f
    if-ne v9, v10, :cond_6

    #@61
    .line 4528
    const/4 v0, 0x1

    #@62
    .line 4530
    :cond_6
    invoke-direct {p0, v11, v12, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@65
    goto :goto_0

    #@66
    .line 4531
    :cond_7
    if-nez v5, :cond_8

    #@68
    if-eqz v6, :cond_0

    #@6a
    .line 4533
    :cond_8
    invoke-direct {p0, v11, v10, v10}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@6d
    .line 4534
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@6f
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@72
    move-result-object v10

    #@73
    if-ne v9, v10, :cond_0

    #@75
    .line 4535
    const/4 v0, 0x1

    #@76
    goto :goto_0

    #@77
    .line 4539
    :cond_9
    const/4 v4, 0x1

    #@78
    .restart local v4    # "singleLine":Z
    goto :goto_1

    #@79
    :cond_a
    move v7, v8

    #@7a
    .line 4546
    goto :goto_2
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .param p1, "input"    # Landroid/text/method/KeyListener;

    #@0
    .prologue
    .line 1759
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    #@3
    .line 1760
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    #@6
    .line 1762
    if-eqz p1, :cond_2

    #@8
    .line 1763
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@b
    .line 1765
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
    .line 1771
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    #@19
    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    #@1c
    .line 1776
    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@1f
    move-result-object v1

    #@20
    .line 1777
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    #@22
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    #@25
    .line 1758
    :cond_1
    return-void

    #@26
    .line 1766
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    #@27
    .line 1767
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@29
    const/4 v3, 0x1

    #@2a
    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    #@2c
    goto :goto_0

    #@2d
    .line 1773
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
    .line 3017
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
    .line 3018
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@c
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    #@f
    .line 3020
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 3021
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@16
    .line 3022
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@19
    .line 3023
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1c
    .line 3016
    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    #@0
    .prologue
    .line 3866
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
    .line 3867
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    #@e
    .line 3868
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    #@10
    .line 3870
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 3871
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@17
    .line 3872
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@1a
    .line 3873
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1d
    .line 3865
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
    .line 3684
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    #@3
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    #@5
    .line 3685
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@7
    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@9
    .line 3687
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3688
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3683
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3421
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 3422
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@9
    .line 3420
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 3436
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 3437
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@5
    .line 3435
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3326
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    #@2
    .line 3325
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1, "marqueeLimit"    # I

    #@0
    .prologue
    .line 7737
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    #@2
    .line 7736
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3771
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@2
    .line 3772
    const/4 v0, 0x1

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@5
    .line 3774
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3775
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3770
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3655
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    #@2
    .line 3656
    const/4 v0, 0x2

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@5
    .line 3658
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3659
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3654
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3626
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    #@2
    .line 3627
    const/4 v0, 0x1

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    #@5
    .line 3629
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3630
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3625
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "maxpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3798
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@2
    .line 3799
    const/4 v0, 0x2

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@5
    .line 3801
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3802
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3797
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3717
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    #@2
    .line 3718
    const/4 v0, 0x1

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@5
    .line 3720
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3721
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3716
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3598
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    #@2
    .line 3599
    const/4 v0, 0x2

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@5
    .line 3601
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3602
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3597
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3570
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    #@2
    .line 3571
    const/4 v0, 0x1

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    #@5
    .line 3573
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3574
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3569
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "minpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3744
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    #@2
    .line 3745
    const/4 v0, 0x2

    #@3
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@5
    .line 3747
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@8
    .line 3748
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@b
    .line 3743
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    #@0
    .prologue
    .line 1814
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 1815
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    #@6
    .line 1817
    if-eqz p1, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@a
    instance-of v0, v0, Landroid/text/Spannable;

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 1821
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    #@11
    .line 1825
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@13
    if-eqz v0, :cond_1

    #@15
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@17
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@1a
    .line 1813
    :cond_1
    return-void

    #@1b
    .line 1818
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
    .line 4736
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4737
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@8
    .line 4738
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@c
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    #@e
    .line 4735
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
    .line 2683
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 2684
    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    #@6
    if-eq p3, v0, :cond_2

    #@8
    .line 2687
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@b
    .line 2691
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    #@e
    .line 2692
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@11
    .line 2682
    return-void

    #@12
    .line 2685
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    #@14
    if-ne p2, v0, :cond_0

    #@16
    .line 2686
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
    .line 2697
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 2698
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    #@9
    move-result v0

    #@a
    if-eq p3, v0, :cond_2

    #@c
    .line 2701
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@f
    .line 2705
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    #@12
    .line 2706
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@15
    .line 2696
    return-void

    #@16
    .line 2699
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    #@18
    if-ne p2, v0, :cond_0

    #@1a
    .line 2700
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
    .line 3518
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    #@5
    move-result v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 3519
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    #@d
    .line 3521
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3522
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@14
    .line 3523
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@17
    .line 3524
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1a
    .line 3517
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4833
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 4834
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    #@8
    .line 4835
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@a
    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    #@c
    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    #@e
    .line 4832
    return-void
.end method

.method public setRawInputType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 4602
    if-nez p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@4
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 4603
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@a
    .line 4604
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@c
    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    #@e
    .line 4601
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/Scroller;

    #@0
    .prologue
    .line 8419
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    #@2
    .line 8418
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .param p1, "selectAllOnFocus"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 7772
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 7773
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    #@7
    .line 7775
    if-eqz p1, :cond_0

    #@9
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@b
    instance-of v0, v0, Landroid/text/Spannable;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 7771
    :cond_0
    :goto_0
    return-void

    #@10
    .line 7776
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
    .line 8261
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    #@3
    move-result v0

    #@4
    .line 8263
    .local v0, "wasSelected":Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    #@7
    .line 8265
    if-eq p1, v0, :cond_0

    #@9
    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@b
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 8266
    if-eqz p1, :cond_1

    #@11
    .line 8267
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    #@14
    .line 8260
    :cond_0
    :goto_0
    return-void

    #@15
    .line 8269
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
    .line 3237
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    #@5
    .line 3239
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    #@7
    .line 3240
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    #@9
    .line 3241
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    #@b
    .line 3242
    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    #@d
    .line 3245
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@13
    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    #@16
    .line 3246
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@19
    .line 3236
    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3207
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@3
    .line 3208
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    #@7
    .line 3206
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    #@0
    .prologue
    .line 7625
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@4
    .line 7624
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
    .line 7662
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    #@4
    .line 7663
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    #@7
    .line 7659
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
    .line 9686
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2
    check-cast v0, Landroid/text/Editable;

    #@4
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    #@7
    .line 9685
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    #@0
    .prologue
    .line 4157
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    #@2
    .line 4158
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7
    .line 4156
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4417
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
    .line 4416
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    #@0
    .prologue
    .line 4421
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
    .line 4420
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 4174
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@5
    .line 4173
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
    .line 4199
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    #@6
    .line 4201
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4202
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@c
    invoke-static {v0, v2}, Landroid/widget/TextView$CharWrapper;->-set0(Landroid/widget/TextView$CharWrapper;[C)[C

    #@f
    .line 4198
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
    .line 4366
    const/4 v0, 0x0

    #@2
    .line 4368
    .local v0, "oldlen":I
    if-ltz p2, :cond_0

    #@4
    if-gez p3, :cond_1

    #@6
    .line 4369
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
    .line 4368
    :cond_1
    add-int v1, p2, p3

    #@26
    array-length v2, p1

    #@27
    if-gt v1, v2, :cond_0

    #@29
    .line 4377
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 4378
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2f
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@32
    move-result v0

    #@33
    .line 4379
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@35
    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    #@38
    .line 4384
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@3a
    if-nez v1, :cond_3

    #@3c
    .line 4385
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    #@3e
    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    #@41
    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@43
    .line 4390
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    #@45
    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@47
    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    #@4a
    .line 4365
    return-void

    #@4b
    .line 4381
    :cond_2
    const-string/jumbo v1, ""

    #@4e
    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    #@51
    goto :goto_0

    #@52
    .line 4387
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
    .line 2733
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@5
    .line 2732
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
    .line 2744
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
    .line 2747
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/4 v15, 0x4

    #@b
    const/16 v16, 0x0

    #@d
    .line 2746
    move/from16 v0, v16

    #@f
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@12
    move-result v10

    #@13
    .line 2748
    .local v10, "textColorHighlight":I
    if-eqz v10, :cond_0

    #@15
    .line 2749
    move-object/from16 v0, p0

    #@17
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    #@1a
    .line 2752
    :cond_0
    const/4 v15, 0x3

    #@1b
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@1e
    move-result-object v9

    #@1f
    .line 2753
    .local v9, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_1

    #@21
    .line 2754
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@26
    .line 2757
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
    .line 2758
    .local v13, "textSize":I
    if-eqz v13, :cond_2

    #@31
    .line 2759
    int-to-float v15, v13

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-direct {v0, v15}, Landroid/widget/TextView;->setRawTextSize(F)V

    #@37
    .line 2763
    :cond_2
    const/4 v15, 0x5

    #@38
    .line 2762
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@3b
    move-result-object v11

    #@3c
    .line 2764
    .local v11, "textColorHint":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_3

    #@3e
    .line 2765
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    #@43
    .line 2769
    :cond_3
    const/4 v15, 0x6

    #@44
    .line 2768
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@47
    move-result-object v12

    #@48
    .line 2770
    .local v12, "textColorLink":Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_4

    #@4a
    .line 2771
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    #@4f
    .line 2774
    :cond_4
    const/16 v15, 0xc

    #@51
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    .line 2775
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
    .line 2776
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
    .line 2777
    .local v7, "styleIndex":I
    move-object/from16 v0, p0

    #@69
    invoke-direct {v0, v4, v14, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    #@6c
    .line 2779
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
    .line 2780
    .local v6, "shadowColor":I
    if-eqz v6, :cond_5

    #@77
    .line 2781
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
    .line 2782
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
    .line 2783
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
    .line 2784
    .local v5, "r":F
    move-object/from16 v0, p0

    #@94
    invoke-virtual {v0, v5, v2, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    #@97
    .line 2787
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
    .line 2788
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
    .line 2791
    :cond_6
    const/16 v15, 0xd

    #@b3
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@b6
    move-result v15

    #@b7
    if-eqz v15, :cond_7

    #@b9
    .line 2793
    const/16 v15, 0xd

    #@bb
    const/16 v16, 0x0

    #@bd
    .line 2792
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
    .line 2796
    :cond_7
    const/16 v15, 0xe

    #@ca
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@cd
    move-result v15

    #@ce
    if-eqz v15, :cond_8

    #@d0
    .line 2798
    const/4 v15, 0x0

    #@d1
    const/16 v16, 0xe

    #@d3
    .line 2797
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
    .line 2801
    :cond_8
    const/16 v15, 0xf

    #@e0
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@e3
    move-result v15

    #@e4
    if-eqz v15, :cond_9

    #@e6
    .line 2803
    const/16 v15, 0xf

    #@e8
    .line 2802
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@eb
    move-result-object v15

    #@ec
    move-object/from16 v0, p0

    #@ee
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    #@f1
    .line 2806
    :cond_9
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@f4
    .line 2743
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 3131
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    #@6
    .line 3132
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@9
    .line 3130
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 3146
    if-nez p1, :cond_0

    #@2
    .line 3147
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 3150
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    #@a
    .line 3151
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    #@d
    .line 3145
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .param p1, "selectable"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5461
    if-nez p1, :cond_0

    #@3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@5
    if-nez v1, :cond_0

    #@7
    return-void

    #@8
    .line 5463
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    #@b
    .line 5464
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@d
    iget-boolean v1, v1, Landroid/widget/Editor;->mTextIsSelectable:Z

    #@f
    if-ne v1, p1, :cond_1

    #@11
    return-void

    #@12
    .line 5466
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@14
    iput-boolean p1, v1, Landroid/widget/Editor;->mTextIsSelectable:Z

    #@16
    .line 5467
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    #@19
    .line 5468
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    #@1c
    .line 5469
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    #@1f
    .line 5470
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    #@22
    .line 5474
    if-eqz p1, :cond_2

    #@24
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    #@27
    move-result-object v0

    #@28
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    #@2b
    .line 5475
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@2d
    if-eqz p1, :cond_3

    #@2f
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    #@31
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@34
    .line 5478
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@36
    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    #@39
    .line 5460
    return-void

    #@3a
    .line 5475
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
    .line 4187
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@5
    .line 4186
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
    .line 4400
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@4
    move-result v2

    #@5
    .line 4401
    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    #@8
    move-result v0

    #@9
    .line 4402
    .local v0, "end":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v1

    #@d
    .line 4404
    .local v1, "len":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    #@10
    .line 4406
    if-gez v2, :cond_0

    #@12
    if-ltz v0, :cond_1

    #@14
    .line 4407
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@16
    instance-of v3, v3, Landroid/text/Spannable;

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 4408
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@1c
    check-cast v3, Landroid/text/Spannable;

    #@1e
    .line 4409
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@21
    move-result v4

    #@22
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v4

    #@26
    .line 4410
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v5

    #@2a
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v5

    #@2e
    .line 4408
    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@31
    .line 4399
    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2827
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    #@3
    .line 2828
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@5
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    #@8
    .line 2826
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 2931
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
    .line 2932
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    #@d
    .line 2933
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@f
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    #@12
    .line 2935
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 2936
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@19
    .line 2937
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@1c
    .line 2938
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1f
    .line 2930
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
    .line 2879
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    #@4
    .line 2878
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    #@0
    .prologue
    .line 2892
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 2895
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    #@6
    .line 2896
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    .line 2901
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@d
    move-result-object v2

    #@e
    .line 2900
    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@11
    move-result v2

    #@12
    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    #@15
    .line 2891
    return-void

    #@16
    .line 2898
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
    .line 1861
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 1864
    return-void

    #@6
    .line 1866
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1867
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@c
    instance-of v1, v1, Landroid/text/Spannable;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1868
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@12
    check-cast v1, Landroid/text/Spannable;

    #@14
    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@16
    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@19
    .line 1872
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    #@1b
    .line 1874
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    #@1d
    if-eqz v1, :cond_5

    #@1f
    move-object v0, p1

    #@20
    .line 1875
    check-cast v0, Landroid/text/method/TransformationMethod2;

    #@22
    .line 1876
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
    .line 1877
    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    #@33
    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    #@36
    .line 1882
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    #@38
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3b
    .line 1884
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 1885
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@44
    .line 1860
    :cond_3
    return-void

    #@45
    .line 1876
    .restart local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_4
    const/4 v1, 0x1

    #@46
    goto :goto_0

    #@47
    .line 1879
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_5
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    #@49
    goto :goto_1
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    #@0
    .prologue
    .line 2957
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 2958
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@d
    .line 2960
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 2961
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    #@14
    .line 2962
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@17
    .line 2963
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@1a
    .line 2956
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
    .line 1592
    if-lez p2, :cond_4

    #@4
    .line 1593
    if-nez p1, :cond_1

    #@6
    .line 1594
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    #@9
    move-result-object p1

    #@a
    .line 1599
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@d
    .line 1601
    if-eqz p1, :cond_2

    #@f
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    #@12
    move-result v1

    #@13
    .line 1602
    .local v1, "typefaceStyle":I
    :goto_1
    not-int v4, v1

    #@14
    and-int v0, p2, v4

    #@16
    .line 1603
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
    .line 1604
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
    .line 1591
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    #@2c
    .line 1596
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@2f
    move-result-object p1

    #@30
    goto :goto_0

    #@31
    .line 1601
    :cond_2
    const/4 v1, 0x0

    #@32
    .restart local v1    # "typefaceStyle":I
    goto :goto_1

    #@33
    .restart local v0    # "need":I
    :cond_3
    move v2, v3

    #@34
    .line 1604
    goto :goto_2

    #@35
    .line 1606
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@37
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@3a
    .line 1607
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    #@3c
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@3f
    .line 1608
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
    .line 1718
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
    .line 3851
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    #@3
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    #@5
    .line 3852
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    #@7
    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    #@9
    .line 3854
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    #@c
    .line 3855
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@f
    .line 3850
    return-void
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
    .line 8065
    const/4 v4, 0x0

    #@2
    .line 8066
    .local v4, "selChanged":Z
    const/4 v3, -0x1

    #@3
    .local v3, "newSelStart":I
    const/4 v2, -0x1

    #@4
    .line 8068
    .local v2, "newSelEnd":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    if-nez v5, :cond_14

    #@8
    const/4 v1, 0x0

    #@9
    .line 8070
    :goto_0
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@b
    if-ne p2, v5, :cond_1

    #@d
    .line 8071
    const/4 v4, 0x1

    #@e
    .line 8072
    move v2, p4

    #@f
    .line 8074
    if-gez p3, :cond_0

    #@11
    if-ltz p4, :cond_1

    #@13
    .line 8075
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@16
    move-result v5

    #@17
    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    #@1a
    .line 8076
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    #@1d
    .line 8077
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    #@20
    .line 8078
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@22
    if-eqz v5, :cond_1

    #@24
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@26
    invoke-virtual {v5}, Landroid/widget/Editor;->makeBlink()V

    #@29
    .line 8082
    :cond_1
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    #@2b
    if-ne p2, v5, :cond_3

    #@2d
    .line 8083
    const/4 v4, 0x1

    #@2e
    .line 8084
    move v3, p4

    #@2f
    .line 8086
    if-gez p3, :cond_2

    #@31
    if-ltz p4, :cond_3

    #@33
    .line 8087
    :cond_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@36
    move-result v0

    #@37
    .line 8088
    .local v0, "end":I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    #@3a
    .line 8092
    .end local v0    # "end":I
    :cond_3
    if-eqz v4, :cond_7

    #@3c
    .line 8093
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@3e
    .line 8094
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@40
    if-eqz v5, :cond_4

    #@42
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_15

    #@48
    .line 8096
    :cond_4
    :goto_1
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@4b
    move-result v5

    #@4c
    and-int/lit16 v5, v5, 0x200

    #@4e
    if-nez v5, :cond_7

    #@50
    .line 8097
    if-gez v3, :cond_5

    #@52
    .line 8098
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@55
    move-result v3

    #@56
    .line 8100
    :cond_5
    if-gez v2, :cond_6

    #@58
    .line 8101
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@5b
    move-result v2

    #@5c
    .line 8103
    :cond_6
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    #@5f
    .line 8107
    :cond_7
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    #@61
    if-nez v5, :cond_8

    #@63
    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    #@65
    if-nez v5, :cond_8

    #@67
    .line 8108
    instance-of v5, p2, Landroid/text/style/CharacterStyle;

    #@69
    .line 8107
    if-eqz v5, :cond_b

    #@6b
    .line 8109
    :cond_8
    if-eqz v1, :cond_9

    #@6d
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@6f
    if-nez v5, :cond_16

    #@71
    .line 8110
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@74
    .line 8111
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@76
    .line 8112
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    #@79
    .line 8116
    :goto_2
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@7b
    if-eqz v5, :cond_b

    #@7d
    .line 8117
    if-ltz p3, :cond_a

    #@7f
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@81
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@83
    invoke-virtual {v5, v6, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    #@86
    .line 8118
    :cond_a
    if-ltz p4, :cond_b

    #@88
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@8a
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    #@8c
    invoke-virtual {v5, v6, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    #@8f
    .line 8122
    :cond_b
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    #@92
    move-result v5

    #@93
    if-eqz v5, :cond_e

    #@95
    .line 8123
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@97
    .line 8124
    if-eqz v1, :cond_c

    #@99
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    #@9c
    move-result v5

    #@9d
    if-eqz v5, :cond_c

    #@9f
    .line 8125
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    #@a1
    .line 8128
    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@a4
    move-result v5

    #@a5
    if-ltz v5, :cond_e

    #@a7
    .line 8129
    if-eqz v1, :cond_d

    #@a9
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@ab
    if-nez v5, :cond_17

    #@ad
    .line 8130
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    #@b0
    .line 8137
    :cond_e
    :goto_3
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    #@b2
    if-eqz v5, :cond_12

    #@b4
    .line 8140
    if-eqz v1, :cond_12

    #@b6
    iget-object v5, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    #@b8
    if-eqz v5, :cond_12

    #@ba
    .line 8141
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    #@bc
    if-eqz v5, :cond_18

    #@be
    .line 8142
    if-ltz p3, :cond_10

    #@c0
    .line 8143
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@c2
    if-le v5, p3, :cond_f

    #@c4
    .line 8144
    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@c6
    .line 8146
    :cond_f
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@c8
    if-le v5, p5, :cond_10

    #@ca
    .line 8147
    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@cc
    .line 8150
    :cond_10
    if-ltz p4, :cond_12

    #@ce
    .line 8151
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@d0
    if-le v5, p4, :cond_11

    #@d2
    .line 8152
    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@d4
    .line 8154
    :cond_11
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@d6
    if-le v5, p6, :cond_12

    #@d8
    .line 8155
    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    #@da
    .line 8167
    :cond_12
    :goto_4
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@dc
    if-eqz v5, :cond_13

    #@de
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@e0
    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@e2
    if-eqz v5, :cond_13

    #@e4
    if-gez p4, :cond_13

    #@e6
    .line 8168
    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    #@e8
    .line 8167
    if-eqz v5, :cond_13

    #@ea
    .line 8169
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@ec
    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    #@ee
    check-cast p2, Landroid/text/style/SpellCheckSpan;

    #@f0
    .end local p2    # "what":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    #@f3
    .line 8061
    :cond_13
    return-void

    #@f4
    .line 8068
    .restart local p2    # "what":Ljava/lang/Object;
    :cond_14
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@f6
    iget-object v1, v5, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    #@f8
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    goto/16 :goto_0

    #@fa
    .line 8094
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_15
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@fc
    iput-boolean v7, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    #@fe
    goto/16 :goto_1

    #@100
    .line 8114
    :cond_16
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@102
    goto/16 :goto_2

    #@104
    .line 8132
    :cond_17
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    #@106
    goto :goto_3

    #@107
    .line 8162
    :cond_18
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    #@109
    goto :goto_4
.end method

.method protected stopTextActionMode()V
    .locals 1

    #@0
    .prologue
    .line 9370
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 9371
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@6
    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    #@9
    .line 9369
    :cond_0
    return-void
.end method

.method textCanBeSelected()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 8654
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
    .line 8655
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_2

    #@13
    .line 8656
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
    .line 8655
    :cond_0
    :goto_0
    return v0

    #@24
    .line 8654
    :cond_1
    return v0

    #@25
    .line 8655
    :cond_2
    const/4 v0, 0x1

    #@26
    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    #@0
    .prologue
    .line 8014
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    #@3
    .line 8015
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    #@6
    move-result v0

    #@7
    .line 8017
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
    .line 8018
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    #@14
    .line 8021
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    #@17
    .line 8023
    if-ltz v0, :cond_3

    #@19
    .line 8024
    const/4 v1, 0x1

    #@1a
    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    #@1c
    .line 8025
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@1e
    if-eqz v1, :cond_2

    #@20
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #@22
    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    #@25
    .line 8026
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    #@28
    .line 8013
    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 5329
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v1

    #@4
    .line 5330
    .local v1, "verified":Z
    if-nez v1, :cond_1

    #@6
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 5331
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
    .line 5332
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :cond_0

    #@16
    .line 5333
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 5331
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 5337
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    #@0
    .prologue
    .line 9660
    if-eqz p1, :cond_0

    #@2
    .line 9661
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    #@5
    .line 9659
    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    #@0
    .prologue
    .line 7548
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
    .line 7552
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    #@6
    sub-int v0, v1, v2

    #@8
    .line 7553
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    #@a
    and-int/lit8 v1, v1, 0x70

    #@c
    const/16 v2, 0x30

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 7554
    const/4 v1, 0x0

    #@11
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    #@14
    move-result v1

    #@15
    add-int/2addr v0, v1

    #@16
    .line 7556
    :cond_0
    return v0
.end method
