.class Landroid/support/v4/media/session/MediaSessionCompatApi22;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi22.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setRatingType(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    #@0
    .prologue
    .line 23
    check-cast p0, Landroid/media/session/MediaSession;

    #@2
    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setRatingType(I)V

    #@5
    .line 22
    return-void
.end method
