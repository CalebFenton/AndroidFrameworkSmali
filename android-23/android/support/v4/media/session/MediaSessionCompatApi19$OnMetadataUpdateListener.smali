.class Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi19.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnMetadataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnMetadataUpdateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/RemoteControlClient$OnMetadataUpdateListener;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;, "Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;

    #@5
    .line 90
    return-void
.end method


# virtual methods
.method public onMetadataUpdate(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 96
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;, "Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener<TT;>;"
    const v0, 0x10000001

    #@3
    if-ne p1, v0, :cond_0

    #@5
    instance-of v0, p2, Landroid/media/Rating;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 97
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;

    #@b
    invoke-interface {v0, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;->onSetRating(Ljava/lang/Object;)V

    #@e
    .line 95
    :cond_0
    return-void
.end method
