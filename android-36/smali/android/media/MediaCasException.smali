.class public Landroid/media/MediaCasException;
.super Ljava/lang/Exception;
.source "MediaCasException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCasException$NotProvisionedException;,
        Landroid/media/MediaCasException$ResourceBusyException;,
        Landroid/media/MediaCasException$DeniedByServerException;,
        Landroid/media/MediaCasException$InsufficientResourceException;,
        Landroid/media/MediaCasException$UnsupportedCasException;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/media/MediaCasException-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaCasException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static greylist-max-o throwExceptionIfNeeded(I)V
    .registers 3
    .param p0, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 30
    if-nez p0, :cond_3

    .line 31
    return-void

    .line 34
    :cond_3
    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1f

    .line 36
    const/16 v0, 0x8

    if-eq p0, v0, :cond_19

    .line 38
    const/16 v0, 0xb

    if-eq p0, v0, :cond_13

    .line 41
    invoke-static {p0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    .line 43
    return-void

    .line 39
    :cond_13
    new-instance v0, Landroid/media/MediaCasException$DeniedByServerException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$DeniedByServerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_19
    new-instance v0, Landroid/media/MediaCasException$ResourceBusyException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$ResourceBusyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1f
    new-instance v0, Landroid/media/MediaCasException$NotProvisionedException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$NotProvisionedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
