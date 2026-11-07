.class public final Landroid/net/connectivity/org/chromium/net/InlineExecutionProhibitedException;
.super Ljava/util/concurrent/RejectedExecutionException;
.source "InlineExecutionProhibitedException.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    const-string v0, "Inline execution is prohibited for this request"

    invoke-direct {p0, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
