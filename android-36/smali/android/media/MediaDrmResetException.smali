.class public Landroid/media/MediaDrmResetException;
.super Ljava/lang/IllegalStateException;
.source "MediaDrmResetException.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
