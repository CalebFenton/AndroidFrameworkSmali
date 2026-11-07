.class public Landroid/view/inputmethod/EditorInfo;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/text/InputType;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/EditorInfo$TrimPolicy;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist IME_ACTION_DONE:I = 0x6

.field public static final whitelist IME_ACTION_GO:I = 0x2

.field public static final whitelist IME_ACTION_NEXT:I = 0x5

.field public static final whitelist IME_ACTION_NONE:I = 0x1

.field public static final whitelist IME_ACTION_PREVIOUS:I = 0x7

.field public static final whitelist IME_ACTION_SEARCH:I = 0x3

.field public static final whitelist IME_ACTION_SEND:I = 0x4

.field public static final whitelist IME_ACTION_UNSPECIFIED:I = 0x0

.field public static final whitelist IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final whitelist IME_FLAG_NAVIGATE_NEXT:I = 0x8000000

.field public static final whitelist IME_FLAG_NAVIGATE_PREVIOUS:I = 0x4000000

.field public static final whitelist IME_FLAG_NO_ACCESSORY_ACTION:I = 0x20000000

.field public static final whitelist IME_FLAG_NO_ENTER_ACTION:I = 0x40000000

.field public static final whitelist IME_FLAG_NO_EXTRACT_UI:I = 0x10000000

.field public static final whitelist IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field public static final whitelist IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000

.field public static final blacklist IME_INTERNAL_FLAG_APP_WINDOW_PORTRAIT:I = 0x1

.field public static final whitelist IME_MASK_ACTION:I = 0xff

.field public static final whitelist IME_NULL:I = 0x0

.field static final blacklist MAX_INITIAL_SELECTION_LENGTH:I = 0x400

.field static final blacklist MEMORY_EFFICIENT_TEXT_LENGTH:I = 0x800

.field public static final blacklist STYLUS_HANDWRITING_ENABLED_ANDROIDX_EXTRAS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.STYLUS_HANDWRITING_ENABLED"


# instance fields
.field public whitelist actionId:I

.field public whitelist actionLabel:Ljava/lang/CharSequence;

.field private blacklist autofillId:Landroid/view/autofill/AutofillId;

