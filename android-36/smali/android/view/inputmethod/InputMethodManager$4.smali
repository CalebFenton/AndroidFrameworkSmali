.class Landroid/view/inputmethod/InputMethodManager$4;
.super Landroid/app/PropertyInvalidatedCache;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/inputmethod/InputMethodManager;->isConnectionlessStylusHandwritingAvailable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "maxEntries"    # I
    .param p3, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1857
    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "userId"    # Ljava/lang/Integer;

    .line 1860
    nop

    .line 1861
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1860
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1857
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager$4;->recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
