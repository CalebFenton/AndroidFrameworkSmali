.class public Landroid/window/ImeOnBackInvokedDispatcher$DefaultImeOnBackAnimationCallback;
.super Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;
.source "ImeOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ImeOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImeOnBackAnimationCallback"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/window/IOnBackInvokedCallback;II)V
    .registers 4
    .param p1, "iCallback"    # Landroid/window/IOnBackInvokedCallback;
    .param p2, "id"    # I
    .param p3, "priority"    # I

    .line 333
    invoke-direct {p0, p1, p2, p3}, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;-><init>(Landroid/window/IOnBackInvokedCallback;II)V

    .line 334
    return-void
.end method
