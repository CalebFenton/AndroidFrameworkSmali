.class interface abstract Landroid/inputmethodservice/NavigationBarController$Callback;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/NavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Callback"
.end annotation


# static fields
.field public static final blacklist NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Landroid/inputmethodservice/NavigationBarController$Callback$1;

    invoke-direct {v0}, Landroid/inputmethodservice/NavigationBarController$Callback$1;-><init>()V

    sput-object v0, Landroid/inputmethodservice/NavigationBarController$Callback;->NOOP:Landroid/inputmethodservice/NavigationBarController$Callback;

    return-void
.end method


# virtual methods
.method public blacklist isShown()Z
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onDestroy()V
    .registers 1

    .line 82
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .registers 2
    .param p1, "navButtonFlags"    # I

    .line 85
    return-void
.end method

.method public blacklist onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .registers 2
    .param p1, "softInputWindow"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 73
    return-void
.end method

.method public blacklist onViewInitialized()V
    .registers 1

    .line 76
    return-void
.end method

.method public blacklist onWindowShown()V
    .registers 1

    .line 79
    return-void
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 2

    .line 92
    const-string v0, "No-op implementation"

    return-object v0
.end method

.method public blacklist updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 2
    .param p1, "originalInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .line 66
    return-void
.end method

.method public blacklist updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 3
    .param p1, "originalInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p2, "dest"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 70
    return-void
.end method
