.class public Landroid/net/connectivity/org/chromium/base/CallbackUtils;
.super Ljava/lang/Object;
.source "CallbackUtils.java"


# static fields
.field private static final blacklist DO_NOTHING_CALLBACK:Landroid/net/connectivity/org/chromium/base/Callback;

.field private static final blacklist DO_NOTHING_RUNNABLE:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Landroid/net/connectivity/org/chromium/base/CallbackUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/CallbackUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/CallbackUtils;->DO_NOTHING_CALLBACK:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 15
    new-instance v0, Landroid/net/connectivity/org/chromium/base/CallbackUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/CallbackUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/CallbackUtils;->DO_NOTHING_RUNNABLE:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist emptyCallback()Landroid/net/connectivity/org/chromium/base/Callback;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;"
        }
    .end annotation

    .line 20
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CallbackUtils;->DO_NOTHING_CALLBACK:Landroid/net/connectivity/org/chromium/base/Callback;

    return-object v0
.end method

.method public static blacklist emptyRunnable()Ljava/lang/Runnable;
    .registers 1

    .line 25
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CallbackUtils;->DO_NOTHING_RUNNABLE:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Object;)V
    .registers 1
    .param p0, "unused"    # Ljava/lang/Object;

    .line 12
    return-void
.end method

.method static synthetic blacklist lambda$static$1()V
    .registers 0

    .line 15
    return-void
.end method
