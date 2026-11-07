.class final Landroid/view/inputmethod/RemoteInputConnectionImpl;
.super Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;,
        Landroid/view/inputmethod/RemoteInputConnectionImpl$Dispatching;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_END_BATCH_EDIT_RETRY:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteInputConnectionImpl"


# instance fields
.field private final blacklist mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field private blacklist mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

.field private final blacklist mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mH:Landroid/os/Handler;

.field private final blacklist mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final blacklist mServedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2C56kBNyimaX29P3MVRhxNO0E2M(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$dispatchWithTracing$49(Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3DmBqNF13aie-a5EIGTDam2GYiI(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performContextMenuAction$23(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3lxrMXxq1QMFsVDwXnh3mmu3RMY(Landroid/view/inputmethod/RemoteInputConnectionImpl;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$scheduleInvalidateInput$0(ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4LMyUC6p0-Fj9sbH6GIghTrYGPU(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$sendKeyEvent$30(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$83kI_8DE8QPzNbnMIw4Y2rfJDVA(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getSurroundingText$11(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8mdzVg9OM5CBv_YksdyQ663v55E(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getCursorCapsMode$13(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9UjqFI5m9SQ-gZZ0VB9SvYbiZ0Y(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getTextAfterCursor$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$AtkMLLxcy5g1MXf9P4aKlq2bQm8(Landroid/view/inputmethod/RemoteInputConnectionImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$finishComposingTextFromImm$28(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Dw2D1NzOzFGWxY0ztsZiHTLunGU(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$beginBatchEdit$34(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EUERrMmFWaCcxNB0CVkY1s1qoH4(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$finishComposingText$29(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FsYJ8kSvg8CtEcKdSejAdzr-dGM(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performSpellCheck$36(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GFLnvxklWdoKHjk0DrLYpMhE-1g(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setSelection$21(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GZeUaEPlCkqFpC7lxUHm4FjcbUw(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setImeConsumesInput$46(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Jl5UsxtFJ64KyE-rGTA_d_NwhC4(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performEditorAction$22(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$McaSonbrTHfn24t_UgDkwWl_JYQ(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestTextBoundsInfo$44(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P1GDz5k6xJZtEkJ1DmJ85vgIoU8(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitContent$45(Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QwyLsEZO04OVNjlzlKUz9xEDa6o(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getSelectedText$9(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$SC6yE21q7zB79UROiWapKoDefBs(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestCursorUpdatesWithFilter$42(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Spv6NJX-Ec0uCXWw69WmnCGktlo(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$deactivate$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Sxvg3alSSuKzwtfL5lRRfd7PMpk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getExtractedText$15(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Uh8URo82f0MjubEypaK8zPA4zQw(Landroid/view/inputmethod/RemoteInputConnectionImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$dispatchReportFullscreenMode$4(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XU-SuXKkN3ILKRxFTCHfLovtJlk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$replaceText$47(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YcCflVJvz7SJ4NuA0eRcxDz2wCU(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$deleteSurroundingText$32(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_m3ZM_ItmcRhlzdt4odb11Apn54(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingRegion$24(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_xKJPJrJJZYBqngdrvYK2VulS5c(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$cancelCancellationSignal$2(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bDeQT_16kPCdAlnvdVpYc7zFB4Q(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$clearMetaKeyStates$31(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bs_OGDwcIOuiGW9xVFpzltCkpyk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$forgetCancellationSignal$3(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dyvX76mWLIMlRRSgQ0CT-rRsrEE(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$endBatchEdit$35(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j-M_QPFLZ9I4th0U_0AhU8K8-P0(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitCorrection$20(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jNtA8MXobPnaECkNr8D9WTYrxk0(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitText$17(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jQSMueKxPI3rqG2UZfZi8vvxqLg(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performPrivateCommand$37(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jZBuwHllbrn8tvvICsL4sRvy75A(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitCompletion$19(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jzyi6yM7okUO4q2FYn7gAgT527A(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitTextWithTextAttribute$18(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$khtpaUPMwPCPA2OFIatCbNHReuc(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingTextWithTextAttribute$27(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$npKDQ_czdKHds7zXHiWT6X3YJ68(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingRegionWithTextAttribute$25(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oCGT6VRG2saCoErDu6z0JYMxcYg(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performHandwritingGesture$39(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qOfgWGuiQt21-4kIdHEisasbOxM(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$deleteSurroundingTextInCodePoints$33(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$soHIVgnaTkxIKf20X9il0IHyeeA(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingText$26(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xUxPv729eCgLtBM4c4ySLh3kNRQ(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$previewHandwritingGesture$40(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z-R71fdG3JYWpp8pqgPpN3aJVEk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestCursorUpdates$41(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zWZM9TttDJHRz4-dTwVYI-0IAPA(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getTextBeforeCursor$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smuseImeTracing()Z
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v0

    return v0
.end method

.method constructor blacklist <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .registers 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;
    .param p4, "servedView"    # Landroid/view/View;

    .line 193
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;-><init>()V

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1267
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 195
    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    .line 196
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    .line 197
    iput-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    .line 199
    return-void
.end method

.method private blacklist checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z
    .registers 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 496
    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session id mismatch header.sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 498
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 499
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    const-string v1, "RemoteInputConnectionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_44
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist dispatch(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1443
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1444
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1445
    return-void

    .line 1448
    :cond_c
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1449
    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "untypedFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture;",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 1471
    .local p3, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 1472
    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .registers 11
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "untypedFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;[B>;)V"
        }
    .end annotation

    .line 1478
    .local p3, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p4, "dumpProtoProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;[B>;"
    move-object v3, p2

    .line 1479
    .local v3, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<TT;>;"
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;

    move-object v1, p0

    move-object v5, p1

    move-object v2, p3

    move-object v4, p4

    .end local p1    # "methodName":Ljava/lang/String;
    .end local p3    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .end local p4    # "dumpProtoProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;[B>;"
    .local v2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local v4, "dumpProtoProvider":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;[B>;"
    .local v5, "methodName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V

    invoke-direct {p0, v5, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1494
    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 1453
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1454
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .local v0, "actualRunnable":Ljava/lang/Runnable;
    goto :goto_f

    .line 1463
    .end local v0    # "actualRunnable":Ljava/lang/Runnable;
    :cond_e
    move-object v0, p2

    .line 1466
    .restart local v0    # "actualRunnable":Ljava/lang/Runnable;
    :goto_f
    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 1467
    return-void
.end method

.method private blacklist getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Receiver;
    .registers 3

    .line 1091
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    if-eqz v0, :cond_7

    .line 1092
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    return-object v0

    .line 1094
    :cond_7
    new-instance v0, Landroid/os/CancellationSignalBeamer$Receiver;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/CancellationSignalBeamer$Receiver;-><init>(Z)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    .line 1095
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    return-object v0
.end method

.method private blacklist getServedView()Landroid/view/View;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private blacklist isFinished()Z
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic blacklist lambda$beginBatchEdit$34(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 950
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 951
    return-void

    .line 953
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 954
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 958
    :cond_16
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 959
    return-void

    .line 955
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "beginBatchEdit on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void
.end method

.method private synthetic blacklist lambda$cancelCancellationSignal$2(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 432
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    invoke-virtual {v0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->cancel(Landroid/os/IBinder;)V

    .line 433
    return-void
.end method

.method private synthetic blacklist lambda$clearMetaKeyStates$31(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "states"    # I

    .line 896
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 897
    return-void

    .line 899
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 900
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 904
    :cond_16
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 905
    return-void

    .line 901
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method private synthetic blacklist lambda$commitCompletion$19(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 672
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 673
    return-void

    .line 675
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 676
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 680
    :cond_16
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 681
    return-void

    .line 677
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitCompletion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method private synthetic blacklist lambda$commitContent$45(Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 15
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "imeUid"    # I
    .param p3, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p4, "flags"    # I
    .param p5, "opts"    # Landroid/os/Bundle;

    .line 1194
    const-string v1, "RemoteInputConnectionImpl"

    .line 1195
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1194
    invoke-static {v0, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    move v8, v0

    .line 1196
    .local v8, "contentUriOwnerUserId":I
    nop

    .line 1197
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1196
    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1198
    .local v6, "contentUriWithoutUserId":Landroid/net/Uri;
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_7e

    const/4 v5, 0x0

    const/4 v7, 0x1

    move v4, p2

    .end local p2    # "imeUid":I
    .local v4, "imeUid":I
    :try_start_20
    invoke-interface/range {v3 .. v8}, Landroid/app/IUriGrantsManager;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_7b

    .line 1204
    nop

    .line 1206
    .end local v6    # "contentUriWithoutUserId":Landroid/net/Uri;
    .end local v8    # "contentUriOwnerUserId":I
    invoke-direct {p0, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p2

    if-nez p2, :cond_2f

    .line 1207
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    return-object p2

    .line 1209
    :cond_2f
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    .line 1210
    .local p2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz p2, :cond_71

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_71

    .line 1214
    :cond_3e
    if-eqz p1, :cond_56

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_56

    .line 1219
    :cond_47
    :try_start_47
    invoke-interface {p2, p1, p4, p5}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/AbstractMethodError; {:try_start_47 .. :try_end_4f} :catch_50

    return-object v0

    .line 1220
    :catch_50
    move-exception v0

    .line 1222
    .local v0, "ignored":Ljava/lang/AbstractMethodError;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1215
    .end local v0    # "ignored":Ljava/lang/AbstractMethodError;
    :cond_56
    :goto_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitContent with invalid inputContentInfo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1211
    :cond_71
    :goto_71
    const-string v0, "commitContent on inactive InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1201
    .end local p2    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_7b
    move-exception v0

    move-object p2, v0

    goto :goto_81

    .end local v4    # "imeUid":I
    .local p2, "imeUid":I
    :catch_7e
    move-exception v0

    move v4, p2

    move-object p2, v0

    .line 1202
    .restart local v4    # "imeUid":I
    .local p2, "e":Ljava/lang/Exception;
    :goto_81
    const-string v0, "commitContent with invalid Uri permission from IME:"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$commitCorrection$20(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 688
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 689
    return-void

    .line 691
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 692
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1c

    .line 697
    :cond_16
    :try_start_16
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    :try_end_19
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_19} :catch_1a

    .line 700
    goto :goto_1b

    .line 698
    :catch_1a
    move-exception v1

    .line 701
    :goto_1b
    return-void

    .line 693
    :cond_1c
    :goto_1c
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitCorrection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method private synthetic blacklist lambda$commitText$17(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .line 639
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 640
    return-void

    .line 642
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 643
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 647
    :cond_16
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 648
    return-void

    .line 644
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method private synthetic blacklist lambda$commitTextWithTextAttribute$18(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 656
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 657
    return-void

    .line 659
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 660
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 664
    :cond_16
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 665
    return-void

    .line 661
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-void
.end method

.method private synthetic blacklist lambda$deactivate$1()V
    .registers 6

    .line 384
    const-string v0, "InputConnection#closeConnection"

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 386
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_5c

    .line 387
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_17

    .line 396
    iget-object v4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    return-void

    .line 391
    :cond_17
    :try_start_17
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_1a
    .catch Ljava/lang/AbstractMethodError; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_5c

    .line 394
    goto :goto_1c

    .line 392
    :catch_1b
    move-exception v4

    .line 396
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_1c
    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 398
    nop

    .line 401
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 402
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_5b

    .line 403
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 406
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_4e

    .line 410
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 411
    invoke-virtual {v0}, Landroid/view/View;->onInputConnectionClosedInternal()V

    goto :goto_4e

    .line 413
    :cond_43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda37;

    invoke-direct {v2, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda37;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 418
    .local v2, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_5b

    .line 419
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/HandwritingInitiator;->onInputConnectionClosed(Landroid/view/View;)V

    .line 422
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_5b
    return-void

    .line 396
    .end local v0    # "servedView":Landroid/view/View;
    :catchall_5c
    move-exception v3

    iget-object v4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 398
    throw v3
.end method

.method private synthetic blacklist lambda$deleteSurroundingText$32(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 913
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 914
    return-void

    .line 916
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 917
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 921
    :cond_16
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 922
    return-void

    .line 918
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void
.end method

.method private synthetic blacklist lambda$deleteSurroundingTextInCodePoints$33(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 930
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 931
    return-void

    .line 933
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 934
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1c

    .line 939
    :cond_16
    :try_start_16
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z
    :try_end_19
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_19} :catch_1a

    .line 942
    goto :goto_1b

    .line 940
    :catch_1a
    move-exception v1

    .line 943
    :goto_1b
    return-void

    .line 935
    :cond_1c
    :goto_1c
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method private synthetic blacklist lambda$dispatchReportFullscreenMode$4(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 484
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 485
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_13

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_13

    .line 488
    :cond_f
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 489
    return-void

    .line 486
    :cond_13
    :goto_13
    return-void
.end method

.method static synthetic blacklist lambda$dispatchWithTracing$48(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputConnection#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1457
    :try_start_18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_20

    .line 1459
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1460
    nop

    .line 1461
    return-void

    .line 1459
    :catchall_20
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1460
    throw v0
.end method

.method private synthetic blacklist lambda$dispatchWithTracing$49(Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V
    .registers 10
    .param p1, "supplier"    # Ljava/util/function/Supplier;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p3, "dumpProtoProvider"    # Ljava/util/function/Function;
    .param p4, "methodName"    # Ljava/lang/String;

    .line 1482
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_2d

    .line 1486
    .local v0, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 1487
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 1488
    if-eqz p3, :cond_2c

    .line 1489
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1490
    .local v1, "icProto":[B
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteInputConnectionImpl#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 1493
    .end local v1    # "icProto":[B
    :cond_2c
    return-void

    .line 1483
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catchall_2d
    move-exception v0

    .line 1484
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 1485
    throw v0
.end method

.method private synthetic blacklist lambda$endBatchEdit$35(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 966
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 967
    return-void

    .line 969
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 970
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 974
    :cond_16
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 975
    return-void

    .line 971
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "endBatchEdit on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void
.end method

.method private synthetic blacklist lambda$finishComposingText$29(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 856
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 862
    return-void

    .line 864
    :cond_7
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 865
    return-void

    .line 867
    :cond_e
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 868
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_24

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 869
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "finishComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 872
    :cond_24
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 873
    return-void
.end method

.method private synthetic blacklist lambda$finishComposingTextFromImm$28(I)V
    .registers 5
    .param p1, "currentSessionId"    # I

    .line 832
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 838
    return-void

    .line 840
    :cond_7
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_10

    .line 841
    return-void

    .line 843
    :cond_10
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 844
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_23

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_23

    .line 848
    :cond_1f
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 849
    return-void

    .line 845
    :cond_23
    :goto_23
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "finishComposingTextFromImm on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void
.end method

.method private synthetic blacklist lambda$forgetCancellationSignal$3(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 442
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    invoke-virtual {v0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->forget(Landroid/os/IBinder;)V

    .line 443
    return-void
.end method

.method private synthetic blacklist lambda$getCursorCapsMode$13(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "reqModes"    # I

    .line 605
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    .line 606
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 605
    if-nez v0, :cond_c

    .line 606
    return-object v1

    .line 608
    :cond_c
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 609
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_24

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_24

    .line 613
    :cond_1b
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 610
    :cond_24
    :goto_24
    const-string v2, "RemoteInputConnectionImpl"

    const-string v3, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-object v1
.end method

.method static synthetic blacklist lambda$getCursorCapsMode$14(ILjava/lang/Integer;)[B
    .registers 3
    .param p0, "reqModes"    # I
    .param p1, "result"    # Ljava/lang/Integer;

    .line 614
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getExtractedText$15(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p3, "flags"    # I

    .line 622
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 623
    return-object v1

    .line 625
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 626
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1c

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_1c

    .line 630
    :cond_17
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    return-object v1

    .line 627
    :cond_1c
    :goto_1c
    const-string v2, "RemoteInputConnectionImpl"

    const-string v3, "getExtractedText on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-object v1
.end method

.method static synthetic blacklist lambda$getExtractedText$16(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B
    .registers 4
    .param p0, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p1, "flags"    # I
    .param p2, "result"    # Landroid/view/inputmethod/ExtractedText;

    .line 631
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getSelectedText$10(ILjava/lang/CharSequence;)[B
    .registers 3
    .param p0, "flags"    # I
    .param p1, "result"    # Ljava/lang/CharSequence;

    .line 569
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getSelectedText$9(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "flags"    # I

    .line 555
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 556
    return-object v1

    .line 558
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 559
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1e

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_1e

    .line 564
    :cond_17
    :try_start_17
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/AbstractMethodError; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object v1

    .line 565
    :catch_1c
    move-exception v2

    .line 567
    .local v2, "ignored":Ljava/lang/AbstractMethodError;
    return-object v1

    .line 560
    .end local v2    # "ignored":Ljava/lang/AbstractMethodError;
    :cond_1e
    :goto_1e
    const-string v2, "RemoteInputConnectionImpl"

    const-string v3, "getSelectedText on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-object v1
.end method

.method private synthetic blacklist lambda$getSurroundingText$11(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .registers 10
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "flags"    # I

    .line 577
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 578
    return-object v1

    .line 580
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 581
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v2, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_50

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_50

    .line 585
    :cond_19
    if-gez p2, :cond_32

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid beforeLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-object v1

    .line 590
    :cond_32
    if-gez p3, :cond_4b

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getSurroundingText due to an invalid afterLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-object v1

    .line 595
    :cond_4b
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v1

    return-object v1

    .line 582
    :cond_50
    :goto_50
    const-string v3, "getSurroundingText on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-object v1
.end method

.method static synthetic blacklist lambda$getSurroundingText$12(IIILandroid/view/inputmethod/SurroundingText;)[B
    .registers 5
    .param p0, "beforeLength"    # I
    .param p1, "afterLength"    # I
    .param p2, "flags"    # I
    .param p3, "result"    # Landroid/view/inputmethod/SurroundingText;

    .line 596
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getTextAfterCursor$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I

    .line 511
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 512
    return-object v1

    .line 514
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 515
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v2, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_37

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_37

    .line 519
    :cond_19
    if-gez p2, :cond_32

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getTextAfterCursor due to an invalid length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-object v1

    .line 524
    :cond_32
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 516
    :cond_37
    :goto_37
    const-string v3, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-object v1
.end method

.method static synthetic blacklist lambda$getTextAfterCursor$6(IILjava/lang/CharSequence;)[B
    .registers 4
    .param p0, "length"    # I
    .param p1, "flags"    # I
    .param p2, "result"    # Ljava/lang/CharSequence;

    .line 525
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getTextBeforeCursor$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I

    .line 533
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 534
    return-object v1

    .line 536
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 537
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v2, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_37

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_37

    .line 541
    :cond_19
    if-gez p2, :cond_32

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning null to getTextBeforeCursor due to an invalid length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-object v1

    .line 546
    :cond_32
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 538
    :cond_37
    :goto_37
    const-string v3, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-object v1
.end method

.method static synthetic blacklist lambda$getTextBeforeCursor$8(IILjava/lang/CharSequence;)[B
    .registers 4
    .param p0, "length"    # I
    .param p1, "flags"    # I
    .param p2, "result"    # Ljava/lang/CharSequence;

    .line 547
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$performContextMenuAction$23(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 740
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 741
    return-void

    .line 743
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 744
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 748
    :cond_16
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 749
    return-void

    .line 745
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "performContextMenuAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void
.end method

.method private synthetic blacklist lambda$performEditorAction$22(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 724
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 725
    return-void

    .line 727
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 728
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 732
    :cond_16
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 733
    return-void

    .line 729
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "performEditorAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-void
.end method

.method static synthetic blacklist lambda$performHandwritingGesture$38(Landroid/os/ResultReceiver;I)V
    .registers 3
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p1, "resultCode"    # I

    .line 1056
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$performHandwritingGesture$39(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V
    .registers 9
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "gesture"    # Landroid/view/inputmethod/HandwritingGesture;

    .line 1033
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 1034
    if-eqz p2, :cond_d

    .line 1035
    invoke-virtual {p2, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1038
    :cond_d
    return-void

    .line 1040
    :cond_e
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1041
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_34

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_34

    .line 1052
    :cond_1d
    nop

    .line 1054
    if-eqz p2, :cond_26

    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_27

    :cond_26
    move-object v1, v2

    .line 1055
    :goto_27
    if-eqz p2, :cond_2f

    .line 1056
    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda27;

    invoke-direct {v2, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda27;-><init>(Landroid/os/ResultReceiver;)V

    goto :goto_30

    .line 1057
    :cond_2f
    nop

    .line 1052
    :goto_30
    invoke-interface {v0, p3, v1, v2}, Landroid/view/inputmethod/InputConnection;->performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 1058
    return-void

    .line 1042
    :cond_34
    :goto_34
    const-string v3, "RemoteInputConnectionImpl"

    const-string v4, "performHandwritingGesture on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    if-eqz p2, :cond_40

    .line 1044
    invoke-virtual {p2, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1047
    :cond_40
    return-void
.end method

.method private synthetic blacklist lambda$performPrivateCommand$37(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 999
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1000
    return-void

    .line 1002
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1003
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 1007
    :cond_16
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1008
    return-void

    .line 1004
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "performPrivateCommand on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void
.end method

.method private synthetic blacklist lambda$performSpellCheck$36(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 982
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 983
    return-void

    .line 985
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 986
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 990
    :cond_16
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->performSpellCheck()Z

    .line 991
    return-void

    .line 987
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "performSpellCheck on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return-void
.end method

.method private synthetic blacklist lambda$previewHandwritingGesture$40(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "gesture"    # Landroid/view/inputmethod/PreviewableHandwritingGesture;

    .line 1076
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_f

    .line 1077
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2a

    .line 1080
    :cond_f
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1081
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_22

    .line 1086
    :cond_1e
    invoke-interface {v0, p3, p2}, Landroid/view/inputmethod/InputConnection;->previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z

    .line 1087
    return-void

    .line 1082
    :cond_22
    :goto_22
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "previewHandwritingGesture on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-void

    .line 1078
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2a
    :goto_2a
    return-void
.end method

.method private synthetic blacklist lambda$replaceText$47(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 14
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "text"    # Ljava/lang/CharSequence;
    .param p5, "newCursorPosition"    # I
    .param p6, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 1255
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1256
    return-void

    .line 1258
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1259
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_24

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    goto :goto_29

    .line 1263
    :cond_1b
    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "text":Ljava/lang/CharSequence;
    .end local p5    # "newCursorPosition":I
    .end local p6    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .local v2, "start":I
    .local v3, "end":I
    .local v4, "text":Ljava/lang/CharSequence;
    .local v5, "newCursorPosition":I
    .local v6, "textAttribute":Landroid/view/inputmethod/TextAttribute;
    invoke-interface/range {v1 .. v6}, Landroid/view/inputmethod/InputConnection;->replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 1264
    return-void

    .line 1259
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "newCursorPosition":I
    .end local v6    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    .restart local p4    # "text":Ljava/lang/CharSequence;
    .restart local p5    # "newCursorPosition":I
    .restart local p6    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    :cond_24
    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 1260
    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "text":Ljava/lang/CharSequence;
    .end local p5    # "newCursorPosition":I
    .end local p6    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .restart local v2    # "start":I
    .restart local v3    # "end":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    .restart local v5    # "newCursorPosition":I
    .restart local v6    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    :goto_29
    const-string p2, "RemoteInputConnectionImpl"

    const-string/jumbo p3, "replaceText on inactive InputConnection"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return-void
.end method

.method private synthetic blacklist lambda$requestCursorUpdates$41(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "imeDisplayId"    # I

    .line 1103
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1106
    :cond_c
    invoke-direct {p0, p2, v1, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesInternal(III)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$requestCursorUpdatesWithFilter$42(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "cursorUpdateFilter"    # I
    .param p4, "imeDisplayId"    # I

    .line 1117
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1118
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1120
    :cond_c
    invoke-direct {p0, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesInternal(III)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$requestTextBoundsInfo$43(Landroid/os/ResultReceiver;Landroid/view/inputmethod/TextBoundsInfoResult;)V
    .registers 5
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p1, "textBoundsInfoResult"    # Landroid/view/inputmethod/TextBoundsInfoResult;

    .line 1176
    invoke-virtual {p1}, Landroid/view/inputmethod/TextBoundsInfoResult;->getResultCode()I

    move-result v0

    .line 1177
    .local v0, "resultCode":I
    nop

    .line 1178
    invoke-virtual {p1}, Landroid/view/inputmethod/TextBoundsInfoResult;->getTextBoundsInfo()Landroid/view/inputmethod/TextBoundsInfo;

    move-result-object v1

    .line 1179
    .local v1, "textBoundsInfo":Landroid/view/inputmethod/TextBoundsInfo;
    nop

    .line 1180
    if-nez v1, :cond_e

    const/4 v2, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Landroid/view/inputmethod/TextBoundsInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 1179
    :goto_12
    invoke-virtual {p0, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1181
    return-void
.end method

.method private synthetic blacklist lambda$requestTextBoundsInfo$44(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V
    .registers 9
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "bounds"    # Landroid/graphics/RectF;

    .line 1161
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_c

    .line 1162
    invoke-virtual {p2, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1163
    return-void

    .line 1165
    :cond_c
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1166
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_29

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_29

    .line 1172
    :cond_1b
    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;

    invoke-direct {v2, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {v0, p3, v1, v2}, Landroid/view/inputmethod/InputConnection;->requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1182
    return-void

    .line 1167
    :cond_29
    :goto_29
    const-string v3, "RemoteInputConnectionImpl"

    const-string/jumbo v4, "requestTextBoundsInfo on inactive InputConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {p2, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1169
    return-void
.end method

.method private synthetic blacklist lambda$scheduleInvalidateInput$0(ZI)V
    .registers 14
    .param p1, "isRestarting"    # Z
    .param p2, "nextSessionId"    # I

    .line 299
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_a1

    if-eqz v1, :cond_d

    .line 365
    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    return-void

    .line 304
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_a1

    .line 305
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_19

    .line 365
    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 308
    return-void

    .line 310
    :cond_19
    :try_start_19
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getServedView()Landroid/view/View;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_a1

    .line 311
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_25

    .line 365
    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 314
    return-void

    .line 317
    :cond_25
    :try_start_25
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 319
    .local v3, "icClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    nop

    .line 320
    invoke-static {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->contains(Ljava/lang/Class;)Z

    move-result v4

    .line 322
    .local v4, "alwaysTrueEndBatchEditDetected":Z
    if-nez v4, :cond_72

    .line 324
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v5

    .line 325
    .local v5, "supportsBatchEdit":Z
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 326
    if-eqz v5, :cond_72

    .line 328
    const/4 v6, 0x0

    .line 330
    .local v6, "retryCount":I
    :cond_3a
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v7

    if-nez v7, :cond_41

    .line 331
    goto :goto_72

    .line 333
    :cond_41
    add-int/lit8 v6, v6, 0x1

    .line 334
    const/16 v7, 0x10

    if-le v6, v7, :cond_3a

    .line 335
    const-string v8, "RemoteInputConnectionImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#endBatchEdit() still returns true even after retrying "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " times.  Falling back to InputMethodManager#restartInput(View)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v4, 0x1

    .line 340
    invoke-static {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->add(Ljava/lang/Class;)V

    .line 341
    nop

    .line 346
    .end local v5    # "supportsBatchEdit":Z
    .end local v6    # "retryCount":I
    :cond_72
    :goto_72
    if-eqz p1, :cond_7f

    .line 351
    iget-object v5, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V
    :try_end_79
    .catchall {:try_start_25 .. :try_end_79} :catchall_a1

    .line 365
    iget-object v5, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 352
    return-void

    .line 355
    :cond_7f
    if-nez v4, :cond_95

    .line 356
    :try_start_81
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->takeSnapshot()Landroid/view/inputmethod/TextSnapshot;

    move-result-object v5

    .line 357
    .local v5, "textSnapshot":Landroid/view/inputmethod/TextSnapshot;
    if-eqz v5, :cond_95

    iget-object v6, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, p0, v5, p2}, Landroid/view/inputmethod/InputMethodManager;->doInvalidateInput(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z

    move-result v6
    :try_end_8d
    .catchall {:try_start_81 .. :try_end_8d} :catchall_a1

    if-eqz v6, :cond_95

    .line 365
    iget-object v6, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 359
    return-void

    .line 363
    .end local v5    # "textSnapshot":Landroid/view/inputmethod/TextSnapshot;
    :cond_95
    :try_start_95
    iget-object v5, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_a1

    .line 365
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "icClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    .end local v4    # "alwaysTrueEndBatchEditDetected":Z
    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 366
    nop

    .line 367
    return-void

    .line 365
    :catchall_a1
    move-exception v1

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 366
    throw v1
.end method

.method private synthetic blacklist lambda$sendKeyEvent$30(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 880
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 881
    return-void

    .line 883
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 884
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 888
    :cond_16
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 889
    return-void

    .line 885
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "sendKeyEvent on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-void
.end method

.method private synthetic blacklist lambda$setComposingRegion$24(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 756
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 757
    return-void

    .line 759
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 760
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1c

    .line 765
    :cond_16
    :try_start_16
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z
    :try_end_19
    .catch Ljava/lang/AbstractMethodError; {:try_start_16 .. :try_end_19} :catch_1a

    .line 768
    goto :goto_1b

    .line 766
    :catch_1a
    move-exception v1

    .line 769
    :goto_1b
    return-void

    .line 761
    :cond_1c
    :goto_1c
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setComposingRegion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void
.end method

.method private synthetic blacklist lambda$setComposingRegionWithTextAttribute$25(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 777
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 778
    return-void

    .line 780
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 781
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 785
    :cond_16
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z

    .line 786
    return-void

    .line 782
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setComposingRegion on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private synthetic blacklist lambda$setComposingText$26(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .line 794
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 795
    return-void

    .line 797
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 798
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 802
    :cond_16
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 803
    return-void

    .line 799
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void
.end method

.method private synthetic blacklist lambda$setComposingTextWithTextAttribute$27(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 811
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 812
    return-void

    .line 814
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 815
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 819
    :cond_16
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 820
    return-void

    .line 816
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setComposingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method private synthetic blacklist lambda$setImeConsumesInput$46(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "imeConsumesInput"    # Z

    .line 1231
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1232
    return-void

    .line 1234
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1235
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 1239
    :cond_16
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->setImeConsumesInput(Z)Z

    .line 1240
    return-void

    .line 1236
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setImeConsumesInput on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void
.end method

.method private synthetic blacklist lambda$setSelection$21(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 708
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 709
    return-void

    .line 711
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 712
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    .line 716
    :cond_16
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 717
    return-void

    .line 713
    :cond_1a
    :goto_1a
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setSelection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void
.end method

.method private blacklist requestCursorUpdatesInternal(III)Z
    .registers 13
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I
    .param p3, "imeDisplayId"    # I

    .line 1128
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1129
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    if-eqz v0, :cond_82

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_82

    .line 1133
    :cond_11
    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1134
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getDisplayId()I

    move-result v2

    if-eq v2, p3, :cond_24

    .line 1136
    return v1

    .line 1138
    :cond_24
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    move v2, v3

    goto :goto_2c

    :cond_2b
    move v2, v1

    .line 1140
    .local v2, "hasImmediate":Z
    :goto_2c
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_32

    move v4, v3

    goto :goto_33

    :cond_32
    move v4, v1

    .line 1142
    .local v4, "hasMonitoring":Z
    :goto_33
    const/4 v5, 0x0

    .line 1144
    .local v5, "result":Z
    :try_start_34
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(II)Z

    move-result v6
    :try_end_38
    .catch Ljava/lang/AbstractMethodError; {:try_start_34 .. :try_end_38} :catch_68
    .catchall {:try_start_34 .. :try_end_38} :catchall_50

    .line 1145
    .end local v5    # "result":Z
    .local v6, "result":Z
    nop

    .line 1150
    iget-object v5, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_41

    if-eqz v2, :cond_41

    move v7, v3

    goto :goto_42

    :cond_41
    move v7, v1

    :goto_42
    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1151
    iget-object v5, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v6, :cond_4c

    if-eqz v4, :cond_4c

    move v1, v3

    :cond_4c
    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1145
    return v6

    .line 1150
    .end local v6    # "result":Z
    .restart local v5    # "result":Z
    :catchall_50
    move-exception v6

    iget-object v7, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v5, :cond_59

    if-eqz v2, :cond_59

    move v8, v3

    goto :goto_5a

    :cond_59
    move v8, v1

    :goto_5a
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1151
    iget-object v7, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v5, :cond_64

    if-eqz v4, :cond_64

    move v1, v3

    :cond_64
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1152
    throw v6

    .line 1146
    :catch_68
    move-exception v6

    .line 1148
    .local v6, "ignored":Ljava/lang/AbstractMethodError;
    nop

    .line 1150
    iget-object v7, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v5, :cond_72

    if-eqz v2, :cond_72

    move v8, v3

    goto :goto_73

    :cond_72
    move v8, v1

    :goto_73
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1151
    iget-object v7, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v5, :cond_7d

    if-eqz v4, :cond_7d

    goto :goto_7e

    :cond_7d
    move v3, v1

    :goto_7e
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1148
    return v1

    .line 1130
    .end local v2    # "hasImmediate":Z
    .end local v4    # "hasMonitoring":Z
    .end local v5    # "result":Z
    .end local v6    # "ignored":Ljava/lang/AbstractMethodError;
    :cond_82
    :goto_82
    const-string v2, "RemoteInputConnectionImpl"

    const-string/jumbo v3, "requestCursorUpdates on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return v1
.end method

.method private static blacklist useImeTracing()Z
    .registers 1

    .line 1497
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .registers 2

    .line 1437
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    return-object v0
.end method

.method public blacklist beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 949
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda18;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string v1, "beginBatchEdit"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 960
    return-void
.end method

.method public blacklist cancelCancellationSignal(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 428
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    if-nez v0, :cond_5

    .line 429
    return-void

    .line 431
    :cond_5
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda45;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method public blacklist clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "states"    # I

    .line 895
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda14;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v1, "clearMetaKeyStates"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 906
    return-void
.end method

.method public blacklist commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 671
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda10;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    const-string v1, "commitCompletion"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 682
    return-void
.end method

.method public blacklist commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 13
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 1190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1191
    .local v3, "imeUid":I
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local p2    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .end local p3    # "flags":I
    .end local p4    # "opts":Landroid/os/Bundle;
    .local v2, "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .local v4, "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .local v5, "flags":I
    .local v6, "opts":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)V

    const-string p1, "commitContent"

    invoke-direct {p0, p1, p5, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    .line 1225
    return-void
.end method

.method public blacklist commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 687
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    const-string v1, "commitCorrection"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 702
    return-void
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .line 638
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda46;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    const-string v1, "commitText"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method

.method public blacklist commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 11
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 655
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda26;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "newCursorPosition":I
    .end local p4    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .local v2, "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .local v3, "text":Ljava/lang/CharSequence;
    .local v4, "newCursorPosition":I
    .local v5, "textAttribute":Landroid/view/inputmethod/TextAttribute;
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda26;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string p1, "commitTextWithTextAttribute"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 666
    return-void
.end method

.method public blacklist deactivate()V
    .registers 3

    .line 378
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 381
    return-void

    .line 383
    :cond_a
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda17;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method public blacklist deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 912
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda44;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string v1, "deleteSurroundingText"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 923
    return-void
.end method

.method public blacklist deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 929
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda21;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string v1, "deleteSurroundingTextInCodePoints"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 944
    return-void
.end method

.method public blacklist dispatchReportFullscreenMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 483
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda50;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Z)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 490
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 463
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    .line 469
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    instance-of v1, v0, Landroid/view/inputmethod/DumpableInputConnection;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 470
    move-object v1, v0

    check-cast v1, Landroid/view/inputmethod/DumpableInputConnection;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/inputmethod/DumpableInputConnection;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 472
    :cond_1a
    return-void
.end method

.method public blacklist endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 965
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda13;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string v1, "endBatchEdit"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 976
    return-void
.end method

.method public blacklist finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 855
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda20;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string v1, "finishComposingText"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 874
    return-void
.end method

.method public blacklist finishComposingTextFromImm()V
    .registers 4

    .line 830
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 831
    .local v0, "currentSessionId":I
    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda12;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;I)V

    const-string v2, "finishComposingTextFromImm"

    invoke-direct {p0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 850
    return-void
.end method

.method public blacklist forgetCancellationSignal(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 438
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    if-nez v0, :cond_5

    .line 439
    return-void

    .line 441
    :cond_5
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda38;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public blacklist getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "reqModes"    # I
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 604
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 614
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda3;-><init>(I)V

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 604
    :goto_12
    const-string v2, "getCursorCapsMode"

    invoke-direct {p0, v2, p3, v0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 615
    return-void
.end method

.method public blacklist getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p3, "flags"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 621
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)V

    .line 631
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda23;

    invoke-direct {v1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda23;-><init>(Landroid/view/inputmethod/ExtractedTextRequest;I)V

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 621
    :goto_12
    const-string v2, "getExtractedText"

    invoke-direct {p0, v2, p4, v0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 632
    return-void
.end method

.method public blacklist getInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public blacklist getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "flags"    # I
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 554
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 569
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda32;

    invoke-direct {v1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda32;-><init>(I)V

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 554
    :goto_12
    const-string v2, "getSelectedText"

    invoke-direct {p0, v2, p3, v0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 570
    return-void
.end method

.method public blacklist getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .registers 12
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "flags"    # I
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 576
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local p2    # "beforeLength":I
    .end local p3    # "afterLength":I
    .end local p4    # "flags":I
    .local v2, "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .local v3, "beforeLength":I
    .local v4, "afterLength":I
    .local v5, "flags":I
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda7;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    .line 596
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_16

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda8;

    invoke-direct {p1, v3, v4, v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda8;-><init>(III)V

    goto :goto_17

    .line 597
    :cond_16
    const/4 p1, 0x0

    .line 576
    :goto_17
    const-string p2, "getSurroundingText"

    invoke-direct {p0, p2, p5, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 598
    return-void
.end method

.method public blacklist getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 510
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda24;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 525
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda25;

    invoke-direct {v1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda25;-><init>(II)V

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 510
    :goto_12
    const-string v2, "getTextAfterCursor"

    invoke-direct {p0, v2, p4, v0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 526
    return-void
.end method

.method public blacklist getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 532
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda34;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 547
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;

    invoke-direct {v1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;-><init>(II)V

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 532
    :goto_12
    const-string v2, "getTextBeforeCursor"

    invoke-direct {p0, v2, p4, v0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 548
    return-void
.end method

.method public blacklist hasPendingInvalidation()Z
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist isAssociatedWith(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 239
    if-nez p1, :cond_4

    .line 240
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_4
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isCursorAnchorInfoMonitoring()Z
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 739
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda5;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v1, "performContextMenuAction"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 750
    return-void
.end method

.method public blacklist performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 723
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda33;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v1, "performEditorAction"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 734
    return-void
.end method

.method public blacklist performHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/ResultReceiver;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "gestureContainer"    # Landroid/view/inputmethod/ParcelableHandwritingGesture;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1016
    invoke-virtual {p2}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->get()Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v0

    .line 1017
    .local v0, "gesture":Landroid/view/inputmethod/HandwritingGesture;
    instance-of v1, v0, Landroid/view/inputmethod/CancellableHandwritingGesture;

    if-eqz v1, :cond_2a

    .line 1019
    move-object v1, v0

    check-cast v1, Landroid/view/inputmethod/CancellableHandwritingGesture;

    .line 1021
    .local v1, "cancellableGesture":Landroid/view/inputmethod/CancellableHandwritingGesture;
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Receiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/CancellableHandwritingGesture;->unbeamCancellationSignal(Landroid/os/CancellationSignalBeamer$Receiver;)V

    .line 1022
    invoke-virtual {v1}, Landroid/view/inputmethod/CancellableHandwritingGesture;->getCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 1023
    invoke-virtual {v1}, Landroid/view/inputmethod/CancellableHandwritingGesture;->getCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1025
    if-eqz p3, :cond_29

    .line 1026
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1029
    :cond_29
    return-void

    .line 1032
    .end local v1    # "cancellableGesture":Landroid/view/inputmethod/CancellableHandwritingGesture;
    :cond_2a
    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1, p3, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V

    const-string v2, "performHandwritingGesture"

    invoke-direct {p0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1059
    return-void
.end method

.method public blacklist performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 998
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda39;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "performPrivateCommand"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1009
    return-void
.end method

.method public blacklist performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .registers 4
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 981
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda40;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string v1, "performSpellCheck"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 992
    return-void
.end method

.method public blacklist previewHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "gestureContainer"    # Landroid/view/inputmethod/ParcelableHandwritingGesture;
    .param p3, "cancellationSignalToken"    # Landroid/os/IBinder;

    .line 1067
    if-eqz p3, :cond_b

    .line 1068
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Receiver;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/CancellationSignalBeamer$Receiver;->unbeam(Landroid/os/IBinder;)Landroid/os/CancellationSignal;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1072
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_c
    nop

    .line 1073
    invoke-virtual {p2}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->get()Landroid/view/inputmethod/HandwritingGesture;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/PreviewableHandwritingGesture;

    .line 1075
    .local v1, "gesture":Landroid/view/inputmethod/PreviewableHandwritingGesture;
    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V

    const-string v3, "previewHandwritingGesture"

    invoke-direct {p0, v3, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1088
    return-void
.end method

.method public blacklist replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 15
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "text"    # Ljava/lang/CharSequence;
    .param p5, "newCursorPosition"    # I
    .param p6, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 1252
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda49;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "text":Ljava/lang/CharSequence;
    .end local p5    # "newCursorPosition":I
    .end local p6    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .local v2, "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .local v3, "start":I
    .local v4, "end":I
    .local v5, "text":Ljava/lang/CharSequence;
    .local v6, "newCursorPosition":I
    .local v7, "textAttribute":Landroid/view/inputmethod/TextAttribute;
    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda49;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo p1, "replaceText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1265
    return-void
.end method

.method public blacklist requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "imeDisplayId"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 1102
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda47;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v1, "requestCursorUpdates"

    invoke-direct {p0, v1, p4, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    .line 1109
    return-void
.end method

.method public blacklist requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .registers 12
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "cursorUpdateMode"    # I
    .param p3, "cursorUpdateFilter"    # I
    .param p4, "imeDisplayId"    # I
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 1116
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local p2    # "cursorUpdateMode":I
    .end local p3    # "cursorUpdateFilter":I
    .end local p4    # "imeDisplayId":I
    .local v2, "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .local v3, "cursorUpdateMode":I
    .local v4, "cursorUpdateFilter":I
    .local v5, "imeDisplayId":I
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda11;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    const-string/jumbo p1, "requestCursorUpdates"

    invoke-direct {p0, p1, p5, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    .line 1123
    return-void
.end method

.method public blacklist requestTextBoundsInfo(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/graphics/RectF;Landroid/os/ResultReceiver;)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1160
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V

    const-string/jumbo v1, "requestTextBoundsInfo"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1183
    return-void
.end method

.method public blacklist resetHasPendingImmediateCursorAnchorInfoUpdate()Z
    .registers 3

    .line 259
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist scheduleInvalidateInput()V
    .registers 2

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->scheduleInvalidateInput(Z)V

    .line 282
    return-void
.end method

.method blacklist scheduleInvalidateInput(Z)V
    .registers 5
    .param p1, "isRestarting"    # Z

    .line 291
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 293
    if-eqz p1, :cond_e

    const/4 v0, -0x1

    goto :goto_14

    :cond_e
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 297
    .local v0, "nextSessionId":I
    :goto_14
    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda15;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    .end local v0    # "nextSessionId":I
    :cond_1e
    return-void
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 879
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda41;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo v1, "sendKeyEvent"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 890
    return-void
.end method

.method public blacklist setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 755
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda6;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v1, "setComposingRegion"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 770
    return-void
.end method

.method public blacklist setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .registers 11
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 776
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda19;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .local v2, "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .local v3, "start":I
    .local v4, "end":I
    .local v5, "textAttribute":Landroid/view/inputmethod/TextAttribute;
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda19;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo p1, "setComposingRegionWithTextAttribute"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method

.method public blacklist setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .line 793
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda28;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    const-string/jumbo v1, "setComposingText"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 804
    return-void
.end method

.method public blacklist setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 11
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 810
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda48;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "newCursorPosition":I
    .end local p4    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .local v2, "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .local v3, "text":Ljava/lang/CharSequence;
    .local v4, "newCursorPosition":I
    .local v5, "textAttribute":Landroid/view/inputmethod/TextAttribute;
    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda48;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo p1, "setComposingTextWithTextAttribute"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 821
    return-void
.end method

.method public blacklist setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .registers 5
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "imeConsumesInput"    # Z

    .line 1230
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda30;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    const-string/jumbo v1, "setImeConsumesInput"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1241
    return-void
.end method

.method public blacklist setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 707
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda9;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v1, "setSelection"

    invoke-direct {p0, v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 718
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteInputConnectionImpl{connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDeactivateRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 450
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mServedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    .line 451
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    return-object v0
.end method
