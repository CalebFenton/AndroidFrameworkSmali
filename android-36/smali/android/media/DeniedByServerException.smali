.class public final Landroid/media/DeniedByServerException;
.super Landroid/media/MediaDrmException;
.source "DeniedByServerException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "vendorError"    # I
    .param p3, "oemError"    # I
    .param p4, "context"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;III)V

    .line 33
    return-void
.end method
