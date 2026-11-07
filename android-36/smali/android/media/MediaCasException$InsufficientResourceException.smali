.class public final Landroid/media/MediaCasException$InsufficientResourceException;
.super Landroid/media/MediaCasException;
.source "MediaCasException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCasException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsufficientResourceException"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaCasException;-><init>(Ljava/lang/String;Landroid/media/MediaCasException-IA;)V

    .line 97
    return-void
.end method
