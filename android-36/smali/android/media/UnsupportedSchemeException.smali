.class public final Landroid/media/UnsupportedSchemeException;
.super Landroid/media/MediaDrmException;
.source "UnsupportedSchemeException.java"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
