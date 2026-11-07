.class public final Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;
.super Ljava/lang/Object;
.source "InstantAppResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/InstantAppResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstantAppResolutionCallback"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/os/IRemoteCallback;

.field private final greylist-max-o mSequence:I


# direct methods
.method public constructor greylist-max-o <init>(ILandroid/os/IRemoteCallback;)V
    .registers 3
    .param p1, "sequence"    # I
    .param p2, "callback"    # Landroid/os/IRemoteCallback;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p2, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 309
    iput p1, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mSequence:I

    .line 310
    return-void
.end method


# virtual methods
.method public whitelist onInstantAppResolveInfo(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 313
    .local p1, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "android.app.extra.RESOLVE_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 315
    const-string v1, "android.app.extra.SEQUENCE"

    iget v2, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mSequence:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    :try_start_11
    iget-object v1, p0, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    .line 319
    goto :goto_18

    .line 318
    :catch_17
    move-exception v1

    .line 320
    :goto_18
    return-void
.end method