.field public whitelist contentMimeTypes:[Ljava/lang/String;

.field public whitelist extras:Landroid/os/Bundle;

.field public whitelist fieldId:I

.field public whitelist fieldName:Ljava/lang/String;

.field public whitelist hintLocales:Landroid/os/LocaleList;

.field public whitelist hintText:Ljava/lang/CharSequence;

.field public whitelist imeOptions:I

.field public whitelist initialCapsMode:I

.field public whitelist initialSelEnd:I

.field public whitelist initialSelStart:I

.field public whitelist inputType:I

.field public blacklist internalImeOptions:I

.field public whitelist label:Ljava/lang/CharSequence;

.field private blacklist mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

.field private blacklist mInitialToolType:I

.field private blacklist mIsStylusHandwritingEnabled:Z

.field private blacklist mSupportedHandwritingGesturePreviewTypes:I

.field private blacklist mSupportedHandwritingGestureTypes:I

.field private blacklist mWritingToolsEnabled:Z

.field public whitelist packageName:Ljava/lang/String;

.field public whitelist privateImeOptions:Ljava/lang/String;

.field public blacklist targetInputMethodUser:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputautofillId(Landroid/view/inputmethod/EditorInfo;Landroid/view/autofill/AutofillId;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/SurroundingText;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialToolType(Landroid/view/inputmethod/EditorInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsStylusHandwritingEnabled(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupportedHandwritingGesturePreviewTypes(Landroid/view/inputmethod/EditorInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupportedHandwritingGestureTypes(Landroid/view/inputmethod/EditorInfo;I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWritingToolsEnabled(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1389
    new-instance v0, Landroid/view/inputmethod/EditorInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 352
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 379
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    .line 391
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 399
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 415
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 431
    iput v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 442
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 523
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 534
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 760
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    .line 792
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 819
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 826
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    return-void
.end method

.method private static blacklist isCutOnSurrogate(Ljava/lang/CharSequence;II)Z
    .registers 4
    .param p0, "sourceText"    # Ljava/lang/CharSequence;
    .param p1, "cutPosition"    # I
    .param p2, "policy"    # I

    .line 1143
    packed-switch p2, :pswitch_data_18

    .line 1149
    const/4 v0, 0x0

    return v0

    .line 1147
    :pswitch_5
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    return v0

    .line 1145
    :pswitch_e
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist isPasswordInputType(I)Z
    .registers 3
    .param p0, "inputType"    # I

    .line 1154
    and-int/lit16 v0, p0, 0xfff

    .line 1156
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_11

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_11

    const/16 v1, 0x12

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method private blacklist trimLongSurroundingText(Ljava/lang/CharSequence;III)V
    .registers 22
    .param p1, "subText"    # Ljava/lang/CharSequence;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I
    .param p4, "subTextStart"    # I

    .line 927
    move-object/from16 v0, p1

    move/from16 v1, p3

    sub-int v2, v1, p2

    .line 929
    .local v2, "sourceSelLength":I
    const/16 v3, 0x400

    const/4 v4, 0x0

    if-le v2, v3, :cond_d

    .line 930
    move v3, v4

    goto :goto_e

    :cond_d
    move v3, v2

    .line 933
    .local v3, "newSelLength":I
    :goto_e
    move/from16 v5, p2

    .line 934
    .local v5, "subTextBeforeCursorLength":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v1

    .line 935
    .local v6, "subTextAfterCursorLength":I
    rsub-int v7, v3, 0x800

    .line 936
    .local v7, "maxLengthMinusSelection":I
    const-wide v8, 0x3fe999999999999aL    # 0.8

    int-to-double v10, v7

    mul-double/2addr v10, v8

    double-to-int v8, v10

    .line 937
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 938
    .local v8, "possibleMaxBeforeCursorLength":I
    sub-int v9, v7, v8

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 940
    .local v9, "newAfterCursorLength":I
    sub-int v10, v7, v9

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 944
    .local v10, "newBeforeCursorLength":I
    sub-int v11, v5, v10

    .line 947
    .local v11, "newBeforeCursorHead":I
    sub-int v12, p2, v10

    invoke-static {v0, v12, v4}, Landroid/view/inputmethod/EditorInfo;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 949
    add-int/lit8 v11, v11, 0x1

    .line 950
    add-int/lit8 v10, v10, -0x1

    .line 952
    :cond_3d
    add-int v12, v1, v9

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-static {v0, v12, v13}, Landroid/view/inputmethod/EditorInfo;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v12

    if-eqz v12, :cond_49

    .line 954
    add-int/lit8 v9, v9, -0x1

    .line 958
    :cond_49
    add-int v12, v10, v3

    add-int/2addr v12, v9

    .line 960
    .local v12, "newTextLength":I
    if-eq v3, v2, :cond_68

    .line 961
    add-int v14, v11, v10

    invoke-interface {v0, v11, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 963
    .local v14, "beforeCursor":Ljava/lang/CharSequence;
    add-int v15, v1, v9

    invoke-interface {v0, v1, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    .line 966
    .local v15, "afterCursor":Ljava/lang/CharSequence;
    move/from16 v16, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v14, v4, v16

    aput-object v15, v4, v13

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 967
    .end local v14    # "beforeCursor":Ljava/lang/CharSequence;
    .end local v15    # "afterCursor":Ljava/lang/CharSequence;
    .local v4, "newInitialSurroundingText":Ljava/lang/CharSequence;
    goto :goto_6e

    .line 968
    .end local v4    # "newInitialSurroundingText":Ljava/lang/CharSequence;
    :cond_68
    add-int v4, v11, v12

    .line 969
    invoke-interface {v0, v11, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 974
    .restart local v4    # "newInitialSurroundingText":Ljava/lang/CharSequence;
    :goto_6e
    const/4 v11, 0x0

    .line 975
    add-int v13, v11, v10

    .line 976
    .local v13, "newSelHead":I
    add-int v14, p4, p2

    sub-int/2addr v14, v13

    .line 977
    .local v14, "newOffset":I
    new-instance v15, Landroid/view/inputmethod/SurroundingText;

    add-int v0, v13, v3

    invoke-direct {v15, v4, v13, v0, v14}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 980
    return-void
.end method


# virtual methods
.method public final blacklist createCopyInternal()Landroid/view/inputmethod/EditorInfo;
    .registers 3

    .line 1315
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1316
    .local v0, "newEditorInfo":Landroid/view/inputmethod/EditorInfo;
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1317
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1318
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1319
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    .line 1320
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 1321
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 1322
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1323
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1324
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 1325
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    .line 1326
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 1327
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    .line 1328
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1329
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 1330
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 1331
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 1332
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1333
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1334
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 1335
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 1336
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 1337
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    .line 1338
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    .line 1340
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1434
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1270
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    .line 1271
    return-void
.end method

.method public blacklist dump(Landroid/util/Printer;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpExtras"    # Z

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "inputType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " imeOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1276
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " privateImeOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1275
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "actionLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initialSelStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialSelEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialToolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialCapsMode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 1284
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hintText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " autofillId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fieldId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fieldName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1291
    if-eqz p3, :cond_12e

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1294
    :cond_12e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hintLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "supportedHandwritingGestureTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    .line 1296
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->handwritingGestureTypeFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1295
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "supportedHandwritingGesturePreviewTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    .line 1299
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->handwritingGestureTypeFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isStylusHandwritingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "writingToolsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contentMimeTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_20a

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "targetInputMethodUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1307
    :cond_20a
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1254
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1255
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1256
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1257
    const-wide v2, 0x10900000003L

    iget-object v4, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1258
    const-wide v2, 0x10900000004L

    iget-object v4, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1259
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1260
    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v2, :cond_48

    .line 1261
    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1263
    :cond_48
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1264
    return-void
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 1237
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getInitialSelectedText(I)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "flags"    # I

    .line 1023
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1024
    return-object v1

    .line 1028
    :cond_6
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v2, :cond_f

    .line 1029
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    goto :goto_11

    :cond_f
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1030
    .local v0, "correctedTextSelStart":I
    :goto_11
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v2, v3, :cond_1a

    .line 1031
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    goto :goto_1c

    :cond_1a
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1033
    .local v2, "correctedTextSelEnd":I
    :goto_1c
    sub-int v3, v2, v0

    .line 1034
    .local v3, "sourceSelLength":I
    iget-object v4, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v4}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v4

    .line 1035
    .local v4, "selStart":I
    iget-object v5, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v5}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v5

    .line 1036
    .local v5, "selEnd":I
    if-le v4, v5, :cond_2f

    .line 1037
    move v6, v4

    .line 1038
    .local v6, "tmp":I
    move v4, v5

    .line 1039
    move v5, v6

    .line 1041
    .end local v6    # "tmp":I
    :cond_2f
    sub-int v6, v5, v4

    .line 1042
    .local v6, "selLength":I
    iget v7, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    if-ltz v7, :cond_56

    iget v7, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-ltz v7, :cond_56

    if-eq v6, v3, :cond_3c

    goto :goto_56

    .line 1046
    :cond_3c
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4b

    .line 1047
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_55

    .line 1048
    :cond_4b
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 1046
    :goto_55
    return-object v1

    .line 1043
    :cond_56
    :goto_56
    return-object v1
.end method

.method public whitelist getInitialSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .registers 14
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 1114
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1115
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1117
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-nez v0, :cond_c

    .line 1118
    const/4 v0, 0x0

    return-object v0

    .line 1121
    :cond_c
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1122
    .local v0, "length":I
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v1

    .line 1123
    .local v1, "selStart":I
    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v2}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v2

    .line 1124
    .local v2, "selEnd":I
    if-le v1, v2, :cond_27

    .line 1125
    move v3, v1

    .line 1126
    .local v3, "tmp":I
    move v1, v2

    .line 1127
    move v2, v3

    .line 1130
    .end local v3    # "tmp":I
    :cond_27
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1131
    .local v3, "before":I
    add-int v4, v2, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1132
    .local v4, "after":I
    sub-int v5, v1, v3

    .line 1133
    .local v5, "offset":I
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_42

    .line 1134
    iget-object v6, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v6}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_4c

    .line 1135
    :cond_42
    iget-object v6, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v6}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v5, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    :goto_4c
    nop

    .line 1136
    .local v6, "newText":Ljava/lang/CharSequence;
    sub-int v7, v2, v5

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1137
    .local v7, "newSelEnd":I
    new-instance v8, Landroid/view/inputmethod/SurroundingText;

    iget-object v9, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1138
    invoke-virtual {v9}, Landroid/view/inputmethod/SurroundingText;->getOffset()I

    move-result v9

    add-int/2addr v9, v5

    invoke-direct {v8, v6, v3, v7, v9}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    .line 1137
    return-object v8
.end method

.method public whitelist getInitialTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 1066
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-nez v0, :cond_6

    .line 1067
    const/4 v0, 0x0

    return-object v0

    .line 1070
    :cond_6
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1071
    .local v0, "surroundingTextLength":I
    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1072
    invoke-virtual {v2}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v2

    .line 1071
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1073
    .local v1, "selEnd":I
    sub-int v2, v0, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1074
    .local v2, "n":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_37

    .line 1075
    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v3}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    add-int v4, v1, v2

    invoke-interface {v3, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_43

    .line 1076
    :cond_37
    iget-object v3, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v3}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    add-int v4, v1, v2

    invoke-static {v3, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 1074
    :goto_43
    return-object v3
.end method

.method public whitelist getInitialTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 998
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-nez v0, :cond_6

    .line 999
    const/4 v0, 0x0

    return-object v0

    .line 1002
    :cond_6
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1003
    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v1

    .line 1002
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1004
    .local v0, "selStart":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1005
    .local v1, "n":I
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2b

    .line 1006
    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    sub-int v3, v0, v1

    invoke-interface {v2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_37

    .line 1007
    :cond_2b
    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v2}, Landroid/view/inputmethod/SurroundingText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    sub-int v3, v0, v1

    invoke-static {v2, v3, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 1005
    :goto_37
    return-object v2
.end method

.method public whitelist getInitialToolType()I
    .registers 2

    .line 1209
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    return v0
.end method

.method public whitelist getSupportedHandwritingGesturePreviews()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/PreviewableHandwritingGesture;",
            ">;>;"
        }
    .end annotation

    .line 694
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 695
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroid/view/inputmethod/PreviewableHandwritingGesture;>;>;"
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    if-nez v1, :cond_a

    .line 696
    return-object v0

    .line 698
    :cond_a
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    .line 700
    const-class v1, Landroid/view/inputmethod/SelectGesture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_15
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    .line 705
    const-class v1, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_21
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2c

    .line 709
    const-class v1, Landroid/view/inputmethod/DeleteGesture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_2c
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_38

    .line 714
    const-class v1, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_38
    return-object v0
.end method

.method public whitelist getSupportedHandwritingGestures()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/HandwritingGesture;",
            ">;>;"
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroid/view/inputmethod/HandwritingGesture;>;>;"
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    if-nez v1, :cond_a

    .line 602
    return-object v0

    .line 604
    :cond_a
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    .line 606
    const-class v1, Landroid/view/inputmethod/SelectGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_15
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    .line 610
    const-class v1, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_21
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2c

    .line 614
    const-class v1, Landroid/view/inputmethod/InsertGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_2c
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_38

    .line 618
    const-class v1, Landroid/view/inputmethod/InsertModeGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_38
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_43

    .line 622
    const-class v1, Landroid/view/inputmethod/DeleteGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_43
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4f

    .line 626
    const-class v1, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_4f
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5b

    .line 630
    const-class v1, Landroid/view/inputmethod/RemoveSpaceGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_5b
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_67

    .line 634
    const-class v1, Landroid/view/inputmethod/JoinOrSplitGesture;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_67
    return-object v0
.end method

.method public whitelist isStylusHandwritingEnabled()Z
    .registers 2

    .line 757
    iget-boolean v0, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    return v0
.end method

.method public whitelist isWritingToolsEnabled()Z
    .registers 2

    .line 770
    iget-boolean v0, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    return v0
.end method

.method public blacklist kindofEquals(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 6
    .param p1, "that"    # Landroid/view/inputmethod/EditorInfo;

    .line 1448
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1449
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 1450
    :cond_8
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    if-ne v2, v3, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 1461
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1462
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1463
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 1464
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 1465
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 1466
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 1467
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 1468
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 1469
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    .line 1470
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eq v2, v3, :cond_bc

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1471
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v2

    if-eqz v2, :cond_d2

    :cond_bc
    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-eq v2, v3, :cond_d0

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-eqz v2, :cond_d2

    iget-object v2, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 1474
    invoke-virtual {v2, v3}, Landroid/view/inputmethod/SurroundingText;->isEqualTo(Landroid/view/inputmethod/SurroundingText;)Z

    move-result v2

    if-eqz v2, :cond_d2

    :cond_d0
    move v0, v1

    goto :goto_d3

    :cond_d2
    nop

    .line 1450
    :goto_d3
    return v0
.end method

.method public final whitelist makeCompatible(I)V
    .registers 4
    .param p1, "targetSdkVersion"    # I

    .line 1180
    const/16 v0, 0xb

    if-ge p1, v0, :cond_26

    .line 1181
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xfff

    const v1, 0xfff000

    sparse-switch v0, :sswitch_data_28

    goto :goto_26

    .line 1187
    :sswitch_f
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x81

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1189
    goto :goto_26

    .line 1183
    :sswitch_17
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x21

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1185
    goto :goto_26

    .line 1192
    :sswitch_1f
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1197
    :cond_26
    :goto_26
    return-void

    nop

    :sswitch_data_28
    .sparse-switch
        0x2 -> :sswitch_1f
        0x12 -> :sswitch_1f
        0xd1 -> :sswitch_17
        0xe1 -> :sswitch_f
    .end sparse-switch
.end method

.method public whitelist setAutofillId(Landroid/view/autofill/AutofillId;)V
    .registers 2
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 1243
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 1244
    return-void
.end method

.method public whitelist setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V
    .registers 7
    .param p1, "subText"    # Ljava/lang/CharSequence;
    .param p2, "subTextStart"    # I

    .line 877
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0}, Landroid/view/inputmethod/EditorInfo;->isPasswordInputType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 881
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 882
    return-void

    .line 886
    :cond_f
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v2, :cond_18

    .line 887
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    goto :goto_1a

    :cond_18
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    :goto_1a
    sub-int/2addr v0, p2

    .line 888
    .local v0, "subTextSelStart":I
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v2, v3, :cond_24

    .line 889
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    goto :goto_26

    :cond_24
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    :goto_26
    sub-int/2addr v2, p2

    .line 891
    .local v2, "subTextSelEnd":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 893
    .local v3, "subTextLength":I
    if-ltz p2, :cond_42

    if-ltz v0, :cond_42

    if-le v2, v3, :cond_32

    goto :goto_42

    .line 898
    :cond_32
    const/16 v1, 0x800

    if-gt v3, v1, :cond_3e

    .line 899
    new-instance v1, Landroid/view/inputmethod/SurroundingText;

    invoke-direct {v1, p1, v0, v2, p2}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 901
    return-void

    .line 904
    :cond_3e
    invoke-direct {p0, p1, v0, v2, p2}, Landroid/view/inputmethod/EditorInfo;->trimLongSurroundingText(Ljava/lang/CharSequence;III)V

    .line 905
    return-void

    .line 894
    :cond_42
    :goto_42
    iput-object v1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 895
    return-void
.end method

.method public whitelist setInitialSurroundingText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "sourceText"    # Ljava/lang/CharSequence;

    .line 846
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    .line 847
    return-void
.end method

.method public final blacklist setInitialSurroundingTextInternal(Landroid/view/inputmethod/SurroundingText;)V
    .registers 2
    .param p1, "surroundingText"    # Landroid/view/inputmethod/SurroundingText;

    .line 856
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 857
    return-void
.end method

.method public whitelist setInitialToolType(I)V
    .registers 2
    .param p1, "toolType"    # I

    .line 1221
    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    .line 1222
    return-void
.end method

.method public whitelist setStylusHandwritingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 746
    iput-boolean p1, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    .line 747
    return-void
.end method

.method public whitelist setSupportedHandwritingGesturePreviews(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/PreviewableHandwritingGesture;",
            ">;>;)V"
        }
    .end annotation

    .line 653
    .local p1, "gestures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Landroid/view/inputmethod/PreviewableHandwritingGesture;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 655
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    .line 656
    return-void

    .line 659
    :cond_d
    const/4 v0, 0x0

    .line 660
    .local v0, "supportedTypes":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 661
    .local v2, "gesture":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/PreviewableHandwritingGesture;>;"
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-class v3, Landroid/view/inputmethod/SelectGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 663
    or-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 664
    :cond_2c
    const-class v3, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 665
    or-int/lit8 v0, v0, 0x20

    goto :goto_4c

    .line 666
    :cond_37
    const-class v3, Landroid/view/inputmethod/DeleteGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 667
    or-int/lit8 v0, v0, 0x4

    goto :goto_4c

    .line 668
    :cond_42
    const-class v3, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 669
    or-int/lit8 v0, v0, 0x40

    .line 674
    .end local v2    # "gesture":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/PreviewableHandwritingGesture;>;"
    :goto_4c
    goto :goto_12

    .line 671
    .restart local v2    # "gesture":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/PreviewableHandwritingGesture;>;"
    :cond_4d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported gesture type for preview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    .end local v2    # "gesture":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/PreviewableHandwritingGesture;>;"
    :cond_66
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    .line 677
    return-void
.end method

.method public whitelist setSupportedHandwritingGestures(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/HandwritingGesture;",
            ">;>;)V"
        }
    .end annotation

    .line 556
    .local p1, "gestures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroid/view/inputmethod/HandwritingGesture;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    .line 559
    return-void

    .line 562
    :cond_d
    const/4 v0, 0x0

    .line 563
    .local v0, "supportedTypes":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 564
    .local v2, "gesture":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/HandwritingGesture;>;"
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-class v3, Landroid/view/inputmethod/SelectGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 566
    or-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 567
    :cond_2c
    const-class v3, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 568
    or-int/lit8 v0, v0, 0x20

    goto :goto_78

    .line 569
    :cond_37
    const-class v3, Landroid/view/inputmethod/InsertGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 570
    or-int/lit8 v0, v0, 0x2

    goto :goto_78

    .line 571
    :cond_42
    const-class v3, Landroid/view/inputmethod/InsertModeGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 572
    or-int/lit16 v0, v0, 0x80

    goto :goto_78

    .line 573
    :cond_4d
    const-class v3, Landroid/view/inputmethod/DeleteGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 574
    or-int/lit8 v0, v0, 0x4

    goto :goto_78

    .line 575
    :cond_58
    const-class v3, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 576
    or-int/lit8 v0, v0, 0x40

    goto :goto_78

    .line 577
    :cond_63
    const-class v3, Landroid/view/inputmethod/RemoveSpaceGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 578
    or-int/lit8 v0, v0, 0x8

    goto :goto_78

    .line 579
    :cond_6e
    const-class v3, Landroid/view/inputmethod/JoinOrSplitGesture;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 580
    or-int/lit8 v0, v0, 0x10

    .line 584
    .end local v2    # "gesture":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/HandwritingGesture;>;"
    :goto_78
    goto :goto_12

    .line 582
    .restart local v2    # "gesture":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/HandwritingGesture;>;"
    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown gesture type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    .end local v2    # "gesture":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/HandwritingGesture;>;"
    :cond_92
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    .line 587
    return-void
.end method

.method public whitelist setWritingToolsEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 781
    iput-boolean p1, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    .line 782
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1350
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1353
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1355
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialToolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1361
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1362
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1364
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1365
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1367
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGestureTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->mSupportedHandwritingGesturePreviewTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    invoke-static {}, Landroid/view/inputmethod/Flags;->editorinfoHandwritingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1370
    iget-boolean v0, p0, Landroid/view/inputmethod/EditorInfo;->mIsStylusHandwritingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1372
    :cond_6a
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-eqz v0, :cond_70

    const/4 v0, 0x1

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    :goto_71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1373
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    if-eqz v0, :cond_7d

    .line 1374
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->mInitialSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/SurroundingText;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1376
    :cond_7d
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_87

    .line 1377
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8e

    .line 1379
    :cond_87
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1381
    :goto_8e
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    .line 1383
    iget-boolean v0, p0, Landroid/view/inputmethod/EditorInfo;->mWritingToolsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1384
    return-void
.end method
