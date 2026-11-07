.class final Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextClassificationHelper"
.end annotation


# static fields
.field private static final blacklist TRIM_DELTA_UPPER_BOUND:I = 0xf0


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private blacklist mInitialized:Z

.field private greylist-max-o mLastClassificationLocales:Landroid/os/LocaleList;

.field private greylist-max-o mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

.field private greylist-max-o mLastClassificationSelectionEnd:I

.field private greylist-max-o mLastClassificationSelectionStart:I

.field private greylist-max-o mLastClassificationText:Ljava/lang/CharSequence;

.field private greylist-max-o mRelativeEnd:I

.field private greylist-max-o mRelativeStart:I

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I

.field private greylist-max-o mText:Ljava/lang/String;

.field private greylist-max-o mTextClassifier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTrimStart:I

.field private greylist-max-o mTrimmedText:Ljava/lang/CharSequence;

.field private final blacklist mViewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "selectionStart"    # I
    .param p5, "selectionEnd"    # I
    .param p6, "locales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassifier;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/os/LocaleList;",
            ")V"
        }
    .end annotation

    .line 1110
    .local p2, "textClassifier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/textclassifier/TextClassifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .end local p2    # "textClassifier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/textclassifier/TextClassifier;>;"
    .end local p3    # "text":Ljava/lang/CharSequence;
    .end local p4    # "selectionStart":I
    .end local p5    # "selectionEnd":I
    .end local p6    # "locales":Landroid/os/LocaleList;
    .local v1, "textClassifier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/textclassifier/TextClassifier;>;"
    .local v2, "text":Ljava/lang/CharSequence;
    .local v3, "selectionStart":I
    .local v4, "selectionEnd":I
    .local v5, "locales":Landroid/os/LocaleList;
    invoke-virtual/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->init(Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    .line 1112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iput-object p2, v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    .line 1113
    iget-object p2, v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    iput-object p2, v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 1114
    return-void
.end method

.method private greylist-max-o isDarkLaunchEnabled()Z
    .registers 2

    .line 1181
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 7
    .param p1, "selection"    # Landroid/view/textclassifier/TextSelection;

    .line 1185
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionStart:I

    if-ne v0, v1, :cond_20

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionEnd:I

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationLocales:Landroid/os/LocaleList;

    .line 1188
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 1190
    :cond_20
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    .line 1191
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionStart:I

    .line 1192
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionEnd:I

    .line 1193
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationLocales:Landroid/os/LocaleList;

    .line 1195
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->trimText()V

    .line 1197
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1199
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    const-string v2, "116321860"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1200
    sget-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    .local v0, "classification":Landroid/view/textclassifier/TextClassification;
    goto :goto_a0

    .line 1201
    .end local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_51
    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 1202
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .restart local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    goto :goto_a0

    .line 1203
    .end local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_5e
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8c

    .line 1205
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    invoke-direct {v0, v1, v2, v3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    .line 1208
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v0

    .line 1209
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    .line 1210
    .local v0, "request":Landroid/view/textclassifier/TextClassification$Request;
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 1211
    .local v0, "classification":Landroid/view/textclassifier/TextClassification;
    goto :goto_a0

    .line 1213
    .end local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_8c
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 1216
    .restart local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :goto_a0
    new-instance v1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;-><init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 1220
    .end local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_ab
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

    return-object v0
.end method

.method private greylist-max-o trimText()V
    .registers 5

    .line 1224
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    .line 1225
    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getSmartSelectionTrimDelta()I

    move-result v0

    .line 1224
    const/16 v1, 0xf0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1227
    .local v0, "trimDelta":I
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    .line 1228
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1229
    .local v1, "referenceEnd":I
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    .line 1230
    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    .line 1231
    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    .line 1232
    return-void
.end method


# virtual methods
.method public greylist-max-o classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 2

    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mInitialized:Z

    .line 1131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getOriginalSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 5

    .line 1162
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/SelectionActionModeHelper$SelectionResult;-><init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    return-object v0
.end method

.method public greylist-max-o getTimeoutDuration()I
    .registers 2

    .line 1169
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mInitialized:Z

    if-eqz v0, :cond_b

    .line 1170
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getSmartSelectionInitializedTimeout()I

    move-result v0

    return v0

    .line 1176
    :cond_b
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getSmartSelectionInitializingTimeout()I

    move-result v0

    return v0
.end method

.method public greylist-max-o init(Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V
    .registers 7
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "selectionStart"    # I
    .param p4, "selectionEnd"    # I
    .param p5, "locales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassifier;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/os/LocaleList;",
            ")V"
        }
    .end annotation

    .line 1119
    .local p1, "textClassifier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/textclassifier/TextClassifier;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    .line 1120
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    .line 1121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    .line 1122
    if-le p4, p3, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1123
    iput p3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    .line 1124
    iput p4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    .line 1125
    iput-object p5, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    .line 1126
    return-void
.end method

.method public greylist-max-o suggestSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 6

    .line 1136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mInitialized:Z

    .line 1137
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->trimText()V

    .line 1139
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3c

    .line 1140
    new-instance v1, Landroid/view/textclassifier/TextSelection$Request$Builder;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    invoke-direct {v1, v2, v3, v4}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    .line 1142
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v1

    .line 1143
    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDarkLaunchAllowed(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v1

    .line 1144
    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setIncludeTextClassification(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    .line 1146
    .local v0, "request":Landroid/view/textclassifier/TextSelection$Request;
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, v0}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    .line 1147
    .local v0, "selection":Landroid/view/textclassifier/TextSelection;
    goto :goto_50

    .line 1149
    .end local v0    # "selection":Landroid/view/textclassifier/TextSelection;
    :cond_3c
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    .line 1153
    .restart local v0    # "selection":Landroid/view/textclassifier/TextSelection;
    :goto_50
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->isDarkLaunchEnabled()Z

    move-result v1

    if-nez v1, :cond_77

    .line 1154
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionStartIndex()I

    move-result v1

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    .line 1155
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    .line 1156
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionEndIndex()I

    move-result v2

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    add-int/2addr v2, v3

    .line 1155
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    .line 1158
    :cond_77
    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v1

    return-object v1
.end method
