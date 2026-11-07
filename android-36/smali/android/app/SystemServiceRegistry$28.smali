.class Landroid/app/SystemServiceRegistry$28;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "Landroid/view/inputmethod/InputMethodManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getService(Landroid/app/ContextImpl;)Landroid/view/inputmethod/InputMethodManager;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 569
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->forContext(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$28;->getService(Landroid/app/ContextImpl;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    return-object p1
.end method
