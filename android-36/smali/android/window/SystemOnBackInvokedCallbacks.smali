.class public final Landroid/window/SystemOnBackInvokedCallbacks;
.super Ljava/lang/Object;
.source "SystemOnBackInvokedCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;,
        Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;,
        Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory;
    }
.end annotation


# static fields
.field private static final blacklist sFinishAndRemoveTaskFactory:Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sMoveTaskToBackFactory:Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/SystemOnBackInvokedCallbacks$MoveTaskToBackCallbackFactory;-><init>(Landroid/window/SystemOnBackInvokedCallbacks-IA;)V

    sput-object v0, Landroid/window/SystemOnBackInvokedCallbacks;->sMoveTaskToBackFactory:Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;

    .line 49
    new-instance v0, Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory;

    invoke-direct {v0, v1}, Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory;-><init>(Landroid/window/SystemOnBackInvokedCallbacks-IA;)V

    sput-object v0, Landroid/window/SystemOnBackInvokedCallbacks;->sFinishAndRemoveTaskFactory:Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a utility class and cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist finishAndRemoveTaskCallback(Landroid/app/Activity;)Landroid/window/OnBackInvokedCallback;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 84
    sget-object v0, Landroid/window/SystemOnBackInvokedCallbacks;->sFinishAndRemoveTaskFactory:Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;

    invoke-virtual {v0, p0}, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->getOverrideCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist moveTaskToBackCallback(Landroid/app/Activity;)Landroid/window/OnBackInvokedCallback;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 69
    sget-object v0, Landroid/window/SystemOnBackInvokedCallbacks;->sMoveTaskToBackFactory:Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;

    invoke-virtual {v0, p0}, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->getOverrideCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;

    move-result-object v0

    return-object v0
.end method
