.class final Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;
.super Ljava/lang/Object;
.source "RemoteInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/RemoteInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodServiceInternalHolder"
.end annotation


# instance fields
.field private final blacklist mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodServiceInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodServiceInternal;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "ims":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/inputmethodservice/InputMethodServiceInternal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/ref/WeakReference;Landroid/inputmethodservice/RemoteInputConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public blacklist getAndWarnIfNull()Landroid/inputmethodservice/InputMethodServiceInternal;
    .registers 5

    .line 84
    iget-object v0, p0, Landroid/inputmethodservice/RemoteInputConnection$InputMethodServiceInternalHolder;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/InputMethodServiceInternal;

    .line 85
    .local v0, "ims":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-nez v0, :cond_16

    .line 86
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "RemoteInputConnection"

    const-string v3, "InputMethodService is already destroyed.  InputConnection instances cannot be used beyond InputMethodService lifetime."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_16
    return-object v0
.end method
