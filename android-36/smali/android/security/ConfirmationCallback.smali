.class public abstract Landroid/security/ConfirmationCallback;
.super Ljava/lang/Object;
.source "ConfirmationCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCanceled()V
    .registers 1

    .line 46
    return-void
.end method

.method public whitelist onConfirmed([B)V
    .registers 2
    .param p1, "dataThatWasConfirmed"    # [B

    .line 36
    return-void
.end method

.method public whitelist onDismissed()V
    .registers 1

    .line 41
    return-void
.end method

.method public whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 53
    return-void
.end method
