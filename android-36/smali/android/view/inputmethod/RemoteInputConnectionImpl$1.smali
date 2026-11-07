.class Landroid/view/inputmethod/RemoteInputConnectionImpl$1;
.super Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$3mhKHtk_g_9EEQwcxzmqObRs10s(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$clearMetaKeyStates$10(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BhrG0JqFo30bEfXozs3qs2WAo8g(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$performEditorAction$6(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KmheW7rzJC5w0l5QNkFmlmdSXPQ(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$deleteSurroundingText$4(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Mg3pt59RqjLud-5e4Ud3_FIstiM(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$sendKeyEvent$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b51gX3RRgWNBVYCcVWB-Tm7udJw(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$setSelection$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mFHuHl3Rjv4gPSnQARECkdT9SuQ(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$commitText$0(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mkFDahAR9XR6GDIWTy7xqO4hqpY(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$performContextMenuAction$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sItCemcWTZ6fB0FwT6P0i8Z_-Qg(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$getCursorCapsMode$8(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$x_f5W60SvD2VREVacz848EArq7M(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->lambda$getSurroundingText$2(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/inputmethod/RemoteInputConnectionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1268
    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$clearMetaKeyStates$10(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "states"    # I

    .line 1420
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1421
    return-void

    .line 1423
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1424
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_22

    .line 1428
    :cond_1e
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 1429
    return-void

    .line 1425
    :cond_22
    :goto_22
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    return-void
.end method

.method private synthetic blacklist lambda$commitText$0(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 1274
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1275
    return-void

    .line 1277
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1278
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2b

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2b

    .line 1283
    :cond_1e
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1284
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1285
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 1286
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1287
    return-void

    .line 1279
    :cond_2b
    :goto_2b
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "commitText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    return-void
.end method

.method private synthetic blacklist lambda$deleteSurroundingText$4(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 1339
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1340
    return-void

    .line 1342
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1343
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_22

    .line 1347
    :cond_1e
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1348
    return-void

    .line 1344
    :cond_22
    :goto_22
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    return-void
.end method

.method private synthetic blacklist lambda$getCursorCapsMode$8(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "reqModes"    # I

    .line 1404
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1405
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1404
    if-nez v0, :cond_e

    .line 1405
    return-object v1

    .line 1407
    :cond_e
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1408
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2c

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_2c

    .line 1412
    :cond_23
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1409
    :cond_2c
    :goto_2c
    const-string v2, "RemoteInputConnectionImpl"

    const-string v3, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return-object v1
.end method

.method static synthetic blacklist lambda$getCursorCapsMode$9(ILjava/lang/Integer;)[B
    .registers 3
    .param p0, "reqModes"    # I
    .param p1, "result"    # Ljava/lang/Integer;

    .line 1413
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getSurroundingText$2(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .registers 10
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "flags"    # I

    .line 1311
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1312
    return-object v1

    .line 1314
    :cond_a
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1315
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v2, "RemoteInputConnectionImpl"

    if-eqz v0, :cond_58

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_58

    .line 1319
    :cond_21
    if-gez p2, :cond_3a

    .line 1320
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

    .line 1322
    return-object v1

    .line 1324
    :cond_3a
    if-gez p3, :cond_53

    .line 1325
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

    .line 1327
    return-object v1

    .line 1329
    :cond_53
    invoke-interface {v0, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v1

    return-object v1

    .line 1316
    :cond_58
    :goto_58
    const-string v3, "getSurroundingText on inactive InputConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return-object v1
.end method

.method static synthetic blacklist lambda$getSurroundingText$3(IIILandroid/view/inputmethod/SurroundingText;)[B
    .registers 5
    .param p0, "beforeLength"    # I
    .param p1, "afterLength"    # I
    .param p2, "flags"    # I
    .param p3, "result"    # Landroid/view/inputmethod/SurroundingText;

    .line 1330
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$performContextMenuAction$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 1387
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1388
    return-void

    .line 1390
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1391
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_22

    .line 1395
    :cond_1e
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 1396
    return-void

    .line 1392
    :cond_22
    :goto_22
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "performContextMenuAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-void
.end method

.method private synthetic blacklist lambda$performEditorAction$6(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 1371
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1372
    return-void

    .line 1374
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1375
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_22

    .line 1379
    :cond_1e
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 1380
    return-void

    .line 1376
    :cond_22
    :goto_22
    const-string v1, "RemoteInputConnectionImpl"

    const-string v2, "performEditorAction on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    return-void
.end method

.method private synthetic blacklist lambda$sendKeyEvent$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1355
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1356
    return-void

    .line 1358
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1359
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_22

    .line 1363
    :cond_1e
    invoke-interface {v0, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1364
    return-void

    .line 1360
    :cond_22
    :goto_22
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "sendKeyEvent on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void
.end method

.method private synthetic blacklist lambda$setSelection$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1294
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1295
    return-void

    .line 1297
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1298
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_22

    .line 1302
    :cond_1e
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1303
    return-void

    .line 1299
    :cond_22
    :goto_22
    const-string v1, "RemoteInputConnectionImpl"

    const-string/jumbo v2, "setSelection on inactive InputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-void
.end method


# virtual methods
.method public blacklist clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "states"    # I

    .line 1419
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v2, "clearMetaKeyStatesFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1430
    return-void
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 12
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I
    .param p4, "textAttribute"    # Landroid/view/inputmethod/TextAttribute;

    .line 1273
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local p2    # "text":Ljava/lang/CharSequence;
    .end local p3    # "newCursorPosition":I
    .end local p4    # "textAttribute":Landroid/view/inputmethod/TextAttribute;
    .local v3, "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .local v4, "text":Ljava/lang/CharSequence;
    .local v5, "newCursorPosition":I
    .local v6, "textAttribute":Landroid/view/inputmethod/TextAttribute;
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda6;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string p1, "commitTextFromA11yIme"

    invoke-static {v0, p1, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method public blacklist deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .line 1338
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda5;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string v2, "deleteSurroundingTextFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1349
    return-void
.end method

.method public blacklist getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 8
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "reqModes"    # I
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 1403
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda7;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 1413
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;

    invoke-direct {v2, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda8;-><init>(I)V

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 1403
    :goto_14
    const-string v3, "getCursorCapsModeFromA11yIme"

    invoke-static {v0, v3, p3, v1, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 1414
    return-void
.end method

.method public blacklist getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .registers 13
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "flags"    # I
    .param p5, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 1310
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .end local p2    # "beforeLength":I
    .end local p3    # "afterLength":I
    .end local p4    # "flags":I
    .local v3, "header":Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .local v4, "beforeLength":I
    .local v5, "afterLength":I
    .local v6, "flags":I
    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda3;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    .line 1330
    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$smuseImeTracing()Z

    move-result p1

    if-eqz p1, :cond_18

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;

    invoke-direct {p1, v4, v5, v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda4;-><init>(III)V

    goto :goto_19

    .line 1331
    :cond_18
    const/4 p1, 0x0

    .line 1310
    :goto_19
    const-string p2, "getSurroundingTextFromA11yIme"

    invoke-static {v0, p2, p5, v1, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 1332
    return-void
.end method

.method public blacklist performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 1386
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda9;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v2, "performContextMenuActionFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1397
    return-void
.end method

.method public blacklist performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "id"    # I

    .line 1370
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string v2, "performEditorActionFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1381
    return-void
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1354
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo v2, "sendKeyEventFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1365
    return-void
.end method

.method public blacklist setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .registers 7
    .param p1, "header"    # Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1293
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1$$ExternalSyntheticLambda10;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$1;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo v2, "setSelectionFromA11yIme"

    invoke-static {v0, v2, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1304
    return-void
.end method
