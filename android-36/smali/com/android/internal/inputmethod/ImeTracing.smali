.class public abstract Lcom/android/internal/inputmethod/ImeTracing;
.super Ljava/lang/Object;
.source "ImeTracing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    }
.end annotation


# static fields
.field public static final blacklist IME_TRACING_FROM_CLIENT:I = 0x0

.field public static final blacklist IME_TRACING_FROM_IMMS:I = 0x2

.field public static final blacklist IME_TRACING_FROM_IMS:I = 0x1

.field public static final blacklist PROTO_ARG:Ljava/lang/String; = "--proto-com-android-imetracing"

.field static final blacklist TAG:Ljava/lang/String; = "imeTracing"

.field static blacklist sEnabled:Z

.field private static blacklist sInstance:Lcom/android/internal/inputmethod/ImeTracing;


# instance fields
.field protected blacklist mDumpInProgress:Z

.field protected final blacklist mDumpInProgressLock:Ljava/lang/Object;

.field private final blacklist mIsAvailable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/view/inputmethod/InputMethodManagerGlobal;->isImeTraceAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mIsAvailable:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mDumpInProgressLock:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/inputmethod/ImeTracing;
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    if-nez v0, :cond_27

    .line 63
    invoke-static {}, Landroid/tracing/Flags;->perfettoIme()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 64
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    goto :goto_27

    .line 65
    :cond_12
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->isSystemProcess()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 66
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    goto :goto_27

    .line 68
    :cond_20
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    .line 71
    :cond_27
    :goto_27
    sget-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    return-object v0
.end method

.method private static blacklist isSystemProcess()Z
    .registers 1

    .line 200
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$sendToService$0(Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 85
    const-string v0, "imeTracing"

    const-string v1, "Exception while sending ime-related dump to server"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic blacklist lambda$startImeTrace$1(Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 93
    const-string v0, "imeTracing"

    const-string v1, "Could not start ime trace."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic blacklist lambda$stopImeTrace$2(Landroid/os/RemoteException;)V
    .registers 3
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 101
    const-string v0, "imeTracing"

    const-string v1, "Could not stop ime trace."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public abstract blacklist addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
.end method

.method public blacklist isAvailable()Z
    .registers 2

    .line 182
    iget-boolean v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mIsAvailable:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 175
    sget-boolean v0, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    return v0
.end method

.method protected blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .line 204
    const-string v0, "imeTracing"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz p1, :cond_d

    .line 206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 209
    :cond_d
    return-void
.end method

.method public blacklist saveForBugreport(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 160
    return-void
.end method

.method protected blacklist sendToService([BILjava/lang/String;)V
    .registers 5
    .param p1, "protoDump"    # [B
    .param p2, "source"    # I
    .param p3, "where"    # Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, p2, p3, v0}, Landroid/view/inputmethod/InputMethodManagerGlobal;->startProtoDump([BILjava/lang/String;Ljava/util/function/Consumer;)V

    .line 86
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 168
    sput-boolean p1, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    .line 169
    return-void
.end method

.method public final blacklist startImeTrace()V
    .registers 2

    .line 93
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerGlobal;->startImeTrace(Ljava/util/function/Consumer;)V

    .line 94
    return-void
.end method

.method public abstract blacklist startTrace(Ljava/io/PrintWriter;)V
.end method

.method public final blacklist stopImeTrace()V
    .registers 2

    .line 101
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracing$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerGlobal;->stopImeTrace(Ljava/util/function/Consumer;)V

    .line 102
    return-void
.end method

.method public abstract blacklist stopTrace(Ljava/io/PrintWriter;)V
.end method

.method public abstract blacklist triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
.end method

.method public abstract blacklist triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V
.end method

.method public abstract blacklist triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
.end method
