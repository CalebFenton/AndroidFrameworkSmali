.class public Landroid/window/WindowOnBackInvokedDispatcher$Checker;
.super Ljava/lang/Object;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# instance fields
.field private blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetContext(Landroid/window/WindowOnBackInvokedDispatcher$Checker;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mContext:Ljava/lang/ref/WeakReference;

    .line 694
    return-void
.end method

.method private blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 734
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public blacklist checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z
    .registers 7
    .param p1, "priority"    # I
    .param p2, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 703
    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 704
    .local v0, "hostContext":Landroid/content/Context;
    const/4 v1, 0x0

    const-string v2, "WindowOnBackDispatcher"

    if-nez v0, :cond_f

    .line 705
    const-string v3, "OnBackInvokedCallback is disabled, host context is removed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return v1

    .line 708
    :cond_f
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1f

    instance-of v3, p2, Landroid/window/CompatOnBackInvokedCallback;

    if-nez v3, :cond_1f

    .line 710
    const-string v3, "OnBackInvokedCallback is not enabled for the application.\nSet \'android:enableOnBackInvokedCallback=\"true\"\' in the application manifest."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return v1

    .line 716
    :cond_1f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->predictiveBackPrioritySystemNavigationObserver()Z

    move-result v1

    const-string v2, "Application registered OnBackInvokedCallback cannot have negative priority. Priority: "

    if-eqz v1, :cond_44

    .line 717
    if-gez p1, :cond_46

    const/4 v1, -0x2

    if-ne p1, v1, :cond_2d

    goto :goto_46

    .line 718
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :cond_44
    if-ltz p1, :cond_4b

    .line 729
    :cond_46
    :goto_46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const/4 v1, 0x1

    return v1

    .line 724
    :cond_4b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
