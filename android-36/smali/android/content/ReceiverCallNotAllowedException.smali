.class public Landroid/content/ReceiverCallNotAllowedException;
.super Landroid/util/AndroidRuntimeException;
.source "ReceiverCallNotAllowedException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
