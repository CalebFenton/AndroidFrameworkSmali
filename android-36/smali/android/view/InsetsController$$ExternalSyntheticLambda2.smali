.class public final synthetic Landroid/view/InsetsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist getAppContext()Landroid/content/Context;
    .registers 2

    .line 0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
