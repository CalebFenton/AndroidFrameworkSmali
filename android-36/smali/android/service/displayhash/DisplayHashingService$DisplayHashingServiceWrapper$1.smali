.class Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;
.super Ljava/lang/Object;
.source "DisplayHashingService.java"

# interfaces
.implements Landroid/view/displayhash/DisplayHashResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->generateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/RemoteCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "this$1"    # Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p2, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->val$callback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayHashError(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "DISPLAY_HASH_ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    iget-object v1, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 179
    return-void
.end method

.method public whitelist onDisplayHashResult(Landroid/view/displayhash/DisplayHash;)V
    .registers 4
    .param p1, "displayHash"    # Landroid/view/displayhash/DisplayHash;

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "DISPLAY_HASH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 171
    iget-object v1, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 172
    return-void
.end method
